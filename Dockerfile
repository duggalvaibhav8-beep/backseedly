# Stage 1 - Builder
FROM node:24-alpine AS builder

WORKDIR /app

# Copy package files first for better layer caching
COPY package*.json ./

RUN npm install

# Copy application source
COPY . .

# Stage 2 - Production
FROM node:22-alpine

WORKDIR /app

# Copy installed dependencies
COPY --from=builder /app/node_modules ./node_modules

# Copy application code
COPY --from=builder /app .

EXPOSE 5001

CMD ["npm", "start"]
