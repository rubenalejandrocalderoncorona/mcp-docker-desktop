# Minimal MCP Server for Fly.io

This repo demonstrates deploying a FastAPI-based MCP server on Fly.io using Docker.

## Usage

1. Edit \`app.py\` to add your MCP logic.
2. Build and run locally with Docker Desktop:
   docker build -t my-mcp-server .
   docker run -p 8080:8080 my-mcp-server
3. Deploy to Fly.io:
   - Push to your GitHub repo.
   - Use Fly.io's dashboard or CLI to deploy.
4. Call from n8n using HTTP Request node at the public Fly.io endpoint.
