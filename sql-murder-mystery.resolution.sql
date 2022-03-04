/*A crime has taken place and the detective needs your help.
The detective gave you the crime scene report, but you somehow lost it.
You vaguely remember that the crime was a ​murder​
that occurred sometime on ​Jan.15, 2018​ and that it took place in ​SQL City​.
Start by retrieving the corresponding crime scene report from the police department’s database.*/

select description from crime_scene_report
where date in (20180115) and city='SQL City' and type='murder';
/*Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr".
The second witness, named Annabel, lives somewhere on "Franklin Ave".*/
select *, count() from person
where address_street_name in ('Northwestern Dr')
group by name, address_street_name
order by address_number desc;
/*Annabel id = 490173
Kinsey Erickson = 510019
Morty Schapiro = 118009*/

select *  from get_fit_now_member
where substr(name,1,1)='W'
--order by name asc
where substr(name,1,7) in ('Weldon ');


select * from interview
where person_id in (99716);

/*I saw the murder happen, and I recognized the killer from my gym when
I was working out last week on January the 9th.

I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag.
The membership number on the bag started with "48Z". Only gold members have those bags.
The man got into a car with a plate that included "H42W".
*/

select * from get_fit_now_check_in
where substr(name,1,7) in ('Annabel');
;

48Z
H42W
January the 9th

/*suspeitos*/
select * from get_fit_now_member as member
inner join interview as inter on member.person_id=inter.person_id
inner join facebook_event_checkin as F on inter.person_id = F.person_id
--inner join drivers_license as D on member.person_id=drivers_license.id
where substr(id,1,3) in ('48Z') and membership_status='gold' --and substr(name,1,3)='Joe' 

/*I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67").
She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017.*/

select * from drivers_license as drivers
inner join person on drivers.id=person.license_id
inner join facebook_event_checkin  on person.id=facebook_event_checkin.person_id
where hair_color in ('red') and car_make in ('Tesla') and height BETWEEN 65 and 67

INSERT INTO solution VALUES (1, 'Miranda Priestly');-- (2, 'Jeremy Bowers');
        
        SELECT value FROM solution;



