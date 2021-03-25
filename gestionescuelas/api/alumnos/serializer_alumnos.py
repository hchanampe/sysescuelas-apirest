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
        if persona_data is not None:
            persona, created = Persona.objects.get_or_create(**persona_data)
            instance, created_  = Alumno.objects.get_or_create(persona=persona, **validated_data)
            
            return instance
    