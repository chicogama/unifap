#TRIGGERS

#LOGIN
create trigger tg_login after insert on tbl_user
for each row insert into tbl_login values (NULL, new.user_id, new.email_user, md5(new.cpf_user));

CREATE TRIGGER TELEFONE AFTER INSERT ON tbl_user
FOR EACH ROW INSERT INTO tbl_tel_user VALUES (NULL, new.id_user, 2, "(96)9 8112-1212");

