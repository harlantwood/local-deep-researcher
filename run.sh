#!/bin/bash
set -euo pipefail

ASSIST="dbcf0f2b-9eec-4fd2-a189-98cc658e9643"

curl -s -X POST http://127.0.0.1:2024/runs/wait \
  -H 'Content-Type: application/json' \
  -d '{
    "assistant_id": "'"$ASSIST"'",
    "input": {
      "research_topic": "research clean drinking water solutions via desalination for the developing world, focus on 3 countries that are in dire need of clean drinking water, and have coastline, and a population of less at least 10 million people.  Generate a comprehensive report on the topic, including the current state of clean drinking water access in each country, existing desalination projects, and potential future projects.  Include a summary of the most promising technologies and approaches for desalination in these regions."
    },
    "config": { "configurable": {
      "llm_provider": "lmstudio",
      "lmstudio_base_url": "http://localhost:1234/v1",
      "local_llm": "openai/gpt-oss-120b",
      "max_web_research_loops": 5,
      "fetch_full_page": true,
      "use_tool_calling": false
    }}
  }' | jq -r '.running_summary' > report.md
