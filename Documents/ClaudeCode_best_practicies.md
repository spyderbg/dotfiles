Claude Code Best Practices (Anthropic)
  
  1. Manage Context Aggressively

  Context is your #1 constraint — performance degrades as the window fills.
  - Use /clear between unrelated tasks
  - Use /compact to summarize, or scope it: /compact Focus on the API changes
  - Use /btw for quick side questions that shouldn't pollute context
  - Use subagents for large investigations so their file reads don't fill your main session

  2. Explore → Plan → Code → Commit

  Don't let Claude jump straight to coding.
  1. Explore: Use plan mode (Ctrl+Shift+P) — Claude reads files without editing
  2. Plan: Ask for a detailed implementation plan, edit it with Ctrl+G
  3. Implement: Switch out of plan mode, have Claude code and run tests
  4. Commit: Ask Claude to write a commit message and open a PR

  3. Give Claude a Way to Verify Its Work

  "Looks done" is not done. Give Claude a check it can run:
  - Test suite, build exit code, linter, diff script, or screenshot comparison
  - Ask it to run the check and iterate in the same prompt
  - Ask for evidence (test output, command results) rather than just assertions

  4. Write an Effective CLAUDE.md

  Claude reads this at the start of every session.
  - Include: bash commands, code style deviations, test runners, repo etiquette, env quirks
  - Exclude: things Claude can infer from code, standard conventions, API docs, info that changes often
  - Keep it short — a bloated CLAUDE.md causes Claude to ignore your actual rules
  - Add @path/to/file imports for modular docs; use IMPORTANT / YOU MUST for critical rules

  5. Be Specific in Prompts

  - Reference exact files, line numbers, and patterns
  - Name constraints, testing preferences, and what "done" looks like
  - Point to existing patterns: "look at HotDogWidget.php as the example to follow"
  - Paste screenshots, pipe data (cat error.log | claude), or use @file references

  6. Course-Correct Early

  - Press Esc to interrupt and redirect (context is preserved)
  - Double-tap Esc or /rewind to restore a previous checkpoint
  - If you've corrected the same thing twice: /clear and write a better prompt
  - Long sessions with accumulated corrections usually perform worse than a fresh start

  7. Use Subagents to Protect Main Context

  - "Use subagents to investigate X" — they explore in a separate context, report summaries back
  - Great for: codebase research, security review, adversarial verification, post-implementation review
  - Define custom subagents in .claude/agents/ with their own tools and model

  8. Automate and Scale

  - Non-interactive: claude -p "prompt" for CI, pre-commit hooks, scripts
  - Parallel sessions: run multiple Claude instances in git worktrees for independent tasks
  - Fan out: generate a task list, loop through it with claude -p per file (e.g., large migrations)
  - Auto mode: claude --permission-mode auto lets a classifier approve routine commands without prompts
  - Writer/Reviewer pattern: Session A implements, Session B reviews in fresh context

  9. Configure Permissions and Tools

  - Install gh, aws, gcloud CLIs — Claude knows how to use them efficiently
  - Connect MCP servers for Notion, Figma, databases, etc.
  - Use hooks (.claude/settings.json) for actions that must happen every time without exception
  - Create Skills (.claude/skills/) for reusable domain knowledge or workflows

  10. Common Anti-Patterns to Avoid

  ┌───────────────────────────────────────────────┬────────────────────────────────────────────────────────────┐
  │                 Anti-pattern                  │                            Fix                             │
  ├───────────────────────────────────────────────┼────────────────────────────────────────────────────────────┤
  │ Kitchen-sink session (mixing unrelated tasks) │ /clear between tasks                                       │
  ├───────────────────────────────────────────────┼────────────────────────────────────────────────────────────┤
  │ Correcting Claude repeatedly                  │ After 2 failures, /clear + better prompt                   │
  ├───────────────────────────────────────────────┼────────────────────────────────────────────────────────────┤
  │ Over-specified CLAUDE.md                      │ Ruthlessly prune — if it works without the rule, delete it │
  ├───────────────────────────────────────────────┼────────────────────────────────────────────────────────────┤
  │ No verification step                          │ Always provide a test/check Claude can run                 │
  ├───────────────────────────────────────────────┼────────────────────────────────────────────────────────────┤
  │ Unbounded "investigate" prompts               │ Scope narrowly or use a subagent                           │
  └───────────────────────────────────────────────┴────────────────────────────────────────────────────────────┘

  ---
  Core philosophy: Claude Code is intentionally low-level. Nothing above is universal — treat it as a starting point and develop your own intuition over time by paying attention to what
  works for your codebase.

  Sources:
  - Best practices for Claude Code - Claude Code Docs
  - Engineering at Anthropic — Claude Code Best Practices (SlideShare)


