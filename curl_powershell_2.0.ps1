# curl_powershell_2.0.ps1
# make web calls similar to cURL

# set the username
$user = "user"

# set the password
$pwd = ConvertTo-SecureString -String "password" -AsPlainText -Force

# combine the username and password into a PowerShell credential
$cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $user,$pwd

# set the URL
$uri = "url"

# disable SSL/TLS certificate validation (optional)
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}

# create a webclient object
$webclient = new-object system.net.webclient

# set the credentials for the webclient object
$webclient.Credentials = $cred

# make the web call
$webclient.DownloadString($uri)

