# Auto-Docker

## This project aims to broaden my knowledge of system administration by using Docker. I will virtualize several Docker images and creating them in new virtual machine.

<img width="726" alt="graph" src="https://user-images.githubusercontent.com/61458847/163671138-ad97c16c-8d59-43e9-be46-902b8e439104.png">

- A Docker container that contains NGINX with TLSv1.2 or TLSv1.3 only.
- A Docker container that contains WordPress + php-fpm (installed and configured) only without nginx.
- A Docker container that contains MariaDB only without nginx.
- A volume that contains WordPress database.
- A second volume that contains WordPress website files.
- A docker-network that establishes the connection between containers. Containers have to restarting in case of a crash.
- WordPress database, with two users, one of them being the administrator.
- Redis cache for WordPress website in order to properly manage the cache.
- FTP server container pointing to the volume of WordPress website.
- Simple static website in the HTML/CSS.
- An Adminer container.

<img width="945" alt="Screen Shot 2022-04-19 at 4 07 43 PM" src="https://user-images.githubusercontent.com/61458847/164036576-5f410a54-3974-4dd0-94e7-472fcdf7b06f.png">
<img width="895" alt="Screen Shot 2022-04-16 at 5 46 25 PM" src="https://user-images.githubusercontent.com/61458847/164036616-2b4a44d1-1c20-448a-84a0-c497cb097c75.png">
<img width="897" alt="Screen Shot 2022-04-16 at 5 47 09 PM" src="https://user-images.githubusercontent.com/61458847/164036623-f1d0b45b-f2c3-4a93-b3eb-45b1621bf1de.png">
<img width="894" alt="Screen Shot 2022-04-16 at 5 48 14 PM" src="https://user-images.githubusercontent.com/61458847/164036634-c63ca230-be85-40b4-84ee-d5116a867f61.png">
