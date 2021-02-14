echo "Deleting symbols and binaries from %1."

if exist %1\*.pdb del /f /q %1\*.pdb
if exist %1\*.dll del /f /q %1\*.dll