Feature: Inv.bg samples

  Scenario: Get all clients
    Given url 'https://st2016.inv.bg/RESTapi/clients'
    * header Authorization = call read('basic-auth.js') { username: 'karamfilovs@gmail.com', password: '123456' }
    When method get
    Then status 200
    And match $.clients.[0].id == "456"





