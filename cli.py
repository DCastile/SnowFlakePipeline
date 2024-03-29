import argparse
import socket
from typing import List

from job import Job
from config import source_database_map, sql_server_login_map
from source_table import Source, SourceTable, SourceTableBatch
from table_meta import TableMeta


def check_for_args_errors(args):
    if args.batch and not (args.table or args.sources):
        print('Batch flag set but table or source flag not set')
        quit()
    if args.tables and not args.sources:
        print('Table flag set but source flag not set')
        quit()
    if len(args.sources) > 1 and len(args.tables) > 1:
        # TODO just a temp solutions for this
        print('Cannot choose multiple specific sources and tables must choose 1')
        quit()


def setup_parameters_from_args(args):
    if args.sources:
        sources = args.sources
    else:
        # default to all
        sources = source_choices

    if args.server:
        server = args.server
    else:
        # default to server that is running the process
        server = socket.gethostbyname(socket.gethostname())

    if args.tables:
        tables = args.tables  # TODO do i need to parse these arguments if there is multiple?
    else:
        tables = None  # signifies all tables

    return (sources, server, tables)


def print_run_info(args):
    print('Running data pipeline for: sources={source} | tables={table} | batch={batch}'.format(source=args.sources,
                                                                                                table=args.tables,
                                                                                                batch=args.batch))


def get_login_info(server):
    return sql_server_login_map.get(server)


if __name__ == '__main__':

    source_choices = ['sap', 'singlepoint']
    server_choices = ['10.4.1.100', '10.61.95.22']

    parser = argparse.ArgumentParser(description='A CLI for moving data to SnowFlake')

    # parser.add_argument('-a', '--account', type=str, help='Define the SnowFlake account to authenticate against')
    # parser.add_argument('-u', '--user', type=str, help='Define the SnowFlake user to login with')
    # parser.add_argument('-p', '--password', type=str, help='Define the SnowFlake password to login with')

    parser.add_argument('-t', '--type', choices=['incremental', 'full'], type=str, default='incremental',
                        help='Define the data transfer type (Incremental or Full)')
    parser.add_argument('-s', '--sources', choices=source_choices, type=str, nargs='+',
                        help='Define the sources to transfer')
    parser.add_argument('-S', '--server', choices=server_choices, type=str,
                        help='Define the server where data is located')

    parser.add_argument('-T', '--tables', type=str, nargs='+', help='Define the table to transfer')
    parser.add_argument('-b', '--batch', type=int, help='Define the table batch to transfer')

    # rules: (bottoms up)
    # if batch is specified must have table and source and type
    # if table is specified bmust have source and type
    # if source is specified must have type
    # if only type is specified assume all sources (where is this defined? ... probs not in code..)
    # if nothing is specified assume incremental and all sources

    args = parser.parse_args()

    print(args)

    check_for_args_errors(args)
    (source_names, server, table_names) = setup_parameters_from_args(args)
    user, password = get_login_info(server)

    sources: List[Source] = []
    for source in source_names:
        # TODO hard coded schema right here -- need to remove schema and introspect all
        tmp = Source(source, server, source_database_map[(source, server)], 'dbo', user=user, password=password)
        sources.append(tmp)

    source_table_batches: List[SourceTableBatch] = []
    # walk down the hierarchy
    if args.batch:
        print_run_info(args)
        raise NotImplemented()  # TODO not implementing this quite yet
    elif table_names:
        print_run_info(args)
        # should only ever be 1 if we are specifying a table
        for source in sources:
            source_table_batches.extend(TableMeta(source).get_source_table_batches(table_names))
    elif source_names:
        for source in sources:
            source_table_batches.extend(TableMeta(source).source_table_batches)
    job = Job(source_table_batches)
