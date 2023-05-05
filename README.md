# Groceries

<hr>
<p align='center'>
🚧 The services under the project are currently private repositories, but you can raise issues against this repo so I can triage them. 🚧
</p>
<hr>

| Services	|   Status    |   Deployment   |
| :---	    |   :---      |   :---         |
| **[frontend](https://github.com/BhawickJain/groceries-fe)**     | [![frontend CI status badge](https://github.com/BhawickJain/groceries-fe/actions/workflows/ci.yaml/badge.svg)](https://github.com/BhawickJain/groceries-fe/actions/workflows/ci.yaml)  [![frontend Deploy status badge](https://github.com/BhawickJain/groceries-fe/actions/workflows/cd.yaml/badge.svg)](https://github.com/BhawickJain/groceries-fe/actions/workflows/cd.yaml) | [`frontend/prod`](https://bhawickjain.github.io/groceries-fe/)
| **[backend](https://github.com/BhawickJain/groceries-api)**     | [![backend CI status badge](https://github.com/BhawickJain/groceries-api/actions/workflows/ci.yml/badge.svg)](https://github.com/BhawickJain/groceries-api/actions/workflows/ci.yml) | [`api/prod/docs`](https://groceries-api-prod.up.railway.app/docs)

A full-stack app that allows you to track your grocery shopping. This Repo holds the `docker-compose` setup to spin up the local development environment.

## Overview

__App Architectural Diagram__

### Frontend

<img src="https://img.shields.io/badge/typescript-%23007ACC.svg?style=flat&logo=typescript&logoColor=white" alt="Typescript" height=17> <img src="https://img.shields.io/badge/react-%2320232a.svg?style=flat&logo=react&logoColor=%2361DAFB" alt="React" height=17> <img src="https://img.shields.io/badge/github%20pages-121013?style=flat&logo=github&logoColor=white" alt="GitHub Pages" height=17> <img src="https://img.shields.io/badge/vite-%23646CFF.svg?style=flat&logo=vite&logoColor=white" alt="Next JS" height=17> <img src="https://img.shields.io/badge/-jest-%23C21325?style=flat&logo=jest&logoColor=white" alt="Jest" height=17>

### React Component Breakdown
#### UI Wireframe

### Backend
<img src="https://img.shields.io/badge/python-3670A0?style=flat&logo=python&logoColor=ffdd54" alt="Python" height=17> <img src="https://img.shields.io/badge/railway-railway?style=flat&logo=railway&logoColor=white&color=black" alt="Railway" height=17> <img src="https://img.shields.io/badge/postgres-%23316192.svg?style=flat&logo=postgresql&logoColor=white" alt="Postgres" height=17> <img src="https://img.shields.io/badge/FastAPI-005571?style=flat&logo=fastapi" alt="Postgres" height=17>

#### Database Design
### Client-Side Encryption Strategy


<hr>


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
