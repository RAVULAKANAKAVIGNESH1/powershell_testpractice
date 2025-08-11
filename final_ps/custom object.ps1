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