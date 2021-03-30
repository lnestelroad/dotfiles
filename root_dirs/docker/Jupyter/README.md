# A Jupyter Notebook Template for Data Analysis on Docker/VS Code

**Author:** Liam Nestelroad

This repo is used to set up a quick jupyter web instance though docker which will include all of the basic data science python modules and configurations. This repo should be cloned in the root dir (I know this is terrible and it will be fixed) under `/docker/Jupyter`. After that, 

## Docker Setup

To start, make sure that you have docker and docker-compose set up on your machine.

+ [Installation Guide](https://docs.docker.com/get-docker/)
+ [Post installation steps for linux](https://docs.docker.com/engine/install/linux-postinstall/)

Then, from any directory you want to access `.ipynb` files from, just run the following commands:
```bash
ln -sf /docker/Jupyter/docker-compose.yaml ./docker-compose.yaml
docker-compose up
```

## Usage with Visual Studio Code

It's actually pretty awesome now, simply install the python extension from the VS code extenstions store and then open a `.ipynb` file and you're done.

## Shit I've Learned

### How to enable virtual environments with VS codes local Jupyter kernels

This was a bit of a process to figure out but we got there with [this](https://stackoverflow.com/questions/58119823/jupyter-notebooks-in-vscode-does-not-use-active-virtual-environment) help. To get this to work follow the steps below:

+ Set up virtual env first with the following commands:
    ```bash
    python3 -m venv <NAME OF ENVIRONMENT>
    source <NAME OF ENVIRONMENT>/bin/activate
    pip3 install ipykernel
    ipython kernel install --user --name=<ENVIRONMENT NAME>
    ```
+ Install whatever python modules you're gunna need.
+ Open VS code from the virtual environment
+ Open a jupyternb (or make a new one) and select the env kernel in the top right.
+ Done