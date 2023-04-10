from typing import List
import random

from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.core.paginator import Paginator
from django.views.generic import TemplateView, ListView, DetailView, CreateView
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.models import User
from django.contrib.auth.views import LoginView, LogoutView

from rest_framework import generics

from webapp.forms import RegisterUserForm
from webapp.models import Car, About, Question
from webapp.serializers import CarSerializer

class CarListAPIView(generics.ListAPIView):
    """API view for listing all cars"""
    queryset = Car.objects.all()
    serializer_class = CarSerializer

def index(request) -> render:
    """View for rendering index page"""
    cars: List[Car] = Car.objects.all()[:10]
    main_car: Car = Car.objects.order_by('?').first()
    context: dict = {'cars': cars, 'main_car': main_car}
    return render(request, 'webapp/index.html', context=context)


class AboutView(ListView):
    """About views for getting list object"""
    model = About
    template_name = 'webapp/about.html'
    context_object_name = 'abouts'
    paginate_by = 6


def cars(request):
    """View for getting paginated cars"""
    cars = Car.objects.all().order_by('price')
    paginator = Paginator(cars, 6)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {'cars': page_obj}
    return render(request, 'webapp/cars.html', context=context)


class CarDetailView(DetailView):
    """Car List View for getting detail object"""
    model = Car
    template_name = 'webapp/car_detail.html'


def contact(request):
    """View for rendering contact page"""
    return render(request, 'webapp/contact.html')


def services(request):
    """View for rendering services page"""
    return render(request, 'webapp/services.html')


def question_view(request):
    """View for rendering question page"""
    if request.method == 'POST':
        question_id = request.POST.get('question_id')
        action = request.POST.get('action')
        question = Question.objects.get(id=question_id)
        if action == 'hint':
            context = {'question': question, 'hint': question.hint_text}
            return render(request, 'webapp/question.html', context)
        elif action == 'next':
            next_question = Question.objects.filter(id__gt=question_id).first()
            if next_question is None:
                # If this was the last question, restart from the first question
                first_question = Question.objects.first()
                context = {'question': first_question}
            else:
                context = {'question': next_question}
            return render(request, 'webapp/question.html', context)
    else:
        # If this is a GET request, display a random question
        questions = Question.objects.all()
        random_question = random.choice(questions)
        context = {'question': random_question}
        return render(request, 'webapp/question.html', context)


class CRLoginView(LoginView):
    """View for rendering login page"""
    template_name = 'webapp/login.html'
    redirect_authenticated_user = True


class CRLogoutView(LoginRequiredMixin, LogoutView):
    """View for rendering logout page"""
    template_name = 'webapp/logout.html'


class RegisterUserView(CreateView):
    """View for rendering user registration page"""
    model = User
    template_name = 'webapp/register_user.html'
    form_class = RegisterUserForm
    success_url = reverse_lazy('webapp:register_done')


class RegisterDoneView(TemplateView):
    template_name = 'webapp/register_done.html'
