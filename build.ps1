$msbuild = "C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe"

#$solution = "C:\work\svn\trunk\WINDEV4\AllApp\AllApp.sln"
$solution = "C:\Users\Shane\Documents\hopatech\CodeAnalysisTest\CodeAnalysisTest.sln"
$configuration = "Release"
$parameters = "/p:Configuration=" + $configuration

& $msbuild $parameters $solution "/m"
if($LastExitCode -ne 0)
{
    echo "Failure"
    exit
}

echo "Success"
