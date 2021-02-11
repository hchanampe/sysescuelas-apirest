from gestionescuelas.models import Institucion
from gestionescuelas.api.instituciones.serializers import InstitucionSerializer
from rest_framework import filters, permissions, status
from rest_framework.views import APIView
from rest_framework.decorators import api_view
from django.http.response import Http404
from rest_framework.response import Response
from rest_framework import generics

class InstitucionList(APIView):
    queryset = Institucion.objects.all()

    def get_object(self, request):
        try:
            pk = self.kwargs['id']
            return Institucion.objects.get(id=pk)
        except Institucion.DoesNotExist:
            raise Http404

    def get(self, request):
        instituciones = Institucion.objects.all()
        object_serializer = InstitucionSerializer(instituciones, many=True)
        return Response(object_serializer.data, status= status.HTTP_200_OK)

    def post(self, request, format=None):
        serializer = InstitucionSerializer(data = request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class InstitucionAPIView(generics.ListCreateAPIView):
    search_fields = ['nombre','localidad']
    filter_backends = (filters.SearchFilter,)
    queryset = Institucion.objects.all()
    serializer_class = InstitucionSerializer