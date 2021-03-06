# Generated by Django 2.1.5 on 2019-12-10 16:46

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Albums',
            fields=[
                ('album_id', models.CharField(max_length=8, primary_key=True, serialize=False)),
                ('album_name', models.CharField(max_length=20)),
                ('singer_id', models.CharField(blank=True, max_length=8, null=True)),
            ],
            options={
                'db_table': 'albums',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Composers',
            fields=[
                ('composer_id', models.CharField(max_length=8, primary_key=True, serialize=False)),
                ('composer_name', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'composers',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Singers',
            fields=[
                ('singer_id', models.CharField(max_length=8, primary_key=True, serialize=False)),
                ('singer_name', models.CharField(max_length=20)),
                ('singer_sex', models.CharField(blank=True, max_length=1, null=True)),
                ('singer_nationality', models.CharField(blank=True, max_length=20, null=True)),
                ('singer_type', models.CharField(blank=True, max_length=20, null=True)),
            ],
            options={
                'db_table': 'singers',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Songs',
            fields=[
                ('song_id', models.CharField(max_length=8, primary_key=True, serialize=False)),
                ('song_name', models.CharField(blank=True, max_length=20, null=True)),
                ('singer_id', models.CharField(blank=True, max_length=8, null=True)),
                ('composer_id', models.CharField(blank=True, max_length=8, null=True)),
                ('songwritter_id', models.CharField(blank=True, max_length=8, null=True)),
            ],
            options={
                'db_table': 'songs',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Songwritters',
            fields=[
                ('songwritter_id', models.CharField(max_length=8, primary_key=True, serialize=False)),
                ('songwritter_name', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'songwritters',
                'managed': False,
            },
        ),
    ]
