$path_to_folder = "C:\inetpub\logs\LogFiles\W3SVC1"
$filename = dir $path_to_folder -File | sort LastWriteTime -Descending | select -First 1
$path_to_file = "$path_to_folder\$filename"
$regex = '\/c60u\/\S{12}\.cfg.*\sDinstar.*404'

$file = Get-Item -Path $path_to_file | Get-Content -Tail 5000
$file -match $regex
