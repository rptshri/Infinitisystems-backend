from django.db import models

# Create your models here.

class Counter(models.Model):
    clients= models.IntegerField(default='0')
    item_sold= models.IntegerField(default='0')
    projects= models.IntegerField(default='0')
    awards= models.IntegerField(default='0')


class ContactUs(models.Model):
    name= models.CharField(max_length=50, default='')
    email= models.EmailField(max_length=254, default='')
    subject= models.CharField(max_length=100, default='')
    message= models.TextField(default= '')


class LatestTech(models.Model):
    news= models.CharField(max_length=250, default='')
    news_autor= models.CharField(max_length=50, default='')
    news_date= models.DateField(auto_now_add=False, auto_now=False, null=True)
    news_link= models.TextField(default= '')
   


class NewsLetter(models.Model):
    email_news= models.EmailField(max_length=254, default='')
