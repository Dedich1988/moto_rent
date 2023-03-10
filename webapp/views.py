from django.shortcuts import render
from webapp.models import Car
from django.core.paginator import Paginator

# Create your views here.


def index(request):
    cars = Car.objects.all()[:10]
    main_car = Car.objects.order_by('?').first()
    context = {'cars': cars, 'main_car': main_car}
    return render(request, 'webapp/index.html', context=context)


def about(request):
    return render(request, 'webapp/about.html')


def cars(request):
    """View for getting paginated cars"""
    cars = Car.objects.all().order_by('price')
    paginator = Paginator(cars, 6)
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)
    context = {'cars': page_obj}
    return render(request, 'webapp/cars.html', context=context)


def contact(request):
    return render(request, 'webapp/contact.html')


def services(request):
    return render(request, 'webapp/services.html')
