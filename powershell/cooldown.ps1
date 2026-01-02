$minutes=$args[0]

if ($null -eq $minutes)
{
    $minutes=10
}

$seconds=$minutes * 60
shutdown /s /t $seconds
