from django.urls import path, re_path
from gestionescuelas.api.escuelas.api_escuela import EscuelaAPIView, EscuelaList
from rest_framework.urlpatterns import format_suffix_patterns

urlpatterns = [
    path('escuela/', EscuelaAPIView.as_view(), name="escuela_api")
]