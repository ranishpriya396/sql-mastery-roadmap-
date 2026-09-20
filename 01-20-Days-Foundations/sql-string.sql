create database campusx;
use campusx;
select *from campusx.laptopdata;
-- using wildcard which contain 5 CHARACTER/ words 
select DISTINCT(company) from laptopdata
where company LIKE '_____';

-- company should we started by A and contain 5 characters
select DISTINCT(company) FROM laptopdata
where company Like 'A____';
-- name the company which 'pp' :
select DISTINCT(company) FROM laptopdata
where company Like '%%pp%%';
-- name the company which startwith 'R' :
select  company from laptopdata
where company Like 'R%%';
-- name the compamy which end with 'll' :
select distinct(company) from laptopdata 
where company like '%%ll';
-- upper() & lower()
select  company , upper(company),TypeName , lower(TypeName) from laptopdata;
-- cocate & concat_ws 
-- concate company & TypeName

select concat(company ," " , TypeName , Ram) as 'laptop fullname ' ,
concat_ws("-" , company , TypeName , Ram )  from laptopdata;

-- extract first  5 char from the memory column ----> using substring()
select company ,Memory ,SUBSTR(Memory,1,5) from laptopdata ;
select company , Memory , SUBSTR(Memory , 1) from laptopdata ;
select company , Memory , SUBSTR(Memory , 6 ) from laptopdata ;

-- 5 se start karo 5 character dikhao  
-- substr(col , start , kitne char cheye ) 
select company , Memory , substr(Memory , 5,5) from laptopdata ; 
-- find last char and last 3 char and last 5 characters 
select company ,Memory ,substr(Memory , -1) ,  substr(Memory , -3) , substr(Memory , -5) from laptopdata ;

-- find last 5 postion char only :
select company , substr(memory , -5 , 1) from laptopdata ;

-- Replacing --
select replace("hello world " , "word" , "india");

-- replace -- 
select company , replace(company ,"HP" , "hp") from laptopdata;

-- reverse --
select company from campusx.laptopdata where company = reverse(company);

select company , Length(TypeName) , char_length(TypeName) from laptopdata 
where length(TypeName) != char_length(TypeName);
--     insert(original_str , where_to_add , replace_how_many_chars , new_str); 
select insert("hello world" , 7 , 4 , "anish");

select company , left(company , 3 ) from campusx.laptopdata;
select company , right(company , 3 ) from campusx.laptopdata;

select company , repeat(company,3) from campusx.laptopdata;

select trim(Typename ) from campusx.laptopdata;

select trim(leading "." from  "......nitish.......");
select trim(trailing "." from  "......nitish.......");
select trim(both "." from "........nit.ish........");
select ltrim( "    nitish     ");
select rtrim("      nitish.          ");

-- substring_index ---- 
select substring_index("www.campusx.in" , "." , 1);
select substring_index("www.campusx.in" , "." , 2);
select substring_index("www.campusx.in" , "." , -1);
select substring_index("www.campusx.in" , "." , -2);
select strcmp("delhi" , "mumbai");
select strcmp("delhi" , "Delhi");
select locate("lhi" , "delhi ranish",1); -- 1--> show parcticular jagha se app search karna start kar sakte ho

select lpad("9867565553",13 , "+91");
select rpad("9867565553",13 , "+91")


