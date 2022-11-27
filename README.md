# Setup Docker, Node.js and Node-RED on Ubuntu

Create an Ubuntu VM, e.g., on [FIWARE Lab](https://cloud.lab.fiware.org). 

Clone this repo: ``git clone https://github.com/alinonet/vm-init``.

Launch ``cd vm-init``; ``./setup.sh``.

### Other commands

Remove or rename the setup folder:

- Rename: ``mv vm-init <new_name>``

- Delete: ``rm -rf vm-init``

Check Docker containers and running processes:

- Docker: ``docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"``

- Ubuntu: ``top -u ubuntu``.

### Tested versions

Ubuntu 20.04

Ubuntu 22.04

### License

Copyright (C) Alerox, 2022
