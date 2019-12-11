from django.conf.urls import url
from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    # ex: /polls/5/
    # path('p/<int:player_api_id>/', views.player_detail, name='player_detail'),
    # path('m/<int:match_id>/',views.match_detail,name='match_detail'),
    # path('t/<int:team_api_id>/',views.team_detail,name='team_detail'),
    # path('l/<int:league_id>/',views.league_detail,name='league_detail'),
    # path('srp',views.player_search,name='player_search'),
    # path('srt',views.team_search,name='team_search')
]
