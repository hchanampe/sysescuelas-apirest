from rest_framework import serializers
from gestionescuelas.models import Alumno, Persona
from gestionescuelas.api.personas.serializers import PersonaSerializer

class AlumnoSerializer(serializers.ModelSerializer):
    persona = PersonaSerializer()

    class Meta:
        model = Alumno
        fields =  ('codigo_unico_alumno', 'persona')

    def create(self, validated_data):
        persona_data = validated_data.pop('persona')
        persona, c = Persona.objects.get_or_create(**persona_data)
        instance  = Alumno.objects.create(persona=persona, **validated_data)
        return instance