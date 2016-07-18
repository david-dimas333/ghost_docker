# ghost Docker

## build image
docker build .

## docker hub image 
david333/ghost

## LiveFyre documentation
### Create account on LiveFyre
### Create a Site Identifier clicking on button Get Started http://web.livefyre.com/comments/
### Configure "Application LiveFyre Site Identifier" when adds a template to the project.

## Openshift add template
### Download the file or use github url, ghost-template refers a Json file with all objects
### necessary to instantiate the application
oc create -f ghost-template.json -n openshift