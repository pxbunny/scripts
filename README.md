# scripts

This repo contains useful scripts in `bash/` and `powershell/`.

The `pre-push` hook copies all scripts into a single directory defined in `.env` (`SCRIPTS_OUT_PATH`). Add that directory to your `PATH` so the scripts are always available.

## Setup

1) Tell Git to use the repo hooks directory:

```bash
git config core.hooksPath .githooks
```

2) Create `.env` in the repo root:

```bash
SCRIPTS_OUT_PATH="/C/CLI/scripts"
```

Notes:
- For Git Bash on Windows, use `/C/...` paths.
- For Linux/macOS, `SCRIPTS_OUT_PATH="$HOME/.local/bin"` is a common choice.
- `.env` is ignored by Git (see `.gitignore`).

3) Add the target directory to `PATH` (for example `C:\CLI\scripts` on Windows).

## Manual sync

From the repo root:

```bash
./.githooks/pre-push
```
