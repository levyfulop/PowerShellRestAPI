 # Let`s start at the beginning. Lets create a listener on port that is high enough not to be used by any system apps.
$RestListener = New-Object System.Net.HttpListener
$RestListener.Prefixes.Add('http://+:50000/') 
$RestListener.Start()
write-host 'Listening ...'



 