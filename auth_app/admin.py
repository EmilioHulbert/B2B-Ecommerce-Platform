# from django.contrib import admin
# from django.apps import apps

# # Register your models here.
# for model in apps.get_app_config("auth_app").get_models():
#     try:
#         admin.site.register(model)
#     except:
#         pass


from django.contrib import admin
from django.apps import apps
from auth_app.models import User  # or wherever your User model is

from .forms import UserFormManager  # import your custom form

class CustomUserAdmin(admin.ModelAdmin):
    form = UserFormManager

# Register User model with custom form
admin.site.register(User, CustomUserAdmin)

# Register everything else dynamically
for model in apps.get_app_config("auth_app").get_models():
    if model.__name__ != "User":  # skip user
        try:
            admin.site.register(model)
        except:
            pass
