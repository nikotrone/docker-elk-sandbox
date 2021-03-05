# docker-elk-sandbox
Docker sandbox to spinup an Elasticsearch cluster with cerebro monitoring and curator, fill it with test data and have cleanup options.

## Usage
This brings your sandbox up
```bash
    docker-compose up -d
```

Then you can point your browser to `localhost:9000` to access the Cerebro interface and insert `http://es01:9200` in the input field to check on your cluster status

## Test data
`generate_test_data.sh` is a simple bash script that streams some document and creates some indexes. You can edit it to customize the kind of index you need and the data you want to land in the cluster.

```bash
    ./generate_test_data.sh
```

## Running Curator
To run the curator job you can just use `docker-compose up curator`