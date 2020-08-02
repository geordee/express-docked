# Node.js Application in Docker

Create a simple Node.js application and package in Docker

## Develop

```bash
npm install
npm start
```

# Build & Deploy

```bash
docker build -t express/demo:latest .
```

# Run

```bash
docker run -d --name express-demo -p 3000:3000 express/demo
```

## Test

```bash
curl localhost:3000
```
