from django.shortcuts import render
from webapp.models import *
from django.core.paginator import Paginator
from django.views.generic import TemplateView, ListView, DetailView, CreateView
from django.shortcuts import redirect
import random
# Create your views here.


def index(request):
    cars = Car.objects.all()[:10]
    main_car = Car.objects.order_by('?').first()
    context = {'cars': cars, 'main_car': main_car}
    return render(request, 'webapp/index.html', context=context)


# def about(request):
#     abouts = About.objects.all()
#     paginator = Paginator(abouts, 6)
#     page_number = request.GET.get('page')
#     page_obj = paginator.get_page(page_number)
#     context = {'abouts': page_obj}
#     return render(request, 'webapp/about.html', context=context)

class AboutView(ListView):
    """About views for getting list object"""
    model = About
    template_name = 'webapp/about.html'
    context_object_name = 'abouts'
    paginate_by = 6


# def cars(request):
#     """View for getting paginated cars"""
#     cars = Car.objects.all().order_by('price')
#     paginator = Paginator(cars, 6)
#     page_number = request.GET.get('page')
#     page_obj = paginator.get_page(page_number)
#     context = {'cars': page_obj}
#     return render(request, 'webapp/cars.html', context=context)

class CarListView(ListView):
    """Car List View for getting list objects"""
    template_name = 'webapp/cars.html'
    context_object_name = 'cars'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        page_number = self.request.GET.get('page')
        paginator = Paginator(context['object_list'], 4)
        page_objs = paginator.get_page(page_number)
        context['page_objs'] = page_objs
        return super().get_context_data(**context)


    def get_queryset(self):
        return Car.objects.all()


class CarDetailView(DetailView):
    """Car List View for getting detail object"""
    model = Car
    template_name = 'webapp/car_detail.html'

def contact(request):
    return render(request, 'webapp/contact.html')


def services(request):
    return render(request, 'webapp/services.html')






def question_view(request):
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