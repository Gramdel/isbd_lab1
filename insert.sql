INSERT INTO city_type (description) VALUES
    ('Изолированный'),
   	('Неизолированный');

INSERT INTO location (name) VALUES
    ('Пустыня'),
   	('Горы'),
   	('Созвездие Семи Солнц');

INSERT INTO city (name, population, city_type, location) VALUES
   	('Диаспар', 10000000, 1, 1),
   	('Лиз', 2000000, 2, 2),
    ('Древний город', 1, 2, 3);

INSERT INTO job (name) VALUES
    ('Иссдедователь космоса'),
   	('Шут'),
   	('Мудрец-наставник'),
   	('Старейшина'),
   	('Мыслитель');

INSERT INTO doubt (description) VALUES
    ('За пределами города ждёт опасность'),
    ('Изоляция ограничивает науку'),
    ('Возможно, мы неправильно учим молодых'),
   	('Вечно жить - скучно');

INSERT INTO expectation (description) VALUES
    ('Мы должны жить миллиарды лет'),
    ('Космос должен быть исследован'),
    ('Спокойно жить можно только в изоляции'),
    ('Знания предков нельзя потерять'),
   	('Телепатия не должна попасть в злые руки');

INSERT INTO citizen (name, age, reincarnation_count, city, job, doubt, expectation) VALUES
    ('Олвин', 20, 0, 1, 1, 2, 2),
    ('Джизирак', 67, 999, 1, 3, 3, 1),
    ('Хедрон', 31, 10, 1, 2, 4, null),
    ('Алистра', 20, 0, 1, 1, null, 4),
    ('Сирэйнис', 82, 0, 2, 4, 3, 5),
    ('Хилвар', 19, 0, 2, null, 1, 3),
    ('Вэйнамонд', 1000000, 0, 3, 5, null, null);

INSERT INTO technology (name, expectation) VALUES
    ('Хранилище памяти', 4),
    ('Центральный компьютер', 2),
    ('Защитный купол', 3),
    ('Машина для клонирования', 1);

INSERT INTO citizen_technology (citizen, technology) VALUES
    (1, 2),
    (2, 1),
    (2, 2),
    (2, 3),
    (2, 4),
    (4, 1);