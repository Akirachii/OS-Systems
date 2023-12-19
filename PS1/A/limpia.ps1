#   Pau gra <3
#   Declare variables:
$originfolder = READ-HOST "State the original path of your files "      #   Asking for user prompt on the original path of files,
$finalfolder = "$($env:USERPROFILE)\Descargas"      #   Keeping the name of the final folder "$($env:USERPROFILE)" will translate to C:\Users\XXX,
$extension = READ-HOST "State the extension of the desired folders to be changed "      #   Asking again for user prompt on the desired extension [should be prompted without the "."],
Write-HOST $originfolder $extension     #   Now writing to host the folder and extension to make sure that is actually the files desired to move/erase,
$FilesMove= Get-ChildItem -Path $originfolder -Filter "*$extension"     #   Saving all the posible files with tat extension to a variable,
$FilesMove | Move-Item -Destination $finalfolder        #   Now moving all the files to the finalfolder [Downloads of user], 
$FilesMove2=Get-ChildItem -Path $finalfolder -Filter "*$extension"      #   This variable is the files already moved to the final folder, 

$yesOno= READ-HOST "Do you want to delete these items? (y/n)"       #   Asking for prompt to erase files
if($yesOno -eq "y" -or $yesOno -eq "Y"){        #   Entering if [yes= files will be removed and then writed to host],
    $FilesMove2 | Remove-Item
    Write-host "files removed succesfully"
}elseif ($yesOno -eq "n" -or $yesOno -eq "N"){      #   Continue if [no= files will NOT be removed and then writed to host "Files not erased"],
    Write-Host "Files did not erase"
}else{       #   Finished if [This case will be given if the user comes with invalid input],
    Write-host "Invalid option, Files were moved but not removed    "
}