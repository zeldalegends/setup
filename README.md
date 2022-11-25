# Setup Docker, Node.js and Node-RED

Create an Ubuntu VM, e.g., on [FIWARE Lab](https://cloud.lab.fiware.org). 

Clone this repo: ``git clone https://github.com/alinonet/setup-ubuntu-vm``.

Launch ``cd setup-ubuntu-vm; ./setup.sh``.

### Other commands

Remove or rename the setup folder:

- Rename: ``mv setup-ubuntu-vm <new_name>``

- Delete: ``rm -rf setup-ubuntu-vm``

Check Docker containers and running processes:

- Docker: ``docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"``,

- Ubuntu: ``top -u ubuntu``.
