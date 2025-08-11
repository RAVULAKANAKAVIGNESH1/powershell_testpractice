

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Create form
$form = New-Object System.Windows.Forms.Form
$form.Text = 'Feedback Form'
$form.Size = New-Object System.Drawing.Size(400,300)
$form.StartPosition = 'CenterScreen'
$form.Topmost = $true

# Name Label & TextBox
$nameLabel = New-Object System.Windows.Forms.Label
$nameLabel.Text = 'Name:'
$nameLabel.Location = New-Object System.Drawing.Point(20,20)
$nameLabel.Size = New-Object System.Drawing.Size(60,20)

$nameBox = New-Object System.Windows.Forms.TextBox
$nameBox.Location = New-Object System.Drawing.Point(90,18)
$nameBox.Size = New-Object System.Drawing.Size(280,20)

# Feedback Label & TextBox
$feedbackLabel = New-Object System.Windows.Forms.Label
$feedbackLabel.Text = 'Feedback:'
$feedbackLabel.Location = New-Object System.Drawing.Point(20,60)
$feedbackLabel.Size = New-Object System.Drawing.Size(60,20)

$feedbackBox = New-Object System.Windows.Forms.TextBox
$feedbackBox.Location = New-Object System.Drawing.Point(90,58)
$feedbackBox.Size = New-Object System.Drawing.Size(280,120)
$feedbackBox.Multiline = $true

# Submit Button
$submitBtn = New-Object System.Windows.Forms.Button
$submitBtn.Text = 'Submit'
$submitBtn.Location = New-Object System.Drawing.Point(90,200)
$submitBtn.Size = New-Object System.Drawing.Size(80,35)

# Cancel Button
$cancelBtn = New-Object System.Windows.Forms.Button
$cancelBtn.Text = 'Cancel'
$cancelBtn.Location = New-Object System.Drawing.Point(200,200)
$cancelBtn.Size = New-Object System.Drawing.Size(80,35)
$cancelBtn.DialogResult = [System.Windows.Forms.DialogResult]::Cancel

# Add controls to the form
$form.Controls.Add($nameLabel)
$form.Controls.Add($nameBox)
$form.Controls.Add($feedbackLabel)
$form.Controls.Add($feedbackBox)
$form.Controls.Add($submitBtn)
$form.Controls.Add($cancelBtn)

# Button event handlers
$submitBtn.Add_Click({
    [System.Windows.Forms.MessageBox]::Show("Thank you for your feedback, $($nameBox.Text)!", 'Submitted', [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
    $form.Close()
})
$form.AcceptButton = $submitBtn
$form.CancelButton = $cancelBtn

# Show form
$form.ShowDialog()

