DROP FUNCTION fn_create_login(int4, varchar, varchar);

CREATE OR REPLACE FUNCTION fn_create_login(p_user_id integer, p_username character varying, p_password character varying)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$
BEGIN
    INSERT INTO login (user_id, username, password_hash)
    VALUES (p_user_id, p_username, crypt(p_password, gen_salt('bf')));

    RETURN TRUE;

EXCEPTION
    WHEN others THEN
		RAISE NOTICE 'Error: %', SQLERRM;
        RETURN FALSE;
END;
$function$
;



DROP FUNCTION fn_login(varchar, varchar);

CREATE OR REPLACE FUNCTION fn_login(p_username character varying, p_password character varying)
 RETURNS TABLE(user_id integer, name character varying, last_login timestamp without time zone)
 LANGUAGE sql
AS $function$
    SELECT 
        e.id,
        e.name,
        COALESCE(l.last_login, CURRENT_TIMESTAMP)
    FROM employee e
    JOIN login l ON e.id = l.user_id
    WHERE l.username = p_username
    AND l.password_hash = crypt(p_password, l.password_hash);
$function$
;