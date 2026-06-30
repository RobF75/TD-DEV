
  $SourceDocs = Get-ChildItem –Path C:\dev\remotupd | foreach  {Get-FileHash –Path $_.FullName}

  $DestDocs = Get-ChildItem –Path C:\centura\localexe2 | foreach  {Get-FileHash –Path $_.FullName}

  $FilesList = (Compare-Object -ReferenceObject $SourceDocs -DifferenceObject $DestDocs  -Property hash -PassThru).Path 
  
  foreach ($FileToUpdate in $FilesList ) {
  if($f.SideIndicator -eq "=>") {
  $source = Get-Item -Path $FileToUpdate
  $extention = $source.Extension
  $filename = $source.BaseName
  $dest = "C:\centura\localexe2\"+$filename+ (Get-Date -Format FileDateTime )+$extention
  $link = "C:\centura\links\"+$filename+$extention


  Write-Host "Copying Updated File : " + $source
  Write-Host "Renaming New File : " $dest

  Copy-Item $source -Destination $dest

  Write-Host "Creating Symbolic link for : " $link " To " $dest

  new-item -itemtype symboliclink -path $link -Target $dest -Force
  }
}
