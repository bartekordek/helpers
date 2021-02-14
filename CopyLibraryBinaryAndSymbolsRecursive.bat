Echo "Working directory: %cd%"

For /R %1 %%G IN (*.dll) do (
xcopy /Y /F %%G %2
)

For /R %1 %%G IN (*.pdb) do (
xcopy /Y /F %%G %2
)