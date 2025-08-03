get-service
get-alias
$myvar = "09edf"
$myvar.length


# arrays and indexing

$a = 1,2,3,4,5
$a[4]
$a[0..3]
$a[-1..-3]

$b = 1 .. 10
$b[0..4]

# hash table

$see=@{
"appname" = "app1"
"version" = "11"
"maxusers" =100
}

$see["appname"] ="hello"

$see["appname"]

#custom object

$person =[pscustomobject]@{
firstname ="jhon"
latname ="wick"
}

$person.GetType()


#list of custom objects
$employees =@(
[pscustomobject]@{name= "alice"; age=45 ; role="manager"}
[pscustomobject]@{name= "john" ; age=23 ; role="developer"}
)

#iterate through a list of custom objects

foreach ($i in $employees)
{
 
 $($i.name),$($i.age),$($i.role)
 }

 #pipe line : the output of the first command will be the output of the next command


 "hello world" | ForEach-Objet { $_.ToBoolean()}

 # using pipe symbol we will get the specified servicecs from the machine

# to get all the process 
 
Get-Process

# o get the process related to notepad

Get-Process | where-object {$_.Name -eq "Notepad"}

#to get the process related to notepad and to get the selected coloummns of data

Get-Process | Where-Object {$_.Name -eq "Notepad"} | Select-Object id, name

# to get all the services 
Get-Service

# to get all the services which are running
Get-Service | where-object{$_.status -eq "Running"}

#to get the child item from specified path or to know how many items are there in given path
Get-ChildItem -path "D:\ID proofs"

# to print files in that location which are greater than 1mb
Get-ChildItem -path "D:\ID proofs" | Where-Object {$_.length -gt 1MB}

# if, elseif , else - conditional statements 
$age=25
if($age -le 18)
{
Write-Output("you are a minor")}
elseif($age -gt 18 -and $age -le 60){
Write-Output("You are an adult")
} 
else{
Write-Output("you are a senior")
}

#switch statement


$input12 = "yellow"
switch ($input12){
    "Red"{Write-Output "stop"}
    "Yellow"{Write-Output "wait"}
    "green"{Write-Output "Go"}
    Default {Write-Output "Unknown colour"}
}

#try, catch, finally :error handling









