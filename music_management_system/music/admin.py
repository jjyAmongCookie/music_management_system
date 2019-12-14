from django.contrib import admin
from .models import Singers
from .models import Songs
from .models import Albums
from .models import Composers
from .models import Lyricists

# Register your models here.
admin.site.register(Songs)
admin.site.register(Singers)
admin.site.register(Albums)
admin.site.register(Composers)
admin.site.register(Lyricists)



