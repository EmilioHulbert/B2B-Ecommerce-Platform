import os
import django
from channels.routing import get_default_application

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "core.settings")
django.setup()
application = get_default_application()



# asgi.py
# import os
# import django

# from channels.routing import ProtocolTypeRouter, get_default_application
# from django.core.asgi import get_asgi_application
# from channels.staticfiles import StaticFilesWrapper

# os.environ.setdefault("DJANGO_SETTINGS_MODULE", "core.settings")
# django.setup()

# django_asgi_app = get_asgi_application()

# application = ProtocolTypeRouter({
#     "http": StaticFilesWrapper(django_asgi_app),
#     # Add websocket here if needed later
# })
