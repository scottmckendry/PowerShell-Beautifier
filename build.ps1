param(
    [string]$version = (Get-Date).ToString("yyyy.MM.dd.HHmm")
)
$manifestParams = @{
    "ModuleVersion" = $version
    "Path"          = "./ps-prettifier.psd1"
    "Author"        = "Scott McKendry"
    "CompanyName"   = "www.scottmckendry.tech"
    "NestedModules" = @("./src/ps-prettifierMain.psm1", "./src/ps-prettifierPopulateValidNames.psm1", "./src/FileSystem.Encoding.psm1")
    "Description"   = "Powershell script formatting tool, based on PowerShell-Beautifier by Dan Ward."
    "ProjectUri"    = "https://github.com/scottmckendry/ps-prettifier"
    "LicenseUri"    = "https://github.com/scottmckendry/ps-prettifier/blob/main/LICENSE"
    "PassThru"      = $true
}

Remove-Item -Path "./ps-prettifier.psd1" -Force -ErrorAction SilentlyContinue
New-ModuleManifest @manifestParams

