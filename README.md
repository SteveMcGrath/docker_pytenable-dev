# pyTenable Dockerized Development Environment

This docker image is an attempt to create a simple and uniform dev environment for testing against the pyTenable library.  The image is meant to be generally run interactively and will launch the user into a bpython shell with several libraries pre-installed.

The image has a default working directory of /workspace and any project files should be mounted to that space.

## Example Usage

Simply running the container to get a python shell:

```bash
docker run --rm -it stevemcgrath/pytenable-dev
```

Mounting the current working directory into the container workspace:

```bash
docker run --rm -it -v "$(pwd)":/workspace stevemcgrath/pytenable-dev
```

Running a python script from within the workspace:

```bash
docker run --rm -it -v "$(pwd)":/workspace stevemcgrath/pytenable-dev script.py
```