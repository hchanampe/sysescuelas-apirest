from django.urls import path, re_path
from gestionescuelas.api.instituciones.api_institucion import InstitucionAPIView
from rest_framework.urlpatterns import format_suffix_patterns

urlpatterns = [
    path('escuela/', InstitucionAPIView.as_view(), name="escuela_api")
]