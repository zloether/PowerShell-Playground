# curl_powershell_3.0.ps1
# make web calls similar to cURL

# set the username
$user = "user"

# set the password
$pwd = ConvertTo-SecureString -String "Password" -AsPlainText -Force

# combine the username and password into a PowerShell credential
$cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $user,$pwd

# set the URL
$uri = "url"

# disable SSL/TLS certificate validation (optional)
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true} 

# make the web call
Invoke-RestMethod -Uri $uri -Credential $cred