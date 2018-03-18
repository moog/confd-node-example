This is an example of [confd](https://github.com/kelseyhightower/confd) setup, using SSM as backend and a Node.js server consuming the confd generated template.

## Requirements
- Docker, docker compose and AWS CLI configurated with your account

## Configuring and Running
- Clone this repository `git clone git@github.com:moog/confd-node-example.git`
- Go to project directory `cd confd-node-example`
- Create this on SSM `aws ssm put-parameter --name "/example/foo" --type "String" --value "bar"`
- Create a copy of `.aws.env.example` with name `.aws.env` and fill it with your informations
- Build service image `docker-compose build confd-example`
- Set container up `docker-compose up confd-example`
- Visit http://localhost:3000
