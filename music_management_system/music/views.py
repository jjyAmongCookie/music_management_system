from django.shortcuts import render
from . import models
from music.models import Singers, Albums, Lyricists, Composers, Songs
from django.forms.models import model_to_dict


def index(request):
    singers_list = models.Singers.objects.order_by('-singer_name')[:5]
    # context = {'latest_question_list': latest_question_list}
    context={'singers_list':singers_list}
    return render(request, 'music/index.html', context)

def singer(request):
    if request.GET.get("search_text") == None or request.GET.get("search_text") == '':
        search_result = []
    else:
        search_result = Singers.objects.filter(singer_name__contains=request.GET.get("search_text"))
        if not search_result:
            search_result = ['N']
    context={'search_result':search_result}
    return render(request, 'music/singer.html', context)

def composer(request):
    if request.GET.get("search_text") == None or request.GET.get("search_text") == '':
        search_result = []
    else:
        search_result = Composers.objects.filter(composer_name__contains=request.GET.get("search_text"))
        if not search_result:
            search_result = ['N']
    context={'search_result':search_result}
    return render(request, 'music/composer.html', context)

def lyricist(request):
    if request.GET.get("search_text") == None or request.GET.get("search_text") == '':
        search_result = []
    else:
        search_result = Lyricists.objects.filter(lyricist_name__contains=request.GET.get("search_text"))
        if not search_result:
            search_result = ['N']
    context={'search_result':search_result}
    return render(request, 'music/lyricist.html', context)

def album(request):
    if request.GET.get("search_text") == None or request.GET.get("search_text") == '':
        search_result = []
    else:
        search_result1 = Albums.objects.filter(album_name__contains=request.GET.get("search_text"))
        if search_result1:
            search_result = []
            for i in range(search_result1.count()):
                search_result.append(model_to_dict(search_result1[i]))
                t_singer = search_result1[i].singer
                if t_singer == None:
                    singer_name = ''
                else:
                    singer_name = t_singer.singer_name
                search_result[i]['singer_name'] = singer_name
        else:
            search_result = ['N']
    context={'search_result':search_result}
    return render(request, 'music/album.html', context)

def song(request):
    if request.GET.get("search_text") == None or request.GET.get("search_text") == '':
        search_result = []
    else:
        search_result1 = Songs.objects.filter(song_name__contains=request.GET.get("search_text"))
        if search_result1:
            search_result = []
            for i in range(search_result1.count()):
                search_result.append(model_to_dict(search_result1[i]))
                t_singer = search_result1[i].singer
                t_composer = search_result1[i].composer
                t_lyricist = search_result1[i].lyricist
                t_album = search_result1[i].album
                temp = {'singer_name':t_singer, 'composer_name':t_composer,
                        'lyricist_name':t_lyricist, 'album_name':t_album}
                for k in temp:
                    if temp[k] == None:
                        search_result[i][k] = ''
                    else:
                        search_result[i][k] = model_to_dict(temp[k])[k]
        else:
            search_result = ['N']
    context={'search_result':search_result}
    return render(request, 'music/song.html', context)
