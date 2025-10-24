**Built by:** Raj Bhadauria  .....
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


