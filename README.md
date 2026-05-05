어서와 WPF는 처음이지?
---------------------------

# 1. 개요
- Hands on project

## 1.1 필요 라이브러리
- WPF UI
   + https://wpfui.lepo.co/
   + UI 템플릿, MVVM 모두 포함하는 라이브러리 이다
   + 무료

### PRISM
- 이거는 상업용으로 너무 복잡함


## DB
- postgres
- 설치 커맨드
- ID: postgres
- PW: 1234
```bash
docker run --name postgres -e POSTGRES_PASSWORD=1234 -p 5432:5432 --restart always -d postgres:18
```

## Nuget Package
- Entity Framework Core
- Entity Framework Core Design
- Entity Framework Core Tools
- Npgsql.EntityFrameworkCore.PostgreSQL
- Npgsql.EntityFrameworkCore.PostgreSQL.Design


## Nuget Package Console Command
```bash
Scaffold-DbContext "Host=localhost;Database=public;Username=postgres;Password=1234" Npgsql.EntityFrameworkCore.PostgreSQL -o Models
```