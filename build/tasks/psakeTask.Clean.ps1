Function PSakeTask-Clean {
    Remove-Module $moduleName -Force -ErrorAction SilentlyContinue

    if (Test-Path -Path $outputDir) {
        Get-ChildItem -Path $outputDir -Recurse | Remove-Item -Force -Recurse
    }
    else {
        New-Item $outputDir -ItemType Directory > $null
    }
    New-Item -Path $outputModDir -ItemType Directory | Out-Null
    "`tCleaned previous output directory [$outputDir]`n`tcreated [$outputModDir]"
}