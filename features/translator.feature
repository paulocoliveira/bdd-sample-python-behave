Feature: Translator
        
    Scenario: TC_001 - Verify that it is possible to translate from Portuguese to English
        When I translate "bom dia" to "en"
        Then I verify that the translation is "good morning"

    Scenario: TC_002 - Verify that it is possible to translate from English to Spanish
        When I translate "good morning" to "es"
        Then I verify that the translation is "buenos días"

    Scenario: TC_003 - Verify that it is possible to translate from Spanish to Italian
        When I translate "buenos días" to "it"
        Then I verify that the translation is "buongiorno"
    
    Scenario: TC_004 - Verify that it is possible to translate from Italian to Germany
        When I translate "buongiorno" to "de"
        Then I verify that the translation is "guten morgen"

    Scenario: TC_005 - Verify that it is not possible to translate from English to a non-existent language
        When I translate "good morning" to "xx"
        Then I verify that the destination language does not exist