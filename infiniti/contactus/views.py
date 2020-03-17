from django.shortcuts import render, redirect

from django.http import HttpResponse
from .models import *
from .forms import *


def index(request):
    return render(request, 'index.html')


def header(request):
    return render(request, 'header.html')


def footer(request):
    LatestTechNews = LatestTech.objects.all()
    return render(request, 'footer.html', {'LatestTechNews': LatestTechNews})


def counter(request):
    count = Counter.objects.get(id=1)
    return render(request, 'counter.html', {'count': count})


def s1(request):
    return render(request, 's1.html')


def s2(request):
    return render(request, 's2.html')


def s3(request):
    return render(request, 's3.html')


def s4(request):
    return render(request, 's4.html')


def productsall(request):  # not working
    return render(request, 'products.html')


def aboutus(request):
    count = Counter.objects.get(id=1)
    return render(request, 'aboutus.html', {'count': count})


def careers(request):
    return render(request, 'career.html')


def contact(request):
    return render(request, 'contact.html')

def createnewsletter(request):
    # print("In Create news letter")
    if request.method=='POST':
        print("Got post method")        
        form = NewsLetterform(request.POST)
        print(form.is_valid())
        # if form.is_valid():
            # print("Valid Form")
        form.save()
        email_news= form.cleared_data['email_news']
        form=NewsLetter()
        # NewsLetter_obj = NewsLetter(email_news=email_news)
        # NewsLetter_obj.save()
        # print("Updated database")
        # return HttpResponseRedirect('index.html')
        return redirect ('index.html')
    else:
        # form = NewsLetterform()
        print("Not Updated database")

    return render (request, 'index.html') 
