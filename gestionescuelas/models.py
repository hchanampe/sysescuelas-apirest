from django.db import models
import uuid
class Basic(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract=True
        ordering = ['-created']

class Institucion(models.Model):
    tipo = models.CharField(max_length=60, blank=True, null=True)
    categoria = models.CharField(max_length=2, blank=True, null=True)
    cue = models.CharField(max_length=7, blank=True, null=True)
    nombre = models.CharField(max_length=47, blank=True, null=True)
    domicilio = models.CharField(max_length=55, blank=True, null=True)
    turno = models.CharField(max_length=5, blank=True, null=True)
    localidad = models.CharField(max_length=23, blank=True, null=True)
    porcentaje_zona = models.CharField(max_length=5, blank=True, null=True)
    zona = models.CharField(max_length=1, blank=True, null=True)

    class Meta:
        db_table = 'instituciones'
        managed = 'false'

class Persona(models.Model):
    nombre = models.CharField(max_length=100, null=True, blank=True)
    apellido = models.CharField(max_length=100,null=True, blank=True)
    documento = models.IntegerField(null=True, blank=True)
    fecha_nacimiento = models.DateField(null=True, blank=True)
    email = models.EmailField(null=True, blank=True)
    localidad = models.CharField(max_length=100, null=True, blank=True)
    departamento = models.CharField(max_length=100, null=True, blank=True)
    nacionalidad = models.CharField(max_length=100, blank=False, default = 'Argentino')


    @property
    def nombre_completo(self):
        return '%s %s' % (self.nombre, self.apellido)


class Tutor(models.Model):
    persona = models.OneToOneField(
                                   Persona,
                                   on_delete=models.CASCADE,
                                   primary_key=True,
                                   )
    
    relacion = models.CharField(max_length = 100, blank = False , default = 'Tutor' )


    #2tutor = models.ManyToManyField

class Inscripcion(Basic):
    institucion = models.ForeignKey(
                                    Institucion,
                                    on_delete = models.CASCADE)
    persona = models.ForeignKey(
                                Persona,
                                on_delete = models.CASCADE
                                )
    tutor = models.ForeignKey(
                              Tutor,
                              on_delete = models.CASCADE
                            )
    documentacion = models.BooleanField(default=False)
#     alumno = 

class Alumno(models.Model):
    inscripcion = models.ForeignKey(
                                    Inscripcion,
                                    on_delete=models.CASCADE
                                    )
    codigo_inscripcion = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)


