﻿
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	УстановитьВидимостьДоступность();
КонецПроцедуры

&НаСервере
Процедура УстановитьВидимостьДоступность()
	Элементы.ГруппаНастройкиДляПолученияИзмененийИзХранилища.Видимость = Ложь;
	Если Объект.ПолучатьИзмененияИзХранилища Тогда
		Элементы.ГруппаНастройкиДляПолученияИзмененийИзХранилища.Видимость = Истина;
	Конецесли;
КонецПроцедуры 

&НаКлиенте
Процедура ПолучатьИзмененияИзХранилищаПриИзменении(Элемент)
	УстановитьВидимостьДоступность();
КонецПроцедуры

&НаКлиенте
Процедура Приложения1сНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	Оповещение = Новый ОписаниеОповещения("ОбработатьВыборПриложение1с",ЭтаФорма);
	
	НачатьПомещениеФайла(Оповещение,,, Истина, Новый УникальныйИдентификатор);
КонецПроцедуры

&НаКлиенте
Процедура ОбработатьВыборПриложение1с(РезультаВыбора, Адрес, ВыбранноеИмяФайла,ДополнительныеПараметры) Экспорт
	Если РезультаВыбора = Неопределено Тогда
		Возврат;
	Конецесли;
	
	Объект.Приложение1с = ВыбранноеИмяФайла;
КонецПроцедуры 

&НаКлиенте
Процедура КаталогТранзитнойБазыНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	ДиалогВыбораФайла = Новый ДиалогВыбораФайла(РежимДиалогаВыбораФайла.ВыборКаталога);
	
	ДиалогВыбораФайла.Заголовок = НСтр("ru = 'Выберите каталог транзитной базы'");
	ДиалогВыбораФайла.МножественныйВыбор = Ложь;
	
	Оповещение = Новый ОписаниеОповещения("ОбработатьВыборКаталогаТранзитнойБазы",ЭтотОбъект);
	ДиалогВыбораФайла.Показать (Оповещение);

КонецПроцедуры

&НаКлиенте 
Процедура ОбработатьВыборКаталогаТранзитнойБазы(ВыбранныйКаталог, ДополнительныеПараметры) Экспорт 
	Если ВыбранныйКаталог = Неопределено Тогда
		Возврат;
	Конецесли;
	Объект.КаталогТранзитнойБазы = ВыбранныйКаталог[0];
КонецПроцедуры

&НаКлиенте
Процедура КаталогХранилищаНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	ДиалогВыбораФайла = Новый ДиалогВыбораФайла(РежимДиалогаВыбораФайла.ВыборКаталога);
	
	ДиалогВыбораФайла.Заголовок = НСтр("ru = 'Выберите каталог хранилища'");
	ДиалогВыбораФайла.МножественныйВыбор = Ложь;
	
	Оповещение = Новый ОписаниеОповещения("ОбработатьВыборКаталогаХранилища",ЭтотОбъект);
	ДиалогВыбораФайла.Показать (Оповещение);

КонецПроцедуры

&НаКлиенте 
Процедура ОбработатьВыборКаталогаХранилища(ВыбранныйКаталог, ДополнительныеПараметры) Экспорт 
	Если ВыбранныйКаталог = Неопределено Тогда
		Возврат;
	Конецесли;
	Объект.КаталогХранилища = ВыбранныйКаталог[0];
КонецПроцедуры


&НаКлиенте
Процедура КаталогДляЗагрузкиИзмененийИзХранилщаНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	ДиалогВыбораФайла = Новый ДиалогВыбораФайла(РежимДиалогаВыбораФайла.ВыборКаталога);
	
	ДиалогВыбораФайла.Заголовок = НСтр("ru = 'Выберите каталог для загрузки изменений из хранилища'");
	ДиалогВыбораФайла.МножественныйВыбор = Ложь;
	
	Оповещение = Новый ОписаниеОповещения("ОбработатьВыборКаталогДляЗагрузкиИзмененийИзХранилща",ЭтотОбъект);
	ДиалогВыбораФайла.Показать (Оповещение);
КонецПроцедуры

&НаКлиенте
Процедура КомандаСоздатьVBSФайлДляПланировщикаЗаданий(Команда)
	//Если НЕ ЗначениеЗаполнено(Объект.КаталогДляЗагрузкиИзмененийИзХранилща) Тогда
	//	Сообщение = Новый СообщениеПользователю;
	//	Сообщение.Текст = "Ошибка! Необходимо заполнить реквизит КаталогДляЗагрузкиИзмененийИзХранилща";
	//	Сообщение.Поле = "Объект.КаталогДляЗагрузкиИзмененийИзХранилща";
	//	Сообщение.Сообщить();
	//	Возврат;
	//Конецесли;
	//Если Объект.Ссылка.Пустая() Тогда
	//	Сообщение = Новый СообщениеПользователю;
	//	Сообщение.Текст = "Ошибка! необходиом сначала записать элемент";
	//	Сообщение.Сообщить();
	//	Возврат;
	//Конецесли;
	//
	//ТекстКоманды = ПолучитьТекстКомандыНаСервере();
	//VBSФайл = Новый ТекстовыйДокумент();
	//VBSФайл.УстановитьТекст(
	//"
	//|Set WshShell = CreateObject(""WScript.Shell"")
	//|
	//|TekDate = date
	//|TekTime = Time
	//|FileName = ""StorageHistory_"" & Replace(TekDate,""."","""") & ""_"" & Replace(TekTime,"":"","""") & "".mxl""
	// |
	//|WshShell.Run """ + ТекстКоманды + ",0,0 
	//|");
	//ИмяСкриптФайла = Объект.КаталогДляЗагрузкиИзмененийИзХранилща + "DumpStorage.vbs";
	//VBSФайл.Записать(ИмяСкриптФайла,КодировкаТекста.ANSI);
КонецПроцедуры

&НаСервере
Функция ПолучитьТекстКомандыНаСервере() 
	//ОбрОбъект = Обработки.узЗагрузкаИзмененийИзХранилища.Создать();
	//ОбрОбъект.Конфигурация =  Объект.Ссылка;
	//ФайлВыгрузкиИзменений = ""+Объект.КаталогДляЗагрузкиИзмененийИзХранилща + "\"" & FileName &";
	//РезультатФункции = ОбрОбъект.ПолучитьНастройкиЗапускаКонфигуратора(ФайлВыгрузкиИзменений);	
	//Возврат РезультатФункции.ТекстКоманды;
КонецФункции 
