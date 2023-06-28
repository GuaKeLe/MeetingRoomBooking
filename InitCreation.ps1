# Create dotnet solution
$folders = Get-ChildItem -Directory
$folders | % {
    Remove-Item -Path $_.FullName -Recurse -Force | Out-Null
}
$solutionfile = Get-ChildItem -File "*.sln"
if ($null -ne $solutionfile){
    $solutionfile | % {
        Remove-Item -Path $_.FullName -Force | Out-Null
    }
}

dotnet new sln

# Create dotnet project folders
mkdir MeetingRoomBooking.Web | Out-Null
mkdir MeetingRoomBooking.Core | Out-Null
mkdir MeetingRoomBooking.DB | Out-Null
mkdir MeetingRoomBooking.Workflow | Out-Null

# Create webapp
cd MeetingRoomBooking.Web
dotnet new mvc

# Create core class library
cd ..\MeetingRoomBooking.Core
dotnet new classlib

# Create orm library
cd ..\MeetingRoomBooking.DB
dotnet new classlib

# Create workflow library
cd ..\MeetingRoomBooking.Workflow
dotnet new classlib

# Reference
cd ..
dotnet sln add .\MeetingRoomBooking.Web
dotnet sln add .\MeetingRoomBooking.Core
dotnet sln add .\MeetingRoomBooking.DB
dotnet sln add .\MeetingRoomBooking.Workflow

cd MeetingRoomBooking.Web
dotnet add reference ..\MeetingRoomBooking.Core
dotnet add reference ..\MeetingRoomBooking.DB
dotnet add reference ..\MeetingRoomBooking.Workflow