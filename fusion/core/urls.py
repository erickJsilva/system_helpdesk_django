from django.urls import path

from .views import IndexView, index, contato, produto, central, login, vendas, chat, tickets

urlpatterns = [
    path('', IndexView.as_view(), name='index'),
    path('index', index, name='index'),
    path('contato', contato, name='contato'),
    path('produto', produto, name='produto'),
    path('central', central, name='central'),
    path('login', login, name='login'),
    path('vendas', vendas, name='vendas'),
    path('chat', chat, name='chat'),
    path('tickets', tickets, name='tickets'),

]

