﻿
Процедура ПередЗаписью(Отказ)
	Если ЭлементПроцесса = Перечисления.ЭлементыПроцесса.ВложенныйПроцесс Тогда
		Если ЭтоНовый() Тогда
			НовыйЭлемент = Справочники.Процессы.СоздатьЭлемент();
			
			НовыйЭлемент.ЭлементПроцесса = Перечисления.ЭлементыПроцесса.Старт;
			НовыйЭлемент.ВместоОписанияКлючевоеДействие = ВместоОписанияКлючевоеДействие;
			НовыйЭлемент.Владелец = Владелец;
			
			НовыйЭлемент.УстановитьНовыйКод();
			
			Попытка
				НовыйЭлемент.Записать();
			Исключение
				Отказ = Истина;
				
				Возврат;
			КонецПопытки;
			
			ВложенныйПроцесс = НовыйЭлемент.Ссылка;
		КонецЕсли;
	КонецЕсли;
КонецПроцедуры
