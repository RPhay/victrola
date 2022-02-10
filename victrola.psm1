[CmdletBinding()]

[Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSAvoidGlobalVars", "")]
[Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseDeclaredVarsMoreThanAssignments", "")]

param()

Set-StrictMode -Version Latest

$Public = @(Get-ChildItem -Recurse -Path $PSScriptRoot\Scripts\*.ps1 -ErrorAction SilentlyContinue)

foreach ($import in @($Public + $Private)) {
   try {
      . $import.fullname
   }
   catch {
      Write-Error -Message "Failed to import function $($import.fullname): $_"
   }
}

#Import the Configuration File
try {
   $Global:victrolaConfig = Get-Content $PSScriptRoot\config\config.json | ConvertFrom-Json
}
catch {
   Write-Error -Message "There was an error importing the configuration file config\config.json: $_"
}



