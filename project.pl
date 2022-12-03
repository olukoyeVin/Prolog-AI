
go :- hypothesize(City),
      write('I guess that the city is: '),
      write(City),
      nl,
      undo.

hypothesize(kabul)	:-kabul,!.
hypothesize(nairobi)	:-nairobi,!.
hypothesize(luanda)	:-luanda,!.
hypothesize(dhaka)	:-dhaka,!.
hypothesize(vienna)		:-vienna,!.
hypothesize(paris)	:-paris,!.
hypothesize(accra)	:-accra,!.
hypothesize(bissau)	:-bissau,!.
hypothesize(berlin)	:-berlin,!.
hypothesize(kingston)	:-kingston,!.
hypothesize(tripoli)	:-tripoli,!.
hypothesize(addis_ababa) :-addis_ababa,!.
hypothesize(cairo) :-cairo,!.
hypothesize(windhoek) :-windhoek,!.
hypothesize(abuja) :-abuja,!.
hypothesize(washington) :-washington,!.
hypothesize(kampala) :-kampala,!.
hypothesize(dodoma) :-dodoma,!.
hypothesize(vatican_city) :-vatican_city,!.
hypothesize(kiev) :-kiev,!.
hypothesize(london) :-london,!.
hypothesize(tunis) :-tunis,!.
hypothesize(abu_dhabi) :-abu_dhabi,!.
hypothesize(hanoi) :-hanoi,!.
hypothesize(amsterdam) :-amsterdam,!.
hypothesize(muscat) :-muscat,!.
hypothesize(jerusalem) :-jerusalem,!.
hypothesize(doha) :-doha,!.
hypothesize(rome) :-rome,!.
hypothesize(moscow) :-moscow,!.
hypothesize(dakar) :-dakar,!.
hypothesize(victoria) :-victoria,!.
hypothesize(freetown) :-freetown,!.
hypothesize(juba) :-juba,!.
hypothesize(beijing) :-beijing,!.
hypothesize(kinshasa) :-kinshasa,!.
hypothesize(mogadishu) :-mogadishu,!.
hypothesize(madrid) :-madrid,!.
hypothesize(khartoum) :-khartoum,!.
hypothesize(wellington) :-wellington,!.
hypothesize(tokyo) :-tokyo,!.
hypothesize(algiers) :-algiers,!.
hypothesize(djibouti) :-djibouti,!.
hypothesize(malabo) :-malabo,!.
hypothesize(asmara) :-asmara,!.
hypothesize(antananarivo) :-antananarivo,!.
hypothesize(kathmandu) :-kathmandu,!.
hypothesize(panama) :-panama,!.
hypothesize(kigali) :-kigali,!.
hypothesize(manila) :-manila,!.
hypothesize(unknown).

kabul :-verify(country_afghanistan),
	    verify(area_code_9320),
		verify(population_of_4m),
		verify(demonyms_kabuli),
		verify(no_of_districts_22).

nairobi :-verify(country_kenya),
	    verify(area_code_2547),
		verify(elevation_1795m),
		verify(demonym_nairobian),
		verify(founded_1899).

luanda :-verify(country_angola),
	    verify(demonym_luandan),
		verify(founded_1576),
		verify(elevation_6m_),
		verify(province_luanda).

dhaka :-verify(country_bangladesh),
	    verify(district_dhaka),
		verify(demonym_dhakaiya),
		verify(elevation_32m),
		verify(division_dhaka_division).

vienna:-verify(country_austria),
	    verify(demonym_german),
		verify(state_vienna),
		verify(elevation_542m),
		verify(time_zone_cet).

paris:-verify(country_france),
	    verify(department_paris),
		verify(population_2165423),
		verify(region_ile-de-france),
		verify(subdivisions_20_arrondissements).

accra :-verify(country_ghana),
	    verify(demonym_accran),
		verify(region_greater_accra_region),
		verify(time_zone_gmt),
		verify(elevation_61m).

bissau :-verify(country_guinea_bissau),
	    verify(region_bissau_autonomous_sector),
		verify(elevation_0m),
		verify(founded_1687),
		verify(time_zone_gmt).

berlin:-verify(country_germany),
	    verify(state_berlin),
		verify(elevation_34m),
		verify(demonym_berliner),
		verify(area_codes_030).

kingston :-verify(country_jamaica),
	    verify(county_surrey),
		verify(established_1692),
		verify(elevation_9m),
		verify(time_zone_est).

tripoli :-verify(country_libya),
	    verify(region_tripolitania),
		verify(district_tripoli_district),
		verify(elevation_81m),
		verify(time_zone_eet).

addis_ababa :-verify(country_ethiopia),
	    verify(founded_1886),
		verify(demonym_addis_ababan),
		verify(elevation_2355m),
		verify(area_code_25111).

cairo :-verify(country_egypt),
	    verify(time_zone_est),
		verify(area_code_202),
		verify(official_name_historic_cairo),
		verify(governorate_cairo).

windhoek :-verify(country_namibia),
	    verify(region_khomas_region),
		verify(elevation_1655m ),
		verify(first_settled_1840),
		verify(area_code_061).

abuja :-verify(country_nigeria),
	    verify(time_zone_gmt),
		verify(elevation_360m),
		verify(settled_1828),
		verify(incorporated_1_october_1984).

washington :-verify(country_united_states),
	    verify(lowest_elevation_0ft ),
		verify(residence_act_1790),
		verify(organized_1801),
		verify(consolidated_1871).

kampala :-verify(country_uganda),
	    verify(elevation_1200m),
		verify(city_kampala),
		verify(demonyms_munakampala),
		verify(time_zone_eat).

dodoma :-verify(country_tanzania),
	    verify(area_code_026),
		verify(time_zone_eat),
		verify(region_dodoma),
		verify(elevation_1120m).

vatican_city :-verify(time_zone_cet),
	    verify(currency_euro),
		verify(calling_code_379),
		verify(official_languages_italian),
		verify(legislature_pontifical_commission).

kiev :-verify(country_ukraine),
	    verify(founded_ad_482 ),
		verify(elevation_179m),
		verify(area_code_38044),
		verify(demonym_kyivan).

london :-verify(country_england),
	    verify(elevation_36ft),
		verify(demonyms_londoner),
		verify(sovereign_state_united_kingdom),
		verify(elevation_36ft).

tunis :-verify(country_tunisia),
	    verify(population_3m),
		verify(elevation_1050m),
		verify(language_arabic),
		verify(demonym_arabic).

abu_dhabi :-verify(country_united_arab_emirates),
	    verify(demonyms_abu_dhabian),
		verify(elevation_27m),
		verify(time_zone_ust),
		verify(total_us_178b).

hanoi :-verify(country_vietnam),
	    verify(founded_257bc),
		verify(founded_by_an_duong_vuong),
		verify(area_codes_24),
		verify(region_red_river_delta).

amsterdam :-verify(country_netherlands),
	    verify(province_north_holland),
		verify(area_code_020),
		verify(demonym_amsterdammer),
		verify(elevation_0m).

muscat :-verify(country_oman),
	    verify(time_zone_gst),
		verify(governorate_muscat_governorate),
		verify(population_31409wilayat_1294101_governate),
		verify(capital_city_oman).

jerusalem :-verify(elevation_754m),
	    verify(area_code_9722),
		verify(region_arab_states),
		verify(administered_by_israel),
		verify(israeli_district_Jerusalem).
doha :-verify(country_qatar),
	    verify(established_1825),
		verify(time_zone_ast),
		verify(municipality_Doha),
		verify(elevation_10m).

rome :-verify(country_italy),
	    verify(elevation_21m),
		verify(area_code_06),
		verify(founded_by_king_romulus),
		verify(founded_753BC).

moscow :-verify(country_russia),
	    verify(elevation_156m),
		verify(demonym_muscovite),
		verify(economic_region_central),
		verify(federal_district_central).

dakar :-verify(country_senegal),
	    verify(population_1m ),
		verify(founded_1899),
		verify(demonym_dakari),
		verify(elevation_22m).


victoria :-verify(country_seychelles),
	    verify(population_26,450),
		verify(founded_1934),
		verify(demonym_victorian),
		verify(mayor_david_andre).

freetown :-verify(country_sierra_leone),
	    verify(region_west_africa),
		verify(founded_1792),
		verify(district_western_area_urban_district),
		verify(time_zone_eat).


juba :-verify(country_south_sudan),
	    verify(region_east_africa),
		verify(founded_1922),
		verify(state_central_equatoria),
		verify(time_zone_eat).


beijing :-verify(country_china),
	    verify(area_code_10),
		verify(founded_350bc),
		verify(city_seat_tongzhou),
		verify(climate_dwa).

kinshasa :-verify(country_drc),
	    verify(region_congo),
		verify(founded_350bc),
		verify(area_code_2439),
		verify(time_zone_cat).

mogadishu :-verify(country_somalia),
	    verify(region_banaadir),
		verify(founded_350bc),
		verify(demonym_mogadishawi),
		verify(time_zone_eat).

madrid :-verify(country_spain),
	    verify(area_code_34),
		verify(founded_9th_century),
		verify(elevation_650m),
		verify(time_zone_cet).

khartoum :-verify(country_sudan),
	    verify(state_Khartoum),
		verify(time_zone_cat),
		verify(elevation_381m),
		verify(demonym_khartoumese).

wellington :-verify(country_new_zealand),
	    verify(region_wellington),
		verify(area_code_04),
		verify(highest_elevation_495m),
		verify(lowest_elevation_0m).

tokyo :-verify(country_japan),
	    verify(region_kanto),
		verify(demonym_tokyoite),
		verify(highest_elevation_2017m),
		verify(time_zone_utc).

algiers :-verify(country_algeria),
	    verify(province_algiers_province),
		verify(area_code_213021),
		verify(elevation_424m),
		verify(time_zone_cet).

djibouti :-verify(country_djibouti),
	    verify(founded_1827),
		verify(capital_djibouti),
		verify(elevation_8m),
		verify(time_zone_eat).

malabo :-verify(country_equatorial_guinea),
	    verify(founded_1827),
		verify(province_bioko_norte),
		verify(elevation_0m),
		verify(time_zone_wat).

asmara :-verify(country_eritrea),
	    verify(incorporated_1890),
		verify(region_central),
		verify(area_481_ha),
		verify(districts_13).

antananarivo :-verify(country_madagascar),
	    verify(elevation_1276m),
		verify(region_analamanga),
		verify(founded_1610 ),
		verify(area_code_261023).

kathmandu :-verify(country_nepal),
	    verify(elevation_1400m),
		verify(founded_by_manjushri),
		verify(province_bagmati_province),
		verify(area_code_01).

panama :-verify(country_panama),
	    verify(elevation_2m),
		verify(founded_by_pedro_arias_de_avila),
		verify(area_code_50723),
		verify(district_panama_district).

kigali :-verify(country_rwanda),
	    verify(elevation_1567m),
		verify(founded_1907),
		verify(province_Kigali),
		verify(time_zone_cat).

manila :-verify(country_philippines),
	    verify(elevation_7m),
		verify(region_national_capital_region),
		verify(established_13th_century),
		verify(highest_elevation_108m).

/* how to ask questions */
ask(Question) :-
    write('Does the city have the following characteristics?: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:- dynamic yes/1,no/1.

/* How to verify something */
verify(S) :-
   (yes(S) 
    ->
    true ;
    (no(S)
     ->
     fail ;
     ask(S))).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail. 
undo :- retract(no(_)),fail.
undo.