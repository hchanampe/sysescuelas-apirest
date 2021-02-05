from rest_framework import serializers
from inscripcioneslr.models import Escuela

class EscuelaSerialiazer(serializer.Model):
    class Meta:
        model = Escuela
        fields = '__all__'