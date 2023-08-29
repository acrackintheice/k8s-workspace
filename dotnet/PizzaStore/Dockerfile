FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /source

# Restore as distinct layers
COPY *.csproj .
RUN dotnet restore --use-current-runtime  

# Build and publish a release
COPY . ./
RUN dotnet publish --use-current-runtime --self-contained false --no-restore -o /app

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:7.0-bullseye-slim
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["./PizzaStore"]