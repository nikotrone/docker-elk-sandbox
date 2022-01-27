# Cerebro

These environment variables needs to be set on container level in order for Curator to work:

| VARIABLE                     | USE                                        | Examples            |
| ---------------------------- |:------------------------------------------:| -------------------:|
| `DELETE_ACTION_PREFIX`       | Prefix to restrict your targeted indexes   | `testdata-`         |
| `DELETE_ACTION_TIME_UNIT`    | Time unit to filter indexes                | `days`              |
| `DELETE_ACTION_TIME_AMOUNT`  | Amount of time units to filter the indexes | `30`                |
| `ELASTICSEARCH_HOST`         | Elasticsearch host (without http)          | `es01`              |
| `ELASTICSEARCH_PORT`         | Elasticsearch port                         | `9200`              |

The default action is deleting all indices with pattern `testdata-*` that are older than `DELETE_ACTION_TIME_AMOUNT` `DELETE_ACTION_TIME_UNIT` (i.e. 15 days)