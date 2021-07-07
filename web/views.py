from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect
from .models import *


def index(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()

	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)


	data = {
		'basket_price': basket_price
	}
	return render(request, 'page/index.html',data) 














def AGcatalog(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()

	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)


	Product = AirsoftGun.objects.all().order_by('Value').reverse()

	about_order = Order.objects.filter(session_key=session_key)
	


	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="airsoftgun")
	is_product_in_busket = []

	if basket: 
		for product in Product:
			flag = 0
			for basket in element_in_basket:
				if int(product.id) == int(basket.pr_id):
					flag = 1
			if flag == 1:
				is_product_in_busket.append(int(product.id))





	in_basket_list = []
	for product in about_order:
		in_basket_list.append(int(product.pr_id))



	if request.method == "POST":
		product_id = request.POST['id']
		button = request.POST['button']
		if int(product_id) in is_product_in_busket:
			return HttpResponseRedirect("/basket")
		else:
			Order(session_key = session_key, pr_type = "airsoftgun", pr_id = product_id, pr_value = 1).save()
			return HttpResponseRedirect("/airsoftgun")
			
			


	data = {
		'is_product_in_busket':is_product_in_busket,
		'in_basket_list':in_basket_list,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/catalog/airsoftgun.html', data)


def MaterialCatalog(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()

	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)


	Product = Material.objects.all().order_by('Value').reverse()

	about_order = Order.objects.filter(session_key=session_key)


	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="material")
	is_product_in_busket = []

	if basket: 
		for product in Product:
			flag = 0
			for basket in element_in_basket:
				if str(basket.pr_type) == "material" and int(product.id) == int(basket.pr_id):
					flag = 1
			if flag == 1:
				is_product_in_busket.append(product.id)


	
	in_basket_list = []
	for product in about_order:
		in_basket_list.append(int(product.pr_id))


	if request.method == "POST":
		product_id = request.POST['id']
		button = request.POST['button']
		if int(product_id) in is_product_in_busket:
			return HttpResponseRedirect("/basket")
		else:
			Order(session_key = session_key, pr_type = "material", pr_id = product_id, pr_value = 1).save()
			return HttpResponseRedirect("/material")
			
	data = {
		'is_product_in_busket':is_product_in_busket,
		'in_basket_list':in_basket_list,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/catalog/material.html', data)


def EquipmentCatalog(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()

	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)


	Product = Equipment.objects.all().order_by('Value').reverse()

	about_order = Order.objects.filter(session_key=session_key)

	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="equipment")
	is_product_in_busket = []

	if basket: 
		for product in Product:
			flag = 0
			for basket in element_in_basket:
				if str(basket.pr_type) == "equipment" and int(product.id) == int(basket.pr_id):
					flag = 1
			if flag == 1:
				is_product_in_busket.append(product.id)

	
	in_basket_list = []
	for product in about_order:
		in_basket_list.append(int(product.pr_id))


	if request.method == "POST":
		product_id = request.POST['id']
		button = request.POST['button']
		if int(product_id) in is_product_in_busket:
			return HttpResponseRedirect("/basket")
		else:
			Order(session_key = session_key, pr_type = "equipment", pr_id = product_id, pr_value = 1).save()
			return HttpResponseRedirect("/equipment")
			


	data = {
		'is_product_in_busket':is_product_in_busket,
		'in_basket_list':in_basket_list,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/catalog/equipment.html', data)


def ProtectionCatalog(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()

	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)


	Product = Protection.objects.all().order_by('Value').reverse()

	about_order = Order.objects.filter(session_key=session_key)
	

	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="protection")
	is_product_in_busket = []

	if basket: 
		for product in Product:
			flag = 0
			for basket in element_in_basket:
				if str(basket.pr_type) == "protection" and int(product.id) == int(basket.pr_id):
					flag = 1
			if flag == 1:
				is_product_in_busket.append(product.id)


	in_basket_list = []
	for product in about_order:
		in_basket_list.append(int(product.pr_id))

	if request.method == "POST":
		product_id = request.POST['id']
		button = request.POST['button']
		if int(product_id) in is_product_in_busket:
			return HttpResponseRedirect("/basket")
		else:
			Order(session_key = session_key, pr_type = "protection", pr_id = product_id, pr_value = 1).save()
			return HttpResponseRedirect("/protection")
			

	
	data = {
		'is_product_in_busket':is_product_in_busket,
		'in_basket_list':in_basket_list,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/catalog/protection.html', data)


def ElectronicsCatalog(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()

	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)


	Product = Electronics.objects.all().order_by('Value').reverse()

	about_order = Order.objects.filter(session_key=session_key)
	
	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="electronics")
	is_product_in_busket = []

	if basket: 
		for product in Product:
			flag = 0
			for basket in element_in_basket:
				if str(basket.pr_type) == "electronics" and int(product.id) == int(basket.pr_id):
					flag = 1
			if flag == 1:
				is_product_in_busket.append(product.id)


	in_basket_list = []
	for product in about_order:
		in_basket_list.append(int(product.pr_id))


	if request.method == "POST":
		product_id = request.POST['id']
		button = request.POST['button']
		if int(product_id) in is_product_in_busket:
			return HttpResponseRedirect("/basket")
		else:
			Order(session_key = session_key, pr_type = "electronics", pr_id = product_id, pr_value = 1).save()
			return HttpResponseRedirect("/electronics")
			

	data = {
		'is_product_in_busket':is_product_in_busket,
		'in_basket_list':in_basket_list,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/catalog/electronics.html', data)



def AdditionalCatalog(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()

	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)


	Product = Additional.objects.all().order_by('Value').reverse()

	about_order = Order.objects.filter(session_key=session_key)
	
	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="additional")
	is_product_in_busket = []

	if basket: 
		for product in Product:
			flag = 0
			for basket in element_in_basket:
				if str(basket.pr_type) == "additional" and int(product.id) == int(basket.pr_id):
					flag = 1
			if flag == 1:
				is_product_in_busket.append(product.id)


	in_basket_list = []
	for product in about_order:
		in_basket_list.append(int(product.pr_id))


	if request.method == "POST":
		product_id = request.POST['id']
		button = request.POST['button']
		if int(product_id) in is_product_in_busket:
			return HttpResponseRedirect("/basket")
		else:
			Order(session_key = session_key, pr_type = "additional", pr_id = product_id, pr_value = 1).save()
			return HttpResponseRedirect("/additional")
			


	data = {
		'is_product_in_busket':is_product_in_busket,
		'in_basket_list':in_basket_list,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/catalog/additional.html', data)











def AGproduct(request,id):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()
	
	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)



	Product = AirsoftGun.objects.get(id=id)
	
	
	get_order = Order.objects.filter(session_key=session_key).filter(pr_id=id)
	if Product.Value > 0:
		button = "Добавить"
	else:
		button = "Недоступно"
	if get_order:
		element_exist = Order.objects.filter(session_key=session_key).get(pr_id=id)
		if element_exist.pr_value:
			button = "В корзине"

	
	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="airsoftgun")
	is_product_in_busket = []

	'''
	print(Product)
	if basket: 
		flag = 0
		for basket in element_in_basket:
			if str(basket.pr_type) == "airsoftgun" and int(product.id) == int(basket.pr_id):
				flag = 1
			if flag == 1:
				is_product_in_busket.append(product.id)
	'''
		

	if request.method == "POST":
		if Product.Value > 0:
			if get_order:
				return HttpResponseRedirect("/basket")
			else:
				db = Order(session_key = session_key, pr_type = "airsoftgun", pr_id = id, pr_value = 1)
				db.save()
			return HttpResponseRedirect("/airsoftgun/"+str(id))



	data = {
		'is_product_in_busket':is_product_in_busket,
		'button': button,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/product/agproduct.html', data)




def MaterialProduct(request,id):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()
	
	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)



	Product = Material.objects.get(id=id)
	
	
	get_order = Order.objects.filter(session_key=session_key).filter(pr_id=id)
	if Product.Value > 0:
		button = "Добавить"
	else:
		button = "Недоступно"
	if get_order:
		element_exist = Order.objects.filter(session_key=session_key).get(pr_id=id)
		if element_exist.pr_value:
			button = "В корзине"

	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="material")
	is_product_in_busket = []

	'''
	if basket: 
		flag = 0
		for basket in element_in_basket:
			if str(basket.pr_type) == "airsoftgun" and int(product.id) == int(basket.pr_id):
				flag = 1
			if flag == 1:
				is_product_in_busket.append(product.id)
	'''


			

	if request.method == "POST":
		if Product.Value > 0:
			if get_order:
				return HttpResponseRedirect("/basket")
			else:
				db = Order(session_key = session_key, pr_type = "material", pr_id = id, pr_value = 1)
				db.save()
			return HttpResponseRedirect("/material/"+str(id))



	data = {
		'is_product_in_busket':is_product_in_busket,
		'button': button,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/product/materialproduct.html', data)



def EquipmentProduct(request,id):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()
	
	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)



	Product = Equipment.objects.get(id=id)
	
	
	get_order = Order.objects.filter(session_key=session_key).filter(pr_id=id)
	if Product.Value > 0:
		button = "Добавить"
	else:
		button = "Недоступно"
	if get_order:
		element_exist = Order.objects.filter(session_key=session_key).get(pr_id=id)
		if element_exist.pr_value:
			button = "В корзине"

	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="equipment")
	is_product_in_busket = []

	'''
	if basket: 
		flag = 0
		for basket in element_in_basket:
			if str(basket.pr_type) == "airsoftgun" and int(product.id) == int(basket.pr_id):
				flag = 1
			if flag == 1:
				is_product_in_busket.append(product.id)
	'''


			

	if request.method == "POST":
		if Product.Value > 0:
			if get_order:
				return HttpResponseRedirect("/basket")
			else:
				db = Order(session_key = session_key, pr_type = "equipment", pr_id = id, pr_value = 1)
				db.save()
			return HttpResponseRedirect("/equipment/"+str(id))



	data = {
		'is_product_in_busket':is_product_in_busket,
		'button': button,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/product/equipmentproduct.html', data)



def ProtectionProduct(request,id):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()
	
	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)



	Product = Protection.objects.get(id=id)
	
	
	get_order = Order.objects.filter(session_key=session_key).filter(pr_id=id)
	if Product.Value > 0:
		button = "Добавить"
	else:
		button = "Недоступно"
	if get_order:
		element_exist = Order.objects.filter(session_key=session_key).get(pr_id=id)
		if element_exist.pr_value:
			button = "В корзине"

	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="protection")
	is_product_in_busket = []

	'''
	if basket: 
		flag = 0
		for basket in element_in_basket:
			if str(basket.pr_type) == "airsoftgun" and int(product.id) == int(basket.pr_id):
				flag = 1
			if flag == 1:
				is_product_in_busket.append(product.id)
	'''


			

	if request.method == "POST":
		if Product.Value > 0:
			if get_order:
				return HttpResponseRedirect("/basket")
			else:
				db = Order(session_key = session_key, pr_type = "protection", pr_id = id, pr_value = 1)
				db.save()
			return HttpResponseRedirect("/protection/"+str(id))



	data = {
		'is_product_in_busket':is_product_in_busket,
		'button': button,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/product/protectionproduct.html', data)



def ElectronicsProduct(request,id):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()
	
	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)



	Product = Electronics.objects.get(id=id)
	
	
	get_order = Order.objects.filter(session_key=session_key).filter(pr_id=id)
	if Product.Value > 0:
		button = "Добавить"
	else:
		button = "Недоступно"
	if get_order:
		element_exist = Order.objects.filter(session_key=session_key).get(pr_id=id)
		if element_exist.pr_value:
			button = "В корзине"

	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="electronics")
	is_product_in_busket = []

	'''
	if basket: 
		flag = 0
		for basket in element_in_basket:
			if str(basket.pr_type) == "airsoftgun" and int(product.id) == int(basket.pr_id):
				flag = 1
			if flag == 1:
				is_product_in_busket.append(product.id)
	'''

			

	if request.method == "POST":
		if Product.Value > 0:
			if get_order:
				return HttpResponseRedirect("/basket")
			else:
				db = Order(session_key = session_key, pr_type = "electronics", pr_id = id, pr_value = 1)
				db.save()
			return HttpResponseRedirect("/electronics/"+str(id))


	data = {
		'is_product_in_busket':is_product_in_busket,
		'button': button,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/product/electronicsproduct.html', data)



def AdditionalProduct(request,id):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()
	
	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
				



	Product = Additional.objects.get(id=id)
	
	
	get_order = Order.objects.filter(session_key=session_key).filter(pr_id=id)
	if Product.Value > 0:
		button = "Добавить"
	else:
		button = "Недоступно"
	if get_order:
		element_exist = Order.objects.filter(session_key=session_key).get(pr_id=id)
		if element_exist.pr_value:
			button = "В корзине"

	element_in_basket = Order.objects.filter(session_key=session_key).filter(pr_type="additional")
	is_product_in_busket = []



			

	if request.method == "POST":
		if Product.Value > 0:
			if get_order:
				return HttpResponseRedirect("/basket")
			else:
				db = Order(session_key = session_key, pr_type = "additional", pr_id = id, pr_value = 1)
				db.save()
			return HttpResponseRedirect("/additional/"+str(id))


	data = {
		'is_product_in_busket':is_product_in_busket,
		'button': button,
		'Product': Product,
		'basket_price': basket_price
	}
	return render(request, 'page/product/additionalproduct.html', data)








def Basket(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()
	
	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)


	basket_product = []
	basket_exist = Order.objects.filter(session_key=session_key).order_by('id')
	if basket_exist:
		for basket_element in basket_exist:
			if basket_element.pr_type == "airsoftgun":
				product_info = AirsoftGun.objects.get(id=basket_element.pr_id)
			elif basket_element.pr_type == "material":
				product_info = Material.objects.get(id=basket_element.pr_id)
			elif basket_element.pr_type == "equipment":
				product_info = Equipment.objects.get(id=basket_element.pr_id)
			elif basket_element.pr_type == "protection":
				product_info = Protection.objects.get(id=basket_element.pr_id)
			elif basket_element.pr_type == "electronics":
				product_info = Electronics.objects.get(id=basket_element.pr_id)
			elif basket_element.pr_type == "additional":
				product_info = Additional.objects.get(id=basket_element.pr_id)
				
			basket_product.append(
				dict(
					name=product_info.Name,
					link="/"+basket_element.pr_type+"/"+basket_element.pr_id,
					image=product_info.Image.url,
					id=basket_element.pr_id,
					pr_type=basket_element.pr_type,
					value=basket_element.pr_value,
					price=product_info.Price,
					full_product_price=product_info.Price * basket_element.pr_value,
				))



	if request.method == "POST":
		button = request.POST['button']
		if button != 'Оформить':
			product_id = request.POST['id']
			product_type = request.POST['pr_type']
			
			get_value_order = Order.objects.filter(session_key=session_key).filter(pr_type=product_type).get(pr_id=product_id)
			if button == '+':
				Order.objects.filter(session_key=session_key).filter(pr_id=product_id).update(pr_value = get_value_order.pr_value+1)
			elif button == '-':
				Order.objects.filter(session_key=session_key).filter(pr_id=product_id).filter(pr_type=product_type).update(pr_value = get_value_order.pr_value-1)
				NO = Order.objects.filter(session_key=session_key).filter(pr_type=product_type).get(pr_id=product_id)
				if NO.pr_value == 0:
					Order.objects.filter(session_key=session_key).filter(pr_id=product_id).delete()
			elif button == '✖':
				Order.objects.filter(session_key=session_key).filter(pr_id=product_id).delete()
			
		elif button == 'Оформить':
			FIO = request.POST['FIO']
			Phone = request.POST['Phone']
			Email = request.POST['Email']

			CustomerStreet = request.POST['street']
			CustomerHouse = request.POST['house']
			CustomerFlat = request.POST['flat']
			CustomerIndex = request.POST['index']
			Comment = request.POST['Comment']
			Get_Delivery = request.POST.get('Delivery_type', False)
			Delivery = ""
	
			if int(Get_Delivery) == 1:
				Delivery = "Самовывоз"
			elif int(Get_Delivery) == 2:
				Delivery = "Доставка"

			if not CustomerStreet:
				CustomerStreet = "-"
			if not CustomerHouse:
				CustomerHouse = "-"
			if not CustomerFlat:
				CustomerFlat = "-"
			if not CustomerIndex:
				CustomerIndex = "-"
			if not Comment:
				Comment = ""
			Address = str("Улица: "+CustomerStreet+"\nДом: "+CustomerHouse+"\nКв.: "+CustomerFlat+"\n\nПочтовый индекс: "+CustomerIndex)
			
			OrderPack_name = []
			OrderPack_value = []
			OrderPack_price = []
			OrderPack_full_price = []
			OrderPack_type = []
			OrderPack_id = []
			for basket_product in basket_product:
				OrderPack_name.append(basket_product['name'])
				OrderPack_value.append(basket_product['value'])
				OrderPack_price.append(basket_product['price'])
				OrderPack_full_price.append(basket_product['full_product_price'])
				OrderPack_type.append(basket_product['pr_type'])
				OrderPack_id.append(basket_product['id'])
			print(OrderPack_name)

		
			db_Order = ""
			for i in range(0, len(basket)):
				OP_name = ''.join(OrderPack_name[i])
				OP_value = ''.join(str(OrderPack_value[i]))
				OP_price = ''.join(str(OrderPack_price[i]))
				OP_full_price = ''.join(str(OrderPack_full_price[i]))
				db_Order = str(db_Order) + str(i+1) + ") " +OP_name + " | Кол-во: "  + OP_value + " | за 1: " +  OP_price  + "р. | Сумма: " + OP_full_price + "р \n"
			Price = basket_price

			
			db = FinishOrder(FIO=FIO, Phone=Phone, Email=Email, Address=Address, Comment=Comment, Order=db_Order, Delivery=Delivery, Price=Price, Status="Обрабатывается")
			Order.objects.filter(session_key=session_key).delete()
			db.save()
			return HttpResponseRedirect("/")
		return HttpResponseRedirect("/basket")

	data = {
		'basket_product': basket_product,
		'basket_price': basket_price
	}

	return render(request, 'page/basket.html', data)


def Payment(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()

	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)


	data = {
		'basket_price': basket_price
	}
	return render(request, 'page/payment.html', data)

def About(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()

	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)


	data = {
		'basket_price': basket_price
	}
	return render(request, 'page/about.html',data)

def Delivery(request):
	session_key = request.session.session_key
	if not session_key:
		request.session.cycle_key()

	basket_price = 0
	basket = Order.objects.filter(session_key=session_key)
	if basket:
		for product in basket:
			if product.pr_type == "airsoftgun":
				product_price = AirsoftGun.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "material":
				product_price = Material.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "equipment":
				product_price = Equipment.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "protection":
				product_price = Protection.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "electronics":
				product_price = Electronics.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)
			elif product.pr_type == "additional":
				product_price = Additional.objects.get(id=product.pr_id)
				basket_price = basket_price + (product_price.Price * product.pr_value)


	data = {
		'basket_price': basket_price
	}
	return render(request, 'page/delivery.html',data)
