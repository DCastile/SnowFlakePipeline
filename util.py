from source_table import SourceTableBatch, SourceTable, Source


def get_file_name(source_table_batch: SourceTableBatch):
    return '{server}-{table}-{batch_number}-{run_id}.csv'.format(
        server=source_table_batch.source.server,
        database=source_table_batch.source.database,
        schema=source_table_batch.source.schema,
        table=source_table_batch.source_table.table,
        batch_number=source_table_batch.batch_number,
        run_id=source_table_batch.job_uuid
    )


def get_file_path(source_table_batch: SourceTableBatch):
    return './data/{source}/{file_name}'.format(
        source=source_table_batch.source.source,
        file_name=get_file_name(source_table_batch)
    )


def get_log_path(source_table_batch: SourceTableBatch):
    return './logs/{source}/{server}-{database}-{schema}-{table}-{batch_number}.log'.format(
        source=source_table_batch.source.source,
        server=source_table_batch.source.server,
        database=source_table_batch.source.database,
        schema=source_table_batch.source.schema,
        table=source_table_batch.source_table.table,
        batch_number=source_table_batch.batch_number
    )


