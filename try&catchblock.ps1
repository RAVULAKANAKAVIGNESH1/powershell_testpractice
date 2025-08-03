try{
 Get-Content-path "C:\Users\ravul\OneDrive\Desk" -erroractionstop
 }
 catch{
    Write-Output("Error: $($_.Exception.message)")
    get-content-path "C:\Users\ravul\OneDrive\Desktop\mytools\MyTools"
}
finally{
    Write-Output("File operation closed")
}



Get-Content-path "C:\Users\ravul\OneDrive\Desktop\Untitled2.ps1"