from django.urls import include, path
from django.views.generic.base import TemplateView
from . import views

urlpatterns = [
    path('', views.index, name='home'),
    path('airsoftgun', views.AGcatalog, name='agcatalog'),
    path('airsoftgun/<int:id>', views.AGproduct),

    path('material', views.MaterialCatalog, name='materialcatalog'),
    path('material/<int:id>', views.MaterialProduct),

    path('equipment', views.EquipmentCatalog, name='equipmentcatalog'),
    path('equipment/<int:id>', views.EquipmentProduct),

    path('protection', views.ProtectionCatalog, name='protectioncatalog'),
    path('protection/<int:id>', views.ProtectionProduct),

    path('electronics', views.ElectronicsCatalog, name='electronicscatalog'),
    path('electronics/<int:id>', views.ElectronicsProduct),

    path('additional', views.AdditionalCatalog, name='additionalcatalog'),
    path('additional/<int:id>', views.AdditionalProduct),

    path('basket', views.Basket),
    path('payment', views.Payment),
    path('about', views.About),
    path('delivery', views.Delivery),

    path('robots.txt', TemplateView.as_view(template_name="robots.txt", content_type="text/plain"))
    ]