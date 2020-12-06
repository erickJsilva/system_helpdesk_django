from django.views.generic import FormView
from django.urls import reverse_lazy
from django.contrib import messages
from django.shortcuts import render, redirect, get_object_or_404
from .models import Produto, Funcionario, Tickets
from .forms import ContatoForm, Ticketsform

from django.http import HttpResponse
from django.template import loader


class IndexView(FormView):
    template_name = 'index.html'
    form_class = ContatoForm
    success_url = reverse_lazy('index')

    def get_context_data(self, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        context['produto'] = Produto.objects.order_by('?').all()
        context['funcionarios'] = Funcionario.objects.order_by('?').all()
        return context

    def form_valid(self, form, *args, **kwargs):
        form.send_mail()
        messages.success(self.request, 'E-mail enviado com sucesso')
        return super(IndexView, self).form_valid(form, *args, **kwargs)

    def form_invalid(self, form, *args, **kwargs):
        messages.error(self.request, 'Erro ao enviar e-mail')
        return super(IndexView, self).form_invalid(form, *args, **kwargs)


def contato(request):
    form = ContatoForm(request.POST or None)
    if str(request.method) == 'POST':
        if form.is_valid():
            form.send_mail()

            messages.success(request, 'E-mail enviado com sucesso')
            form = ContatoForm()
        else:
            messages.error(request, 'Erro ao enviar e-mail')

    context = {
        'form': form
    }
    return render(request, 'contato.html', context)


def index(request):
    return render(request, 'index.html')


def login(request):
    return render(request, 'login.html')


def central(request):
    if str(request.user) != 'AnonymousUser':
        context = {
            'tickets': Tickets.objects.all()
        }
        return render(request, 'central.html', context)
    else:
        return render(request, 'login.html')


def produto(request):
    context = {'produto': produto, 'produto': Produto.objects.order_by('?').all()}
    return render(request, 'produto.html', context)


def vendas(request):
    return render(request, 'vendas.html')


def tickets(request):
    if str(request.user) != 'AnonymousUser':
        if str(request.method) == 'POST':
            form = Ticketsform(request.POST, request.FILES)
            if form.is_valid():

                form.save()

                messages.success(request, 'Tickets salvo com sucesso.')
                form = Ticketsform()
            else:
                messages.error(request, 'Erro ao salvar produto.')
        else:
            form = Ticketsform()
        context = {
            'form': form
        }
        return render(request, 'tickets.html', context)
    else:
        return redirect('central')


def chat(request):
    return render(request, 'chat.html')


def error404(request, ex):
    template = loader.get_template('404.html')
    return HttpResponse(content=template.render(), content_type='text/html; charset=utf8', status=404)


def error500(request):
    template = loader.get_template('500.html')
    return HttpResponse(content=template.render(), content_type='text/html; charset=utf8', status=500)

