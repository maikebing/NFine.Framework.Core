#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster main contrib non-free" > /etc/apt/sources.list && \
	echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-updates main contrib non-free" >> /etc/apt/sources.list && \
	echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-backports main contrib non-free" >> /etc/apt/sources.list && \
	echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian-security buster/updates main contrib non-free" >> /etc/apt/sources.list && \
    apt-get  -y   -q update   && apt-get install  -y   -q  apt-utils libgdiplus libc6-dev && apt-get autoremove -y &&  apt-get clean  && apt-get autoclean && rm  /var/cache/apt/* -rf
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["NFine.Mobile/NFine.Mobile.csproj", "NFine.Mobile/"]
COPY ["NFine.Application/NFine.Application.csproj", "NFine.Application/"]
COPY ["NFine.Repository/NFine.Repository.csproj", "NFine.Repository/"]
COPY ["NFine.Domain/NFine.Domain.csproj", "NFine.Domain/"]
COPY ["NFine.Core/NFine.Code.csproj", "NFine.Core/"]
COPY ["NFine.Data/NFine.Data.csproj", "NFine.Data/"]
COPY ["NFine.Mapping/NFine.Mapping.csproj", "NFine.Mapping/"]
RUN dotnet restore "NFine.Mobile/NFine.Mobile.csproj"
COPY . .
WORKDIR "/src/NFine.Mobile"
RUN dotnet build "NFine.Mobile.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "NFine.Mobile.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "NFine.Mobile.dll"]
