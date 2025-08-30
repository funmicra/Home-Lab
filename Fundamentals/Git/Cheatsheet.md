## Configuration & Setup

```bash
# Configure user info
git config --global user.name "Your Name"
git config --global user.email "you@example.com"

# Check config
git config --list

# Set default text editor
git config --global core.editor "nano"  # or vim/code

# Enable color output
git config --global color.ui auto

# Set default branch name for new repos
git config --global init.defaultBranch main
```

## Creating & Cloning Repositories
```bash
# Initialize a new repo
git init

# Clone an existing repo
git clone <repo_url> [directory]

# Clone a specific branch
git clone -b <branch> <repo_url>
```

## Basic Workflow
```bash
# Check repo status
git status

# Stage files
git add <file>
git add .           # stage everything

# Commit changes
git commit -m "Commit message"

# Commit staged changes and amend previous commit
git commit --amend -m "Updated commit message"

# Show commit history
git log
git log --oneline --graph --decorate --all
```

## Branching & Merging
```bash
# List branches
git branch

# Create a new branch
git branch <branch_name>

# Switch branches
git switch <branch_name>
# or
git checkout <branch_name>

# Create and switch in one command
git switch -c <branch_name>

# Merge a branch into current
git merge <branch_name>

# Rebase current branch onto another
git rebase <branch_name>

# Delete a branch
git branch -d <branch_name>   # local
git push origin --delete <branch_name>  # remote
```

## Undoing Changes
```bash
# Unstage a file
git restore --staged <file>

# Discard changes in working directory
git restore <file>

# Reset to last commit (soft, mixed, hard)
git reset --soft HEAD~1    # keep changes staged
git reset --mixed HEAD~1   # keep changes unstaged
git reset --hard HEAD~1    # discard changes

# Revert a commit
git revert <commit_hash>
```

## Stashing
```bash
# Save changes temporarily
git stash

# List stashes
git stash list

# Apply last stash
git stash apply

# Apply and remove stash
git stash pop

# Drop a stash
git stash drop <stash@{0}>

# Clear all stashes
git stash clear
```

## Remote Repositories
```bash
# Show remotes
git remote -v

# Add a remote
git remote add origin <repo_url>

# Remove a remote
git remote remove <name>

# Fetch from remote
git fetch <remote>

# Pull changes from remote
git pull <remote> <branch>

# Push changes to remote
git push <remote> <branch>

# Push new branch to remote
git push -u origin <branch_name>
```

## Tagging
```bash
# Create a lightweight tag
git tag <tag_name>

# Create an annotated tag
git tag -a <tag_name> -m "Tag message"

# List tags
git tag

# Push tags
git push origin <tag_name>
git push --tags
```

## Inspection & Logs
```bash
# Show last commit
git show

# Show changes staged vs last commit
git diff --staged

# Show changes not staged
git diff

# Show history of a file
git log -- <file>

# Show file history with patches
git log -p <file>
```

## Advanced Tips
```bash
# Squash commits during rebase
git rebase -i HEAD~<n>

# Cherry-pick a commit
git cherry-pick <commit_hash>

# Clean untracked files
git clean -fd

# Show branch history with graph
git log --oneline --graph --all --decorate

# Undo last pushed commit (force push)
git reset --hard HEAD~1
git push origin <branch> --force
```

## Aliases (Optional Time-Savers)
```bash
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.st status
git config --global alias.ci commit
git config --global alias.last 'log -1 HEAD'
```
