# README

First, run
docker-compose build

Everytime you edit Gemfile, you run docker-compose build and install gems

After that, you shoud edit password and host in config/databsase.yml
* host is mysql container name in docker-compose.yml(ex: db)
* password is in docker-compose.yml

Then, run this command for create database
docker-compose run web rake db:create


* 'docker-compose up' to start your app
* 'docker-compose up' to stop your app
