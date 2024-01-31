# Architecture

This project is a developpement demonstration on web application.
It's build on top of different framework:
- [FastAPI](https://fastapi.tiangolo.com/)
- [Strawberry](https://strawberry.rocks/)
- [SQLModel](https://sqlmodel.tiangolo.com/)
- [Typer](https://typer.tiangolo.com/)
- [Pulumi](https://www.pulumi.com/)

There is 5 parts:
- [Galaxy Census Backend](https://github.com/cdubos-fr/galaxy-census-backend): Backend microservice, expose endpoint to collect data
- [Galaxy Census Fronted](https://github.com/cdubos-fr/galaxy-census-frontend): Frontend microservice, expose frontend interface
- [Galaxy Census CLI](https://github.com/cdubos-fr/galaxy-census-cli): A command line interface to interact with backend.
- [Galaxy Census Infrastructure](https://github.com/cdubos-fr/galaxy-census-infra): Infrastructure-As-Code for this project.
- [Galaxy Census Library](https://github.com/cdubos-fr/galaxy-census-library): Python library with common element for services.


# What it should do ?

A long time ago, in a galaxy far, far away... The Galactic senate need census to control planet population during the clone war, and prevent attack.
