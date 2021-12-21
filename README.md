# Service virtualization with OSB

This repository includes the following two projects:

- CustomESBProject project.- REST Service virtualization
- EmailSBproject project. SOAP Service virtualization

## Prerequisites

- Oracle JDeveloper 12c
- Oracle WebLogic 12
- REST web service: https://github.com/alexjcm/rest-web-service-with-jdev
- SOAP web service: https://github.com/alexjcm/soap-web-service-with-jdev


## Installation

Clone this repository:

`git clone https://github.com/alexjcm/osb-application.git`

To open the application from JDeveloper click on the **File** > **Open** menu and open the `*.jws` file of the newly cloned repository.


## Deployment

To deploy from JDeveloper click **Application** > **Deploy** menu.


## Obtain the WSDL file

### Option 1. Using the WSDL URL

http://localhost:7101/EmailSBProject/EmailPS?WSDL

### Option 2. Exporting a WSDL file from a Project or Folder in the OSB Console

1. In the Project Browser open the project containing the WSDL file you want to export.
2. Open the folder containing the proxy or business service whose WSDL file you want to export.
3. Right-click on the proxy or business service whose WSDL file you want to export and then click Export WSDL.
4. Unzip the generated .jar file to view the exported WSDL.

