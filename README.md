# Online Shopping Application — Docker, Jenkins and AWS Deployment

A containerised online shopping application deployed on Amazon EC2 using Docker, Docker Compose, Jenkins and GitHub.

This project was completed as part of the **Train With Shubham Hackathon Phase 1** and demonstrates practical experience in containerisation, cloud deployment, automation and container security.

> **Project ownership:** The application source code was provided as part of the hackathon. My contribution focused on containerising the application, optimising its Docker image, configuring deployment tools, scanning the image for vulnerabilities and deploying the application on AWS.

---

## Project Overview

The objective of this project was to take an existing online shopping application and create a deployment process that was:

* Repeatable
* Easier to manage
* More efficient
* Less dependent on manual configuration
* Suitable for deployment on a cloud server

The application was containerised with Docker, managed using Docker Compose, scanned with Docker Scout and deployed on an Amazon EC2 instance.

---

## Key Outcomes

* Reduced the Docker image size by approximately **1 GB** using a multi-stage build
* Improved deployment speed by around **50%** compared with the original manual process
* Containerised the application for consistent deployment across environments
* Configured Docker Compose with health checks and custom networking
* Integrated GitHub with Jenkins to support build automation
* Scanned the container image for known vulnerabilities using Docker Scout
* Deployed the application on Amazon EC2
* Created reusable scripts and documentation for deployment

> The performance figures are based on comparisons made during the project between the original and optimised deployment processes.

---

## Technology Stack

| Area                  | Technology             |
| --------------------- | ---------------------- |
| Frontend              | React, Vite, Bootstrap |
| Containerisation      | Docker                 |
| Container management  | Docker Compose         |
| CI/CD automation      | Jenkins                |
| Cloud platform        | Amazon Web Services    |
| Cloud service         | Amazon EC2             |
| Security scanning     | Docker Scout           |
| Version control       | Git and GitHub         |
| Operating environment | Linux                  |
| Automation            | Shell scripting        |

---

# STAR Project Summary

## Situation

As part of the Train With Shubham Hackathon Phase 1, I worked on deploying an online shopping application to the internet.

The application code was provided for the hackathon, while my responsibility focused on the infrastructure and deployment side of the project.

The goal was to make the application easier to deploy, more consistent across environments and less dependent on manual setup.

## Task

My main responsibilities were to:

* Review the existing application and its deployment requirements
* Prepare the required cloud infrastructure
* Containerise the application using Docker
* Create a repeatable deployment process
* Configure Docker Compose for container management
* Integrate GitHub with Jenkins for build automation
* Scan the Docker image for known vulnerabilities
* Deploy and test the application on Amazon EC2
* Document the setup and deployment commands

## Action

To complete the project, I:

* Reviewed the application structure and runtime requirements
* Created a Dockerfile to package the application
* Implemented a multi-stage Docker build to optimise the image
* Added a `.dockerignore` file to exclude unnecessary files from the build context
* Reduced the Docker image size by approximately **1 GB**
* Configured Docker Compose with:

  * Container health checks
  * Automatic restart behaviour
  * Port mapping
  * A custom bridge network
* Created shell scripts to support the deployment process
* Configured GitHub and Jenkins integration to support automated builds
* Used Docker Scout to identify known vulnerabilities in the container image
* Provisioned an Amazon EC2 instance for cloud deployment
* Deployed and tested the application on the EC2 server
* Documented the commands used to build, run, inspect and stop the application

## Result

The online shopping application was successfully containerised and deployed on Amazon EC2.

The multi-stage Docker build reduced the image size by approximately **1 GB**, making the image lighter and more efficient to distribute.

The improved workflow increased deployment speed by around **50%** compared with the previous manual process.

Docker Compose made the application easier to start, stop and monitor, while health checks helped confirm whether the container was operating correctly.

The project gave me practical experience in:

* Docker image creation and optimisation
* Docker Compose
* CI/CD concepts
* Jenkins automation
* AWS EC2 deployment
* Linux server administration
* Container networking
* Shell scripting
* Vulnerability scanning
* Git and GitHub workflows

---

## Deployment Workflow

```text
Application source code
        ↓
GitHub repository
        ↓
Jenkins build process
        ↓
Docker image
        ↓
Docker Scout security scan
        ↓
Docker Compose
        ↓
Amazon EC2 deployment
```

---

## Application Screenshots

### Home Page

![Online Shopping Application Home Page](public/homePage.png)

### Admin Page

![Online Shopping Application Admin Page](public/adminPage.png)

---


## Getting Started

### Prerequisites

Before running the project, install:

* Git
* Docker Desktop
* Docker Compose

Confirm that Docker is running:

```bash
docker --version
docker compose version
```

### Clone the Repository

```bash
git clone https://github.com/riyan-ahmed/online_shopping_app.git
cd online_shopping_app
```

### Build the Docker Image

```bash
docker build -t online-shopping-app:v1 .
```

### Run with Docker Compose

```bash
docker compose up -d --build
```

The application should be available at:

```text
http://localhost:5173
```

### Check the Container

```bash
docker compose ps
docker compose logs --tail=50
```

### Scan the Image

```bash
docker scout cves online-shopping-app:v1
```

### Stop the Application

```bash
docker compose down
```

More detailed commands are available in [COMMANDS.md](COMMANDS.md).

---

## Running Locally Without Docker

Install the project dependencies:

```bash
npm install
```

Start the Vite development server:

```bash
npm run dev
```

Open the address displayed in the terminal, normally:

```text
http://localhost:5173
```

---

## Repository Structure

```text
online_shopping_app/
├── public/                  # Static assets and screenshots
├── scripts/                 # Deployment start and stop scripts
├── src/                     # React application source code
├── .dockerignore            # Files excluded from Docker builds
├── Dockerfile               # Main container configuration
├── Dockerfile-multi         # Multi-stage Docker build experiment
├── docker-compose.yml       # Container orchestration configuration
├── docker_installation.sh   # Docker installation automation
├── COMMANDS.md              # Build and deployment commands
├── image_report.md          # Docker Scout scan output
├── jenkins-setup.md         # Jenkins setup evidence
├── package.json             # Project dependencies and scripts
└── README.md                # Project documentation
```

---

## Security

Docker Scout was used to scan the application image for known vulnerabilities.

The scan process included:

* Reviewing vulnerabilities by severity
* Identifying vulnerable system packages and dependencies
* Evaluating available package upgrades
* Comparing container images during optimisation

The generated scan output is available in [image_report.md](image_report.md).

No passwords, access tokens, AWS credentials or private keys should be committed to this repository.

---

## Challenges and Learning

Some of the main challenges included:

* Understanding the runtime requirements of an unfamiliar application
* Reducing the Docker image size
* Maintaining consistent ports across the application and container configuration
* Configuring container health checks
* Connecting the source repository with Jenkins
* Deploying and troubleshooting the application on a Linux EC2 instance
* Reviewing container vulnerabilities without interrupting application functionality

These challenges strengthened my understanding of containerisation, automation, cloud infrastructure and deployment troubleshooting.

---

## Future Improvements

Future improvements could include:

* Adding a declarative `Jenkinsfile` to the repository
* Serving the production build through Nginx
* Provisioning AWS infrastructure using Terraform
* Adding HTTPS and a custom domain
* Managing secrets through AWS Secrets Manager or environment variables
* Adding automated application and container tests
* Adding monitoring with Prometheus and Grafana
* Adding centralised application logging
* Creating separate development and production configurations

---

## Acknowledgement

This project was completed as part of the **Train With Shubham Hackathon Phase 1**.

The original application code was provided for the hackathon. My work focused on Docker containerisation, image optimisation, deployment automation, security scanning and AWS EC2 deployment.

---

## License

This project is available under the [MIT License](LICENSE).

