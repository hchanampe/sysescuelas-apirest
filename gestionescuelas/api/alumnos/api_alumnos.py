from rest_framework import viewsets
from gestionescuelas.api.alumnos.serializer_alumnos import AlumnoSerializer
from gestionescuelas.models import Alumno


class AlumnoAPIView(viewsets.ModelViewSet):
    queryset = Alumno.objects.all()
    serializer_class = AlumnoSerializer
