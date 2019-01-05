from django.db import models

# Create your models here.

class StudentManager(models.Manager):#定义一个函数，继承model函数，目的就是在使用model函数的基础上面新增一些自己添加的功能
    def names(self):#返回数据库里的stuname值的函数
        stunamelist=[]
        for stu in  self.all():
          stunamelist.append(stu.username)
        return stunamelist

    def passw(self):#返回数据库里面的stuid 的值的函数
        idlist=[]
        for stu in  self.all():
           idlist.append(stu.password)
        return idlist

    def insert(self,username,password):
        idlist=self.names()
        if username in idlist:
            return "0"
        else:
            User(username=username,password=password).save()
            return "1"
class User(models.Model):
    useru=StudentManager()
    username=models.CharField(max_length=50,primary_key=True)
    password=models.CharField(max_length=12)

class carts(models.Model):#购物车
    # cart = StudentManager()
    caid=models.AutoField(primary_key=True)
    causname=models.CharField(max_length=9)#用户名
    cartsid=models.CharField(max_length=255)#商品id
    cartsellnum=models.IntegerField(null=False)#商品数量
    cartname=models.CharField(max_length=50,null=False)#商品名
    cartimg=models.CharField(max_length=200,null=False)#图片
    cartjiage=models.IntegerField(null=False)#商品价格
    cartcolor=models.CharField(max_length=10,null=True)#颜色
    cartsize=models.CharField(max_length=20,null=True)#规格

class seller(models.Model):#商品表
    sellert=StudentManager()
    sellid=models.BigIntegerField(primary_key=True)#商品id
    sellname=models.CharField(max_length=50,null=False)#商品名
    sellimg=models.CharField(max_length=200,null=False)#图片
    selljiage=models.IntegerField(null=False)#商品价格
    sellcolor=models.CharField(max_length=10,null=True)#颜色
    sellsize=models.CharField(max_length=20,null=True)#规格
    sellnum=models.IntegerField(default=1)#商品数量
    selltype=models.CharField(max_length=255,null=False)#商品类型
    sellimgl1=models.CharField(max_length=255)
    sellimgm1 = models.CharField(max_length=255)
    sellimgs1 = models.CharField(max_length=255)
    sellcomtype = models.CharField(max_length=255)
    sellimgl2=models.CharField(max_length=255)
    sellimgm2 = models.CharField(max_length=255)
    sellimgs2 = models.CharField(max_length=255)
    sellimgl3=models.CharField(max_length=255)
    sellimgm3 = models.CharField(max_length=255)
    sellimgs3 = models.CharField(max_length=255)
    sellimgl4=models.CharField(max_length=255)
    sellimgm4 = models.CharField(max_length=255)
    sellimgs4 = models.CharField(max_length=255)
    sellbrand=models.CharField(max_length=255)#品牌
    selltime = models.CharField(max_length=255)#发布时间
    sellweight = models.CharField(max_length=255)#重量
    sellmade = models.CharField(max_length=255)#产地
    sellcpu = models.CharField(max_length=255)#cpu
    selltouch = models.CharField(max_length=255)#指纹识别
    sellface = models.CharField(max_length=255)#面部识别
    sellrun = models.CharField(max_length=255)#存储
    sellcamera = models.CharField(max_length=255)#相机
    sellimage1 = models.CharField(max_length=255)
    sellimage2 = models.CharField(max_length=255)
    sellimage3= models.CharField(max_length=255)


class Indent(models.Model):
    indentk=StudentManager()
    inname=models.CharField(max_length=9,primary_key=True)#用户名
    indsellid=models.BigIntegerField()#订单号
    inseid=models.CharField(max_length=255,null=False)#商品id

class address(models.Model):
    uname=models.CharField(max_length=9,null=False)#用户名
    addname=models.CharField(max_length=9)#收货人
    addres=models.CharField(max_length=100)#地址
    addtel=models.BigIntegerField()#联系电话
    addpost=models.IntegerField()#邮编

class indentss(models.Model):
    inid = models.CharField(max_length=9, primary_key=True)  # 订单号
    inname=models.CharField(max_length=9)#收货人
    inaddres=models.CharField(max_length=100)#地址
    inaddtel=models.BigIntegerField()#联系电话
    inaddpost=models.IntegerField()#邮编
    indsellid = models.BigIntegerField()  # 商品id
    insellname=models.CharField(max_length=50,null=False)#商品名
    insellimg=models.CharField(max_length=200,null=False)#图片
    inselljiage=models.IntegerField(null=False)#商品价格
    insellcolor=models.CharField(max_length=10,null=True)#颜色
    insellsize=models.CharField(max_length=20,null=True)#规格
    insellnum=models.IntegerField(default=1)#商品数量
