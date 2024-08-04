FROM node:18.16.0

# Install pnpm
RUN npm install -g pnpm

# Set working directory
WORKDIR /app

# Copy package.json and pnpm-lock.yaml
COPY package.json pnpm-lock.yaml ./

# Install dependencies
RUN pnpm install

# Copy the rest of the code
COPY . .

# Expose the port Vite runs on
EXPOSE 5173

# Command to run the application
CMD ["pnpm", "dev"]