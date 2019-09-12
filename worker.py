# help: https://www.metachris.com/2016/04/python-threadpool/

from typing import List
from threading import Thread
from queue import Queue
# from multiprocessing import Process, Queue
from snowflake_table_syncher import SnowFlakeTableSyncher
from source_table_extractor import SourceTableExtractor
from source_table import SourceTableBatch
from os import getpid
from time import time, sleep

import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


class Worker(Thread):
    """ Thread executing tasks from a given tasks queue """

    def __init__(self, bcp_tasks: Queue, sf_tasks: Queue, logging_tasks: List[dict], type):
        super().__init__()
        self.bcp_tasks = bcp_tasks
        self.sf_tasks = sf_tasks
        self.logging_tasks = logging_tasks
        self.type = type
        self.daemon = True
        self.start()

    def run(self):
        lap_time = 0
        start_time = None
        while True:
            # logger.info('PID: {pid}| BCP queue size: {size}'.format(pid=getpid(), size=self.bcp_tasks.qsize()))
            # logger.info('PID: {pid}| ❄ queue size: {size}'.format(pid=getpid(), size=self.sf_tasks.qsize()))
            if self.type == 'bcp':
                if self.bcp_tasks.empty():
                    break
                func, args = self.bcp_tasks.get()
                ret: SourceTableExtractor = func(args)
                self.sf_tasks.put((snowflake_task, args))
                tmp = ret.dict()
                self.logging_tasks.append(tmp)
                # try:
                #     ret: SourceTableExtractor = func(args)
                #     self.sf_tasks.put((snowflake_task, args))
                #     self.logging_tasks.append(ret.dict())
                # except Exception as e:
                #     logger.error(e)
                #     self.logging_tasks.append(e.__dict__)
            else:
                if self.sf_tasks.empty() and self.bcp_tasks.empty():  # check if all work is done
                    if not start_time:
                        start_time = time()  # timer starts now
                    if lap_time > 4:  # just make sure we don't run into a race condition where both queues are empty but the sf work hasn't been done
                        break
                    else:
                        lap_time += (time() - start_time)
                        sleep(0.5)
                        continue
                func, args = self.sf_tasks.get()
                ret: SnowFlakeTableSyncher = func(args)
                tmp = ret.dict()
                self.logging_tasks.append(tmp)
                # try:
                #     ret: SnowFlakeTableSyncher = func(args)
                #     self.logging_tasks.append(ret.dict())
                # except Exception as e:
                #     logger.error(e)
                #     self.logging_tasks.append(e.__dict__)


def snowflake_task(arg: SourceTableBatch):
    tmp = SnowFlakeTableSyncher(arg)
    tmp.run()
    return tmp


def source_table_task(arg: SourceTableBatch):
    tmp = SourceTableExtractor(arg)
    tmp.run()
    return tmp
