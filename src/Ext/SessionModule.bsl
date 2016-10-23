﻿#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОбработчикиСобытий

Процедура УстановкаПараметровСеанса(ИменаПараметровСеанса)
	
	// СтандартныеПодсистемы
	СтандартныеПодсистемыСервер.УстановкаПараметровСеанса(ИменаПараметровСеанса);
	// Конец СтандартныеПодсистемы
	
	узУстановкаПараметровСеанса();
	узВыполнитьНастройкуПанелей();
	
КонецПроцедуры

Процедура узУстановкаПараметровСеанса()
	
КонецПроцедуры 

Процедура узВыполнитьНастройкуПанелей() Экспорт
	
	НастройкиИнтерфейса = ХранилищеСистемныхНастроек.Загрузить("Общее/НастройкиИнтерфейсаКлиентскогоПриложения");
	Если НастройкиИнтерфейса = Неопределено Тогда
		НастройкиИнтерфейса = Новый НастройкиИнтерфейсаКлиентскогоПриложения(); 
		НастройкиСостава = НастройкиИнтерфейса.ПолучитьСостав();	
		НастройкиИнтерфейса.УстановитьСостав(НастройкиСостава);
		ХранилищеСистемныхНастроек.Сохранить("Общее/НастройкиИнтерфейсаКлиентскогоПриложения", , НастройкиИнтерфейса);
	КонецЕсли;
КонецПроцедуры

#КонецОбласти

#КонецЕсли