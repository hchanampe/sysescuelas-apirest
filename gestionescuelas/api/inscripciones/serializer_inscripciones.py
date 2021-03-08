from rest_framework import serializers, status
from gestionescuelas.models import Inscripcion, Alumno, Tutor, Institucion
from rest_framework.response import Response
from django.db.models import ObjectDoesNotExist


class InscripcionPostSerializer(serializers.ModelSerializer):
    institucion_id = serializers.IntegerField(write_only=True)
    tutor_id = serializers.IntegerField(write_only=True)
    alumno_id = serializers.IntegerField(write_only=True)


    class Meta:
        model = Inscripcion
        fields = ("nivel_educativo","curso","documentacion","codigo_inscripcion","institucion_id","tutor_id","alumno_id")







class InscripcionGetSerialiazer(serializers.ModelSerializer):
    nombre_institucion = serializers.SerializerMethodField("get_nombre_institucion")
    nombre_alumno = serializers.SerializerMethodField("get_nombre_alumno")
    nombre_tutor = serializers.SerializerMethodField("get_nombre_tutor")

    def get_nombre_institucion(self, obj):
        return obj.institucion.nombre
    
    def get_nombre_alumno(self, obj):
        return obj.alumno

    def get_nombre_tutor(self, obj):
        return obj.tutor
    class Meta:
        model = Inscripcion
        fields = ("id", "nombre_insticucion", "nombre_alumno", "nombre_tutor","nivel_educativo", "curso", "codigo_inscripcion")



