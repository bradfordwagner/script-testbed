
echo ${palette_lpurple}running script ${palette_restore}
echo ${palette_lpurple}****************************************** ${palette_restore}
## SCRIPT #########################################################

# source ~/tmp/vault.sh
# vault status | jq

# vault list auth/approle/role | jq

role=astra_cicd
ROLE_ID=$(vault read auth/approle/role/${role}/role-id -format=json | jq '.data.role_id' -r)
SECRET_ID=$(vault write auth/approle/role/${role}/secret-id -format=json | jq '.data.secret_id' -r)
export VAULT_TOKEN=$(vault write auth/approle/login role_id=${ROLE_ID} secret_id=${SECRET_ID} -format=json | jq -r '.auth.client_token')
echo ROLE_ID=${ROLE_ID}, SECRET_ID=${SECRET_ID}

# export VAULT_TOKEN=s.zsEaFAK0PWx5GS3L4GvRzi5R
vault token lookup | jq

# export VAULT_NAMESPACE=aladdin/dev
# vault write  secret/app/astra/art_muse2 sir=smokesalot
# vault kv put -ns aladdin/dev secret/app/astra/art3 sir=smokesalot | jq
# vault kv put -ns aladdin/tstcloud secret/app/astra/art3 sir=smokesalot | jq
#vault kv get -ns aladdin/tstcloud secret/app/astra/art3 | jq


# vault status | jq
# vault policy read vmwh_configurer

# export VAULT_NAMESPACE=aladdin/tstcloud
# vault policy read astra_maintainer | jq

# vault read auth/approle/role/astra_blob | jq

###################################################################

echo ${palette_lpurple}****************************************** ${palette_restore}
echo ${palette_lpurple}finished! ${palette_restore}
