from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.template.loader import render_to_string
from django.core.mail import EmailMessage
from .models import *


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
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        subject = request.POST['subject']
        message = request.POST['message']

        contact_us = ContactUs.objects.create(name=name, email=email, subject=subject, message=message)
        contact_us.save()

        # mail part start

        email_subject = 'Contact Us'
        message = render_to_string('contactus_message.html', {
            'name': name,
            'email': email,
            'subject': subject,
            'message': message,
        })
        to_email = 'info@infinitisystems.co.in'
        email = EmailMessage(email_subject, message, to=[to_email])
        email.send()

        # mail part end
        return render(request, 'contact.html')
    else:
        return render(request, 'contact.html')


def createnewsletter(request):
    if request.method == 'POST':
        email_news = request.POST['email_news']
        if NewsLetter.objects.filter(email_news=email_news).exists():
            print('already registered')
            return render(request, 'index.html')
        else:
            newsletter = NewsLetter.objects.create(email_news=email_news)
            newsletter.save()
            return redirect('/')
    else:
        print("Not Updated database")

    return render(request, 'index.html')
