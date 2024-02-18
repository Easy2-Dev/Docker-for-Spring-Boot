#!/usr/bin/make
SHELL = /bin/sh
UID := $(shell id -u)
GID := $(shell id -g)
export UID
export GID

up-f:
	docker compose -f dev-docker-compose.yml up --build --remove-orphans

up:
	docker compose -f dev-docker-compose.yml up -d --build --remove-orphans 

down:
	docker compose -f dev-docker-compose.yml down --remove-orphans