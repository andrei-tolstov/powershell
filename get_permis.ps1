# Install-Module -Name NTFSSecurity 
# Import-Module NTFSSecurity


$path = '\\msk-co-app006.ivoin.ru\FileStore\ЦО\'
$dirs = (Get-ChildItem $path )
foreach ($d in $dirs){
    
    if (Get-Item ($path + $d) | Get-NTFSAccess | Select-String -Pattern 'upp')
        {$path + $d}
    if (Get-Item ($path + $d) | Get-NTFSAccess | Select-String -Pattern 'opt')
        {$path + $d}
}

