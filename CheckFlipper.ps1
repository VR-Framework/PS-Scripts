$val = 0
while ($val -ne 3) 
{
    Start-Sleep -Seconds 43200
    curl https://shop.flipperzero.one/ > flipper2.txt
    Start-Sleep -Seconds 1
    $Flip2SizeB = (Get-Item -Path .\flipper2.txt).Length/1KB
#    cp .\flipper.txt .\flipper2.txt
    Start-Sleep -Seconds 1
#    curl https://shop.flipperzero.one/ > flipper.txt
    $Flip1Size = (Get-Item -Path .\flipper.txt).Length/1KB
    Start-Sleep -Seconds 1
    diff .\flipper.txt .\flipper2.txt
            if ($Flip2Size -ne $Flip1Size)
            {
                Write-Host "Flipper Now Availible, Go Check"
            }
#else
#{
#    $val++
#    Write-Host $val
#}

    $val++
    Write-Output $val
    Write-Output "Did a Thing"
}