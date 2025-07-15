# PowerShell também utiliza parametros

param($ip) # quando executado, o arquivo espera um parametro chamado "ip"

if (!$ip) { # se não houver parametro
    echo "Modo de uso do programa:"
    echo ".\arquivo.ps1 [IP]"
}
else {
    echo "Efetuando Ping no host: $ip"
    ping -n 1 $ip | Select-string "Lost = 0"
}