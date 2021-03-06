# Udagram

This application is a simple application that is used to apply hosting principals using AWS services along with CI/CD principals using circleci integeration. 
The udagram application is a fairly simple application that includes all the major components of a Full-Stack web application.

## Getting Started

In order to test deployment on CircleCI 

1 - Upload code on your github repository.

2 - In the environment variables of your project in circleCi add the following variables.

    -   POSTGRES_USERNAME = *******
    -   POSTGRES_PASSWORD = *******
    -   POSTGRES_DB = *******
    -   PORT = *******
    -   POSTGRES_HOST = ****************************
    -   AWS_REGION = *******
    -   AWS_DEFAULT_REGION = *******
    -   URL = ******************************************
    -   JWT_SECRET = *******
    -   EB_APP = *******
    -   EB_ENV = *******
    -   AWS_BUCKET = *******
    -   AWS_ACCESS_KEY_ID - IAM user access key for AWScli and elastic beanstalk deployment
    -   AWS_SECRET_ACCESS_KEY - Secret for IAM user

3 - Start the deployment process.

In order to view current deployment on S3 

Frontend Environment:
        S3 bucket: udacity122
        S3 URL: http://udacity122.s3-website-us-east-1.amazonaws.com

![Alt text](https://github.com/OmarNawito/udagram/blob/master/documents/screenshots/s3.PNG "Frontend Environment")


In order to view current deployment on Elastic beanstalk

Backend Environment:
        URL: http://udacity-udagram.eba-ncqucfci.us-east-1.elasticbeanstalk.com

![Alt text](https://github.com/OmarNawito/udagram/blob/master/documents/screenshots/eb.PNG "Backend Environment")

        Database endpoint: database-1.czn4ym1qh9hd.us-east-1.rds.amazonaws.com

![Alt text](https://github.com/OmarNawito/udagram/blob/master/documents/screenshots/rds.PNG "Database endpoint")

        Application name: demo-app
        Environment name: Demoapp-env

Deployment Pipeline:
        CircleCI 
        GitHub project - https://github.com/OmarNawito/udagram

![Alt text](https://github.com/OmarNawito/udagram/blob/master/documents/screenshots/CircleCI.PNG "Deployment Pipeline")

### Illustration Diagram

- Infrastructure of the application

![Alt text](https://github.com/OmarNawito/udagram/blob/master/documents/screenshots/b8ed48be1946912a5e0da263c1fc8f17.png "Infrastructure of the application")

- Piplining

![Alt text](https://github.com/OmarNawito/udagram/blob/master/documents/screenshots/68747470733a2f2f64302e6177737374617469632e636f6d2f706172746e65722d6e6574776f726b2f517569636b53746172742f646f746e65742d7365727665726c6573732d636963642d6172636869746563747572652e706e67.png "Piplining")

### Dependencies

```
- Node v14.15.1 (LTS) or more recent. While older versions can work it is advisable to keep node to latest LTS version

- npm 6.14.8 (LTS) or more recent, Yarn can work but was not tested for this project

- AWS CLI v2, v1 can work but was not tested for this project

- A RDS database running Postgres.

- A S3 bucket for hosting uploaded pictures.

- An Elastic Beanstalk for hosting backend and APIs

- CircleCI Integrated with github to run the deployment process
```

### Package.json script

        "front:install": "cd udagram-frontend && npm install",
        "back:install": "cd udagram-api && npm install",
        "front:build": "cd udagram-frontend && npm run build",
        "back:build": "cd udagram-api && npm run build",
        "front:test": "cd udagram-frontend && npm run test",
        "front:e2e": "cd udagram-frontend && npm run e2e",
        "front:deploy": "cd udagram-frontend && npm run deploy",
        "back:deploy": "cd udagram-api && npm run deploy"

## Testing

This project contains two different test suite: unit tests and End-To-End tests(e2e). Follow these steps to run the tests.

1. `cd starter/udagram-frontend`
1. `npm run test`
1. `npm run e2e`

There are no Unit test on the back-end

### Unit Tests:

Unit tests are using the Jasmine Framework.

### End to End Tests:

The e2e tests are using Protractor and Jasmine.

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## License

[License](LICENSE.txt)
