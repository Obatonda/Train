from django.db import models

class Words(models.Model):
    eng_name = models.CharField(max_length=100)
    ru_name = models.CharField(max_length=100)
    type = models.CharField(max_length=100, default='глагол')
    total_attempts = models.IntegerField(default=0, verbose_name='количество попыток')
    successful_attempts = models.IntegerField(default=0, verbose_name='количество успешных попыток')
    series = models.IntegerField(default=0, verbose_name='количество успешных попыток подрят')

class Proposal(models.Model):
    eng_name = models.CharField(max_length=100)
    ru_name = models.CharField(max_length=100)
    type = models.CharField(max_length=100, default='proposal')
    total_attempts = models.IntegerField(default=0, verbose_name='количество попыток')
    successful_attempts = models.IntegerField(default=0, verbose_name='количество успешных попыток')
    series = models.IntegerField(default=0, verbose_name='количество успешных попыток подрят')