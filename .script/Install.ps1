
try {
    choco > $null
    Write-Host "Chocolatey is already installed"  -ForegroundColor Green
} catch {
    Write-Host "Chocolatey is not installed, installing now" -ForegroundColor Yellow
    Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) > $null
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")     
    Write-Host "Chocolatey successfully installed"  -ForegroundColor Green   
}

try {
    python --version > $null
    Write-Host "Python is already installed" -ForegroundColor Green
} catch {
    Write-Host "Python is not installed, installing now" -ForegroundColor Yellow
    choco install python -Force
    Write-Host "Python successfully installed"  -ForegroundColor Green          
}

try {
    Write-Host "Installing MkDocs"  -ForegroundColor Green
    pip install mkdocs
    Write-Host "MkDocs successfully installed"  -ForegroundColor Green  
} catch {    
}

try {
    Write-Host "Installing MkDocs-Material"  -ForegroundColor Green
    pip install mkdocs-material
    Write-Host "MkDocs-Material successfully installed"  -ForegroundColor Green  
} catch {    
}