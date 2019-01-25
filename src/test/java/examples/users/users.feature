Feature: Inv.bg samples

  Scenario: Get all clients
    Given url 'https://st2016.inv.bg/RESTapi/clients'
    * header Authorization = call read('basic-auth.js') { username: 'karamfilovs@gmail.com', password: '123456' }
    When method get
    Then status 200
    And match $.clients.[*].id contains "456"


  Scenario: Create single client
    Given url 'https://st2016.inv.bg/RESTapi/client'
    * header Authorization = call read('basic-auth.js') { username: 'karamfilovs@gmail.com', password: '123456' }
    And request {"firm_name":"Nov Klient","firm_town":"Sofia","firm_addr":"Address","firm_bulstat":"","firm_is_reg_vat":"0","firm_mol":"test","person_name":"","person_egn":"","person_city":""}
    When method post
    Then status 200






