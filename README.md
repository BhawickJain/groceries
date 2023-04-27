# Groceries

| Services							 						                      		    |   Status       |   Deployment       |
| :---															                        	    |     :---       |     :---       |
| **[backend](https://github.com/BhawickJain/groceries-api)**     | [![CI](https://github.com/BhawickJain/groceries-api/actions/workflows/ci.yml/badge.svg)](https://github.com/BhawickJain/groceries-api/actions/workflows/ci.yml) | [`api/prod/docs`](https://groceries-api-prod.up.railway.app/docs)
| **[frontend](https://github.com/BhawickJain/groceries-fe)**     | [![CI](https://github.com/BhawickJain/groceries-fe/actions/workflows/ci.yaml/badge.svg)](https://github.com/BhawickJain/groceries-fe/actions/workflows/ci.yaml)  [![Deploy](https://github.com/BhawickJain/groceries-fe/actions/workflows/cd.yaml/badge.svg)](https://github.com/BhawickJain/groceries-fe/actions/workflows/cd.yaml) | [`frontend/prod`](https://bhawickjain.github.io/groceries-fe/)

A full-stack app that allows you to track your grocery shopping. This Repo holds the `docker-compose` setup to spin up the local development environment.

## Frontend
- [x] Vite, Typescript, React


## Backend
- [x] Python, FastAPI, PostGres


__Local Development Postgres Connection URL__  
```
postgres://postgres:postgres@localhost:5432/postgres
```


## Features
- [x] add groceries to a checklist
- [x] add quantities for each grocery item
- [x] reorder groceries to your liking
- [ ] enter grocery stores you go to
- [ ] edit a grocery item
