# ALX — System Engineering & DevOps Track

This repository contains exercises and projects for the ALX School "System Engineering & DevOps" curriculum. The content is organized into numbered modules that progressively teach shell basics, permissions, redirections, scripting, networking, web stack debugging, and more.

This README is intended to help you navigate the repository, run the exercises, follow conventions, and contribute changes.

## Repository layout

Top-level folders represent modules and topics. Each folder usually contains numbered exercise files. Typical structure (partial):

- `0x00-shell_basics/` — Basic shell commands and navigation exercises (e.g., `0-current_working_directory`, `1-listit`, ...).
- `0x01-shell_permissions/` — File and directory permissions, ownership, symbolic links, etc.
- `0x02-shell_redirections/` — Input/output redirection, pipes, file manipulation.
- `0x03-shell_variables_expansions/` — Shell variables, parameter expansion, arithmetic.
- `0x04-loops_conditions_and_parsing/` — Looping, conditionals, parsing text.
- `0x05-processes_and_signals/` — Processes, job control, signals.
- `0x06-regular_expressions/` — Regex exercises with `grep`, `sed`, `awk`.
- `0x07-networking_basics/` and `0x08-networking_basics_2/` — Networking commands and basics.
- `0x09-web_infrastructure_design/` — Design-related tasks.
- `0x0C-web_server/`, `0x0F-load_balancer/`, `0x10-https_ssl/` — Web server and HTTPS configuration topics.
- `0x14-mysql/` — Database basics (MySQL) exercises.
- `attack_is_the_best_defense/` — Security-related exercises and labs.

Each exercise file is normally a shell script, a text file containing commands to run, or a small utility. Files are named with a leading number (or numbers) and a short descriptive name, which indicates exercise order.

## Purpose and learning objectives

The repository's primary goals:

- Teach practical shell usage and core Unix tools.
- Build skills for system administration and DevOps tasks (processes, networking, web stacks).
- Provide hands-on exercises that can be run locally in a Unix-like environment.

By working through the modules you should become comfortable with:

- Navigating the filesystem, manipulating files and permissions.
- Using shell redirections, pipelines, and text-processing tools.
- Writing and debugging small shell scripts and automation snippets.
- Troubleshooting web stacks and basic networking issues.

## Prerequisites

- A Unix-like environment (Linux or macOS). The exercises assume a POSIX shell (bash, dash, or zsh). The user's default shell is `zsh` in this workspace, but `bash` is commonly used.
- Core utilities: `bash`/`sh`, `ls`, `cat`, `grep`, `sed`, `awk`, `ps`, `netstat`/`ss`, `curl`, `wget`, `chmod`, `chown`, `find`, etc.
- Optional: `shellcheck` (linter for shell scripts), `tree` (to visualise directories), and an editor like `vim`, `nano` or VS Code.

## How to run an exercise

1. Make the script executable (if not already):

```bash
chmod +x 0x00-shell_basics/0-current_working_directory
```

2. Run it directly (preferred to avoid changing your PATH):

```bash
./0x00-shell_basics/0-current_working_directory
# or
bash 0x00-shell_basics/0-current_working_directory
```

Notes:
- Some exercises are plain text instructions rather than executable scripts — open them in an editor to read.
- If an exercise expects you to create or modify files, run it from the repository root so relative paths match the exercise assumptions.

## Verifying scripts and basic checks

- Syntax-check a script with bash:

```bash
bash -n path/to/script
```

- Static analysis with `shellcheck` (recommended):

```bash
shellcheck path/to/script
```

- Ensure executable permission and correct line endings (use `dos2unix` if files have CRLF line endings).

## Naming and style conventions

- Exercise filenames usually start with a number (or numbers) indicating the order, followed by a short description (snake_case or underscores).
- Prefer POSIX-compatible shell features where possible; avoid relying on Bash-only extensions unless the exercise explicitly requires bash.
- Keep scripts idempotent when practical (so they can be run multiple times during testing).

## Common pitfalls and tips

- File permissions: many exercises test permission changes; use `ls -l` to inspect.
- When editing files on Windows, ensure you convert line endings to Unix style (`dos2unix`).
- Use `set -euo pipefail` at the top of scripts you author to catch errors early (but be aware exercises may not expect it).

## Running a group of exercises (example)

You can find all executable files and run them individually or via a small loop. Be careful — some exercises may require user interaction or make system changes.

```bash
# list executable exercises
find . -maxdepth 2 -type f -perm -u=x -name "*" | sort

# run a single exercise (example)
bash 0x00-shell_basics/1-listit
```

## Tests and automated validation

This repository doesn't include a unified automated test harness by default. Many ALX tracks provide separate project-specific graders. Use the following workflow for local verification:

- Manually run the script/exercise and observe output.
- Use `diff` or `cmp` against expected output files when provided by the exercise.
- Use linting (`shellcheck`) and shell syntax checks as a lightweight verification step.

If you have (or build) automated tests, put them in a dedicated `tests/` folder and document how to run them here.

## Contribution guidelines

If you want to contribute improvements, fixes, or new exercises:

1. Fork the repository.
2. Create a feature branch named `topic/short-description` or `fix/short-description`.
3. Make minimal, atomic commits with clear messages.
4. Submit a pull request describing the change and why it's needed.

Guidelines:
- Preserve existing exercise names and numbering unless you have a coordinated plan to renumber.
- Add tests or examples when adding new exercises.
- Keep changes focused to a single module when possible.

## Licensing

No license file is present in this repository by default. If you intend to publish or share the repo, add a `LICENSE` file (for example, MIT, Apache-2.0) to make reuse terms explicit.

## Contact / More information

For questions about the ALX curriculum or the exercises, consult your cohort instructors or the ALX documentation. If you're collaborating with others, open issues or pull requests on this repository to discuss changes.

---

This README was generated/updated to provide a clear orientation and practical guidance for running and contributing to the exercises in this repo.
