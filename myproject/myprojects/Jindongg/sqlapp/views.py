from django.shortcuts import render
from sqlapp.models import User,Indent,seller,carts,address
from django.http import HttpResponse,response
import random
from django.core.paginator import Paginator

import json

# Create your views here.
def BOSS(request):
    return render(request,"BOSS.html")
def login(request):
    return render(request, "login.html")
def check(request):
    us=[]
    usernam=request.POST.get("username")#获取文本框里面的用户名
    passwor=request.POST.get("password")#获取文本框里面的密码
    # checkcode=request.POST.get("checkcode")#获取文本框里面的验证码
    usernams=User.useru.all()
    for stu in usernams:
        us.append(stu.username)
    if usernam in us:
        usnm = User.useru.get(username=usernam)
        # print(usnm)
        user_name=usnm.username
        pass_word = usnm.password
        if user_name == usernam and pass_word == passwor:
            request.session["username"] = usernam
            request.session["password"] = passwor
            request.session.set_expiry(86400)
            return render(request,"BOSS.html",{"username":usernam})
        else:
            tokelit = ["您输入的账号密码错误"]
            return render(request,"login.html",{"tokelit": tokelit})
    else:
        return render(request,"regist.html")

def regist(request):
    return render(request, "regist.html")
def recheck(request):
        username = request.POST.get("username")  # 获取文本框里面的用户名
        password=request.POST.get("password")#获取文本框里面的密码
        # print(username,password)
        # password2 = request.POST.get("password2")  # 获取文本框里面的密码
        # checkcode=request.POST.get("checkcode")#获取文本框里面的验证码
        mess=User.useru.insert(username,password)
        if mess == "1":
            return render(request,"login.html")
        else:
            return render(request, "regist.html")







def shouji(request,pagenum):
    username = request.session.get("username")
    users = list(seller.sellert.all())#表中所有的对象
    pi = Paginator(users,8)#生成Paginator对象
    pnums = pi.num_pages#将所有对象以8个一页进行分页
    page = pi.page(pagenum)#表示第pagenum页的对象
    pnum = page.number#显示当前页码
    sslist = page.object_list#表示当前页里面的所有元素
    # print(sslist)
    return render(request,"shouji.html",locals())

def footer(request):
    product_name = request.POST.get("data_name")
    print(product_name)
    return render(request,"footer.html")



















def flow1(request):
    sores=0
    username=request.session.get("username")
    usernames=carts.objects.filter(causname=username)
    for i in usernames:
        causna=i.causname
        sores += int(i.cartjiage)*int(i.cartsize)
        print(causna)
    # sore=request.POST.getlist("amount")
    # print(sore)
    # if username ==causna:
        # cartname = usernames.cartname
        # cartsellnum = usernames.cartsellnum
        # cartimg = usernames.cartimg
        # cartcolor = usernames.cartcolor
        # cartjiage = usernames.cartjiage
        # cartsize = usernames.cartsize
        # subtotal = int(cartsize)*int(cartjiage)
        # ss="22"
    return render(request, "flow1.html",locals())
    # else:
    #     return render(request, "flow1.html")

def flow2(request):
    sores = 0
    username = request.session.get("username")
    usernames = carts.objects.filter(causname=username)
    for i in usernames:
        causna = i.causname
        sores += int(i.cartjiage) * int(i.cartsize)
    try:
        ad=address.objects.get(uname=username)
        addname=ad.addname
        addres=ad.addres
        addtel=ad.addtel
        addpost=ad.addpost
        dllo=0
        ca=carts.objects.filter(causname=username)
        for cat in ca:
            dllo+=int(cat.cartsellnum)*int(cat.cartjiage)
        cd=len(ca)
        return render(request, "flow2.html", locals())
    except:
        addname=""
        addres=""
        addtel=""
        addpost=""
        dllo = 0
        ca=carts.objects.filter(causname=username)
        for cat in ca:
            dllo+=int(cat.cartsellnum)*int(cat.cartjiage)
        cd=len(ca)
        return render(request,"flow2.html",locals())

def xiugai(request):
    username = request.session.get("username")
    uname=request.POST.get("uname")
    cmbProvince=request.POST.get("cmbProvince")
    cmbCity=request.POST.get("cmbCity")
    cmbArea=request.POST.get("cmbArea")
    addres=request.POST.get("address")
    tel=request.POST.get("tel")
    apost=request.POST.get("apost")
    ads=str(cmbProvince)+str(cmbCity)+str(cmbArea+addres)
    address(uname=username,addname=uname,addres=ads,addtel=tel,addpost=apost).save()

    ad = address.objects.get(uname=username)
    addname = uname
    addres = ads
    addtel = tel
    addpost = apost
    dllo = 0
    ca = carts.objects.filter(causname=username)
    for cat in ca:
        dllo += int(cat.cartsellnum) * int(cat.cartjiage)
    cd = len(ca)
    return render(request, "cart2.html",
                  {"username": username, "addname": addname, "addres": addres, "addtel": addtel, "addpost": addpost,
                   "ca": ca, "cd": cd, "dllo": dllo})
def flow3(request):
    return render(request,"flow3.html")
