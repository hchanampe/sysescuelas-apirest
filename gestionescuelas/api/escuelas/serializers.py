from rest_framework import serializers
from gestionescuelas.models import Escuela

class EscuelaSerializer(serializers.ModelSerializer):
    class Meta:
        model = Escuela
        fields = '__all__'