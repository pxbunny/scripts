Pre-push copies all scripts to a folder specified in the .env file. Don't forget to add the folder to the PATH variable.

Set up the git hooks directory:
```bash
git config core.hooksPath .githooks
```

Add .env file to the root of the repository.
```
SCRIPTS_OUT_PATH = "<path_to_folder>"
```
