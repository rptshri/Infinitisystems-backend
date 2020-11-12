from django.contrib import messages
from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.template.loader import render_to_string
from django.core.mail import EmailMessage
from .models import *


def index(request):
    # messages.info(request, 'Protect yourself and your customers from the virus! Check out our Covid19 Products!  😀')
    return render(request, 'index.html')

def header(request):
    return render(request, 'header.html')

def footer(request):
    LatestTechNews = LatestTech.objects.all()
    return render(request, 'footer.html', {'LatestTechNews': LatestTechNews})

def tag(request):
    return render(request, 'tag.html')

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

def productsall(request):  
    return render(request, 'products.html')

def sensors(request):  
    return render(request, 'sensors.html')

def power(request):  
    return render(request, 'power.html')

def consultancy(request):  
    return render(request, 'consultancy.html')

def webservices(request):  
    return render(request, 'webservices.html')

def printingservice(request):  
    return render(request, 'printingservice.html')

def aboutus(request):
    count = Counter.objects.get(id=1)
    return render(request, 'aboutus.html', {'count': count})

def careers(request):
    LatestTechNews = LatestTech.objects.all()
    return render(request, 'career.html')
 
def infiiot(request):
    return render(request, 'infiiot.html')

def infidrive(request):
    return render(request, 'infidrive.html')

def infitunnel(request):
    return render(request, 'infitunnel.html')

def infisense(request):
    return render(request, 'infisense.html')

def infimesh(request):
    return render(request, 'infimesh.html')

def printer(request):
    return render(request, 'printer.html')

def poweranalysis(request):
    return render(request, 'poweranalysis.html')

def infiweather(request):
    return render(request, 'infiweather.html')

def infigauge(request):
    return render(request, 'infigauge.html')

def infileaf(request):
    return render(request, 'infileaf.html')

def farudatalogger(request):
    return render(request, 'farudatalogger.html')

def infisoil(request):
    return render(request, 'infisoil.html')

def manu3d(request):
    return render(request, 'manu3d.html')

def earthsense(request):
    return render(request, 'earthsense.html')



def contact(request):
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        subject = request.POST['subject']
        message = request.POST['message']

        if ((ContactUs.objects.filter(email=email).exists())and(ContactUs.objects.filter(subject=subject).exists())and(ContactUs.objects.filter(message=message).exists()) ) :
            print('already registered')
            messages.info(request, 'Your Query was already taken! 😅')
            return render(request, 'contact.html', {'error': 'error'})
        else:
            print("Entry done Succesfully!")
            contact_us = ContactUs.objects.create(name=name, email=email, subject=subject, message=message)
            contact_us.save()
             #to self  mail part start
            email_subject = 'Contact Us'
            message = render_to_string('contactus_message.html', {
                'name': name,
                'email': email,
                'subject': subject,
                'message': message,
            })
            reply_to_email=email
            to_email = 'infiiottechnologies@gmail.com'
            email = EmailMessage(email_subject, message, to=[to_email])
            email.send()
            # mail part end
            # to client mail part start
            email_subject2 = 'We got it — RE: '+subject
            reply = '\n\n'+'Hi '+name+','+'\n\n'+'Thanks so much for reaching out! This auto-reply is just to let you know…' +'\n\n'+ 'We received your email and will get back to you with a (human) response as soon as possible. During 9:00hrs to 18:00hrs that’s usually within a couple of hours. Evenings and weekends may take us a little bit longer.' +'\n\n'+ 'If you have any additional information that you think will help us to assist you, please feel free to reply to this email.' +'\n\n'+ 'We look forward to chatting soon!' +'\n\n'+ 'Cheers,' +'\n'+'Infiiot Technologies'+'\n'+'Pune.'
            # print(reply)
            # print(reply_to_email)
            email2 = EmailMessage(email_subject2, reply, to=[reply_to_email])
            email2.send()
            # mail part end
            print('query added')
            messages.info(request, 'Message sent Successfully! We will revert back you soon. 😊')
            return render(request, 'contact.html', {'success': 'success'})
    else:
        return render(request, 'contact.html')

def createnewsletter(request):
    if request.method == 'POST':
        email_news = request.POST['email_news']
        reply_to_sub=email_news
        if NewsLetter.objects.filter(email_news=email_news).exists():
            print('already registered')
            messages.info(request, 'Already registered on this Email! 😅')
            return render(request, 'index.html', {'error': 'error'})
        else:
            newsletter = NewsLetter.objects.create(email_news=email_news)
            newsletter.save()
             # to client mail part start
            email_subject3 = 'Thanks for subscribing to Infiiot Technologies'
            reply_newsletter = '\n\n'+'Hello, '+'\n\n'+'Thank you for subscribing to our blog. We will be sending you content from the leading electronics industry professionals in the business.' +'\n\n'+ 'We have a combined 8 experience in the industry so you will be receiving only the best content every week.' +'\n\n'+ 'If you have any questions or comments about the content you’re receiving please email back and we will respond to your inquiry promptly.' +'\n\n'+ 'We look forward to chatting soon!' +'\n\n'+ 'Sincerely,' +'\n'+'Infiiot Technologies' +'\n'+'Pune.'
            # print(reply_newsletter)
            # print(reply_to_sub)
            email2 = EmailMessage(email_subject3, reply_newsletter, to=[reply_to_sub])
            email2.send()
            # mail part end
            messages.info(request, 'Subscribed Successfully! 😀')
            return render(request, 'index.html', {'success': 'success'})
    else:
        print("Not Updated database")
    return render(request, 'index.html')


def error_404_view(request, exception):
    return render(request, '404.html')