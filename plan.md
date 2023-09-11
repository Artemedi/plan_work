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


Следующим примером возьмём запрос к [/Visit](https://github.com/Artemedi/plan_work/blob/58e10ac4d7f8b248f557522fd4d92145a9a1cbb2/visit_left.sql) который выполняется постоянно.

Время компиляции запроса = ~5,908 ms

Продолжительность самго запроса = 80.110 ms

Количество прочитанных строк = 90,503,246

![image](https://github.com/Artemedi/plan_work/assets/99907367/2197c320-5f7c-43db-8d78-92f98cf8ddb9)

![image](https://github.com/Artemedi/plan_work/assets/99907367/a076caf1-21f1-44e3-a34d-70c744333fdd)


Меня left на join там где это подразумевается [/Visit](https://github.com/Artemedi/plan_work/blob/58e10ac4d7f8b248f557522fd4d92145a9a1cbb2/visit_join.sql)

Время компиляции запроса = ~4,294 ms

Продолжительность самго запроса = 46.199 ms

Количество прочитанных строк = 2,197,288

![image](https://github.com/Artemedi/plan_work/assets/99907367/9f39fa0b-76e2-48cf-9fb6-e8741a70f0b1)

![image](https://github.com/Artemedi/plan_work/assets/99907367/6a4850e3-7913-4a15-984f-5a62295d2807)

