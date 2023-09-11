Здесь буду рассматривать только готовые варианты запров к БД через клиент программы.

Первым на рассмотрении будет скрипт [/T_EXAMINATION_TYPE_LINK.sql](https://github.com/Artemedi/plan_work/blob/1c31352080cb22c86692ca61b5c2682dce7e1e0c/T_EXAMINATION_TYPE_LINK.sql) у которого будет следующий план выполнения:

Время компиляции запроса = ~151 ms

Продолжительность самго запроса = 663.103 ms

Количество прочитанных строк = 380,778,058

![image](https://github.com/Artemedi/plan_work/assets/99907367/ac71288e-bcc6-4f36-a5a0-24530b899ec5)

![image](https://github.com/Artemedi/plan_work/assets/99907367/aa494a58-aa5f-40f2-94c7-49f451eb2327)

![image](https://github.com/Artemedi/plan_work/assets/99907367/412e2464-5086-4bee-a9ae-716a73c16c77)

![image](https://github.com/Artemedi/plan_work/assets/99907367/0ea7a4c2-b662-44bd-8caf-695a1e450fe5)

Теперь просто уберём left там где таблицы связаны ключами и отсутствие не подразумевается [/T_EXAMINATION_TYPE_LINK_join.sql](https://github.com/Artemedi/plan_work/blob/1c31352080cb22c86692ca61b5c2682dce7e1e0c/T_EXAMINATION_TYPE_LINK_join.sql)

Время компиляции запроса = ~165 ms

Продолжительность самго запроса = 63.301 ms

Количество прочитанных строк = 25,373,893

![image](https://github.com/Artemedi/plan_work/assets/99907367/69e54231-1b09-4fa1-88d4-19699c659bf2)

Здесь мы сразу ограничиваем выборку по первичным условиям и ключам таблиц

![image](https://github.com/Artemedi/plan_work/assets/99907367/db5c98d3-4c1c-4186-b24a-8f83aa3766fb)

![image](https://github.com/Artemedi/plan_work/assets/99907367/ca4bf5eb-30b6-40a5-9eff-8b9e1ce57ffc)

![image](https://github.com/Artemedi/plan_work/assets/99907367/a660943e-87aa-40ad-be26-7028c1d3a358)
