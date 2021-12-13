## Mise en place de SpecFlow Plus LivingDoc sur un projet standard

# 1 - Init et Installation

Créer le manifest dotnet (Je l'utilise sur mes projets full Front : ReacJS par exemple)

```
dotnet new tool-manifest
```


Installer SpecFlow Plus CLI via dotnet tool dans votre projet

```
dotnet tool install SpecFlow.Plus.LivingDoc.CLI
```

Pour les applis dotnet : https://docs.specflow.org/projects/specflow-livingdoc/en/latest/LivingDocGenerator/Setup-the-LivingDocPlugin.html#


Perso j'utilise le CLI pour qu'il soit joué sur Azure Devops dans une de mes builds

# 2 - Génération de la documentation

Génération de la doc sans le test result

```
livingdoc feature-folder ./features --title "Ma doc générée" --output ./madoc.html
```
