from django.shortcuts import render
from workout.models import Words
from django.http import HttpResponse
import random
import ast
import json

import json
from django.http import JsonResponse
from django.shortcuts import get_object_or_404  # Если нужно, но здесь не обязательно
from .models import Words, Proposal


def word(request):
    array = Words.objects.all().values().order_by('id')
    le = len(array)
    i = False
    while not i:
        num = random.randint(0, le - 1)
        if array[num]['series'] >= 10 and random.random() < 0.001:
            i = True
        elif array[num]['series'] >= 5 and random.random() < 0.01:
            i = True
        elif array[num]['series'] >= 3 and random.random() < 0.1:
            i = True
        elif array[num]['series'] == 2 and random.random() < 0.2:
            i = True
        elif array[num]['series'] == 1 and random.random() < 0.5:
            i = True
        elif array[num]['series'] == 0:
            i = True
        #elif array[num]['series'] == 0 and random.random() < ((array[num]['successful_attempts']
        #                                                       / array[num]['total_attempts']) / 2):
            i = True
    return JsonResponse(array[num])


def check(request):
    id = request.GET.get('id')
    word = Words.objects.get(pk=id)
    message = request.GET.get('message')
    if message == word.eng_name:
        word.series = word.series + 1
        word.total_attempts = word.total_attempts + 1
        word.successful_attempts = word.successful_attempts + 1
        word.save()
        return HttpResponse('Правильно')
    else:
        word.series = 0
        word.total_attempts = word.total_attempts + 1
        word.save()
        return HttpResponse(word.eng_name)

