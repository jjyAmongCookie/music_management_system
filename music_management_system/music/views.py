from django.shortcuts import render
from . import models

def index(request):
    singers_list = models.Singers.objects.order_by('-singer_name')[:5]
    # context = {'latest_question_list': latest_question_list}
    context={'singers_list':singers_list}
    return render(request, 'music/index.html', context)

def singer(request):
    singers_list = models.Singers.objects.order_by('-singer_name')[:5]
    # context = {'latest_question_list': latest_question_list}
    context={'singers_list':singers_list}
    return render(request, 'music/singer.html', context)

def composer(request):
    singers_list = models.Singers.objects.order_by('-singer_name')[:5]
    # context = {'latest_question_list': latest_question_list}
    context={'singers_list':singers_list}
    return render(request, 'music/composer.html', context)

def lyricist(request):
    singers_list = models.Singers.objects.order_by('-singer_name')[:5]
    # context = {'latest_question_list': latest_question_list}
    context={'singers_list':singers_list}
    return render(request, 'music/lyricist.html', context)

def album(request):
    singers_list = models.Singers.objects.order_by('-singer_name')[:5]
    # context = {'latest_question_list': latest_question_list}
    context={'singers_list':singers_list}
    return render(request, 'music/album.html', context)

def song(request):
    singers_list = models.Singers.objects.order_by('-singer_name')[:5]
    # context = {'latest_question_list': latest_question_list}
    context={'singers_list':singers_list}
    return render(request, 'music/song.html', context)
