from django.shortcuts import render
from . import models
from music.models import Singers, Albums, Lyricists, Composers, Songs


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
        search_result = Albums.objects.filter(album_name__contains=request.GET.get("search_text"))
        if not search_result:
            search_result = ['N']
    context={'search_result':search_result}
    return render(request, 'music/album.html', context)

def song(request):
    if request.GET.get("search_text") == None or request.GET.get("search_text") == '':
        search_result = []
    else:
        search_result = Songs.objects.filter(song_name__contains=request.GET.get("search_text"))
        if not search_result:
            search_result = ['N']
    context={'search_result':search_result}
    return render(request, 'music/song.html', context)
