from django.db import models



class Basic(models.Model):
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract=True
        ordering = ['-created']

class Persona(models.Model):
    name = models.CharField(max_length=100, blank=True, default='')
    last_name = models.CharField(max_length=100, blank=True, default='')
 


    
  
# Create your models here.
class Escuela(Basic):
    cue = models.BigIntegerField(null=True)
    anexo = models.IntegerField(blank=True, null=True)
    nombre = models.CharField(max_length=128)
    estado = models.CharField(max_length=30)
    sector = models.CharField(max_length=80)
    categoria = models.CharField(max_length=30)
    ambito = models.CharField(max_length=80)
    zona_supervision = models.CharField(max_length=80)
    oferta_tipo = models.CharField(max_length=133)
    localidad = models.CharField(max_length=80)
    departamento = models.CharField(max_length=128)
    domicilio = models.CharField(max_length=128)
    telefono = models.CharField(max_length=60)

    class Meta:
        managed = False
        db_table = 'escuelasprimarias'