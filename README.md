# Groceries

<hr>
<p align='center'>
🚧 The services under the project are currently private, but you can raise issues against this repo so I can triage them. 🚧
</p>
<hr>


| Services							 						                      		    |   Status       |   Deployment       |
| :---															                        	    |     :---       |     :---       |
| **[frontend](https://github.com/BhawickJain/groceries-fe)**     | [![frontend CI status badge](https://github.com/BhawickJain/groceries-fe/actions/workflows/ci.yaml/badge.svg)](https://github.com/BhawickJain/groceries-fe/actions/workflows/ci.yaml)  [![frontend Deploy status badge](https://github.com/BhawickJain/groceries-fe/actions/workflows/cd.yaml/badge.svg)](https://github.com/BhawickJain/groceries-fe/actions/workflows/cd.yaml) | [`frontend/prod`](https://bhawickjain.github.io/groceries-fe/)
| **[backend](https://github.com/BhawickJain/groceries-api)**     | [![backend CI status badge](https://github.com/BhawickJain/groceries-api/actions/workflows/ci.yml/badge.svg)](https://github.com/BhawickJain/groceries-api/actions/workflows/ci.yml) | [`api/prod/docs`](https://groceries-api-prod.up.railway.app/docs)

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
