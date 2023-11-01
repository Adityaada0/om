 SET SERVEROUTPUT ON
 
 DECLARE
    g_earth_surface CONSTANT NUMBER :=9.8 ;
    BEGIN
    DBMS_OUTPUT.PUT_LINE('The Value of g on Earth Surface is ' || g_earth_surface );
    END;
  /
  