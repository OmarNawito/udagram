Pipline Jobs 

        "front:install": "cd udagram-frontend && npm install",
        "back:install": "cd udagram-api && npm install",
        "front:build": "cd udagram-frontend && npm run build",
        "back:build": "cd udagram-api && npm run build",
        "front:test": "cd udagram-frontend && npm run test",
        "front:e2e": "cd udagram-frontend && npm run e2e",
        "front:deploy": "cd udagram-frontend && npm run deploy",
        "back:deploy": "cd udagram-api && npm run deploy"


Backend Deploy Script 
        cd ./www
        eb init $EB_APP --region $AWS_REGION --platform node.js
        eb use $EB_ENV
        eb deploy

Frontend Deploy Script 
        aws s3 cp --recursive --acl public-read ./www s3://$AWS_BUCKET/