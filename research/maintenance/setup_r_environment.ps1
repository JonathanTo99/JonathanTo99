# R Environment Setup and Validation Script
# Run this script to ensure R environment is properly configured

param(
    [switch]$AddToPath,
    [switch]$CreateAliases,
    [switch]$TestEnvironment,
    [switch]$All
)

# Colors for output
$Green = "Green"
$Yellow = "Yellow"
$Red = "Red"
$Cyan = "Cyan"

function Write-StatusMessage {
    param($Message, $Color = "White")
    Write-Host $Message -ForegroundColor $Color
}

function Test-RInstallation {
    Write-StatusMessage "=== Testing R Installation ===" $Cyan
    
    $RPath = "C:\Program Files\R\R-4.5.1\bin"
    $RExe = "$RPath\R.exe"
    $RScript = "$RPath\Rscript.exe"
    
    if (Test-Path $RExe) {
        Write-StatusMessage "✓ R.exe found at: $RExe" $Green
    } else {
        Write-StatusMessage "✗ R.exe not found at expected location" $Red
        return $false
    }
    
    if (Test-Path $RScript) {
        Write-StatusMessage "✓ Rscript.exe found at: $RScript" $Green
    } else {
        Write-StatusMessage "✗ Rscript.exe not found at expected location" $Red
        return $false
    }
    
    return $true
}

function Test-RPath {
    Write-StatusMessage "=== Testing R in PATH ===" $Cyan
    
    try {
        $version = & Rscript --version 2>&1
        if ($LASTEXITCODE -eq 0) {
            Write-StatusMessage "✓ Rscript accessible from PATH: $version" $Green
            return $true
        } else {
            Write-StatusMessage "✗ Rscript not accessible from PATH" $Red
            return $false
        }
    } catch {
        Write-StatusMessage "✗ Error testing Rscript: $($_.Exception.Message)" $Red
        return $false
    }
}

function Add-RToPath {
    Write-StatusMessage "=== Adding R to PATH ===" $Cyan
    
    $RPath = "C:\Program Files\R\R-4.5.1\bin"
    $currentPath = [Environment]::GetEnvironmentVariable("PATH", "User")
    
    if ($currentPath -notlike "*$RPath*") {
        $newPath = $currentPath + ";" + $RPath
        [Environment]::SetEnvironmentVariable("PATH", $newPath, "User")
        Write-StatusMessage "✓ R added to user PATH" $Green
        Write-StatusMessage "  Please restart VS Code or PowerShell for changes to take effect" $Yellow
    } else {
        Write-StatusMessage "✓ R already in user PATH" $Green
    }
}

function Test-RPackages {
    Write-StatusMessage "=== Testing R Packages ===" $Cyan
    
    $testScript = @"
packages <- c('ggplot2', 'ggprism', 'dplyr', 'viridis')
for (pkg in packages) {
    if (requireNamespace(pkg, quietly = TRUE)) {
        cat('✓', pkg, 'is available\n')
    } else {
        cat('✗', pkg, 'is NOT available\n')
    }
}
"@
    
    $tempFile = [System.IO.Path]::GetTempFileName() + ".r"
    $testScript | Out-File -FilePath $tempFile -Encoding UTF8
    
    try {
        & Rscript $tempFile
    } catch {
        Write-StatusMessage "✗ Error testing R packages: $($_.Exception.Message)" $Red
    } finally {
        Remove-Item $tempFile -ErrorAction SilentlyContinue
    }
}

function Show-Usage {
    Write-StatusMessage "R Environment Setup Script" $Cyan
    Write-StatusMessage "Usage:" $Yellow
    Write-StatusMessage "  .\setup_r_environment.ps1 -AddToPath    # Add R to PATH"
    Write-StatusMessage "  .\setup_r_environment.ps1 -TestEnvironment    # Test R setup"
    Write-StatusMessage "  .\setup_r_environment.ps1 -All    # Run all setup steps"
    Write-StatusMessage ""
}

# Main execution logic
if ($All) {
    $AddToPath = $true
    $TestEnvironment = $true
}

if (-not ($AddToPath -or $TestEnvironment)) {
    Show-Usage
    exit
}

Write-StatusMessage "R Environment Setup and Validation" $Cyan
Write-StatusMessage "=====================================" $Cyan

if ($AddToPath) {
    Add-RToPath
}

if ($TestEnvironment) {
    $installOk = Test-RInstallation
    $pathOk = Test-RPath
    
    if ($installOk -and $pathOk) {
        Test-RPackages
        Write-StatusMessage "`n✓ R environment setup completed successfully!" $Green
    } else {
        Write-StatusMessage "`n✗ R environment setup has issues that need attention" $Red
    }
}

Write-StatusMessage "`nNext steps:" $Yellow
Write-StatusMessage "1. Restart VS Code or PowerShell if PATH was modified"
Write-StatusMessage "2. Run: Rscript test.r  # to test your existing script"
Write-StatusMessage "3. Use VS Code tasks (Ctrl+Shift+P -> Tasks: Run Task)"
Write-StatusMessage "4. Run: .\setup_r_environment.ps1 -TestEnvironment  # to verify setup"
