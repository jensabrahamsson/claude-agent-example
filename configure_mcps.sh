# MCPs I quite like at the time of creating this example repository

npm install -g @modelcontextprotocol/server-sequential-thinking

#claude mcp add filesystem npx @modelcontextprotocol/server-filesystem /path/to/code
#claude mcp add notion npx @notionhq/notion-mcp-server --env OPENAPI_MCP_HEADERS='{"Authorization": "ADD_KEY_HERE", "Notion-Version": "2022-06-28"}'
claude mcp add context7 -- npx -y @upstash/context7-mcp
claude mcp add sequential-thinking npx @modelcontextprotocol/server-sequential-thinking
claude mcp add serena -- uvx --from git+https://github.com/oraios/serena serena-mcp-server --context ide-assistant --project $(pwd)
claude mcp add semgrep uvx semgrep-mcp
claude mcp add playwright npx @playwright/mcp@latest
