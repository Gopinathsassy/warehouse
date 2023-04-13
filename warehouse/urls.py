"""warehouse URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
import wms_management.views



urlpatterns = [
    path('admin/', admin.site.urls),
    path('',wms_management.views.index,name='index'),

#Material

    path('material_table',wms_management.views.material_table,name='material_table'),

    path('delete_master_data',wms_management.views.delete_master_data,name='delete_master_data'),
    path('delete_customer_data',wms_management.views.delete_customer_data,name='delete_customer_data'),
    path('delete_vendor_data',wms_management.views.delete_vendor_data,name='delete_vendor_data'),
    path('delete_inbound_data',wms_management.views.delete_inbound_data,name='delete_inbound_data'),
    path('delete_outbound_data',wms_management.views.delete_outbound_data,name='delete_outbound_data'),

    path('edit_master_data/<id>',wms_management.views.edit_master_data,name='edit_master_data'),
    path('edit_customer_table/<id>',wms_management.views.edit_customer_table,name='edit_customer_table'),
    path('edit_vendor_table/<id>',wms_management.views.edit_vendor_table,name='edit_vendor_table'),
    path('edit_inbound_table/<id>',wms_management.views.edit_inbound_table,name='edit_inbound_table'),
    path('edit_outbound_table/<id>',wms_management.views.edit_outbound_table,name='edit_outbound_table'),

    path('customer_table_post',wms_management.views.customer_table_post,name='customer_table_post'),
    path('masterdata_post', wms_management.views.masterdata_post, name='masterdata_post'),
    path('edit_vendor_post', wms_management.views.edit_vendor_post, name='edit_vendor_post'),
    path('edit_inbound_post', wms_management.views.edit_inbound_post, name='edit_inbound_post'),
    path('edit_outbound_post', wms_management.views.edit_outbound_post, name='edit_outbound_post'),

    #vendor
    path('vendor_table', wms_management.views.vendor_table, name='vendor_table'),
#Customer
    path('customer_table', wms_management.views.customer_table, name='customer_table'),
#Stock
    path('stock_table', wms_management.views.stock_table, name='stock_table'),

#Inbound
    path('view_material_detail/<id>',wms_management.views.view_material_detail, name="view_material_detail"),

#Outbound
    path('view_outbound_details/<id>',wms_management.views.view_outbound_details, name='view_outbound_details'),

    path('material_stock', wms_management.views.material_stock, name='material_stock'),
    path('material_code', wms_management.views.material_code, name='material_code'),
    path('stock_post', wms_management.views.stock_post, name='stock_post'),
    path('inbound_table_overall',wms_management.views.inbound_table_overall, name='inbound_table_overall'),
    path('outbound_table_overall',wms_management.views.outbound_table_overall, name='outbound_table_overall'),
]
