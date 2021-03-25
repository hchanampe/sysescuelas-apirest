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
        persona_serializer = PersonaSerializer(data=persona_data)
        if persona_serializer.is_valid():
            persona, c = Persona.objects.get_or_create(**persona_data)
            instance, created  = Tutor.objects.get_or_create(persona=persona, **validated_data)
        return instance