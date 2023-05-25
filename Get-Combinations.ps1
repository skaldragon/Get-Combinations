  function Get-Combinations{
<# This script was made to display a list of different combinations you can have between a total value
Ex: You have 10 total items and can only combine two at a time, what is the total number of combinations you can have.

$TotalNumbers would be 10
$CombinationNumbers would be 2.
#>
  param(
  [Parameter(mandatory=$true)][int]$TotalNumbers,
  [Parameter(mandatory=$true)][int]$CombinationNumbers
  )
  $Number = 1
    1..$TotalNumbers | ForEach { $Number *= $_ }
     
  $Number2 = 1
    1..$CombinationNumbers | ForEach { $Number2 *= $_ }

$newnumber=($TotalNumbers - $CombinationNumbers)
   $Number3= 1
    1..$newnumber | ForEach { $Number3 *= $_ }
    $Result=$Number / ($CombinationNumbers * $Number3)
    return $Result
    }
