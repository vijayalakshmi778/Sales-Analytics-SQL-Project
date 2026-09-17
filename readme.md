# Git & GitHub – DevOps Student Practical Guide
## Portfolio Project: index.html + styles.css + script.js

This guide continues from the Git topics already learned and gives the correct practical flow for managing a portfolio project with Git and GitHub.

---

# 1. Project Structure

Create a portfolio project folder with this structure:

```text
my-portfolio/
│
├── index.html
├── styles.css
└── script.js
```

Important:
- Use `styles.css` as the CSS filename.
- Make sure `index.html` correctly links to `styles.css` and `script.js`.

Example inside `index.html`:

```html
<link rel="stylesheet" href="styles.css">
<script src="script.js"></script>
```

---

# 2. Open the Project Folder

Open the portfolio folder in VS Code.

Open the VS Code terminal:

```bash
cd path/to/my-portfolio
```

Example:

```bash
cd Desktop/my-portfolio
```

Check the files:

```bash
dir
```

You should see:

```text
index.html
styles.css
script.js
```

---

# 3. Check Git Status

Run:

```bash
git status
```

If Git has not been initialized, you may see:

```text
fatal: not a git repository
```

This is normal if Git has not been initialized in the project folder.

---

# 4. Initialize Git Repository

Run:

```bash
git init
```

This creates the hidden `.git` folder.

Then check:

```bash
git status
```

Git should now recognize the project as a repository.

---

# 5. Configure Git User

Check the current configuration:

```bash
git config --global --list
```

If name and email are not configured, set them:

```bash
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
```

Check again:

```bash
git config --global --list
```

Important:
- Use the email associated with your GitHub account when appropriate.
- `user.name` is the Git author name. It does not have to be the GitHub username.

---

# 6. Check Files Before Staging

Run:

```bash
git status
```

You should see the portfolio files as untracked files.

Example:

```text
Untracked files:
  index.html
  script.js
  styles.css
```

---

# 7. Check File Changes Using Git Diff

If you modify a tracked file, check the changes with:

```bash
git diff
```

For a specific file:

```bash
git diff index.html
```

Example:

```bash
git diff styles.css
```

Important:
`git diff` normally shows changes that are not yet staged.

---

# 8. Stage the Files

Stage individual files:

```bash
git add index.html
git add styles.css
git add script.js
```

Or stage all files:

```bash
git add .
```

Check the staging area:

```bash
git status
```

The files should now appear under:

```text
Changes to be committed
```

---

# 9. Understand the Git File States

Teach this basic flow:

```text
Working Directory
       |
       | git add
       v
Staging Area
       |
       | git commit
       v
Local Repository
       |
       | git push
       v
GitHub Remote Repository
```

Typical file lifecycle:

```text
Untracked
   ↓
git add
   ↓
Staged
   ↓
git commit
   ↓
Committed
   ↓
git push
   ↓
GitHub
```

---

# 10. Create the First Commit

Run:

```bash
git commit -m "Initial portfolio website"
```

Then check:

```bash
git status
```

You should see a clean working tree if there are no additional changes.

---

# 11. View Commit History

Run:

```bash
git log
```

This displays commit information including:
- Commit ID
- Author
- Date
- Commit message

The long value after `commit` is the unique commit ID (SHA).

A shorter history can also be viewed with:

```bash
git log --oneline
```

Example:

```text
a1b2c3d Initial portfolio website
```

---

# 12. Create a GitHub Repository

Go to GitHub and create a new repository.

Example repository name:

```text
my-portfolio
```

Recommended for this practical:

- Repository name: `my-portfolio`
- Visibility: Public
- Do not add a README if you already have a local project and want to push it as the first repository.

After creating the repository, copy the HTTPS repository URL.

Example format:

```text
https://github.com/USERNAME/my-portfolio.git
```

Do not copy this example literally. Use the student's actual repository URL.

---

# 13. Connect Local Repository to GitHub

First check whether a remote already exists:

```bash
git remote -v
```

If nothing is displayed, add the remote:

```bash
git remote add origin https://github.com/USERNAME/my-portfolio.git
```

Verify:

```bash
git remote -v
```

Expected format:

```text
origin  https://github.com/USERNAME/my-portfolio.git (fetch)
origin  https://github.com/USERNAME/my-portfolio.git (push)
```

Important:
Do not run `git remote add origin` repeatedly.

If `origin already exists` appears, use:

```bash
git remote -v
```

To change an existing URL:

```bash
git remote set-url origin https://github.com/USERNAME/my-portfolio.git
```

---

# 14. Check the Current Branch

Run:

```bash
git branch
```

If the branch is already `main`, continue.

If the branch is `master`, rename it to `main`:

```bash
git branch -M main
```

Check:

```bash
git branch
```

You should see:

```text
* main
```

---

# 15. Push the Portfolio to GitHub

Run:

```bash
git push -u origin main
```

What this means:

```text
git push     → upload local commits
-u           → remember the upstream branch
origin       → GitHub remote name
main         → local branch being pushed
```

After the first successful push, future pushes can usually be done with:

```bash
git push
```

---

# 16. Verify the GitHub Repository

Open the GitHub repository in the browser.

You should see:

```text
index.html
styles.css
script.js
```

Also check the commit history.

---

# 17. Make a New Change

Now modify the portfolio.

Example:
- Change the About section.
- Add a project.
- Change the navigation menu.
- Add a skill.
- Update the contact section.

Save the file.

Then run:

```bash
git status
```

Git will show the modified file.

---

# 18. Check What Changed

Run:

```bash
git diff
```

Or for one file:

```bash
git diff index.html
```

Ask the student:

1. What did you change?
2. Which lines were added?
3. Which lines were removed?
4. Is the change correct?

---

# 19. Stage the Change

Run:

```bash
git add .
```

Then:

```bash
git status
```

The changed files should now be staged.

---

# 20. Commit the Change

Use a meaningful commit message:

```bash
git commit -m "Update portfolio projects section"
```

Good commit messages:

```text
Add portfolio projects section
Update skills section
Fix navigation menu
Update contact section
Improve portfolio styling
Add responsive design
Fix JavaScript menu
```

Avoid vague messages such as:

```text
update
changes
test
abc
final
```

---

# 21. Push the New Commit

Run:

```bash
git push
```

Refresh GitHub.

The new commit and changes should appear in the repository.

---

# 22. Important Daily Git Workflow

Teach the student this workflow until it becomes a habit:

```bash
git status
git diff
git add .
git status
git commit -m "Meaningful message"
git push
```

Meaning:

```text
1. Check
2. Review changes
3. Stage
4. Verify
5. Commit
6. Push
```

---

# 23. Learn git restore

If a file has been modified but the student wants to discard the local changes:

```bash
git restore filename
```

Example:

```bash
git restore styles.css
```

This restores the file to the version from the latest commit.

WARNING:
This discards the uncommitted changes in that file.

Use this only when the student is sure the changes are not needed.

---

# 24. Learn git restore --staged

If a file has been staged accidentally:

```bash
git restore --staged filename
```

Example:

```bash
git restore --staged styles.css
```

This removes the file from the staging area.

It does NOT delete the file.

The file remains in the working directory with its changes.

Check:

```bash
git status
```

---

# 25. Next Topic – Git Branches

After the basic push workflow is working, teach branches.

Check existing branches:

```bash
git branch
```

Create a new branch:

```bash
git branch feature/about-section
```

Check:

```bash
git branch
```

Switch to the branch:

```bash
git switch feature/about-section
```

Check:

```bash
git branch
```

The `*` should appear beside:

```text
feature/about-section
```

---

# 26. Create and Switch to a Branch in One Command

Instead of two commands:

```bash
git branch feature/about-section
git switch feature/about-section
```

Use:

```bash
git switch -c feature/about-section
```

This creates the branch and switches to it.

---

# 27. Branch Practical Exercise

Create a branch:

```bash
git switch -c feature/about-section
```

Modify `index.html`.

For example, add more information to the About section.

Then:

```bash
git status
git diff
git add .
git commit -m "Add about section"
```

At this point the commit exists on the feature branch.

---

# 28. Push a Feature Branch to GitHub

Run:

```bash
git push -u origin feature/about-section
```

Now check GitHub.

The feature branch should appear in the repository.

---

# 29. Switch Between Branches

Show all branches:

```bash
git branch
```

Switch to main:

```bash
git switch main
```

Switch back:

```bash
git switch feature/about-section
```

Important:
Always check your current branch before making changes:

```bash
git branch
```

---

# 30. Merge a Feature Branch

First switch to the branch that should receive the changes:

```bash
git switch main
```

Update the local main branch if necessary:

```bash
git pull
```

Then merge the feature branch:

```bash
git merge feature/about-section
```

If the merge is successful, Git will create the required merge result or fast-forward the branch.

Check:

```bash
git log --oneline
```

---

# 31. Push the Merged Main Branch

After merging:

```bash
git push
```

Now GitHub's `main` branch contains the merged changes.

---

# 32. Delete a Local Feature Branch

After successfully merging the branch:

```bash
git branch -d feature/about-section
```

Check:

```bash
git branch
```

The feature branch should no longer exist locally.

---

# 33. Delete a Remote Feature Branch

If the branch was also pushed to GitHub:

```bash
git push origin --delete feature/about-section
```

This removes the branch from the GitHub remote repository.

---

# 34. Learn git pull

`git pull` gets the latest changes from the remote repository and integrates them into the current local branch.

Use:

```bash
git pull
```

Typical situation:

```text
GitHub
  ↓
git pull
  ↓
Local repository updated
```

Before starting work on an existing shared project:

```bash
git switch main
git pull
```

---

# 35. Learn git fetch

Later, teach:

```bash
git fetch
```

`git fetch` downloads information about changes from the remote repository without automatically merging those changes into the current branch.

Simple difference:

```text
git fetch
→ Download remote updates
→ Does not merge automatically

git pull
→ Fetch + integrate changes
```

---

# 36. GitHub Collaboration Workflow

For a team project, teach this flow:

```text
GitHub Repository
       |
       | git clone
       v
Developer Local Repository
       |
       | git switch -c feature/...
       v
Feature Branch
       |
       | edit files
       | git add
       | git commit
       | git push
       v
GitHub Feature Branch
       |
       | Pull Request
       v
Code Review
       |
       | Merge
       v
main
```

---

# 37. Learn git clone

For a new developer who does not have the project locally:

```bash
git clone https://github.com/USERNAME/my-portfolio.git
```

Then move into the project:

```bash
cd my-portfolio
```

Check:

```bash
git status
```

The cloned repository already contains Git configuration and the remote connection.

Check:

```bash
git remote -v
```

---

# 38. Important Difference: git init vs git clone

### git init

Use when starting Git tracking for an existing local project:

```bash
git init
```

Flow:

```text
Existing project
      ↓
git init
      ↓
Local Git repository
```

### git clone

Use when downloading an existing GitHub repository:

```bash
git clone <repository-url>
```

Flow:

```text
GitHub repository
      ↓
git clone
      ↓
Local project + Git repository
```

Do not normally run `git init` inside a repository that was already cloned.

---

# 39. Next Topic – GitHub Pull Request

After branches are understood, introduce Pull Requests.

Student workflow:

```bash
git switch -c feature/contact-section
```

Modify:

```text
index.html
styles.css
```

Then:

```bash
git status
git diff
git add .
git commit -m "Add contact section"
git push -u origin feature/contact-section
```

Then open GitHub.

Create:

```text
Pull Request
```

From:

```text
feature/contact-section
```

Into:

```text
main
```

---

# 40. Pull Request Concepts

Teach these terms:

```text
Branch
Commit
Push
Pull Request
Code Review
Merge
```

Explain:

- Branch → separate line of development
- Commit → saved version/change
- Push → upload commits to GitHub
- Pull Request → request to merge changes
- Code Review → review the changes
- Merge → combine the approved changes

---

# 41. Git Merge Conflict

After the student understands normal merging, intentionally create a simple conflict as a classroom exercise.

Example:

Two branches modify the same lines in `index.html`.

When Git cannot automatically combine the changes, it reports a merge conflict.

Check:

```bash
git status
```

Open the conflicted file.

Git may show:

```text
<<<<<<< HEAD
Your current branch changes
=======
Other branch changes
>>>>>>> feature/about-section
```

The student must manually decide which content should remain.

Remove the conflict markers:

```text
<<<<<<<
=======
>>>>>>>
```

Save the file.

Then:

```bash
git add .
git commit -m "Resolve merge conflict"
```

Finally:

```bash
git push
```

Important:
Do not teach conflict resolution before the student understands branches and merge.

---

# 42. Git Revert

After branches and merge are understood, teach:

```bash
git log --oneline
```

Copy the commit ID that needs to be reversed.

Then:

```bash
git revert <commit-id>
```

Example:

```bash
git revert a1b2c3d
```

Git creates a new commit that reverses the selected commit.

Then:

```bash
git push
```

Important concept:

```text
git revert
→ Creates a new commit
→ Keeps existing history
```

This is commonly safer for shared branches such as `main`.

---

# 43. Git Reset

Teach `git reset` only after the student understands commit history.

Example:

```bash
git reset --soft HEAD~1
```

This moves HEAD back one commit while keeping the changes staged.

Another form:

```bash
git reset --mixed HEAD~1
```

This moves HEAD back one commit and keeps the changes in the working directory but unstaged.

Be careful with:

```bash
git reset --hard
```

It can permanently discard local changes.

Do not use `--hard` unless the student understands exactly what will be removed.

---

# 44. Add a .gitignore File

After the basic workflow, teach `.gitignore`.

Create:

```text
.gitignore
```

Example:

```gitignore
node_modules/
.env
*.log
.DS_Store
```

For a simple HTML/CSS/JavaScript portfolio, the student may not need all of these, but `.gitignore` is an important DevOps skill.

Never commit passwords, API keys, tokens, or other secrets.

---

# 45. Important GitHub Security Rule

Never put sensitive information into Git:

```text
Passwords
API keys
AWS access keys
Private tokens
Database passwords
.env secrets
Private credentials
```

If a secret is accidentally committed, deleting it from the latest file is not necessarily enough because it may remain in Git history.

For AWS and DevOps projects, this is especially important.

---

# 46. Recommended Teaching Order

Teach the student in this exact order:

### LEVEL 1 – Git Fundamentals
Already taught:

```text
git status
git init
git add
git commit
git log
git config
git diff
git restore
git restore --staged
```

### LEVEL 2 – GitHub Remote
Already taught:

```text
git remote -v
git remote add origin
git push
git clone
```

### LEVEL 3 – Portfolio Practical

Teach now:

```text
Local portfolio
↓
git init
↓
git add
↓
git commit
↓
GitHub repository
↓
git remote add origin
↓
git branch -M main
↓
git push -u origin main
↓
Modify portfolio
↓
git add
↓
git commit
↓
git push
```

### LEVEL 4 – Branching

Teach next:

```text
git branch
git switch
git switch -c
git merge
```

### LEVEL 5 – Remote Collaboration

Then:

```text
git pull
git fetch
git push
Pull Request
Code Review
Merge
```

### LEVEL 6 – Advanced Git

Then:

```text
Merge conflicts
git revert
git reset
.gitignore
Git history
Remote branch management
```

---

# 47. Final Portfolio Assignment

## Objective

Create and manage a professional portfolio website using Git and GitHub.

Required files:

```text
index.html
styles.css
script.js
```

Portfolio should contain:

```text
Home
About
Skills
Projects
Education
Contact
```

Recommended skills section:

```text
Linux
Git
GitHub
AWS
Docker
Jenkins
Terraform
Kubernetes
```

---

# 48. Git Assignment – Part 1

Create the project:

```bash
mkdir my-portfolio
cd my-portfolio
```

Create:

```text
index.html
styles.css
script.js
```

Initialize Git:

```bash
git init
```

Configure Git if required:

```bash
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
```

Check:

```bash
git status
```

---

# 49. Git Assignment – Part 2

Stage the files:

```bash
git add .
```

Check:

```bash
git status
```

Commit:

```bash
git commit -m "Initial portfolio website"
```

Check:

```bash
git log --oneline
```

---

# 50. Git Assignment – Part 3

Create a GitHub repository named:

```text
my-portfolio
```

Connect it:

```bash
git remote add origin https://github.com/USERNAME/my-portfolio.git
```

Verify:

```bash
git remote -v
```

Set the branch:

```bash
git branch -M main
```

Push:

```bash
git push -u origin main
```

---

# 51. Git Assignment – Part 4

Create a feature branch:

```bash
git switch -c feature/projects-section
```

Add or improve the Projects section.

Then:

```bash
git status
git diff
git add .
git commit -m "Add projects section"
git push -u origin feature/projects-section
```

Create a Pull Request on GitHub.

Merge the Pull Request into `main`.

---

# 52. Git Assignment – Part 5

After merging:

```bash
git switch main
git pull
```

Check:

```bash
git log --oneline
```

Delete the local feature branch:

```bash
git branch -d feature/projects-section
```

---

# 53. Final Git Workflow to Remember

For individual work:

```bash
git status
git diff
git add .
git commit -m "Meaningful message"
git push
```

For team work:

```bash
git switch main
git pull

git switch -c feature/new-feature

# Make changes

git status
git diff
git add .
git commit -m "Add new feature"
git push -u origin feature/new-feature

# Create Pull Request on GitHub
# Review
# Merge into main

git switch main
git pull
```

---

# 54. Commands Student Should Know After This Training

## Basic

```bash
git status
git init
git add
git commit
git log
git log --oneline
git diff
git restore
git restore --staged
```

## Configuration

```bash
git config --global --list
git config --global user.name "Your Name"
git config --global user.email "your-email@example.com"
git config --global init.defaultBranch main
```

## Remote

```bash
git remote -v
git remote add origin <URL>
git remote set-url origin <URL>
git push
git push -u origin main
git pull
git fetch
git clone <URL>
```

## Branches

```bash
git branch
git branch <branch-name>
git switch <branch-name>
git switch -c <branch-name>
git merge <branch-name>
git branch -d <branch-name>
git push origin --delete <branch-name>
```

## History / Undo

```bash
git log --oneline
git revert <commit-id>
git reset --soft HEAD~1
git reset --mixed HEAD~1
```

## Repository Management

```text
.gitignore
GitHub Pull Request
Code Review
Merge Conflict
Remote Repository
Local Repository
```

---

# 55. Golden Rule

Always follow:

```text
CHECK
  ↓
REVIEW
  ↓
STAGE
  ↓
COMMIT
  ↓
PUSH
```

Commands:

```bash
git status
git diff
git add .
git commit -m "Meaningful message"
git push
```

Do not blindly run Git commands.

First understand:

```text
Where am I?
Which branch am I on?
What changed?
What am I staging?
What am I committing?
Where am I pushing?
```

That is the basic professional Git workflow every DevOps student should practice.
