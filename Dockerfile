FROM arm64v8/node:alpine

COPY . ./
RUN npm install && npm run build

ENV NODE_ENV production
EXPOSE 80
CMD node ./dist/index.js
