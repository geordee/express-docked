# build
FROM node:14-buster-slim as builder

ENV NODE node14
ENV PLATFORM linux
ENV ARCH x64

WORKDIR /build
COPY . .
RUN npm install

RUN ./node_modules/.bin/pkg-fetch ${NODE} ${PLATFORM} ${ARCH}
RUN ./node_modules/.bin/pkg package.json --targets ${NODE}-${PLATFORM}-${ARCH} --output demo

# package
FROM debian:buster-slim

WORKDIR /apps
COPY --from=builder /build/demo /apps/demo

ENTRYPOINT [ "/apps/demo" ]

# expose ports
EXPOSE 3000/tcp
