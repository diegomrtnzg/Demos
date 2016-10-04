#Comprobar PowerShell
Get-Host
Get-Module

#Demo AWS

#Install AWS Tools. info https://blogs.technet.microsoft.com/jessicadeen/microsoft/aws-tools-for-powershell-core-on-linux-and-os-x/

# Supply AWS Credentials

Set-AWSCredentials -AccessKey [AccessKey] -SecretKey [SecretKey] -StoreAs [User]

Set-DefaultAWSRegion -Region eu-west-1

Initialize-AWSDefaults -ProfileName [User] -Region eu-west-1

#Create an Amazon S3 Bucket,
New-S3Bucket -BucketName hello1

Write-S3BucketWebsite -BucketName hello1 -WebsiteConfiguration_IndexDocumentSuffix index.html

Write-S3BucketPolicy -BucketName hello1 -Policy(Get-Content ./AWS/bucketpolicy.json -Raw)

Write-S3Object -BucketName hello1 -Folder . -KeyPrefix / -Recurse

#Remove Amazon S3 Bucket
Remove-S3Bucket -BucketName hello1

#Demo Azure

#Install Azure Tools. info http://jessicadeen.com/tech/microsoft/getting-started-with-powershell-core-and-azurerm-modules-on-ubuntu-and-os-x/

# Supply Azure Credentials
Login-AzureRmAccount

#Create Resource Group
$locName = "West Europe"
$rgName = "TechSummitDemo"
New-AzureRmResourceGroup -Name $rgName -Location $locName

#Create a VirtualMachine
$templatePath = "./Azure/azuredeploy.json"
$parameterFile = "./Azure/azuredeploy.parameters.json"
New-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile $templatePath -TemplateParameterFile $parameterFile

### Remove the resource group and its resources
Remove-AzureRmResourceGroup -Name $rgName 