# End-to-End Data Science Project

(WORK IN PROGRESS)

## Table of Contents

- [Project Structure](#project-structure)
- [Setup Instructions](#setup-instructions)
  - [Prerequisites](#prerequisites)
  - [Environment Variables](#environment-variables)
  - [Build and Run](#build-and-run)
- [Services](#services)
- (WORK IN PROGRESS)

## Project Structure

- **name_of_your_project_repo (project-root)/**
    - **.devcontainer/**
    - devcontainer.json
    - **.env**
    - **.python-version**
    - **Dockerfile**
    - **docker-compose.yml**
    - **init.sql**
    - **requirements.txt**
    - **README.md**
    - **notebooks/**
    - example_notebook.ipynb
    - **your_python_scripts/**
    - script.py

## Setup Instructions

### Prerequisites

Make sure you have the following installed on your local development environment:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [VSCode](https://code.visualstudio.com/) with the [Remote - Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### Environment Variables

Create a `.env` file in the project root with the following content:

- POSTGRES_USER=your_postgres_user
- POSTGRES_PASSWORD=your_postgres_password
- POSTGRES_DB=your_postgres_db


### Build and Run

1. **Clone the repository:**

   ```bash
   git clone https://github.com/caiocvelasco/end-to-end-data-science-project.git
   cd end-to-end-data-science-project

2. **Build and start the containers:**

    When you open VSCode, it will automatically ask if you want to reopen the repo folder in a container and it will build for you.

### Services

- **Postgres**: A PostgreSQL database instance.
- **Python**: A container running Python 3.9.13 with necessary dependencies.
- **Jupyter Notebook**: A Jupyter Notebook instance for interactive data analysis.

(WORK IN PROGRESS)