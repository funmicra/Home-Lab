# 🏠 Home Lab Ansible Deployment

This repository contains an Ansible setup to automatically deploy all Docker Compose stacks from the [`funmicra/Home-Lab`](https://github.com/funmicra/Home-Lab) GitHub repository.

## 📦 What It Does

This playbook will:

1. **Install Docker Engine** and the `docker-compose` plugin (Compose v2).
2. **Clone the `Home-Lab` repo** from GitHub.
3. **Recursively search** the `My Docker Stacks/` subdirectory for any `docker-compose*.yaml` files.
4. **Run `docker compose up`** for each valid compose project folder found.

Each folder inside `My Docker Stacks/` must contain its own `docker-compose.yaml` (or `.yml`) file.

---

## 🗂 Project Structure

This repository includes:

<pre lang="markdown"> <code>
  This repository includes: 
  ├── site.yml # Main entrypoint Ansible playbook 
  ├── vars/ 
  │ └── main.yml # List of compose repositories to deploy 
    └── roles/ 
  ├── common/ # Installs basic system packages and dependencies 
  ├── docker/ # Installs Docker Engine and Docker Compose 
    └── compose_stacks/ # Clones Git repositories and deploys Docker Compose stacks
</code> </pre>

