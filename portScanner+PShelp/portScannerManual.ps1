# 'Get-Command' -> permite ver a lista de todos os comandos do PowerShell
# 'Get-Help [COMANDO] -> 'man' do windows bruh

param($ip, $porta)

if(!$ip -or !$porta) { # se $ip ou $porta nao forem passados como parametros: 
    echo "{--PORT-SCANNER--}"
    echo "MODO DE USO: .\arquivo.ps1 [ENDERECO] [PORTA]"
    echo "EXEMPLO: .\portScanner.ps1 google.com 80"
}
else {
    if (Test-NetConnection $ip -Port $porta) { 
        echo "A porta $porta esta ABERTA no endereco $ip"
    }
    else {
        echo "A porta $porta esta FECHADA no endereco $ip"
    }
}