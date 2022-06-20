# fcf-example-planet
An example of using templates in the FCF framework

<img src="https://fcf-framework.tk/files/Peek%202021-09-21%2010-08-f3a26a69-e40b-4934-834c-1b5e6353b403.gif"></img>

# Recommendations
It is recommended to use the latest version of FCF to run the example. As the framework is constantly evolving, the example can use the latest features.

# Requirements
For the example, a version of the FCF framework is required at least 1.1.45

# Description
A detailed description of the example is on the pages of the official site: https://fcf-framework.tk/stepbystep/applications/first-introduction

# How to start
1. Install FCF framework (https://fcf-framework.tk/download/fcf/install)
2. Go to the example directory<br>
$ cd [PROJECT]
3. Initialize the sample database<br>
$ fcfmngr create-db ./fcf-example-planet.js<br>
$ mysql -u [USER] -p fcf-example-planet < dbdump.sql<br>
(If access to the mysql user is performed only from the system superuser, you need to use sudo when invoking the fcfmngr command)<br>
4. And run<br>
$ fcfserver server.json
5. Wait until all modules and packages are installed. When everything is ready, the terminal will display an inscription:<br>
 > Listening started  with port 8080<br>
 > Listening started :: with port 8080<br>
6. Open your browser at localhost:8080


