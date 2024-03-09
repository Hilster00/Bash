cls
@ECHO OFF

title interside

if EXIST Seguro_invisivel goto UNLOCKk

if NOT EXIST Seguro goto MDLOCKER

:CONFIRM

echo Vocˆ tem certeza que quer tornar a pasta 'Seguro' invis¡vel(S/N)

set/p "cho=>"

if %cho%==S goto LOCK

if %cho%==s goto LOCK

if %cho%==n goto END

if %cho%==N goto END

if %cho%==y goto LOCK

if %cho%==Y goto LOCK

echo Escolha Invµlida.

goto CONFIRM

:LOCK

ren Seguro Seguro_invisivel

attrib +h +s +r +i Seguro_invisivel

echo a pasta seguro está invis¡vel

goto End

:UNLOCKk

set tentativas=0

:UNLOCK

echo coloque a senha para tornar a pasta Seguro vis¡vel

set/p "pass=>senha:"

if NOT %pass%==#1234Abc goto FAIL


attrib -h -s Seguro_invisivel

ren Seguro_invisivel Seguro

echo a pasta Seguro estµ vis¡vel

goto End

:FAIL

set /a tentativas = %tentativas% + 1
if %tentativas%==3 goto TENTATIVASESGOTADAS
echo senha invµlida

goto UNLOCK

:MDLOCKER

md Seguro

echo bloqueio desativado

goto End

:TENTATIVASESGOTADAS

echo Tentativas Esgotadas

:End

pause