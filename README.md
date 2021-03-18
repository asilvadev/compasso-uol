<div align="center"><img src="https://blog.compassouol.com/wp-content/uploads/2020/03/LogoCompasso-negativo.jpg" title="trello" alt="trello" width="350" height="125" />

![GitHub](https://img.shields.io/github/license/asilvadev/QA-automacao-RockLov?style=flat-square)
![Made](https://img.shields.io/badge/Made_with-Coffee-red?logo=coffeescript&style=flat-square)
<br/>
<br/>
<a href="https://www.linkedin.com/in/asilvadev/">
<img src="https://img.shields.io/badge/linkedin-%230077B5.svg?&style=for-the-badge&logo=linkedin&logoColor=white" height="25"/>
</a>

</div>
<br/>

## 👨🏽‍💻 Technologies

<p align="left">
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/85ec92b476b9e9ef1d1e18cb42f894b6124cee88/icons/ruby.svg" title="ruby" alt="ruby" width="25" height="25" />
<br/>
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/85ec92b476b9e9ef1d1e18cb42f894b6124cee88/icons/cucumber.svg" title="cucumber" alt="cucumber" width="25" height="25" />
<img src="https://avatars.githubusercontent.com/u/983927?s=200&v=4" title="selenium" alt="selenium" width="24" height="24" />
<img src="https://img.stackshare.io/service/2595/capybara.png" title="capybara" alt="capybara" width="24" height="24" />

<br/>

<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/85ec92b476b9e9ef1d1e18cb42f894b6124cee88/icons/gemfile.svg" title="gemfile" alt="gemfile" width="25" height="25" />
<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/85ec92b476b9e9ef1d1e18cb42f894b6124cee88/icons/yaml.svg" title="yaml" alt="yaml" width="25" height="25" />

</P>
<br/>

## ⚠️ Informações Importantes

```
Tenha certeza que possui o Ruby instalado em seu computador

Para verificar (via cmd)
ruby -v

Caso necessite:
https://rubyinstaller.org/downloads/
```

```
Por padrão os testes da *Automação Web* rodam via cucumber em chrome_headless
O projeto suporta outros tipos de navegadores
É possível altera-lo no arquivo cucumber.yml

https://github.com/mozilla/geckodriver
https://chromedriver.chromium.org/downloads
```

```
Existem dois arquivos para executar às chamadas API
Importação via
Insomnia use: Insomnia.json
Postman use:  Postman.json
```

# Automação Web

## 🛠️ Steps

```
Ruby + Cucumber + Capybara + AllureFramework

git clone https://github.com/asilvadev/compasso-uol.git

cd compasso-uol/web
bundle install
cucumber
```

## 📷 Screenshots

```
↓ Cucumber output via terminal ↓
```

![cucumber-web](_/output-cmd-web.png)

```
Para visualizar o report no Allure execute no terminal
allure serve logs/

↓ Allure report output via terminal ↓
```

![allure-web](_/allure-web-compasso-uol.gif)

# Automação WebService/API

## 🛠️ Steps

```
Ruby + Cucumber + HTTParty + AllureFramework

git clone https://github.com/asilvadev/compasso-uol.git

cd compasso-uol/webservice-api
bundle install
cucumber
```

## 📷 Screenshots

```
↓ Cucumber output via terminal ↓
```

![cucumber-api](_/output-cmd-api.png)

```
Para visualizar o report no Allure execute no terminal
allure serve logs/

↓ Allure report output via terminal ↓
```

![allure-api](_/allure-webserverapi-compasso-uol.gif)

## 📷 Screenshots

```
↓ Insomnia ↓
```

![insomnia](_/insomnia.gif)

@asilvadev
