from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('home', views.index, name='index'),
    path('headerpage', views.header, name='header'),
    path('footerpage', views.footer, name='footer'),
    path('counterpage', views.counter, name='counter'),
    path('tagpage', views.tag, name='tagpage'),
    path('products-and-design', views.s1, name='products-and-design'),
    path('industry-consultancy', views.s2, name='industry-consultancy'),
    path('infi-iot-platform', views.s3, name='infi-iot-platform'),
    path('web-development-services', views.s4, name='web-development-services'),
    path('products-all', views.productsall, name='products-all'),
    path('sensors', views.sensors, name='sensors'),
    path('power', views.power, name='power'),
    path('consultancy', views.consultancy, name='consultancy'),
    path('webservices', views.webservices, name='webservices'),
    path('printingservice', views.printingservice, name='printingservice'),
    path('about-us', views.aboutus, name='about-us'),
    path('careers', views.careers, name='careers'),
    path('contact', views.contact, name='contact'),
    path('InfiIoT', views.infiiot, name='InfiIoT'),
    path('infidrive', views.infidrive, name='infidrive'),
    path('infisense', views.infisense, name='infisense'),
    path('infimesh', views.infimesh, name='infimesh'),
    path('printer', views.printer, name='printer'),
    path('poweranalysis', views.poweranalysis, name='poweranalysis'),
    path('infiweather', views.infiweather, name='infiweather'),
    path('infigauge', views.infigauge, name='infigauge'),
    path('infileaf', views.infileaf, name='infileaf'),
    path('farudatalogger', views.farudatalogger, name='farudatalogger'),
    path('infisoil', views.infisoil, name='infisoil'),
    path('3dmanu', views.manu3d, name='3dmanu'),
    path('earthsense', views.earthsense, name='earthsense'),
    path('createnewsletter', views.createnewsletter, name='createnewsletter')

]
