from django.urls import path, include
from . import views # import views

urlpatterns = [
    #path('app_ex/', include("app_ex.urls", "inicio")),
    path("index/", views.index),
]