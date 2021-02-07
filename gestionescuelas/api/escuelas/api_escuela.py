from gestionescuelas.models import Escuela
from gestionescuelas.api.escuelas.serializers import EscuelaSerializer
from rest_framework import permissions, status
from rest_framework.views import APIView
from rest_framework.decorators import api_view
from django.http.response import Http404
from rest_framework.response import Response

class EscuelaList(APIView):
    queryset = Escuela.objects.all()

    def get_object(self, request):
        try:
            pk = self.kwargs['id']
            return Escuela.objects.get(id=pk)
        except Escuela.DoesNotExist:
            raise Http404

    def get(self, request):
        escuelas = Escuela.objects.all()
        object_serializer = EscuelaSerializer(escuelas, many=True)
        return Response(object_serializer.data, status= status.HTTP_200_OK)

    def post(self, request, format=None):
        serializer = EscuelaSerializer(data = request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
