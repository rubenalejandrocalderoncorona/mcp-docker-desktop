from fastapi import FastAPI, Request

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "MCP server running on Fly.io!"}

@app.post("/mcp")
async def mcp_endpoint(data: dict):
    # Replace this with your MCP processing logic
    return {"received": data}
