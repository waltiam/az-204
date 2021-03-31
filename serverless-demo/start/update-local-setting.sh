#! /bin/bash
STORAGE_CONNECTION_STRING=$(az storage account show-connection-string \
--name $(az storage account list \
  --resource-group learn-414b623e-ec5c-414b-8b09-6361c9884b5a \
  --query [0].name -o tsv) \
--resource-group learn-414b623e-ec5c-414b-8b09-6361c9884b5a \
--query "connectionString" -o tsv)

COSMOSDB_ACCOUNT_NAME=$(az cosmosdb list \
    --resource-group learn-414b623e-ec5c-414b-8b09-6361c9884b5a \
    --query [0].name -o tsv)

COSMOSDB_CONNECTION_STRING=$(az cosmosdb list-connection-strings  \
  --name $COSMOSDB_ACCOUNT_NAME \
  --resource-group learn-414b623e-ec5c-414b-8b09-6361c9884b5a \
  --query "connectionStrings[?description=='Primary SQL Connection String'].connectionString" -o tsv)

COSMOSDB_MASTER_KEY=$(az cosmosdb list-keys \
--name $COSMOSDB_ACCOUNT_NAME \
--resource-group learn-414b623e-ec5c-414b-8b09-6361c9884b5a \
--query primaryMasterKey -o tsv)

printf "\n\nReplace <STORAGE_CONNECTION_STRING> with:\n$STORAGE_CONNECTION_STRING\n\nReplace <COSMOSDB_CONNECTION_STRING> with:\n$COSMOSDB_CONNECTION_STRING\n\nReplace <COSMOSDB_MASTER_KEY> with:\n$COSMOSDB_MASTER_KEY\n\n"