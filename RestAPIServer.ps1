#Requires -Version 5
   <#  
    .Synopsis  
        Script will open a port and will expect text. This text will be compared against an array of words and if match found it will alter the incoming text.
          
    .Description  
        Company Anon Inc. wants to distribute product documentation along with their software. 
		Documentation is created in plain text files. However, Anon Inc. wants to make sure that these files do not contain text which infringes copyrights and trademarks. 
		Now they need a simple solution which scans for certain trademarked names in a given text file and appends ® to trademark.
          
    .Notes  
        #Requires -Version 5.0  
        
		Written by Levente Fulop for personal training purposes.
        GitHub: levyfulop
        .LINK
			https://github.com/levyfulop/PowerShellRestAPI
          
    .Inputs  
        System.String via RestAPI call
          
    .Outputs  
        System.String 
          
    .Example  
		
	#> 

#The list of Key words will be contained in this file, so let`s load them.
$global:ScriptPath = Split-Path -parent $PSCommandPath
$global:ScriptPath = $ScriptExecutionPath
if($psISE){$global:ScriptPath = $(Split-Path -Path $psISE.CurrentFile.FullPath)}

$KeyWordsFile = [string]$global:ScriptPath + "\Config\Keyword.txt"

#Lets get the unique keywords from that file
$KeyWordsFileEntries = [system.array]((gc $KeyWordsFile) | select -Unique)




 # Let`s start at the beginning. Lets create a listener on port that is high enough not to be used by any system apps.
$RestListener = New-Object System.Net.HttpListener
$RestListener.Prefixes.Add('http://+:50000/') 
$RestListener.Start()

if($RestListener.IsListening){
	write-host 'Listening ...'
}

#Now we need a continuous loop
while($true){


}

 