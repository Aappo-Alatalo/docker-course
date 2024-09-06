FROM node:16.20.2-alpine3.18

EXPOSE 5000

WORKDIR /usr/src/app

COPY package*.json ./

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY . .

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    adduser -S appuser && \
    chown appuser . && \
    # Cleanup unnecessary files after install to reduce image size
    rm -rf /root/.npm /usr/src/app/node_modules && \
    npm cache clean --force && \
    rm -rf /var/lib/apt/lists/*

# now we can change the user
USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]