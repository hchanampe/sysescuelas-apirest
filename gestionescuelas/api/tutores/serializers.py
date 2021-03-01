from rest_framework import serializers
from gestionescuelas.models import Tutor
from gestionescuelas.api.personas.serializers import PersonaSerializer


class TutorSerializer(serializers.ModelSerializer):
    persona = PersonaSerializer(many=False)

    class Meta:
        model = Tutor
        fields = '__all__'