# fcf-example-planet
An example of using templates in the FCF framework

<img src="https://fcf-framework.online/files/Screenshot_20210830_051026-61b21fe4-6a67-412f-8192-72c2e664970e.png"></img>

# Recommendations
It is recommended to use the latest version of FCF to run the example. As the framework is constantly evolving, the example can use the latest features.

# How to start
1. Install FCF framework (https://fcf-framework.online/download/fcf/install)
2. Go to the example directory<br>
$ cd [PROJECT]
3. Initialize the sample database<br>
$ fcfmngr create-db ./fcf-example-planet.js<br>
$ mysql -u [USER] -p fcf-example-planet < dbdump.sql
4. And run<br>
$ fcfserver server.json
5. Wait until all modules and packages are installed. When everything is ready, the terminal will display an inscription:<br>
 > Listening started  with port 8080<br>
 > Listening started :: with port 8080<br>
6. Open your browser at localhost:8080


