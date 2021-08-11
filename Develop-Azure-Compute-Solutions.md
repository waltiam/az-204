# Develop Azure Compute Solutions

* Implement IaaS solutions
  * provision virtual machines (VMs)
    * provisioning a virtual machine results in the following:
      * network
      * machine
      * network interface (NIC)
      * public IP address
      * disks
      * firewall (NSG)
    * create from the azure console
      * default firewall rules block all traffic including http on port 80
      * add firewall rules to open port:
        * 80 (http)
        * 8172 (web deploy)
      * enable remote connections in the IIS manager
      * install .net core on VM
      * install web deploy tool
      * order is important (web deploy last)
    * only standard plan IP addresses can have static IP 
    * linux deployments require the following steps
      * use _WinScp_ for windows to linux deployments
      * install dotnet framework
      * execute the dotnet packaged app
      * needs a webserver (nginx)
      * configure _nginx_ to redirect port 80 (public) to 5000 (private)
      * [**accelerated networking**](https://docs.microsoft.com/en-us/azure/virtual-network/create-vm-accelerated-networking-powershell)
    * possible to deploy a custom image
      * _sysprep_ is a windows tool for removing user information and makes a generic / generalized version.
      * this is the use of the capture button
  * configure, validate, and deploy ARM templates
    * _Azure Resource Manager_
    * JSON script
    * _Azure CLI_ 
      * multiplatform including [_Azure_ cloud](https://shell.azure.com/)
    * _a bunch of stuff on backing up VM and restoring VM_
  * **configure container images for solutions**
  * **publish an image to the Azure Container Registry**
  * **run containers by using Azure Container Instance**
* Create Azure App Service Web Apps
  * create an Azure App Service Web App
    * supports multiple languages
    * App Service is _Platform as a Service_ (PaaS)
    * needs to be deployed in an _App Service Plan_
      * the billing plan supports different _Web App_
      * a single plan can host multiple services and apps
    * creating a _web app_ will create an _app service plan_
  * enable diagnostics logging
  * deploy code to a web app
    * using Visual Studio
    * using _az_ CLI
    * map custom domain
  * configure web app settings including SSL, API settings, and connection strings
    * azure console to configure ssl
    * CORS
    * deployment slots used for rollouts
    * the code for configuration setting may require a nuget package
  * implement autoscaling rules including scheduled autoscaling and autoscaling by operational or system metrics
    * auto scaling is based on the app service plan
    * can be scaled on:
      * service plan
      * storage queue
      * Service bus queue
Implement Azure functions
  * create and deploy Azure Functions apps
  * implement input and output bindings for a function
  * implement function triggers by using data operations, timers, and webhooks
  * implement Azure Durable Functions
  * implement custom handlers
