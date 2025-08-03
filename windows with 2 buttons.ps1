Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = "My powershell form"
$form.size = New-Object System.Drawing.Size(300,200)
$form.StartPosition = "centerscreen"


$button1 = New-Object System.Windows.Forms.Button
$button1.Text =" click me 1"
$button1.size = New-Object system.drawing.size(100,30)
$button1.location = New-object system.drawing.point(30,50)


$button1.Add_click({
    show-message -message "you clicked button1"
    })

$button2 =New-Object System.Windows.Forms.Button
$button2.Text ="click me 2"
$button2.Size =new-object System.Drawing.Size(100,30)
$button2.location =new-object System.Drawing.point(150,50)

$button2.add_click({
    show-message -message "you clicked button 2"
})

$form.controls.Add($button1)
$form.controls.Add($button2)


function Show-Message {
    param (
        [string]$Message
    )
    [System.Windows.Forms.MessageBox]::Show($Message, "Info")
}


$form.ShowDialog()
