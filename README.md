# scripts

This repo contains useful scripts for `bash` and `powershell`.

The `pre-push` hook copies all scripts into a single directory defined in `.env` (`SCRIPTS_OUT_PATH`). Add that directory to `PATH` so the scripts are always available.

## Setup

1) Git hooks:

```bash
git config core.hooksPath .githooks
```

2) `.env` file (in the root of the repo):

```bash
SCRIPTS_OUT_PATH="/C/CLI/scripts"
```

Notes:
- For Git Bash on Windows use `/C/...` paths.
- For Linux/macOS use `SCRIPTS_OUT_PATH="$HOME/.local/bin"`.
- `.env` is ignored by Git (see `.gitignore`).

3) Add the target directory to `PATH` (for example `C:\CLI\scripts` on Windows).

## Manual sync

From the repo root:

```bash
./.githooks/pre-push
```
