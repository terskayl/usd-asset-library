from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('asset/<str:asset_name>/', views.asset_detail, name='asset_detail'),
]