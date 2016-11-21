set JAVA_BIN="

if "%JAVA8_64_HOME%" neq "" (
    if exist "%JAVA8_64_HOME%\bin\javaw.exe" (
        set JAVA_BIN="%JAVA8_64_HOME%\bin\"
        goto java-start
    )
)

if "%JAVA_HOME%" neq "" (
    if exist "%JAVA_HOME%\bin\javaw.exe" (
        set JAVA_BIN="%JAVA_HOME%\bin\"
        goto java-start
    )
)

:java-start
start "" "%JAVA_BIN:"=%javaw" -Xms512m -Xmx1G -jar "local-runner.jar" local-runner-sync.properties local-runner-sync.default.properties
