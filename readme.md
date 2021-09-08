# Docker - Youtube Auto Archiver

Dockerized version of my [Youtube Auto Archiver](https://github.com/aziascreations/Youtube-Auto-Archiver) project.

## Warning

The container is running the application as root which may be dangerous if you improperly configure the app as it is vulnerable to 
[command injection attacks](https://owasp.org/www-community/attacks/Command_Injection) if its config file is messed with.<br>
This **will** be fixed once I know how to set that up properly in the Dockerfile.

## Installation

Simply clone this repository using the following command:<br>
`git clone --recurse-submodules https://github.com/aziascreations/Docker-Youtube-Auto-Archiver`

And run *docker compose* like so in the cloned directory:
`docker-compose up`

## Configuration

For information on how to configure the app, check the relevant section on the project's readme.

For infrmation regarding the configuration of this container, all you have to do is change the `/data` volume if you need it in a specific location.

## License

[Unlicense](LICENSE)
