$msbuild = "C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe"

function BuildSolution ($solution, $configuration)
{
    & "$msbuild" /p:Configuration=$configuration "$solution" /m
    if($LastExitCode -ne 0)
    {
        Write-Host "Failed to build $solution ($configuration)" -ForegroundColor Red
        exit
    }

    Write-Host "Build succeeded!" -ForegroundColor Blue
}

#BuildSolution -solution "C:\Users\Shane\Documents\hopatech\CodeAnalysisTest\CodeAnalysisTest.sln" -configuration "Release"

BuildSolution -solution "C:\work\svn\trunk\WINDEV4\AllApp\AllApp.sln" -configuration "Release"
BuildSolution -solution "C:\work\svn\trunk\WINDEV4\AllApp\AllApp.sln" -configuration "Release"


