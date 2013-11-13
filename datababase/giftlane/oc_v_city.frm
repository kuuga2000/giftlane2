TYPE=VIEW
query=select `a`.`city_id` AS `city_id`,`a`.`zone_id` AS `city_zone_id`,`b`.`name` AS `city_zone`,`a`.`name` AS `city_name`,`a`.`code` AS `city_code`,`b`.`country_id` AS `city_country_id`,`c`.`name` AS `city_country`,`a`.`status` AS `city_status` from ((`giftlane`.`oc_city` `a` left join `giftlane`.`oc_zone` `b` on((`a`.`zone_id` = `b`.`zone_id`))) left join `giftlane`.`oc_country` `c` on((`b`.`country_id` = `c`.`country_id`)))
md5=9affaaf4195e207ed0f7ff8e15ff7d0d
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2013-10-23 04:17:30
create-version=1
source=select `a`.`city_id` AS `city_id`,`a`.`zone_id` AS `city_zone_id`,`b`.`name` AS `city_zone`,`a`.`name` AS `city_name`,`a`.`code` AS `city_code`,`b`.`country_id` AS `city_country_id`,`c`.`name` AS `city_country`,`a`.`status` AS `city_status` from ((`oc_city` `a` left join `oc_zone` `b` on((`a`.`zone_id` = `b`.`zone_id`))) left join `oc_country` `c` on((`b`.`country_id` = `c`.`country_id`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `a`.`city_id` AS `city_id`,`a`.`zone_id` AS `city_zone_id`,`b`.`name` AS `city_zone`,`a`.`name` AS `city_name`,`a`.`code` AS `city_code`,`b`.`country_id` AS `city_country_id`,`c`.`name` AS `city_country`,`a`.`status` AS `city_status` from ((`giftlane`.`oc_city` `a` left join `giftlane`.`oc_zone` `b` on((`a`.`zone_id` = `b`.`zone_id`))) left join `giftlane`.`oc_country` `c` on((`b`.`country_id` = `c`.`country_id`)))
