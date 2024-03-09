cls
@ECHO OFF

title interside

if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK

if NOT EXIST seguro goto MDLOCKER

:CONFIRM

echo Vocˆ tem certeza que quer tornar a pasta seguro invis¡vel(S/N)

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

ren seguro "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

attrib +h +s +r +i "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

echo a pasta seguro está invis¡vel

goto End

:UNLOCK

echo coloque a senha para tornar a pasta seguro vis¡vel

set/p "pass=>senha: "

if NOT %pass%==#1234Abc goto FAIL


attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"

ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" seguro

echo a pasta seguro está vis¡vel

goto End

:FAIL

echo senha invµlida

goto UNLOCK

:MDLOCKER

md Seguro

echo bloqueio desativado

goto End

:End;