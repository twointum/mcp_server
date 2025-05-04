curl -LsSf https://astral.sh/uv/install.sh | sh

# Do this step only if the folder doesn't already exist.
if [ ! -d "mcp-server-demo" ]; then
  echo "Creating mcp-server-demo directory..."
  uv init mcp-server-demo
fi

cd mcp-server-demo

uv add "mcp[cli]" httpx

pip install "mcp[cli]"

# uv run mcp

echo "Post install steps are done!"