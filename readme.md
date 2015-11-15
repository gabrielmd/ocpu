OpenCPU APP: Recommendation system
====================
  
The purpose of this OpenCPU app is to create a recommendation system for WSNs and publish an API to access it.
The API can be used with [opencpu.js](http://github.com/jeroenooms/opencpu.js), which is a library for calling R functions from Javascript using OpenCPU.  

Customization
----------

In order to develop your own application and customize its functionalities, you need to follow these steps:

 * Fork this repository
 * Rename it, if needed
     * If you rename the repository: 
         * Edit the first line of the file DESCRIPTION with the new repository name
         * Rename the file ocpu.Rproj to {new_repository_name}.Rproj

Cloud Demo
----------

The application can be hosted online in the OpenCPU servers. In order to do it, follow the steps in the Project Settings page:

 * Go to tab "Webhooks & services"
 * Add the URL "https://public.opencpu.org/ocpu/webhook" as a 'WebHook' in your Github repository
 * Select Content-type application/x-www-form-urlencoded
 * Leave the "Secret" field empty
 
To trigger a build, push a commit to the master branch. The build will show up under Recent Deliveries in your github webhook page, and you should receive an email reporting if the installation was successful.

The application will be available at the address https://{your_github_username}.ocpu.io/{new_repository_name}/

Tests can use the API making POST requests to the address: https://{your_github_username}.ocpu.io/{new_repository_name}/R/status/json/

If the setup was properly made, the response will contain a JSON variable with the string "API working".

Using it locally
-----------

To run the app in your local R session:

 * Install app:   
``library(devtools)``  
``install_github("gabrielmd/ocpu")``

 * Load in opencpu:   
``library(opencpu)``   
``opencpu$browse("/library/ocpu/www")``

