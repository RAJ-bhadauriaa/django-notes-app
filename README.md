**Built by:** Raj Bhadauria  
**LinkedIn:** [linkedin.com/in/raj-bhadauria-58924219b](https://www.linkedin.com/in/raj-bhadauria-58924219b/)

#  Django Notes App - Dockerized with Nginx, MySQL

This is a **Dockerized Django Notes App** deployed using **Docker Compose** with a **3-tier architecture**:

-  Django (Backend - Gunicorn)
-  MySQL (Database)
-  Nginx (Reverse Proxy + Static Files)

Deployed on an **Azure VM** using Docker.



  Tech Stack

- Django (Gunicorn WSGI server)
- MySQL (v5.7)
- Nginx (Reverse Proxy)
- Docker & Docker Compose
- Linux (Ubuntu on Azure VM)

---

##  Architecture

[Browser] --> [Nginx:80] --> [Django App:8000] --> [MySQL DB:3306]


- Nginx forwards traffic to Django container
- Django connects to MySQL for data
- Static files are served by Nginx

---

##  How to Run Locally

cloning the repo

cd django-notes-app

docker-compose up --build

Now the application will work on <public_ip>:8080/      -as nginix will listen on 8080 port as configured on compose file.



---

##  🚀 CI/CD Pipeline with Jenkins

Later, a Jenkinsfile was added to automate the build and deployment process.
The CI/CD pipeline performs the following stages:

Code Checkout – Pulls code from GitHub.

Build – Builds Docker images for the Django app and Nginx.

Push to DockerHub – Pushes built images to DockerHub registry.

Deploy – Deploys the updated containers on the Azure VM.

This pipeline uses a Jenkins Shared Library for common reusable functions (like Docker login, image tagging, and deployment).

---

<img width="720" height="403" alt="pipleine_cleanup (1)" src="https://github.com/user-attachments/assets/830922bc-54df-499a-9309-07e60c123e0f" />



<img width="951" height="604" alt="Screenshot 2025-10-28 032934" src="https://github.com/user-attachments/assets/456ff69f-2e4e-4f4a-aeaf-9d0f3fc904c8" />

