from rest_framework import serializers
from gestionescuelas.models import Institucion

class InstitucionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Institucion
        fields = '__all__'