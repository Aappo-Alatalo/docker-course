# Switched to alpine
FROM node:16.20.2-alpine3.18

WORKDIR /app

COPY . .

# added non-root user for security and removed some junk
RUN npm install && rm -rf /var/lib/apt/lists/* && adduser -S appuser

USER appuser

CMD ["node", "index.js"]