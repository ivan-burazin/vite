FROM node:18.16.0

# Install pnpm
RUN npm install -g pnpm

# Set working directory
WORKDIR /app

# Copy the entire project
COPY . .

# Install dependencies
RUN pnpm install

# Expose the port Vite runs on
EXPOSE 5173

# Command to run the application
CMD ["pnpm", "dev"]
