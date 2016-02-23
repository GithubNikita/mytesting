Feature: Download Demo issue

Scenario: I can cancel downloading demo issue

    Given I wait until data of app is loaded for checking demo button
	Then I check demo button
	When I press "demo_button"
	Then I see "Ausgabe vorbereiten"
	And I wait for 15 seconds
	Then I see "Vorschau"
	When I go back
	And I press "btn_cancel"
	Then I see "Möchten Sie den Download der Ausgabe abbrechen? Alle bereits heruntergeladenen Daten gehen dabei verloren!"
	And I see "Nein"
	And I see "Ja"
	When I press "button2"
	Then I see progress bar
	When I press "btn_cancel"
	And I press "button1"
	Then I see "Abbrechen"
	Then I wait up to 30 seconds to see "Demo herunterladen"
	Then I take a screenshot
	
Scenario: I can downloading demo issue
    
	Given I wait until data of app is loaded for checking demo button
	Then I check demo button
	When I press "demo_button"
	Then I wait up to 30 seconds to see "Ausgabe vorbereiten"
	And I wait for 15 seconds
	Then I see "Vorschau"
	When I go back
	Then I wait up to 600 seconds for "Demo anzeigen" to appear
	When I press "demo_button"
	Then I see "Vorschau"
	And I swipe right
	And I wait
	And I swipe right
	Then I take a screenshot
	When I go back
	Then I take a screenshot