﻿
Процедура ПередЗаписью(Отказ)
	ПроверитьРеквизиты(Отказ);
	Если Отказ Тогда
		Возврат;
	Конецесли;
КонецПроцедуры

Процедура ПроверитьРеквизиты(Отказ)
	МассивПроверяемыхРеквизитов = ПолучитьМассивПроверяемыхРеквизитов();
	Для каждого ИмяРеквизита из МассивПроверяемыхРеквизитов цикл
		ЗначениеРеквизита = ЭтотОбъект[ИмяРеквизита];
		Если НЕ ЗначениеЗаполнено(ЗначениеРеквизита) Тогда
			Сообщение = Новый СообщениеПользователю;
			Сообщение.Текст = "Ошибка! не заполнен реквизит ["+ИмяРеквизита+"]";
			Сообщение.Поле = "Объект."+ИмяРеквизита;
			Сообщение.Сообщить();
			Отказ = Истина;
		Конецесли;
	Конеццикла;
КонецПроцедуры 

Функция ПолучитьМассивПроверяемыхРеквизитов() Экспорт 
	МассивПроверяемыхРеквизитов = Новый Массив();
	Если ПолучатьИзмененияИзХранилища Тогда
		МассивПроверяемыхРеквизитов.Добавить("Приложение1с");
		МассивПроверяемыхРеквизитов.Добавить("КаталогТранзитнойБазы");
		МассивПроверяемыхРеквизитов.Добавить("ПользовательТранзитнойБазы");
		МассивПроверяемыхРеквизитов.Добавить("ПарольПользователяВТранзитнуюБазу");
		
		МассивПроверяемыхРеквизитов.Добавить("КаталогХранилища");
		МассивПроверяемыхРеквизитов.Добавить("ПользовательХранилища");
		МассивПроверяемыхРеквизитов.Добавить("ПарольПользователяВХранилище");
	Конецесли;
	Возврат МассивПроверяемыхРеквизитов; 
КонецФункции 
