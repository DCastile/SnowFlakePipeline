# help: https://www.metachris.com/2016/04/python-threadpool/

from typing import List
from threading import Thread, current_thread
from queue import Queue
# from multiprocessing import Process, Queue
from snowflake_table_syncher import SnowFlakeTableSyncher
from source_table_extractor import SourceTableExtractor
from source_table import SourceTableBatch
from os import getpid
from time import time, sleep
from collections import Counter

import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


class Worker(Thread):
    """ Thread executing tasks from a given tasks queue """

    def __init__(self, bcp_tasks: Queue, sf_tasks: Queue, logging_tasks: List[dict], type, task_counter: Counter,
                 total_task_count, thread_name=None):
        super().__init__()
        self.bcp_tasks = bcp_tasks
        self.sf_tasks = sf_tasks
        self.logging_tasks = logging_tasks
        self.type = type
        self.task_counter = task_counter
        self.total_task_count = total_task_count
        self.daemon = True
        if thread_name:
            self.name = thread_name

        self.start()

    def run(self):
        lap_time = 0
        start_time = None
        while True:
            # logger.info('<{type}:{thread} | bcp: q={bcp_q} l={bcp_l} | sf: q={sf_q} l={sf_l}>'.format(
            #     type=self.type, thread=current_thread().getName(),
            #     bcp_q=self.bcp_tasks.qsize(), bcp_l=self.task_counter['bcp'],
            #     sf_q=self.sf_tasks.qsize(), sf_l=self.task_counter['snowflake']
            # ))

            if self.type == 'bcp':
                if self.bcp_tasks.empty():
                    break
                func, args = self.bcp_tasks.get()
                ret: SourceTableExtractor = func(args)
                self.sf_tasks.put((snowflake_task, args))
                tmp = ret.dict()
                self.logging_tasks.append(tmp)
                self.task_counter['bcp'] += 1
                # try:
                #     ret: SourceTableExtractor = func(args)
                #     self.sf_tasks.put((snowflake_task, args))
                #     self.logging_tasks.append(ret.dict())
                # except Exception as e:
                #     logger.error(e)
                #     self.logging_tasks.append(e.__dict__)
            else:
                # if self.sf_tasks.empty() and self.bcp_tasks.empty():  # check if all work is done
                if self.task_counter['snowflake'] >= self.total_task_count:  # check if all work is done
                    break
                try:
                    func, args = self.sf_tasks.get(block=False) # if there is nothing in there try again
                except:
                    sleep(2)
                    continue

                ret: SnowFlakeTableSyncher = func(args)
                tmp = ret.dict()
                self.logging_tasks.append(tmp)
                self.task_counter['snowflake'] += 1
                # try:
                #     ret: SnowFlakeTableSyncher = func(args)
                #     self.logging_tasks.append(ret.dict())
                # except Exception as e:
                #     logger.error(e)
                #     self.logging_tasks.append(e.__dict__)
        logger.info('<DONE: {type}:{thread} | bcp: q={bcp_q} l={bcp_l} | sf: q={sf_q} l={sf_l}>'.format(
            type=self.type, thread=current_thread().getName(),
            bcp_q=self.bcp_tasks.qsize(), bcp_l=self.task_counter['bcp'],
            sf_q=self.sf_tasks.qsize(), sf_l=self.task_counter['snowflake']
        ))

def snowflake_task(arg: SourceTableBatch):
    tmp = SnowFlakeTableSyncher(arg)
    tmp.run()
    return tmp


def source_table_task(arg: SourceTableBatch):
    tmp = SourceTableExtractor(arg)
    tmp.run()
    return tmp
