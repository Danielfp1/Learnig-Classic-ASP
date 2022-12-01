<%

function Enunciado(nomeDoArquivo)
	'nomeDoArquivo = "1001.txt"
	pasta = Server.mappath("enunciados/texto")
	caminho = pasta & "/" & nomeDoArquivo

	'response.write(caminho)
	Set file = Server.CreateObject("Scripting.FileSystemObject")

	if file.folderExists(pasta) then
    	'Response.write("Existe Pasta!")
    	'Response.write(pasta)
	else
		'Response.write("Não Existe Pasta!")
		file.CreateFolder(pasta)
	end if

	if file.fileExists(caminho) then
		Set outfile = file.OpenTextFile(caminho, 1, false)
	else
		Set outfile = file.CreateTextFile(caminho)
	end if

	'-- Leitura do arquivo
	x=""
	do while not outfile.AtEndOfStream
		x=x & outfile.ReadLine
		x=x & "<br>"
	loop
	x=x & "<br><br> Resolução: <br><br>"
	response.write(x)
	outfile.close
end function

function CriarPasta()

end function


function CriarArquivo()
	
end function

%>
