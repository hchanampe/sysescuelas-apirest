from rest_framework.views import APIView
from gestionescuelas.models import Tutor
from gestionescuelas.api.tutores.serializers import TutorSerializer
from rest_framework import filters, permissions, status
from rest_framework.decorators import action
from django.http.response import Http404
from rest_framework.response import Response
from rest_framework import viewsets

class TutorAPIView(viewsets.ModelViewSet):
    """ Tutor API View """
    queryset = Tutor.objects.all()
    serializer_class = TutorSerializer
    
   

""" 
class TutorViewSet(ViewSet):
  
    queryset = Tutor.objects.all()
    serializer_class = TutorSerializer
    def list(self, request):
        pass
    
    @action(detail=True, methods=['post'])
    def create(self, request):
        serializer = TutorSerializer(request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    @action(methods=['get'], detail=False)
    def list(self, request):
        instituciones = Tutor.objects.all()
        object_serializer = TutorSerializer(instituciones, many=True)
        return Response(object_serializer.data, status= status.HTTP_200_OK)
            
    def retrieve(self, request, pk=None):
        pass

    def update(self, request, pk=None):
        pass

    def partial_update(self, request, pk=None):
        pass

    def destroy(self, request, pk=None):
        pass """

