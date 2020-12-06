from django.contrib import admin

from .models import Cargo, Produto, Funcionario, Tickets


@admin.register(Cargo)
class CargoAdmin(admin.ModelAdmin):
    list_display = ('cargo', 'ativo', 'modificado')


@admin.register(Tickets)
class Tickets(admin.ModelAdmin):
    list_display = ('titulo', 'resumo', 'descricao', 'ativo', 'modificado')


@admin.register(Produto)
class ProdutoAdmin(admin.ModelAdmin):
    list_display = ('produto', 'preco', 'ativo', 'modificado')


@admin.register(Funcionario)
class FuncionarioAdmin(admin.ModelAdmin):
    list_display = ('nome', 'cargo', 'ativo', 'modificado')

