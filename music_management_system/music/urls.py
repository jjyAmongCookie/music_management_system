from django.conf.urls import url
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('singer/',views.singer,name='singer'),
    path('composer/',views.composer,name='composer'),
    path('lyricist/',views.lyricist,name='lyricist'),
    path('album/',views.album,name='album'),
    path('song/',views.song,name='song')
]
