from django.urls import path, re_path
from django.conf.urls import include, url
from gestionescuelas.api.instituciones.api_institucion import InstitucionAPIView
from gestionescuelas.api.tutores.api_tutores import TutorAPIView
from rest_framework.urlpatterns import format_suffix_patterns
from rest_framework import routers


router = routers.SimpleRouter()
router.register(r'tutor', TutorAPIView)

urlpatterns = [
    path('escuela/', InstitucionAPIView.as_view(), name="escuela_api"),
    path('', include((router.urls, 'tutor'))),
]
