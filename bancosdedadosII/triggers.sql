#TRIGGERS

#LOGIN

drop trigger if exists tg_login;

DELIMITER $
create trigger tg_login 
	after insert 
	on tbl_usuarios for each row
BEGIN
	insert into tbl_autenticacoes values (NULL, new.id_usuario, new.email_usuario, md5(new.cpf_usuario));
END $

DELIMITER ; 


drop trigger if exists tg_telefone

DELIMITER $
CREATE TRIGGER TELEFONE
	AFTER INSERT 
    ON tbl_usuarios FOR EACH ROW
    
BEGIN
	INSERT INTO tbl_telefones_usuarios VALUES (NULL, new.id_usuario, 2, 1, "9 8112-1212");
END $

DELIMITER ; 


drop trigger if exists tg_demissao;

DELIMITER $
	CREATE TRIGGER tg_demissao
    AFTER UPDATE
    ON tbl_docentes FOR EACH ROW
    
BEGIN
	UPDATE tbl_funcionarios SET data_demissao = now()
    where id_funcionario = 1;
END $

DELIMITER ;