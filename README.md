# Random Jupyter Notebooks

A random collection of some of my Jupyter notebooks with supporting files.


---

## Quick Start

Just open any of the ipynb files; GitHub will statically render them.
For quick dynamic rendering, run them through [nbviewer](https://nbviewer.jupyter.org/).

## Running Locally

If you already have a notebook server, just upload to it.
Many shared notebook servers, hubs, and labs will have the required extensions.

To quickly run your own notebook server, use my [Docker image](https://hub.docker.com/repository/docker/derekwlms/jupyter-notebook) or compose one from the [Dockerfile](Dockerfile). 
This is based on a common [Jupyter Docker Stack](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html) with some additional extensions. 

Pre-requisites: [git](https://git-scm.com/) and [Docker](https://www.docker.com/).

1. Get the code: `git clone https://github.com/derekwlms/jupyter-notebooks.git`
2. `cd jupyter-notebooks`
3. `docker run -p 8888:8888 derekwlms/jupyter-notebook`
4. [Open jupyter in your browser](http://localhost:8888). Login with the authentication token written to the docker logs.
5. Upload the notebooks from this repo.

## License
Not much here, but released under the [ISC License](https://opensource.org/licenses/ISC) anyway. See [LICENSE.txt](LICENSE.txt).

## TODO

- Add remaining notebooks (the ones that can be shared)
- Add links through nbviewer
- Try a smaller base image. scipy is 1.32 GB.
- CI docker image build, maybe include notebooks for quick start
