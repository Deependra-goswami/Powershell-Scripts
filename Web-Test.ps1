$websites = @(
    "https://www.sky.co.nz",
    "https://broadband.sky.co.nz",
    "https://account.sky.co.nz",
    "https://get.sky.co.nz",
    "https://www.primetv.co.nz",
    "https://www.skybusiness.co.nz",
    "https://www.skybusiness.co.nz",
    "https://www.skyadvertising.co.nz"
)
foreach ($website in $websites) {
    $HTTP_Request = [System.Net.WebRequest]::Create($website)
    $HTTP_Response = $HTTP_Request.GetResponse()
    $HTTP_Status = [int]$HTTP_Response.StatusCode

    If ($HTTP_Status -eq 200) {
    Write-Host "`n Site $website is OK!"
    }
    Else {
    Write-Host "`n The Site $website may be down, please check!"
    }
 }
Write-Host "`n"
Read-Host -Prompt "Press Enter to exit"

