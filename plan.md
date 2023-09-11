Здесь буду рассматривать только готовые варианты запров к БД через клиент программы.

Первым на рассмотрении будет скрипт [/T_EXAMINATION_TYPE_LINK.sql](https://github.com/Artemedi/plan_work/blob/1c31352080cb22c86692ca61b5c2682dce7e1e0c/T_EXAMINATION_TYPE_LINK.sql) у которого будет следующий план выполнения:

Время компиляции запроса = ~151 ms

Продолжительность самго запроса = 663.103 ms

Количество прочитанных строк = 380,778,058

![image](https://github.com/Artemedi/plan_work/assets/99907367/227e7a49-786e-403a-84cb-38dd029eab3a)

![image](https://github.com/Artemedi/plan_work/assets/99907367/313d8add-5cee-43e2-a733-b97567097a50)

![image](https://github.com/Artemedi/plan_work/assets/99907367/f01601d5-a9e4-4bed-a69b-9278d6f529a2)

![image](https://github.com/Artemedi/plan_work/assets/99907367/236530f6-63a2-478b-a7bf-42f29ee53e60)


Теперь просто уберём left там где таблицы связаны ключами и отсутствие не подразумевается [/T_EXAMINATION_TYPE_LINK_join.sql](https://github.com/Artemedi/plan_work/blob/1c31352080cb22c86692ca61b5c2682dce7e1e0c/T_EXAMINATION_TYPE_LINK_join.sql)

Время компиляции запроса = ~165 ms

Продолжительность самго запроса = 63.301 ms

Количество прочитанных строк = 25,373,893

![image](https://github.com/Artemedi/plan_work/assets/99907367/085a1e32-e0ff-48a4-95ec-3a491ebdc9fe)


Здесь мы сразу ограничиваем выборку по первичным условиям и ключам таблиц

![image](https://github.com/Artemedi/plan_work/assets/99907367/f7ccffd8-54b0-4b0c-a1af-91dde6176e69)

![image](https://github.com/Artemedi/plan_work/assets/99907367/d711c608-d116-4639-b72c-419921d8e065)

![image](https://github.com/Artemedi/plan_work/assets/99907367/75f315ca-598e-46ef-9f1d-9a399fa04806)


Следующим примером возьмём запрос к [/Visit](https://github.com/Artemedi/plan_work/blob/58e10ac4d7f8b248f557522fd4d92145a9a1cbb2/visit_left.sql) который выполняется постоянно.

Время компиляции запроса = ~5,908 ms

Продолжительность самго запроса = 80.110 ms

Количество прочитанных строк = 90,503,246

![image](https://github.com/Artemedi/plan_work/assets/99907367/bcfe3c8a-4cf4-4d7c-ab47-4346913be167)

![image](https://github.com/Artemedi/plan_work/assets/99907367/08dc798f-aeb1-4ee9-9929-f0a5e6589058)


Меня left на join там где это подразумевается [/Visit](https://github.com/Artemedi/plan_work/blob/58e10ac4d7f8b248f557522fd4d92145a9a1cbb2/visit_join.sql)

Время компиляции запроса = ~4,294 ms

Продолжительность самго запроса = 46.199 ms

Количество прочитанных строк = 2,197,288

![image](https://github.com/Artemedi/plan_work/assets/99907367/ffa4cb97-f80e-4c49-b0bd-f31a05dfb326)

![image](https://github.com/Artemedi/plan_work/assets/99907367/3a4c56c6-abf4-402f-9ded-c490fc207f6d)


