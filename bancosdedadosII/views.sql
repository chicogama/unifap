#CREATE VIEW `view_usuario` AS
  SELECT 
    `tbl_usuarios`.`nome_usuario` AS `Nome`,
    `tbl_usuarios`.`sobrenome_usuario` AS `Sobrenome`,
    `tbl_usuarios`.`email_usuario` AS `Email`,
    `tbl_usuarios`.`cpf_usuario` AS `CPF`,
    CASE `tbl_usuarios`.`situacao_usuario`
      WHEN 0 THEN 'False'
      WHEN 1 THEN 'True'
      ELSE NULL 
    END AS `Situação`, -- O que é situação?
    `tbl_usuarios`.`sexo_usuario` AS `Sexo`,
    `tbl_usuarios`.`pai_usuario` AS `Nome do Pai`,
    `tbl_usuarios`.`mae_usuario` AS `Nome da Mãe`,
    `tbl_tipos_telefone`.`tipo_telefone` AS `Tipo de Telefone`,
    `tbl_telefones_usuarios`.`numero_telefone_usuario` AS `Número de Telefone`
      FROM `tbl_usuarios`
        JOIN `tbl_telefones_usuarios` ON `tbl_telefones_usuarios`.`fk_usuario_telefone` = `tbl_usuarios`.`id_usuario`
        JOIN `tbl_tipos_telefone` ON `tbl_telefones_usuarios`.`fk_tipo_telefone` = `tbl_tipos_telefone`.`id_tipo_telefone`;

#CREATE VIEW `view_endereco_usuario` AS
  SELECT 
    `tbl_usuarios`.`nome_usuario` AS `Nome`,
    `tbl_usuarios`.`sobrenome_usuario` AS `Sobrenome`,
    `tbl_logradouros`.`descricao_logradouro` AS `Logradouro`,
    `tbl_ruas`.`nome_rua` AS `Endereço`,
    `tbl_enderecos`.`numero_casa` AS `Número`,
    `tbl_enderecos`.`complemento_casa` AS `Complemento`,
    `tbl_bairros`.`bairro` AS `Bairro`,
    `tbl_ruas`.`cep` AS `CEP`,
    `tbl_cidades`.`descricao_cidade` AS `Município`,
    `tbl_ufs`.`uf` AS `Estado`
      FROM `tbl_enderecos`
        JOIN `tbl_usuarios` ON `tbl_enderecos`.`fk_usuario` = `tbl_usuarios`.`id_usuario`
        JOIN `tbl_ruas` ON `tbl_enderecos`.`fk_rua` = `tbl_ruas`.`id_rua`
        JOIN `tbl_bairros` ON `tbl_ruas`.`fk_bairro` = `tbl_bairros`.`id_bairro`
        JOIN `tbl_logradouros` ON `tbl_ruas`.`fk_logradouro` = `tbl_logradouros`.`id_logradouro`
        JOIN `tbl_cidades` ON `tbl_bairros`.`fk_cidade` = `tbl_cidades`.`id_cidade`
        JOIN `tbl_ufs` ON `tbl_cidades`.`fk_uf` = `tbl_ufs`.`id_uf`;

#CREATE VIEW `view_colegiados` AS
  SELECT
    `tbl_colegiados`.`nome_colegiado` AS `Nome`,
    `tbl_colegiados`.`codigo_colegiado` AS `Sigla`
      FROM `tbl_colegiados`;

#CREATE VIEW `view_cursos` AS
  SELECT 
    `tbl_cursos`.`nome_curso` AS `Nome`,
    `tbl_colegiados`.`codigo_colegiado` AS `Colegiado`
      FROM `tbl_cursos`
        JOIN `tbl_colegiados` ON `tbl_cursos`.`fk_colegiado_curso` = `tbl_colegiados`.`id_colegiado`;

-- -----
#CREATE View `view_disciplinas` AS -- Não sei fazer essa view
  SELECT 
    `tbl_disciplinas`.`nome_disciplina` AS `Nome`,
    `tbl_disciplinas`.`carga_horaria_disciplina` AS `Carga Horária`,
    `tbl_disciplinas`.`numero_discentes_disciplina` AS `Quantidade de Discentes`
      FROM `tbl_disciplinas`
        LEFT JOIN `tbl_disciplinas` ON `tbl_disciplinas`.`fk_disciplina` = `tbl_disciplinas`.`id_disciplina`;