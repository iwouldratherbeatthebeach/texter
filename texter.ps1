# Set the path to your text file
$filePath = "C:\Path\To\Your\Text\File.txt"

sleep 1

# Check if the file exists
if (Test-Path $filePath) {
    # Read each line from the file
    Get-Content $filePath | ForEach-Object {
        # Perform action with each line (replace this with your actual sending logic)
        Write-Host "Sending line: $_"
      
        # Use SendKeys to simulate typing the line
        Add-Type -AssemblyName System.Windows.Forms
        [System.Windows.Forms.SendKeys]::SendWait("$_{ENTER}")
        
        # Add a delay if needed
        Start-Sleep -Seconds 1
    }
} else {
    Write-Host "File not found: $filePath"
}