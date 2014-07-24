#Remove existing packages
Remove-Item *.nupkg
#Create package
nuget pack Heroic.Web.IoC.csproj -Build -Properties Configuration=Debug
nuget pack 
#Push
$PackageName = gci "*.nupkg"
nuget push $PackageName
Remove-Item *.nupkg