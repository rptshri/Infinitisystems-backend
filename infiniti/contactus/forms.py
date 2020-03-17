from django import forms
from .models import NewsLetter

class NewsLetterform(forms.ModelForm):
    email_news= forms.EmailField()

    class Meta:
        model = NewsLetter
        fields= ("email_news", )