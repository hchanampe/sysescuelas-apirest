from django.urls import path, re_path
from django.conf.urls import url
from gestionescuelas.api.instituciones.api_institucion import InstitucionAPIView
from gestionescuelas.api.tutores.api_tutores import TutorAPIView
from rest_framework.urlpatterns import format_suffix_patterns

urlpatterns = [
    path('escuela/', InstitucionAPIView.as_view(), name="escuela_api"),
    url(r'^tutor/', TutorAPIView.as_view() , name="tutor_api")
]