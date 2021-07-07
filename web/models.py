from django.db import models


class AirsoftGun(models.Model):
	Vendor_list = [
		("Неизвестно", "Неизвестно"),
		("Cyma", "Cyma"),
		("G&G", "G&G"),
		("Tokyo Marui", "Tokyo Marui"),
		("WE", "WE"),
		("KJW", "KJW"),
		("KWA", "KWA"),
		("KWC", "KWC"),
		("T&D", "T&D")
	]
	Type_list = [
		("Автомат", "Автомат"),
		("Пистолет", "Пистолет"),
		("Винтовка", "Винтовка"),
		("Гранатомет", "Гранатомет"),
		("Дробовик", "Дробовик"),
		("Пулемет", "Пулемет"),
		("Нож", "Нож")
	]
	Mechanism_lsit = [
		("AEG", "AEG"),
		("Green Gas", "Green Gas"),
		("CO2", "CO2"),
		("Самовзод", "Самовзод")
	]
	Status_list = [
		("В наличии", "В наличии"),
		("Нет в наличии", "Нет в наличии")
	]
	Girbox_list = [
		("отсутствует", "отсутствует"),
		("V1", "Ver. 1"),
		("V2", "Ver. 2"),
		("V3", "Ver. 3"),
		("V4", "Ver. 4"),
		("V5", "Ver. 5"),
		("V6", "Ver. 6"),
		("V7", "Ver. 7"),
		("V8", "Ver. 8"),
		("V9", "Ver. 9"),
		("V2.5", "Ver. 2,5"),
		("M249/PKM", "M249/PKM"),
		("M60", "M60")
	]
	Name = models.CharField(max_length=120)
	Image = models.ImageField(upload_to='airsoftgun/', blank=False)
	Vendor = models.CharField(max_length=50, choices=Vendor_list)
	Type_list = models.CharField(max_length=50, choices=Type_list)
	Mechanism = models.CharField(max_length=50, choices=Mechanism_lsit)
	Weight = models.IntegerField()
	Girbox = models.CharField(max_length=50, choices=Girbox_list)
	Speed = models.IntegerField()
	Battery = models.CharField(max_length=120)
	Equipment = models.CharField(max_length=120)
	About = models.TextField()
	Value = models.IntegerField()
	Price =  models.IntegerField()

	def __str__(self):
		return str(self.Name)


class Material(models.Model):
	Type_list = [
		("Шар", "Шар"),
		("Газ", "Газ")
	]
	Vendor_list = [
		("Неизвестно", "Неизвестно"),
		("G&G", "G&G"),
		("AimTop", "AimTop"),
		("FL-Airsoft", "FL-Airsoft")
	]
	Gas_list = [
		("нет", "нет"),
		("Green Gas", "Green Gas"),
		("CO2", "CO2")
	]
	BallWeight_list = [
		("нет", "нет"),
		("0.20", "0.20"),
		("0.25", "0.25"),
		("0.28", "0.28")
	]
	Name = models.CharField(max_length=120)
	Image = models.ImageField(upload_to='material/', blank=False)
	Vendor = models.CharField(max_length=50, choices=Vendor_list)
	BallWeight =  models.CharField(max_length=50, choices=BallWeight_list)
	Gas =  models.CharField(max_length=50, choices=Gas_list)
	Type_list = models.CharField(max_length=50, choices=Type_list)
	About = models.TextField()
	Value = models.IntegerField()
	Price =  models.IntegerField()

	def __str__(self):
		return str(self.Name)


class Equipment(models.Model):
	Vendor_list = [
		("Неизвестно", "Неизвестно"),
		("FMA", "FMA"),
		("Stich Profi", "Stich Profi"),
		("ASR", "ASR")
	]
	Type_list = [
		("Разгрузочная система", "Разгрузочная система"),
		("Подсумок", "Подсумок"),
		#("Кобура", "Кобура"),
		#("Ремень", "Ремень"),
		#("Рюкзаки и сумки", "Рюкзак"),
		#("Патч", "Патч"),
		#("Радио связь", "Радио связь")
	]
	Pouch_list = [
		("нет", "нет"),
		("Административный", "Административный"),
		("Гранатный", "Гранатный"),
		("Магазинный для АК/M4/M16", "Магазинный для АК/M4/M16"),
		#("Магазинный для Kriss Vector/P90/UMP45", "Магазинный для Kriss Vector/P90/UMP45"),
		#("Магазинный для ВАЛ", "Магазинный для ВАЛ"),
		#("Магазинный для ВСС", "Магазинный для ВСС"),
		#("Магазинный для пистолета", "Магазинный для пистолета"),
		("Медицинский", "Медицинский"),
		("Под бутылку", "Под бутылку"),
		("Под сброс магазинов", "Под сброс магазинов"),
		#("Под шеллы для дробовиков", "Под шеллы для дробовиков"),
		("Утилитарный", "Утилитарный"),
		("Прочие подсумки", "Прочие подсумки")
	]
	Holster_list = [
		("нет", "нет"),
		("Beretta", "Beretta"),
		("Colt", "Colt"),
		("Glock", "Glock"),
		("Hi-Capa", "Hi-Capa"),
		("ПЯ Грач", "ПЯ Грач"),
		("Универсальная", "Универсальная")
	]
	Color_list = [
		("нет", "нет"),
		("Multicam", "Multicam"),
		("A-TACS", "A-TACS"),
		("МОХ", "МОХ"),
		("EMR", "EMR"),
		("Marpat", "Marpat"),
		("Coyote Brown", "Coyote Brown"),
		("Черный", "Черный"),
		("Олива", "Олива"),
		("Разноцветный", "Разноцветный")
	]
	Name = models.CharField(max_length=120)
	Image = models.ImageField(upload_to='material/', blank=False)
	Vendor = models.CharField(max_length=50, choices=Vendor_list)
	Type_list = models.CharField(max_length=50, choices=Type_list)
	Color = models.CharField(max_length=50, choices=Color_list)
	Pouch = models.CharField(max_length=50, choices=Pouch_list)
	Holster = models.CharField(max_length=50, choices=Holster_list)
	Material = models.CharField(max_length=120)
	About = models.TextField()
	Value = models.IntegerField()
	Price =  models.IntegerField()

	def __str__(self):
		return str(self.Name)



class Protection(models.Model):
	Vendor_list = [
		("Неизвестно", "Неизвестно"),
		("FMA", "FMA"),
		("Stich Profi", "Stich Profi"),
		("ASR", "ASR")
	]
	Type_list = [
		("Шлем", "Шлем"),
		("Маска", "Маска"),
		("Очки", "Очки"),
		("Перчатки", "Перчатки")
	]
	Color_list = [
		("нет", "нет"),
		("Multicam", "Multicam"),
		("A-TACS", "A-TACS"),
		("МОХ", "МОХ"),
		("EMR", "EMR"),
		("Marpat", "Marpat"),
		("Coyote Brown", "Coyote Brown"),
		("Черный", "Черный"),
		("Олива", "Олива"),
		("Разноцветный", "Разноцветный")
	]
	Glasses_type_list = [
		("нет", "нет"),
		("Открытые", "Открытые"),
		("Закрытые", "Закрытые")
	]
	Name = models.CharField(max_length=120)
	Image = models.ImageField(upload_to='material/', blank=False)
	Vendor = models.CharField(max_length=50, choices=Vendor_list)
	Type_list = models.CharField(max_length=50, choices=Type_list)
	Color = models.CharField(max_length=50, choices=Color_list)
	Weight = models.IntegerField()
	Glasses_type = models.CharField(max_length=50, choices=Glasses_type_list)
	Material = models.CharField(max_length=120)
	About = models.TextField()
	Value = models.IntegerField()
	Price =  models.IntegerField()

	def __str__(self):
		return str(self.Name)


class Electronics(models.Model):
	Vendor_list = [
		("Неизвестно", "Неизвестно"),
		("FMA", "FMA"),
		("Stich Profi", "Stich Profi"),
		("ASR", "ASR")
	]
	Type_list = [
		("Гирбокс", "Гирбокс"),
		("Мотор", "Мотор"),
		("Пружина", "Пружина"),
		("Цилиндр", "Цилиндр"),
		("Камера хоп-апа", "Камера хоп-апа")
		#("Резинка хоп-апа", "Резинка хоп-апа")
	]
	Girbox_list = [
		("отсутствует", "отсутствует"),
		("V1", "Ver. 1"),
		("V2", "Ver. 2"),
		("V3", "Ver. 3"),
		("V4", "Ver. 4"),
		("V5", "Ver. 5"),
		("V6", "Ver. 6"),
		("V7", "Ver. 7"),
		("V8", "Ver. 8"),
		("V9", "Ver. 9"),
		("V2.5", "Ver. 2,5"),
		("M249/PKM", "M249/PKM"),
		("M60", "M60")
	]
	Motor_type_list = [
		("нет", "нет"),
		("Базовый", "Базовый"),
		("High Torque", "High Torque")
	]
	Stem_length_list = [
		("нет", "нет"),
		("Короткий", "Короткий"),
		("Длинный", "Длинный")
	]
	Seat_type_list = [
		("нет", "нет"),
		("AEG", "AEG")
	]
	For_gun_list = [
		("нет", "нет"),
		("АК-серия", "АК-серия"),
		("М-серия", "М-серия")
	]
	Name = models.CharField(max_length=120)
	Image = models.ImageField(upload_to='material/', blank=False)
	Vendor = models.CharField(max_length=50, choices=Vendor_list)
	Type_list = models.CharField(max_length=50, choices=Type_list)
	Girbox_equipment = models.CharField(max_length=120)
	Girbox = models.CharField(max_length=50, choices=Girbox_list)
	Motor_type = models.CharField(max_length=50, choices=Motor_type_list)
	Stem_length = models.CharField(max_length=50, choices=Stem_length_list)
	Seat_type = models.CharField(max_length=50, choices=Seat_type_list)
	Spring =  models.IntegerField()
	Cylinder_volume = models.CharField(max_length=120)
	For_gun = models.CharField(max_length=50, choices=For_gun_list)
	Material = models.CharField(max_length=120)
	About = models.TextField()
	Value = models.IntegerField()
	Price =  models.IntegerField()

	def __str__(self):
		return str(self.Name)



class Additional(models.Model):
	Type_list = [
		("Магазин", "Магазин"),
		("Аккумулятор", "Аккумулятор"),
		("Внешний тюнинг", "Внешний тюнинг")
	]
	Vendor_list = [
		("Неизвестно", "Неизвестно"),
		("FMA", "FMA"),
		("Stich Profi", "Stich Profi"),
		("ASR", "ASR")
	]
	For_gun_list = [
		("нет", "нет"),
		("АК-серия", "АК-серия"),
		("М-серия", "М-серия")
	]
	Connector_list = [
		("нет", "нет"),
		("Mini-tamiya", "Mini-tamiya"),
		("T-type", "T-type")
	]
	Name = models.CharField(max_length=120)
	Image = models.ImageField(upload_to='material/', blank=False)
	Vendor = models.CharField(max_length=50, choices=Vendor_list)
	Type_list = models.CharField(max_length=50, choices=Type_list)
	For_gun = models.CharField(max_length=50, choices=For_gun_list)
	N_balls =  models.IntegerField()
	Сurrent = models.IntegerField()
	Capacity = models.IntegerField()
	Voltage = models.CharField(max_length=120)
	Connector = models.CharField(max_length=50, choices=Connector_list	)
	Material = models.CharField(max_length=120)
	About = models.TextField()
	Value = models.IntegerField()
	Price =  models.IntegerField()

	def __str__(self):
		return str(self.Name)



class Order(models.Model):
	session_key = models.CharField(max_length=120)
	pr_type = models.CharField(max_length=120)
	pr_id = models.CharField(max_length=120)
	pr_value = models.IntegerField()

	def __str__(self):
		return str(self.id)
	

class FinishOrder(models.Model):
	Status_list = [
		("Обрабатывается", "Обрабатывается"),
		("Доставляется", "Доставляется"),
		("Готово к выдаче", "Готово к выдаче"),
		("Выдано", "Выдано")
	]
	Delivery_list = [
		("Самовывоз", "Самовывоз"),
		("Доставка", "Доставка")
	]
	
	FIO = models.CharField(max_length=120)
	Phone = models.CharField(max_length=120)
	Email = models.CharField(max_length=120)
	Order = models.TextField()
	Delivery =  models.CharField(max_length=50, choices=Delivery_list)
	Address = models.TextField()
	Comment = models.TextField()
	Price = models.IntegerField()
	Status = models.CharField(max_length=50, choices=Status_list)

	def __str__(self):
		return str(self.id)+") "+str(self.FIO)+" | "+str(self.Status)