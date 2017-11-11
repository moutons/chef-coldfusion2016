# coldfusion 2016 cookbook

Installs Adobe's Coldfusion 2016 software for development only

## Requirements

- Chef 12+

The Coldfusion binary installer must be downloaded to this cookbook's `./files` directory as `Coldfusion_2016_WWEJ_linux64.bin` for the moment

TODO: add download from URL

### Platforms

- CentOS, Red Hat, Fedora
- Debian, Ubuntu

## Usage

For now, pull down this cookbook to your local machine, copy the coldfusion binary to the `files` directory, and run `kitchen converge default-centos-69`
Once the node has converged, log in using `kitchen login` to work with the installation

- the coldfusion server should have started when the node converged
The test kitchen settings forward port ~80 and~ 8500 from the local host to the same port~s~ on the kitchen node
- browsing to http://localhost/ gets you to httpd on the kitchen node
- browsing to http://localhost:8500/ gets you to coldfusion directly on the kitchen node
- in order to set the system's coldfusion installation up, browse to http://localhost:8500/CFIDE/administrator/index.cfm roughly a minute after starting or restarting the coldfusion process

TODO: Include this cookbook in your node's run list.
