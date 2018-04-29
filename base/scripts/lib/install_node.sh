#!/bin/bash
set -e

NODE_VERSION=8.8.1
NODE_ARCH=x64

NODE_DIST=node-v${NODE_VERSION}-linux-${NODE_ARCH}

echo ">> Installing Node $NODE_DIST"

cd /tmp
curl -O -L http://nodejs.org/dist/v${NODE_VERSION}/${NODE_DIST}.tar.gz
tar xvzf ${NODE_DIST}.tar.gz
rm -rf /opt/nodejs
mv ${NODE_DIST} /opt/nodejs

ln -sf /opt/nodejs/bin/node /usr/bin/node
ln -sf /opt/nodejs/bin/npm /usr/bin/npm

npm install --global npm@5
npm install -g node-gyp node-pre-gyp

