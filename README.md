# setup

install diesel_cli : 

```shell
bash $ cargo install diesel_cli --no-default-features --features postgres
```

# run api

```shell
bash $ docker-compose up -d
bash $ diesel migration run 
```

