from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('home', views.index, name='index'),
    path('headerpage', views.header, name='header'),
    path('footerpage', views.footer, name='footer'),
    path('counterpage', views.counter, name='counter'),
    path('catalogpage', views.catalog, name='catalog'),
    path('products-and-design', views.s1, name='products-and-design'),
    path('industry-consultancy', views.s2, name='industry-consultancy'),
    path('infi-iot-platform', views.s3, name='infi-iot-platform'),
    path('web-development-services', views.s4, name='web-development-services'),
    path('products-all', views.productsall, name='products-all'),
    path('about-us', views.aboutus, name='about-us'),
    path('careers', views.careers, name='careers'),
    path('contact', views.contact, name='contact'),
    path('InfiIoT', views.infiiot, name='InfiIoT'),
    path('createnewsletter', views.createnewsletter, name='createnewsletter')

]
