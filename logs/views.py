from django.shortcuts import render
from django.http import JsonResponse

# Create your views here.

def test_data(request):
    return JsonResponse({"message": "testing for fun"})
