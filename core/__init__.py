from __future__ import absolute_import, unicode_literals

# Import the Celery application to ensure it's discovered by Django
from .celery import app as celery_app

__all__ = ("celery_app",)
