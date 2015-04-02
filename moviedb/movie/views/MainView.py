from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.
def main(request):
	xx = None
	context = {'xxx': xx}
	return render(request, 'main.html', context)
