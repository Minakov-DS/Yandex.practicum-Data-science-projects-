# Исследование надежности заемщиков

## Задача

Необходимо проанализировать влияние семейного положения и количества детей клиента на факт погашения кредита в срок. Результаты исследования будут учтены при построении модели **кредитного скоринга**.

## Используемые библиотеки и ключевые техники

Pandas, Pymystem3, lemmatization, data preprocessing

## Данные

Статистика о платежноспособности клиентов:
* children — количество детей в семье
* days_employed — общий трудовой стаж в днях
* dob_years — возраст клиента в годах
* education — уровень образования клиента
* education_id — идентификатор уровня образования
* family_status — семейное положение
* family_status_id — идентификатор семейного положения
* gender — пол клиента
* income_type — тип занятости
* debt — имел ли задолженность по возврату кредитов
* total_income — ежемесячный доход
* purpose — цель получения кредита

