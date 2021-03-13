Get-WindowsFeature -Name web-server | Install-WindowsFeature -IncludeManagementTools

Remove-Item -Path C:\inetpub\wwwroot\default.htm -Force

New-Item -Path C:\inetpub\wwwroot\default.htm -ItemType File

New-Item -Path C:\inetpub\wwwroot\health -ItemType Directory

New-Item -Path C:\inetpub\wwwroot\health\health.htm -ItemType File

$addtodefaultfile = "<html>

<head>

<title>DEFAULT WEB PAGE</title>

</head>

<body>

DEFAULT WEB PAGE ON $ENV:COMPUTERNAME!

</body>

</html>"

$addtohealthfile = "<html>

<head>

<title>HEALTH CHECK</title>

</head>

<body>

I'M $ENV:COMPUTERNAME AND YEP I'M UP!

</body>

</html>"

Add-Content -Path C:\inetpub\wwwroot\default.htm -Value $addtodefaultfile

Add-Content -Path C:\inetpub\wwwroot\health\health.htm -Value $addtohealthfile
