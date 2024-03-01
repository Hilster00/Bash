@echo off
setlocal

rem Define o nome do arquivo que não será ocultado
set "arquivo_a_manter=seuarquivo.txt"
rem Define o diretório onde os arquivos estão localizados
set "diretorio=C:\caminho\para\sua\pasta"

rem Navega até o diretório
cd /d "%diretorio%"

rem Oculta todos os arquivos na pasta, exceto o especificado
attrib +h *.* /s /d
attrib -h "%arquivo_a_manter%"

echo Arquivos ocultados, exceto "%arquivo_a_manter%".

endlocal
