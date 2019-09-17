import argparse

if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='A CLI for moving data to SnowFlake')

    parser.add_argument('-a', '--account', type=str, help='Define the SnowFlake account to authenticate against')
    parser.add_argument('-u', '--user', type=str, help='Define the SnowFlake user to login with')
    parser.add_argument('-p', '--password', type=str, help='Define the SnowFlake password to login with')


    parser.add_argument('-t', '--type', choices=['incremental', 'full'], type=str, default='incremental',
                        help='Define the data transfer type (Incremental or Full)')
    parser.add_argument('-s', '--source', choices=['sap', 'singlePoint'], type=str,
                        help='Define the sources to transfer')
    parser.add_argument('-T', '--table', type=str, help='Define the table to transfer')
    parser.add_argument('-b', '--batch', type=int, help='Define the table batch to transfer')

    # rules: (bottoms up)
    # if batch is specified must have table and source and type
    # if table is specified bmust have source and type
    # if source is specified must have type
    # if only type is specified assume all sources (where is this defined? ... probs not in code..)
    # if nothing is specified assume incremental and all sources

    args = parser.parse_args()

    print(args)

    if args.batch:
        if not args.table:
            raise argparse.ArgumentError('Batch has been specified without a table')
        if not args.source:
            raise argparse.ArgumentError('Batch has been specified without a source')
        else:
            pass
            # TODO rerun only this table batch either incrementally or in full

    if args.table:
        if not args.source:
            raise argparse.ArgumentError('Batch has been specified without a source')
        else:
            pass
            # TODO rerun only this table either incrementally or in full


