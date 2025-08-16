## 🚀 Quickstart

Clone the repository:
```shell
git clone https://github.com/langchain-ai/local-deep-researcher.git
cd local-deep-researcher
```

#### Mac

1. (Recommended) Create a virtual environment:
```bash
python -m venv .venv
source .venv/bin/activate
```

```bash
# Install uv package manager
curl -LsSf https://astral.sh/uv/install.sh | sh
```

run it:
```bash
uvx --refresh --from "langgraph-cli[inmem]" --with-editable . --python 3.11 langgraph dev --no-browser --studio-url http://localhost:2024
```
