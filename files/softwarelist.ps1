$packages = Get-WmiObject -Class Win32_Product
$returnpackages = @{}
foreach ($package in $packages)
{
   $subpackagedictionary = @{"Name" = $Package.Name; "Version" = $Package.Version; "Vendor" = $Package.Vendor;}
   $returnpackages.Add($Package.Name, $subpackagedictionary)
}
$returnpackages
