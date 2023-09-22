#
# Module manifest for module 'WingetTools'
#

@{

    RootModule           = 'WingetTools.psm1'
    ModuleVersion        = '1.7.0'
    CompatiblePSEditions = @('Desktop', 'Core')
    GUID                 = '1130bb85-58d1-487d-9763-c38011f9613d'
    Author               = 'Jeff Hicks'
    CompanyName          = 'JDH Information Technology Solutions, Inc.'
    Copyright            = '2021-2023 JDH Information Technology Solutions, Inc.'
    Description          = 'A set of PowerShell tools for working with the winget package manager.'
    PowerShellVersion    = '5.1'

    # Type files (.ps1xml) to be loaded when importing this module
    TypesToProcess       = @("types\wginstalled.types.ps1xml")
    RequiredModules      = @("ThreadJob", "psyml")

    FormatsToProcess     = @(
        'formats\wgpackage.format.ps1xml',
        'formats\wgversion.format.ps1xml',
        'formats\wingetupgrade.format.ps1xml',
        'formats\wginstalled.format.ps1xml'
    )
    FunctionsToExport    = 'Get-WGPackage', 'Install-Winget', 'Get-WGReleaseNote',
    'Get-WGInstalled', 'Invoke-WGUpgrade', 'Get-WGUpgrade', 'Test-WGVersion' , 'Get-WGPath'
    AliasesToExport      = 'wglatest', 'iwg'
    PrivateData          = @{
        PSData = @{
            Tags         = @('winget', 'packagemanagement')
            LicenseUri   = 'https://github.com/jdhitsolutions/WingetTools/blob/main/LICENSE.txt'
            ProjectUri   = 'https://github.com/jdhitsolutions/WingetTools'
            # IconUri = ''
            ReleaseNotes = 'https://github.com/jdhitsolutions/WingetTools/blob/main/README.md'
        }
    }
}

