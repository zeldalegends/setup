# Setup Docker, Node.js and Node-RED

Create an Ubuntu VM, e.g., on [FIWARE Lab](https://cloud.lab.fiware.org). 

Clone this repo: ``git clone https://github.com/<user>/<repo>``.

Change dir ``cd <repo>`` and launch ``./setup.sh``.

Check Docker containers and running processes:

Docker: ``docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"``,

Ubuntu: ``top -u ubuntu``.
