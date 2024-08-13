SELECT sysdate
from dual;

SELECT TO_CHAR(SYSDATE, 'DD-MM-YYYY HH:MI:SS')
FROM DUAL;

CREATE USER loja IDENTIFIED BY teste123;

GRANT connect, resource TO loja;
ALTER USER loja QUOTA 100M ON USERS;

//freepdb1