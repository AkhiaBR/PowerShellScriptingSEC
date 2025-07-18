# 'Invoke-WebRequest' -> utilizado para fazer requisicoes para paginas web

param($uri)

$web = Invoke-WebRequest -uri "$uri" -Method Options # executa o 'Invoke-WebRequest', especificando a uri do site ('$uri')

echo "O servidor roda:"
$web.headers.server # mostra o server rodando no site

echo "" # deixa um linha em branco

echo "O servidor aceita os metodos: "
$web.headers.allow # mostra os metodos permitidos