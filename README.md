## fresnizky/polymer-cli
This is image contains the [Polymer App Toolbox](https://www.polymer-project.org/2.0/toolbox/) so you can get up and running developing with Polymer without installing all the tools on your own computer.

## Supported tags

-	[`latest` (*Dockerfile*)](https://github.com/fresnizky/docker-polymer-cli/blob/master/Dockerfile)

## Building an app with Polymer App Toolbox

From the [Polymer Project Documentation](https://www.polymer-project.org/2.0/start/index):

	Initialize & serve your project from a template
	===============================================

	1. Create a new project folder to start from

		$ mkdir my-app
		$ cd my-app

	2. Initialize your project

		$ docker run --rm -it -v $(pwd):/home/node/app -u node fresnizky/polymer-cli polymer init

	3. Serve your project

		$ docker run --rm -d -p 8080:8080 -v $(pwd):/home/polymer/app -u node fresnizky/polymer-cli polymer serve -H 0.0.0.0

		and just point your browser to port 8080

## Quick Tip

Since the `docker run` command is long, and if you're going to be using it often, I would suggest creating/adding an alias for it in your .bash_profile or .bashrc, like:

```console
alias polymer="docker run --rm -it -p 8080:8080 -v $(pwd):/home/node/app -u node fresnizky/polymer-cli polymer "
```

and then you can just use `polymer` along with the [Polymer CLI commands](https://github.com/Polymer/polymer-cli), like:

```console
polymer init
```
to initialize a Polymer project, or

```console
polymer serve -H 0.0.0.0
```
to run a development server that you can reach at port 8080

## Polymer-CLI Commands

[Polymer-CLI](https://github.com/Polymer/polymer-cli) includes a number of tools for working with Polymer and Web Components:

  - **init** - Create a new Polymer project from pre-configured starter templates
  - **install** - Install dependencies and [dependency variants](https://www.polymer-project.org/2.0/docs/glossary#dependency-variants) via Bower
  - **serve**	- Serve elements and applications during development
  - **lint** - Lint a project to find and diagnose errors quickly
  - **test** - Test your project with [`web-component-tester`](https://github.com/Polymer/web-component-tester/)
  - **build**	- Build an application optimized for production
  - **analyze** - Generate an analyzed JSON representation of your element or application


## Tools included in this image:

This image includes:

	* LTS version (6.x) of Node.js
	* git
	* Bower
	* Polymer CLI

## Container Shell Access

The `docker exec` command allows you to run commands inside a Docker container. The following command line will give you a bash shell inside your Polymer project container:

```console
docker run --rm -it  -v $(pwd):/home/node/app -u node fresnizky/polymer-cli bash
```
