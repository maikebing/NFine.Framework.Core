#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["NFine.Web/NFine.Web.csproj", "NFine.Web/"]
COPY ["NFine.Application/NFine.Application.csproj", "NFine.Application/"]
COPY ["NFine.Repository/NFine.Repository.csproj", "NFine.Repository/"]
COPY ["NFine.Domain/NFine.Domain.csproj", "NFine.Domain/"]
COPY ["NFine.Core/NFine.Code.csproj", "NFine.Core/"]
COPY ["NFine.Data/NFine.Data.csproj", "NFine.Data/"]
COPY ["NFine.Mapping/NFine.Mapping.csproj", "NFine.Mapping/"]
RUN dotnet restore "NFine.Web/NFine.Web.csproj"
COPY . .
WORKDIR "/src/NFine.Web"
RUN dotnet build "NFine.Web.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "NFine.Web.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "NFine.Web.dll"]