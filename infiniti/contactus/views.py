from django.contrib import messages
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

def catalog(request):
    return render(request, 'product_catalog.html')


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
    LatestTechNews = LatestTech.objects.all()
    return render(request, 'career.html')

    
def infiiot(request):
    return render(request, 'infiiot.html')


def contact(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        subject = request.POST['subject']
        message = request.POST['message']

        if ((ContactUs.objects.filter(email=email).exists())and(ContactUs.objects.filter(subject=subject).exists())and(ContactUs.objects.filter(message=message).exists()) ) :
            print('already registered')
            messages.info(request, 'Your Query was already taken!😅')
            return render(request, 'contact.html', {'error': 'error'})
        else:
            print("Entry done Succesfully!")
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
            print('query added')
            messages.info(request, 'Message sent Successfully! We will revert back you soon. 😊')
            return render(request, 'contact.html', {'success': 'success'})
    else:
        return render(request, 'contact.html')


def createnewsletter(request):
    if request.method == 'POST':
        email_news = request.POST['email_news']
        if NewsLetter.objects.filter(email_news=email_news).exists():
            print('already registered')
            messages.info(request, 'Already registered on this Email!😅')
            return render(request, 'index.html', {'error': 'error'})
        else:
            newsletter = NewsLetter.objects.create(email_news=email_news)
            newsletter.save()
            messages.info(request, 'Subscribed Successfully!😀')
            return render(request, 'index.html', {'success': 'success'})
    else:
        print("Not Updated database")

    return render(request, 'index.html')
