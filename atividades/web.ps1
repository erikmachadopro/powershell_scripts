<#

NOTAS

Get-Command | select-string web

PS E:\ethical_hacking_scripts\desec_lab\powershell_scripts> 
Get-Command | select-string web

Publish-BCWebContent
Invoke-WebRequest
New-WebServiceProxy

get-help Invoke-WebRequest

COMANDO : Invoke-WebRequest racksistemas.com

PS E:\ethical_hacking_scripts\desec_lab\powershell_scripts> Invoke-WebRequest racksistemas.com


StatusCode        : 200
StatusDescription : OK
Content           : <!DOCTYPE html>
                    <html lang="pt-BR">
                    <head>
                    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                    	<meta name="viewport" content="width=device-width">
                    		<meta name='robots' content='no...
RawContent        : HTTP/1.1 200 OK
                    Transfer-Encoding: chunked
                    Connection: keep-alive
                    Vary: Accept-Encoding
                    Retry-After: 600
                    X-XSS-Protection: 1; mode=block
                    X-Content-Type-Options: nosniff
                    X-Nginx-Upstream-Cache-S...
Forms             : {}
Headers           : {[Transfer-Encoding, chunked], [Connection, keep-alive], [Vary, Accept-Encoding], [Retry-After, 600]...}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : mshtml.HTMLDocumentClass
RawContentLength  : 2748

=== DOWNLOAD DA PÁGINA

Invoke-WebRequest racksistemas.com -OutFile index.txt

=== PEGAR SOMENTE O HEADER 

Invoke-WebRequest racksistemas.com -Method head

===

Invoke-WebRequest racksistemas.com -Method options

===
CÓDIGO DE RETORNO DA PÁGINA

(Invoke-WebRequest racksistemas.com).statuscode

===
SOMENTE O CONTEÚDO DA PÁGINA

(Invoke-WebRequest racksistemas.com).content

===
SOMENTE OS LINKS

(Invoke-WebRequest racksistemas.com).links
(Invoke-WebRequest racksistemas.com).links.href

===
(Invoke-WebRequest racksistemas.com).headers
(Invoke-WebRequest racksistemas.com).headers.server


www.businesscorp.com.br

#>

echo ""
echo "----------------------------------------------------------------------------"
echo "                              WEB SCAN BETA"
echo "----------------------------------------------------------------------------"
echo ""
$site = Read-Host "Informe o site que deseja pesquisar"
echo ""
echo "----------------------------------------------------------------------------"
echo ""
echo "+++ Processando o site $site"
echo ""
echo "----------------------------------------------------------------------------"
echo ""
$web = Invoke-WebRequest -uri $site -Method Options
echo "=> O servidor roda: " 
$web.headers.server
echo ""
echo "=> O servidor aceita os metódos:"
$web.headers.allow
echo ""
echo "=> Links encontrados: "
# echo "----------------------------------------------------------------------------"
$web2 = Invoke-WebRequest -uri $site
$web2.links.href

echo ""
echo "=> Links Filtrados: "
# echo "----------------------------------------------------------------------------"
$web2 = Invoke-WebRequest -uri $site
$web2.links.href | Select-String http://
echo ""
echo "----------------------------------------------------------------------------"