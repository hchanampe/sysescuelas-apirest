from rest_framework import serializers
from gestionescuelas.models import Tutor, Persona
from gestionescuelas.api.personas.serializers import PersonaSerializer


class TutorSerializer(serializers.ModelSerializer):
    persona = PersonaSerializer()

    class Meta:
        model = Tutor
        fields =  ('relacion', 'persona')

    def create(self, validated_data):
        persona_data = validated_data.pop('persona')
        persona, c = Persona.objects.get_or_create(**persona_data)
        instance  = Tutor.objects.create(persona=persona, **validated_data)
        return instance