Feature: ScenarioFakeDeLivingDoc
    Scenarios bidon pour la génération de ma living doc

Background:
	Given j'ai une premiere background step qui fait des trucs
	And la seconde step qui contient un tableau :
        | Id | Commentaire       | Trucmuche | 
		| 1  | Cha va ma loute ? |  Bidule   |

# Scenarios
Scenario: Exemple d'un scénario 
	Given l'utilisateur connecté est un "Utilisateur front"
	And le numéro de dossier est "MALOUTE001"
	When je demande l'action que je veux
	Then le retour API est à l'état "Success"
	And j'obtiens une réponse contenant les infos qu'il me faut
    And j'obtiens les données :
        | Id | Commentaire       | Trucmuche | 
		| 1  | Cha va ma loute ? |  Bidule   |


Scenario Outline: Exemple d'un scénario outline avec une Table Example
	Given l'utilisateur connecté est un "Utilisateur front"
	And le numéro de dossier est "MALOUTE001"
	And on test la donnée d'Exemple <Madonne>
	When je demande l'action que je veux
	Then le retour API est à l'état "Success"
	And j'obtiens une réponse contenant les infos qu'il me faut

    Examples:
    | Madonne                                     |
    | Mon exemple 1                               |
    | Ceci est mon autre exemple                  |
    | et puis là revoilà un exemple pour la forme |
