from django.shortcuts import render
from wms_management import models
from django.http import HttpResponse,JsonResponse
from django.db.models import Q
# Create your views here.


def index(request):
    return render(request,"index.html")


def material_table(request):
    material=models.material_master.objects.all()
    return render(request,"material_table.html",{'material':material})

def vendor_table(request):
    vendor=models.vendor_master.objects.all()
    return render(request,"vendor_table.html",{'vendor':vendor})

def customer_table(request):
    customer=models.customer_master.objects.all()
    return render(request,"customer_table.html",{'customer':customer})


def stock_table(request):
    stock=models.material_stock.objects.all()
    return render(request,"stock_table.html",{'stock':stock})

def view_material_detail(request,id):
    view_material_detail=models.inbound_data.objects.filter(GRnum=id)
    return render(request,"inbound_table.html",{'view_material_detail':view_material_detail})

def view_outbound_details(request,id):
    # if request.method == "POST":
    #     id = request.POST.get('id')
    view_outbound_detail=models.outbound_data.objects.filter(delnum=id)
    return render(request,"outbound_table.html",{'view_outbound_detail':view_outbound_detail})

def masterdata_post(request):
    if request.method == "POST":
        member = models.material_master(id=request.POST['id'], matcode=request.POST['matcode'],
                                      matdesc=request.POST['matdesc'],
                                      Uom=request.POST['Uom'])


        member.save()

    return render(request, "edit_master_data.html", {'edit_master_data': edit_master_data})

def customer_table_post(request):
    if request.method == "POST":
        member = models.customer_master(id=request.POST['id'], customer_code=request.POST['customer_code'],
                                      customer_name=request.POST['customer_name'],
                                      address=request.POST['address'])


        member.save()

    return render(request, "edit_customer_table.html", {'edit_customer_table': edit_customer_table})


def edit_vendor_post(request):
    if request.method == "POST":
        member = models.vendor_master(id=request.POST['id'], vendor_code=request.POST['vendor_code'],
                                      vendor_name=request.POST['vendor_name'],
                                      address=request.POST['address'])


        member.save()

    return render(request, "edit_vendor_table.html", {'edit_vendor_table': edit_vendor_table})


def edit_inbound_post(request):
    if request.method == "POST":
        member = models.inbound_data(id=request.POST['id'], GRnum=request.POST['GRnum'],
                                      matcode=request.POST['matcode'], matdesc=request.POST['matdesc'],
                                      quantity=request.POST['quantity'],uom=request.POST['uom'],
                                      scan_date=request.POST['scan_date'],scan_time=request.POST['scan_time'],
                                      serial_num=request.POST['serial_num'])


        member.save()

    return render(request, "edit_inbound_table.html", {'edit_inbound_table': edit_inbound_table})

def edit_outbound_post(request):
    if request.method == "POST":
        member = models.outbound_data(id=request.POST['id'], delnum=request.POST['delnum'],
                                      matcode=request.POST['matcode'], matdesc=request.POST['matdesc'],
                                      quantity=request.POST['quantity'],uom=request.POST['uom'],
                                      scan_date=request.POST['scan_date'],scan_time=request.POST['scan_time'],
                                      serial_num=request.POST['serial_num'])


        member.save()

    return render(request, "edit_outbound_table.html", {'edit_outbound_table': edit_outbound_table})


def delete_master_data(request):
    if request.method == "POST":
        id=request.POST.get('id')
        material = models.material_master.objects.get(id=id)
        material.delete()
        return HttpResponse('ok')


def delete_customer_data(request):
    if request.method == "POST":
        id=request.POST.get('id')
        material = models.customer_master.objects.get(id=id)
        material.delete()
        return HttpResponse('ok')

def delete_vendor_data(request):
    if request.method == "POST":
        id=request.POST.get('id')
        material = models.vendor_master.objects.get(id=id)
        material.delete()
        return HttpResponse('ok')

def delete_inbound_data(request):
    if request.method == "POST":
        id=request.POST.get('id')
        material = models.inbound_data.objects.get(id=id)
        material.delete()
        return HttpResponse('ok')


def delete_outbound_data(request):
    if request.method == "POST":
        id=request.POST.get('id')
        material = models.outbound_data.objects.get(id=id)
        material.delete()
        return HttpResponse('ok')


def edit_master_data(request,id):
        edit_master_data = models.material_master.objects.get(id=id)
        return render(request, "edit_master_data.html", {'edit_master_data': edit_master_data})

def edit_vendor_table(request,id):
        edit_vendor_table = models.vendor_master.objects.get(id=id)
        return render(request, "edit_vendor_table.html", {'edit_vendor_table': edit_vendor_table})

def edit_inbound_table(request,id):
        edit_inbound_table = models.inbound_data.objects.get(id=id)
        return render(request, "edit_inbound_table.html", {'edit_inbound_table': edit_inbound_table})

def edit_outbound_table(request,id):
        edit_outbound_table = models.outbound_data.objects.get(id=id)
        return render(request, "edit_outbound_table.html", {'edit_outbound_table': edit_outbound_table})



def edit_customer_table(request,id):
        edit_customer_table = models.customer_master.objects.get(id=id)
        return render(request, "edit_customer_table.html", {'edit_customer_table': edit_customer_table})





def material_stock(request):
    material_stock = models.material_stock.objects.all()
    return render(request, "material_stock.html", {'material_stock': material_stock})


def material_code(request):
    if request.method == "POST":

        id = []
        matcodes = []
        matdesc = []
        currstock = []
        uom = []
        material_code = request.POST.get('matcode')
        matcode = models.material_stock.objects.filter(mat_code=material_code)
        for i in matcode:
            id.append(i.id)
            matcodes.append(i.mat_code)
            matdesc.append(i.mat_desc)
            currstock.append(i.curr_stock)
            uom.append(i.uom)

        # mat_code = serializers.serialize('json', matcode)
        mat_code = {
            'id': id,
            'matcodes': matcodes,
            'matdesc': matdesc,
            'currstock': currstock,
            'uom': uom,
        }
        return JsonResponse(mat_code)


def stock_post(request):
    if request.method == "POST":
        member = models.material_stock(id=request.POST['id'], mat_code=request.POST['MatCode'],
                                       mat_desc=request.POST['MatDesc'], curr_stock=request.POST['currstock'],
                                       uom=request.POST['Uom'])

        member.save()

    return render(request, "material_stock.html", {'edit_master_data': edit_master_data})
    
    
    
    

def inbound_table_overall(request):
    inbound_table_overall = models.inbound_head.objects.exclude(id=1)
    return render(request, "inbound_table_overall.html", {'inbound_table_overall': inbound_table_overall})
    

def outbound_table_overall(request):
    outbound_table_overall = models.outbound_head.objects.exclude(id=1)
    return render(request, "outbound_table_overall.html", {'outbound_table_overall': outbound_table_overall})
    
    
    
    
    
    
    