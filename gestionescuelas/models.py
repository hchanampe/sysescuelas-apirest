from django.db import models

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
        managed = False
        db_table = 'instituciones'
class Persona(models.Model):
    nombre = models.CharField(max_length=100, null=False, default='')
    apellido = models.CharField(max_length=100, null=False, default='')
    documento = models.IntegerField(null=True, blank=True)
    fecha_nacimiento = models.DateField(null=True, blank=True)


    @property
    def nombre_completo(self):
        return '%s %s' % (self.nombre, self.apellido)

class Tutor(models.Model):
    persona = models.ForeignKey(Persona,on_delete=models.CASCADE)

class Alumno(models.Model):
    persona = models.ForeignKey(Persona, on_delete=models.CASCADE)
    institucion = models.ForeignKey(Institucion, on_delete=models.CASCADE)
    #tutor = models.ManyToManyField

    


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





