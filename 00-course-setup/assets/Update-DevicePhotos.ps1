# Update-DevicePhotos.ps1
# This script bulk updates the Device photo (Image) column in SharePoint using PnP PowerShell
# Prerequisites: Install-Module PnP.PowerShell -Scope CurrentUser

param(
    [Parameter(Mandatory=$true)]
    [string]$SiteUrl,  # e.g., "https://contoso.sharepoint.com/sites/ContosoIT"
    
    [string]$ListName = "Devices"
)

# Connect to SharePoint
Write-Host "Connecting to SharePoint site: $SiteUrl" -ForegroundColor Cyan
Connect-PnPOnline -Url $SiteUrl -Interactive

# Image URL mapping based on device title
$imageMapping = @{
    "Surface Laptop 13" = "https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Laptop-13.png"
    "Surface Laptop 15" = "https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Laptop-15.png"
    "Surface Pro"       = "https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Pro-12.png"
    "Surface Studio"    = "https://raw.githubusercontent.com/microsoft/agent-academy/refs/heads/main/docs/recruit/00-course-setup/images/device-images/Surface-Studio.png"
}

# Get all items from the Devices list
Write-Host "Fetching items from '$ListName' list..." -ForegroundColor Cyan
$items = Get-PnPListItem -List $ListName -PageSize 500

$updatedCount = 0
$errorCount = 0

foreach ($item in $items) {
    $title = $item.FieldValues["Title"]
    $itemId = $item.Id
    
    # Find matching image URL
    $imageUrl = $null
    foreach ($key in $imageMapping.Keys) {
        if ($title -like "*$key*") {
            $imageUrl = $imageMapping[$key]
            break
        }
    }
    
    if ($imageUrl) {
        try {
            Write-Host "Updating item $itemId - '$title'..." -ForegroundColor Yellow
            
            # Update the Device photo column (adjust column internal name if different)
            # For Image columns, use JSON format
            $imageValue = @{
                "type" = "thumbnail"
                "fileName" = "$title.png"
                "serverRelativeUrl" = $imageUrl
            } | ConvertTo-Json -Compress
            
            Set-PnPListItem -List $ListName -Identity $itemId -Values @{
                "Device_x0020_photo" = $imageUrl  # Try direct URL first
            }
            
            $updatedCount++
            Write-Host "  ✓ Updated successfully" -ForegroundColor Green
        }
        catch {
            $errorCount++
            Write-Host "  ✗ Error: $($_.Exception.Message)" -ForegroundColor Red
        }
    }
    else {
        Write-Host "Skipping item $itemId - '$title' (no matching image)" -ForegroundColor Gray
    }
}

Write-Host "`n========================================" -ForegroundColor Cyan
Write-Host "Update Complete!" -ForegroundColor Green
Write-Host "  Items updated: $updatedCount" -ForegroundColor Green
Write-Host "  Errors: $errorCount" -ForegroundColor $(if ($errorCount -gt 0) { "Red" } else { "Green" })
Write-Host "========================================" -ForegroundColor Cyan

# Disconnect
Disconnect-PnPOnline
