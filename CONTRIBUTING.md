# Notes for Contributors

## Prerequisites
This project requires [Apache Maven](http://maven.apache.org) to build.

## Build
The JAR can be built using the command ```mvn package```.

## Website
The website is built using the commnad ```mvn site```.

Updates to the published site are accomplished using the command ```mvn site-deploy``` after setting up the [GitHub Maven Plugin](https://github.com/github/maven-plugins) to allow authentication to the server __github__ in the _settings.xml_ file.
