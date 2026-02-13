@echo off

rem 1. Open cmd (batch file runs in cmd by default)

rem 2. Change to specified directory
cd /d D:\Codes\pdf_translate6\MinerU\aims

rem 3. Activate conda environment
call conda activate pdf_translate6

rem 4. Clear all folders in current directory
echo Cleaning folders in directory...
for /d %%i in (*) do rd /s /q "%%i"
echo Folders cleaning completed

rem 5. Run mineru command
echo Running mineru command...
mineru -p ./ -o ./

rem 6. Convert Markdown files to DOCX
echo Converting Markdown files to DOCX...
python ../convert_md_to_docx.py

pause