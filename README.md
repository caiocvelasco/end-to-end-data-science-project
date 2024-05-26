# Project Name

A brief description of your project.

## Table of Contents

- [Project Structure](#project-structure)
- [Setup Instructions](#setup-instructions)
  - [Prerequisites](#prerequisites)
  - [Environment Variables](#environment-variables)
  - [Build and Run](#build-and-run)
- [Services](#services)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Project Structure

name_of_your_project_repo(project-root)/
├── .devcontainer/
│ └── devcontainer.json
├── .gitignore # Ignore sensitive information
├── .env
├── .python-version
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── notebooks/ # Jupyter notebooks directory
│ └── example_notebook.ipynb
└── your_python_scripts/ # Python scripts directory
└── script.py

## Setup Instructions

### Prerequisites

Make sure you have the following installed on your local development environment:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [VSCode](https://code.visualstudio.com/) with the [Remote - Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Environment Variables

Create a `.env` file in the project root with the following content:

POSTGRES_USER=your_postgres_user
POSTGRES_PASSWORD=your_postgres_password
POSTGRES_DB=your_postgres_db


### Build and Run

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name

2. **Build and start the containers:**

    When you open VSCode, it will automatically ask if you want to reopen the repo folder in a container and it will build for you.

(WORK IN PROGRESS)