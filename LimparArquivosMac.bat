@echo off
title Limpar Arquivos Ocultos do Mac no Pendrive
color 0A
echo **********************************************
echo *   REMOVENDO ARQUIVOS OCULTOS DO MAC (.DS_Store, ._*)   *
echo **********************************************
echo.

:listar_pendrives
echo Pendrives detectados:
echo -------------------
wmic logicaldisk where "drivetype=2" get deviceid, volumename, size, description 2>nul
echo.

:pergunta
set /p drive=Digite a letra do pendrive (ex: E, F, G...): 
if "%drive%"=="" (
    echo Nenhuma letra foi informada. Tente novamente.
    goto pergunta
)

if not exist %drive%:\ (
    echo Unidade %drive%: nao encontrada!
    goto pergunta
)

echo.
echo Verificando arquivos ocultos na unidade %drive%:...
dir %drive%:\*.* /a:h /s

echo.
set /p confirmar=Deseja remover TODOS os arquivos ocultos do Mac? (S/N): 
if /i "%confirmar%"=="S" (
    echo.
    echo Removendo atributos ocultos...
    attrib -h -r -s /s /d %drive%:\*.*
    
    echo Deletando .DS_Store...
    del %drive%:\*.DS_Store /s /q
    
    echo Deletando ._* e arquivos duplicados do Mac...
    del %drive%:\*._* /s /q
    del %drive%:\._* /s /q
    
    echo.
    echo Limpeza concluida! Arquivos do Mac removidos.
) else (
    echo Operacao cancelada.
)

pause