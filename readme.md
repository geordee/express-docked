# Node.js Application in Docker

Create a simple Node.js application and package in Docker

## Develop

```bash
npm install
npm start
```

## Builder

```bash
docker build -f Dockerfile.pkg -t builder/node-pkg:14-x64 .
```

## Build

```bash
docker build -t express/demo:latest .
```

## Run

```bash
docker run -d --name express-demo -p 3000:3000 express/demo

docker run -d --name express-demo \
  -e USER_NAME="Jane Doe" \
  -e USER_EMAIL="jane.doe@example.com" \
  -p 3000:3000 \
  express/demo
```

## Test

```bash
curl localhost:3000
curl localhost:3000/users
```
