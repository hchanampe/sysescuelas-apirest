from rest_framework import viewsets
from gestionescuelas.api.inscripciones.serializer_inscripciones import InscripcionPostSerializer
from gestionescuelas.models import Inscripcion


class InscripcionViewSet(viewsets.ModelViewSet):
    queryset = Inscripcion.objects.all()
    serializer_class = InscripcionPostSerializer

    class Meta:
        models = Inscripcion

    

        