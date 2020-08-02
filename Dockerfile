# build
FROM  builder/node-pkg:14-x64 as builder

WORKDIR /build
COPY . .
RUN npm install && pkg package.json --targets node14-linux-x64 --output demo

# package
FROM debian:buster-slim

WORKDIR /apps
COPY --from=builder /build/demo /apps/demo

ENTRYPOINT [ "/apps/demo" ]

# expose ports
EXPOSE 3000/tcp
