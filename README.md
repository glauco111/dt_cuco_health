# Cuco Health
## Desafio Técnico 
![Download apk](https://github.com/eduardo-and/dt_cuco_health/raw/master/cuco_health.apk)
### Descrição
O desafio consiste em desenvolver um app simples em Flutter, composto por apenas 3
páginas. A primeira será sua splash screen, que fará a transição para a Home . Nela você
poderá exibir um logo, ou uma mensagem ao usuário por exemplo. A segunda é um perfil
de usuário, apresentando a foto, nome completo e em ail deste usuário. A segunda página
é uma listagem de amigos mostrando o nome completo e imagem de 15 usuários.
Enquanto esta lista é buscada na API a página deverá exibir um loader. Caso um
problema ocorra nesta request, um modal deverá ser mostrado dando o feedback de erro
ao usuário. Os dados serão obtidos da API **https://randomuser.me/api**.

## Implementação do desafio
### Design System
A fim de acelerar o processo de desenvolvimento e garantir uma boa qualidade final ao produto,
realizei a implementação do protótipo(UI) da solulção, juntamente com um design system do projeto

[Design system](https://www.figma.com/file/038ixQyRsKk7iwSkK3nQw8/Cuco-Helth?node-id=2%3A2)
<br>
<br>
[UI](https://www.figma.com/file/038ixQyRsKk7iwSkK3nQw8/Cuco-Helth?node-id=0%3A1)
<br>
<br>
Para complementar na questão do UX, criei também um tema dark.
<br><br>
![light theme](/images/light.png)
![dark theme](/images/dark.png)

## Implementação
Alguns packages e decisões arquiteturais do projeto:

  - Arquitetura: **Clean architecture**
  - State management: **MobX**
  - Http Client : **DIO**
  - Dependency injection: **Provider**
  - Routes: **Flutter Navigator**
  - Local data store: **Shared Preferences**
  
  Outros
   - DartZ
   - google_fonts
   - flutter_launcher_icons

<br>
Foi trabalhado também a questão da responsividade da aplicação, de maneira simples mas funcional para a maioria dos casos

### Tablet
<br><br>
![tablet 1](/images/tablet-1.png)
![tablet 2](/images/tablet-2.png)
### Small Screens
<br><br>
![tablet 1](/images/small_screen-1.png)
![tablet 2](/images/small_screen-2.png)

## Rodando o projeto

Possuindo o ambiente flutter/dart instalado e configurado, realize os passos a seguir:
- Execute os comandos a seguir:

```
flutter pub get
flutter pub run build_runner build 
```
- Execute a aplicação

