# coding: UTF-8
require './lib/odf-report'
require 'faker'


    @html = <<-HTML
      <p>Uniquely promote installed base total linkage via emerging deliverables com <strong>[EVENTO_TEXTO_CARTA]</strong>, unleash cross-media collaboration <strong>[FUNCAO]</strong> [EVENTO_NOME].</p>

      <p>Progressively fashion diverse portals nº <strong>[NUMERO_SECAO]</strong> do local <strong>[NOME_LOCAL]</strong>, situado na <strong>[ENDERECO_LOCAL]</strong> methodologies </p>

      <p>Assertively orchestrate market positioning bandwidth rather than fully researched total linkage. Interactively architect granular e-markets via clicks-and-mortar ROI. Uniquely aggregate compelling.</p>

      <p>Compellingly facilitate functionalized interfaces before wireless models. Compellingly morph parallel systems whereas combinado com o artigo 63, § 2º da Lei nº 9.504/97, abaixo mencionados:</p>

      <p style="margin-left:1.76cm;"><em>Art. 120 - § 1º Compellingly envisioneer high standards in niches without best-of-breed leadership. Phosfluorescently unleash go forward methodologies after bricks-and-clicks niches. Authoritatively. </em></p>

      <p style="margin-left:1.76cm;"><em>Art. 63 - [...] § 2º Enthusiastically parallel task user friendly functionalities whereas exceptional leadership. </em></p>

      <p>Credibly enable multifunctional strategic theme areas and premium communities.</p>

    HTML

    hash = {}

    hash[:body] = @html

    hash['EVENTO_TEXTO_CARTA'] = Faker::Lorem.sentence
    hash['FUNCAO'] = Faker::Lorem.word
    hash['EVENTO_NOME'] = Faker::Company.name

    hash['NUMERO_SECAO'] = Faker::Number.number(3)
    hash['NOME_LOCAL'] = Faker::Company.name
    hash['ENDERECO_LOCAL'] = Faker::Address.street_address

    ODFReport::Report.new("test/templates/test_fields_inside_text.odt").populate!(hash).save("test/result/new_test_fields_inside_text.odt")
