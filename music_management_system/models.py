# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Albums(models.Model):
    album_id = models.CharField(primary_key=True, max_length=8)
    album_name = models.CharField(max_length=30)
    album_language = models.CharField(max_length=10, blank=True, null=True)
    record_company = models.CharField(max_length=30, blank=True, null=True)
    publish_date = models.DateField(blank=True, null=True)
    album_type = models.CharField(max_length=20, blank=True, null=True)
    singer = models.ForeignKey('Singers', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'albums'


class Composers(models.Model):
    composer_id = models.CharField(primary_key=True, max_length=8)
    composer_name = models.CharField(max_length=30)
    composer_nationality = models.CharField(max_length=20, blank=True, null=True)
    composer_birthplace = models.CharField(max_length=20, blank=True, null=True)
    composer_birth = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'composers'


class Lyricists(models.Model):
    lyricist_id = models.CharField(primary_key=True, max_length=8)
    lyricist_name = models.CharField(max_length=30)
    lyricist_nationality = models.CharField(max_length=20, blank=True, null=True)
    lyricist_birthplace = models.CharField(max_length=20, blank=True, null=True)
    lyricist_birth = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'lyricists'


class Singers(models.Model):
    singer_id = models.CharField(primary_key=True, max_length=8)
    singer_name = models.CharField(max_length=30)
    singer_nationality = models.CharField(max_length=20, blank=True, null=True)
    singer_constellation = models.CharField(max_length=10, blank=True, null=True)
    singer_height = models.DecimalField(max_digits=4, decimal_places=1, blank=True, null=True)
    singer_weight = models.DecimalField(max_digits=4, decimal_places=1, blank=True, null=True)
    singer_birthplace = models.CharField(max_length=20, blank=True, null=True)
    singer_birth = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'singers'


class Songs(models.Model):
    song_id = models.CharField(primary_key=True, max_length=8)
    song_name = models.CharField(max_length=30)
    publish_year = models.CharField(max_length=4, blank=True, null=True)
    singer = models.ForeignKey(Singers, models.DO_NOTHING, blank=True, null=True)
    composer = models.ForeignKey(Composers, models.DO_NOTHING, blank=True, null=True)
    lyricist = models.ForeignKey(Lyricists, models.DO_NOTHING, blank=True, null=True)
    album = models.ForeignKey(Albums, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'songs'
