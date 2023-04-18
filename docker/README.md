# docker #

## Objective ##

A simple app has been provided that needs to be shipped in a docker container. It consists of a python file

- Write the necessary dockerfile, install a python 3.x interpreter and copy the app.py source code into the container. Any standard linux base is fine (ubuntu given as default)

- Test the built container by running it.

- The system has been updated and now needs a new external lib, repeat the process for app_when.py and install any additional dependencies needed

- The container is failing security scans due to running as root, remedy this in a reasonable manner

- The image is now failing security scanning for an unrelated linux vulnerability, what options do you have for remediating this, both long & short term?

## Notes ##

- python not the focus of this test, docker is. Candidate should get additional guidance around python interpreter/dependency ecosystem if they don't have much background knowledge
