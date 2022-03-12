cd ./www
eb init $EB_APP --region $AWS_REGION --platform node.js
eb use $EB_ENV
eb setenv AWS_BUCKET=$AWS_BUCKET AWS_REGION=$AWS_REGION EB_APP=$EB_APP EB_ENV=$EB_ENV JWT_SECRET=$JWT_SECRET PORT=$PORT POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME URL=$URL POSTGRES_PORT=$POSTGRES_PORT
eb deploy