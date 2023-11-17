{
    "name": "Your_Synapse_SQL_Job_Name",
    "properties": {
        "content": {
            "query": "SELECT * FROM OPENROWSET(\n    BULK 'https://fbdevopstest.dfs.core.windows.net/devops/synapse/workspaces/data/data.csv',\n    FORMAT = 'CSV',\n    HEADER_ROW = TRUE,\n    PARSER_VERSION = '2.0'\n) AS [result]",
            "metadata": {
                "language": "sql"
            },
            "currentConnection": {
                "databaseName": "your_database_name",
                "poolName": "Built-in"
            },
            "resultLimit": 5000
        },
        "type": "SqlQuery"
    }
}