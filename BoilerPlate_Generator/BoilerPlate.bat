@echo off
set /p qnum=Enter the question number: 

:: Define the notebook content
echo { > temp.json
echo   "cells": [ >> temp.json
echo     { >> temp.json
echo       "cell_type": "markdown", >> temp.json
echo       "metadata": {}, >> temp.json
echo       "source": [ >> temp.json
echo         "# LeetCode Question-%qnum%\n", >> temp.json
echo         "\n", >> temp.json
echo         "## Problem Statement" >> temp.json
echo       ] >> temp.json
echo     }, >> temp.json
echo     { >> temp.json
echo       "cell_type": "code", >> temp.json
echo       "execution_count": null, >> temp.json
echo       "metadata": {}, >> temp.json
echo       "outputs": [], >> temp.json
echo       "source": [ >> temp.json
echo         "# Given Syntax\n", >> temp.json
echo         "" >> temp.json
echo       ] >> temp.json
echo     }, >> temp.json
echo     { >> temp.json
echo       "cell_type": "code", >> temp.json
echo       "execution_count": null, >> temp.json
echo       "metadata": {}, >> temp.json
echo       "outputs": [], >> temp.json
echo       "source": [ >> temp.json
echo         "# Main logic\n", >> temp.json
echo         "" >> temp.json
echo       ] >> temp.json
echo     }, >> temp.json
echo     { >> temp.json
echo       "cell_type": "code", >> temp.json
echo       "execution_count": null, >> temp.json
echo       "metadata": {}, >> temp.json
echo       "outputs": [], >> temp.json
echo       "source": [ >> temp.json
echo         "# Testing Testcase\n", >> temp.json
echo         "Obj = Solution()\n", >> temp.json
echo         "print(Obj.function())" >> temp.json
echo       ] >> temp.json
echo     }, >> temp.json
echo     { >> temp.json
echo       "cell_type": "code", >> temp.json
echo       "execution_count": null, >> temp.json
echo       "metadata": {}, >> temp.json
echo       "outputs": [], >> temp.json
echo       "source": [ >> temp.json
echo         "# Explanation:\n", >> temp.json
echo         "# Explain the logic step-by-step here." >> temp.json
echo       ] >> temp.json
echo     } >> temp.json
echo   ], >> temp.json
echo   "metadata": { >> temp.json
echo     "kernelspec": { >> temp.json
echo       "display_name": "LeetCodeENV", >> temp.json
echo       "language": "python", >> temp.json
echo       "name": "python3" >> temp.json
echo     }, >> temp.json
echo     "language_info": { >> temp.json
echo       "codemirror_mode": { >> temp.json
echo         "name": "ipython", >> temp.json
echo         "version": 3 >> temp.json
echo       }, >> temp.json
echo       "file_extension": ".py", >> temp.json
echo       "mimetype": "text/x-python", >> temp.json
echo       "name": "python", >> temp.json
echo       "nbconvert_exporter": "python", >> temp.json
echo       "pygments_lexer": "ipython3", >> temp.json
echo       "version": "3.12.8" >> temp.json
echo     } >> temp.json
echo   }, >> temp.json
echo   "nbformat": 4, >> temp.json
echo   "nbformat_minor": 2 >> temp.json
echo } >> temp.json

:: Save notebook with the question number
set notebook_name=LeetCode-%qnum%.ipynb
move temp.json %notebook_name%

echo Notebook "%notebook_name%" created successfully!
pause
