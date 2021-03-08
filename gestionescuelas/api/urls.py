from django.urls import path, re_path
from django.conf.urls import include, url
from gestionescuelas.api.instituciones.api_institucion import InstitucionAPIView
from gestionescuelas.api.tutores.api_tutores import TutorAPIView
from gestionescuelas.api.alumnos.api_alumnos import AlumnoAPIView
from gestionescuelas.api.inscripciones.api_inscripciones import InscripcionViewSet
from rest_framework.urlpatterns import format_suffix_patterns
from rest_framework import routers


router = routers.SimpleRouter()
router.register(r'tutor', TutorAPIView)
router.register(r'alumnos', AlumnoAPIView)
router.register(r'inscripciones', InscripcionViewSet)

urlpatterns = [
    path('escuela/', InstitucionAPIView.as_view(), name="escuela_api"),
    path('', include((router.urls, 'tutor'))),
    path('', include((router.urls, 'alumnos'))),
    path('', include((router.urls, 'inscripciones'))),
]
