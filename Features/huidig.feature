# Huidig

In het dagelijks gebruik van gegevens zijn soms alleen huidige gegevens nodig.
Huidig betekent dat het object actueel is en geen eindstatus heeft.
Voor een toelichting kunt u het artikel hierover in de Praktijkhandleiding BAG raadplegen. (https://imbag.github.io/praktijkhandleiding/artikelen/wat-is-het-verschil-tussen-actieve-voorkomens-actuele-voorkomens-en-huidige-voorkomens).

Enkele endpoints leveren alleen huidige gegevens.
Bij enkele endpoints wordt de mogelijkheid geboden om met de parameter 'Huidig' alleen huidige objecten op te vragen

Parameter Huidig werkt als een filter.
Bij toepassing van de paramater wordt als defaultwaarde 'nee' gebruikt.
Dan worden alle objecten teruggegeven.

Bij toepassing van de parameter huidig of wanneer een endpoint alleen huidige gegevens levert, 
dan worden alleen actuele objecten terugggeven waarvan de status NIET een van de volgende is:
* naamgeving ingetrokken
* woonplaats ingetrokken
* plaats ingetrokken
* niet gerealiseerd verblijfsobject
* verblijfsobject ingetrokken
* verblijfsobject ten onrechte opgevoerd
* niet gerealiseerd pand,
* pand gesloopt
* pand ten onrechte opgevoerd

#### Scenario:
Gegeven een pand met verblijfsobjecten waaronder verblijfsobjecten met een eindstatus, (niet gerealiseerd verblijfsobject, of verblijfsobject ingetrokken of verblijfsobject ten onrechte opgevoerd)
Wanneer de  API wordt bevraagd met parameter 'huidig'
Dan bevat de response de verblijfsobjecten met een eindstatus niet en de verblijfsobjecten met de overige statussen (Verblijfsobject in gebruik, (niet ingemeten), Verblijfsobject in gebruik, Verblijfsobject buiten gebruik, tverbouwing verblijfsobject) wel

#### Scenario:
Gegeven een pand met een eindstatus
Wanneer op het endpoint verblijfsobjecten de verblijfsobjecten in dat pand worden opgevraagd met de parameter 'huidig'
Dan volgt een 404 foutmelding dat het pand niet gevonden kan worden.
