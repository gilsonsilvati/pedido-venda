delimiter $$

drop procedure if exists adicionar_quantidade_estoque_em_produto $$

create procedure adicionar_quantidade_estoque_em_produto()

begin
	if not exists ((SELECT *
		FROM information_schema.columns
			WHERE table_schema=database()
				AND table_name='produto'
				AND column_name='quantidade_estoque')) then
	
		alter table produto add column quantidade_estoque integer;
	end if;
end $$ 

call adicionar_quantidade_estoque_em_produto() $$

drop procedure if exists adicionar_quantidade_estoque_em_produto $$

delimiter ;