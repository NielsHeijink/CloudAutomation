#!/bin/bash
cd /CloudShirt/src/Web
dotnet restore
dotnet tool restore
cd /CloudShirt/src/Web
dotnet ef database update -c catalogcontext -p ../Infrastructure/Infrastructure.csproj -s Web.csproj
dotnet ef database update -c appidentitydbcontext -p ../Infrastructure/Infrastructure.csproj -s Web.csproj
dotnet run --launch-profile Web