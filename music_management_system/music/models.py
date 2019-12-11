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
    album_name = models.CharField(max_length=20)
    singer_id = models.CharField(max_length=8, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'albums'


class Composers(models.Model):
    composer_id = models.CharField(primary_key=True, max_length=8)
    composer_name = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'composers'


class Singers(models.Model):
    singer_id = models.CharField(primary_key=True, max_length=8)
    singer_name = models.CharField(max_length=20)
    singer_sex = models.CharField(max_length=1, blank=True, null=True)
    singer_nationality = models.CharField(max_length=20, blank=True, null=True)
    singer_type = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'singers'


class Songs(models.Model):
    song_id = models.CharField(primary_key=True, max_length=8)
    song_name = models.CharField(max_length=20, blank=True, null=True)
    singer_id = models.CharField(max_length=8, blank=True, null=True)
    composer_id = models.CharField(max_length=8, blank=True, null=True)
    songwritter_id = models.CharField(max_length=8, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'songs'


class Songwritters(models.Model):
    songwritter_id = models.CharField(primary_key=True, max_length=8)
    songwritter_name = models.CharField(max_length=20)

    class Meta:
        managed = False
        db_table = 'songwritters'
