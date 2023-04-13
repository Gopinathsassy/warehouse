from django.db import models

# Create your models here.

class customer_master(models.Model):
    customer_code = models.CharField(max_length=50, default="")
    customer_name = models.CharField(max_length=50, default="")
    address = models.CharField(max_length=50, default="")

class material_master(models.Model):
    matdesc = models.CharField(max_length=50, default="")
    matcode = models.CharField(max_length=50, default="")
    Uom = models.CharField(max_length=50, default="")
    note1 = models.CharField(max_length=50, default="")
    note2 = models.CharField(max_length=50, default="")


class material_stock(models.Model):
    mat_code = models.CharField(max_length=50, default="")
    mat_desc = models.CharField(max_length=50, default="")
    curr_stock = models.CharField(max_length=50, default="")
    uom = models.CharField(max_length=50, default="")
    note1 = models.CharField(max_length=50, default="")
    note2 = models.CharField(max_length=50, default="")




class vendor_master(models.Model):
    vendor_code = models.CharField(max_length=50, default="")
    vendor_name = models.CharField(max_length=50, default="")
    address = models.CharField(max_length=50, default="")




class inbound_data(models.Model):
    GRnum = models.CharField(max_length=50, default="")
    matcode = models.CharField(max_length=50, default="")
    matdesc = models.CharField(max_length=50, default="")
    quantity = models.CharField(max_length=50, default="")
    uom = models.CharField(max_length=50, default="")
    scan_date = models.CharField(max_length=50, default="")
    scan_time = models.CharField(max_length=50, default="")
    serial_num = models.CharField(max_length=50, default="")



class outbound_data(models.Model):
    delnum = models.CharField(max_length=50, default="")
    matcode = models.CharField(max_length=50, default="")
    matdesc = models.CharField(max_length=50, default="")
    quantity = models.CharField(max_length=50, default="")
    uom = models.CharField(max_length=50, default="")
    scan_date = models.CharField(max_length=50, default="")
    scan_time = models.CharField(max_length=50, default="")
    serial_num = models.CharField(max_length=50, default="")






class inbound_head(models.Model):
    GRnum = models.CharField(max_length=50, default="")
    vendor = models.CharField(max_length=50, default="")
    date = models.CharField(max_length=50, default="")
    no_of_item = models.CharField(max_length=50, default="")
    note1 = models.CharField(max_length=50, default="")
    note2 = models.CharField(max_length=50, default="")
  
  
class outbound_head(models.Model):
    delnum = models.CharField(max_length=50, default="")
    customer = models.CharField(max_length=50, default="")
    date = models.CharField(max_length=50, default="")
    no_of_item = models.CharField(max_length=50, default="")
    note1 = models.CharField(max_length=50, default="")
    note2 = models.CharField(max_length=50, default="")
  


  
  



# class Image(models.Model):
#     image = models.CharField(max_length=50, default="")
#     current_time = models.CharField(max_length=50, default="")
#     user_current_date = models.CharField(max_length=50, default="")
#
#
# class Image(models.Model):
#     image = models.CharField(max_length=50, default="")
#     current_time = models.CharField(max_length=50, default="")
#     user_current_date = models.CharField(max_length=50, default="")