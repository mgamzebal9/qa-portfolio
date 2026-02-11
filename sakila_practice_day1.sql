
-- SELECT  FROM FORMATINI BURDA KULLANDIK 
-- TÜM AKTORLERİN LİSTESİNİ ÇEKMİŞ OLDUK.
select *from actor;



-- İSMİ NİCK OLAN AKTÖRLERİ LİSTELEMESİNİ İSTEDİK
-- BURADA 'WHERE' KOMUTUNU KULLANDIK
select* 
from actor
where first_name= 'NICK'


-- AND / OR KOMUTLARINI BURADA KULLANIYORUZ.
-- ŞİMDİ ADI NICK SOY ADI WAHLBERG OLAN AKTORU ÇEKMEK İÇİN WHERE VE AND KOMUTLARINI BERABER KULLANACAĞIZ. AND İLE İKİ TANE BAĞLAM EKLEMİŞ OLUYORUZ.
select * 
from actor 
where first_name= 'NICK'
and  last_name = 'WAHLBERG'


-- OR KOMUTU İLE O VEYA BU ŞEKLİNDE BİR KOMUT KULLANACAĞIZ. 
-- İSMİ NICK VEYA ED OLAN KİŞİLERİ FİLTRELEMEK İSTİYORUZ.

select * 
from actor 
where first_name = 'NICK'
or first_name = 'ED'

-- IN KOMUTUNU DA ÇOKLU EŞİTTİR GİBİ DÜŞÜNEBİLİRİZ.
-- BİRDEN ÇOK KİŞİYİ LİSTELEMEK İSTEDİĞİMİZDE IN KOMUTUNU KULLANIYORUZ. 
select *
from actor 
where first_name in ('NİCK', 'ED', 'TOM')

-- BETWEEN KOMUTUNDA BELİRLİ BİR ARALIKTAKİ DEĞERLERİ SORGULAMAK İÇİN KULLANIYORUZ.  (between sorgusu incluesivedir. yani verilen değerler de dahil edilir.) 
-- MESELA ACTOR İD Sİ 50 İLE 70 ARASINDAKİ KİŞİLERİ SORGULAMAK İSTERSEK AŞAĞIDAKİ GİBİ BİR SORGU YAZIYORUZ.( iki değer arasına da "and" koyuyoruz)
select * 
from actor
where actor_id between 50 and 70 

-- LİKE SORGUSU DA PATTERN AVCISIDIR. 
-- SPESİFİK BİR ŞEYE BAKMAK İSTEDİĞİMİZDE, ( İSMİ J İLE BAŞLAYANLAR, ADI A İLE BİTENLER, İÇİNDE ER HARFLERİ OLANLAR)  GİBİ FİLTRELER KOYMAK İSTEDİĞİMİZDE "LİKE" SORGUSUNU KULLANIYORUZ.
-- sorgulayacağımız şeye göre "%" yüzde işareti koyuyoruz. Eğer j ile başlayan diyorsak j%, eğer a ile bite diyorsak %A  eğer içinde ey geçsin dersek %EY% şeklinde yazıyoruz.
select *
from actor 
where first_name like 'J%'
and last_name like 'S%'

select * 
from actor a 
where first_name like '%A'

select * 
from actor a 
where first_name like '%EY%'


-- IS NULL TABLODA DEĞER OLMADIĞINDA KULLANIYORUZ. ( YANLIŞ DEĞİL, 0 DEĞİL, FALSE  DEĞİL)
-- NULL DEĞERİ = GİRİLMEMİŞ/ BİLİNMEYEN/ MEVCUT OLMAYAN VERİ 
-- IS NULL İLE KULLANIYORUZ ÇÜNKÜ OLMAYAN VERİYİ ÇAĞIRIRSAK YİNE BOŞ BİR SONUÇ DÖNER. IS ORDA NULL VURGUSU GİBİ DÜŞÜNEBİLİRİZ.
 select *
 from address
 where address2  is NULL

 
 -- ŞİMDİ İSMİ 'A' İLE BAŞLAYAN VE SOY ADI 'Y' İLE BİTEN AKTÖRLERİ LİSTEYELİM.
 select *
 from actor
 where first_name like 'A%' 
 and last_name  like '%Y'




-- Actor_id 30-60 arasında olan ama adı 'Tom' olmayanları getirelim. (and not)
 select *
 from  actor a 
 where actor_id between 30 and 60 
and not first_name = 'Tom'

-- Actor_id 30-60 arasında olan ama adı 'Tom' olmayanları getirelim. (<>)
select * 
from actor a 
where actor_id between 30 and 60
and first_name <> 'Tom'

-- Actor_id 30-60 arasında olan ama adı 'Tom' olmayanları getirelim. (!=)
select*
from actor
where actor_id between 30 and 60
and first_name != 'Tom'




-- adı "nick" veya "tom" olan VE actor_id 100 den küçük olanlar için (^^SQL de operatör önceliği vardır. "AND" operatörü "OR"dan önce gelir. yazarken buna dikkat etmek gerek.)
SELECT *
FROM actor a 
WHERE first_name = 'NICK' OR first_name = 'TOM'
  AND actor_id < 100 





-- WHERE VE BETWEEN KULLANIMI 
  select*
  from actor
  where actor_id between 10 and 30
  

  -- LIKE SORGUSU  - 'A' İLE BAŞLAYAN FİLMLER
select * 
from film f 
where title like 'A%'


-- IS NULL KULLANIMI 
select* 
from address a 
where address2 is null

-- IN KULLANIMI 
select* 
from actor a 
where first_name in ('JENNIFER', 'TOM', 'NICK' )




