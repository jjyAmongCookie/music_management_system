from django.shortcuts import render
from . import models
# Create your views here.
# def index(request):
#     try:
#         res = {}
#         res['top_players'] = Player.objects.all()[:5]
#         res['top_teams'] = Team.objects.all()[:5]
#         res['recent_matchs'] = Match.objects.all().order_by('-date')[:5]
#         res['leagues']=League.objects.all()
#         template = loader.get_template('player/index.html')
#     except:
#         raise Http404("Oops! Resource doesn't exist. If you believe this is a bug or error, contact\
#          maijj6@mail2.sysu.edu.cn please.")
#     return HttpResponse(template.render(res, request))

def index(request):
    singers_list = models.Singers.objects.order_by('-singer_name')[:5]
    # context = {'latest_question_list': latest_question_list}
    context={'singers_list':singers_list}
    return render(request, 'music/index.html', context)
