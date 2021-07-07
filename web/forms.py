from .models import Order
from django.forms import ModelForm, TextInput, EmailInput, Textarea, CheckboxInput, RadioSelect, CheckboxSelectMultiple

class OrderForm(ModelForm):
	class Meta:
		model = Order
		fields = ['session_key', 'key']

		widgets = {
			"session_key": TextInput(attrs={'type': 'hidden'}),
			"key": TextInput(attrs={'type': 'hidden'}),
		}