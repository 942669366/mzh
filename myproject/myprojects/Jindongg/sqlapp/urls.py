from django.conf.urls import url
from sqlapp import views

urlpatterns = [
    url(r'^$', views.BOSS),
    url(r'^login/',views.login),
    url(r'^regist/',views.regist),
    url(r'^flow1/',views.flow1),
    url(r'^flow2/',views.flow2),
    url(r'^flow3/',views.flow3),
    url(r'^check/',views.check),
    url(r'^recheck/',views.recheck),
    url(r'^shouji/(\d+)/',views.shouji),
    url(r'^footer/$',views.footer),
]
