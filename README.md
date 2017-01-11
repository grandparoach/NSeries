# NSeries
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fgrandparoach%2FNSeries%2Fmaster%2F%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

This template will deploy a single NC6 machine built from the RHEL 7.2 image in the Marketplace.  It will provision the necessary storage account and Virtual Network.  After the machine is built, it will run the script to install the NVidia drivers.  

You will need to select a region for the Resource Group which has the N-Series machines available, and you will need to assure that your subscription has sufficient core quota.  If not, you will need to open a support ticket to request a quota increase.
