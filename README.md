# End-to-End Data Science Project

(WORK IN PROGRESS)

## Table of Contents

- [Project Structure](#project-structure)
- [Setup Instructions](#setup-instructions)
  - [Prerequisites](#prerequisites)
  - [Environment Variables](#environment-variables)
  - [Build and Run](#build-and-run)
- [Services](#services)
- [DBT](#dbt)
- (WORK IN PROGRESS)

## Project Structure

- **name_of_your_project_repo (project-root)/**
    - **.devcontainer/**
    - devcontainer.json
    - **.dbt**
      - profiles.yml
    - **.env**
    - **.gitignore**
    - **.python-version**
    - **Dockerfile**
    - **docker-compose.yml**
    - **dbt_project.yml**
    - **requirements.txt**
    - **README.md**
    - **init.sql** (to be deprecated after dbt is installed)
    - **ingest_fake_data.py** (to be deprecated after dbt is installed)

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
- **Jupyter Notebook**: A Jupyter Notebook instance for interactive data analysis and for checking the models materialized by dbt.
- **DBT**: The Data Build Tool (dbt) for transforming data in the data warehouse.

### DBT

  DBT (Data Build Tool) is a development environment that enables data analysts and engineers to transform data in their warehouse more effectively. To use dbt in this project, follow these steps:

1. **Install DBT**: The Dockerfile and Docker Compose file will do this for you.
2. **Configure DBT**: The profiles.yml was created inside a `.dbt` folder in the same level as the `docker-compose.yml`. It defines connections to your data warehouse. Use environment variables to specify sensitive information like database credentials (which in this case is making reference to the `.env` file that is being ignored by `.gitignore`, so you should have one in the same level as the `docker-compose.yml` - as shown in the folder structure above.)
3. **Run DBT**: Once dbt is installed and configured, you can use it to build and run your dbt models. Use the dbt run command to execute the models and apply transformations to your data.

(WORK IN PROGRESS)