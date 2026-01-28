from django.contrib import admin
from django.urls import path
from workout.views import word, check
from django.http import JsonResponse
import time

def health_check():
    """Эндпоинт для проверки """
    return JsonResponse({'status': 'ok', 'timestamp': time.time()})

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', word),
    path('check/', check),
    path('health/', health_check),
]
