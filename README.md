# nodejs_neo4j
A sandbox for neo4j with nodejs and express.  Using the oopen source neode orm

## references:
- [Adem Cowley Blog Post](https://medium.com/neo4j/interacting-with-neo4j-in-nodejs-using-the-neode-object-mapper-3d99cb324546)
- [Neode ORM](https://github.com/adam-cowley/neode)
- [Run neo4j in Docker](https://neo4j.com/developer/docker-run-neo4j/)

## setup
- Install Docker
- Run neo4j in Docker container (if using the default below, the app will work as is)
```
docker run \
    --name testneo4j \
    -p7474:7474 -p7687:7687 \
    -d \
    -v $HOME/neo4j/data:/data \
    -v $HOME/neo4j/logs:/logs \
    -v $HOME/neo4j/import:/var/lib/neo4j/import \
    -v $HOME/neo4j/plugins:/plugins \
    --env NEO4J_AUTH=neo4j/test \
    neo4j:latest

```
- Go to: http://localhost:7474/browser/  to browse you neo4j data
- Enter: http://localhost:9001/api/putperson in the browser to execute the putperson route

## run the app
### VS Code
- npm install
- Launch.json is preconfigured with env variables for easy debugging in VS Code

### terminal
- npm install
- node app.js
- .env file included for terminal
