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
class Escuela(models.Model):
    id = models.AutoField(db_column='Id', primary_key=True)  # Field name made lowercase.
    cue = models.IntegerField(db_column='Cue')  # Field name made lowercase.
    anexo = models.IntegerField(db_column='Anexo')  # Field name made lowercase.
    nombre = models.CharField(db_column='Nombre', max_length=81)  # Field name made lowercase.
    estado = models.CharField(db_column='Estado', max_length=6)  # Field name made lowercase.
    sector = models.CharField(db_column='Sector', max_length=7)  # Field name made lowercase.
    categoria = models.CharField(db_column='Categoria', max_length=2)  # Field name made lowercase.
    ambito = models.CharField(db_column='Ambito', max_length=6)  # Field name made lowercase.
    sede = models.CharField(db_column='Sede', max_length=8)  # Field name made lowercase.
    ofertatipo = models.CharField(db_column='OfertaTipo', max_length=133)  # Field name made lowercase.
    localidad = models.CharField(db_column='Localidad', max_length=26)  # Field name made lowercase.
    departamento = models.CharField(db_column='Departamento', max_length=24)  # Field name made lowercase.
    domicilio = models.CharField(db_column='Domicilio', max_length=56)  # Field name made lowercase.
    teléfono = models.CharField(db_column='Teléfono', max_length=15)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'escuelas_primarias'

    class Meta:
        managed = False
        db_table = 'escuelas_primarias'