# Generated manually for newsletter subscription

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('manager', '0004_careerapplication'),
    ]

    operations = [
        migrations.CreateModel(
            name='NewsletterSubscription',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('email', models.EmailField(max_length=254, unique=True)),
                ('subscribed_at', models.DateTimeField(auto_now_add=True)),
                ('is_active', models.BooleanField(default=True)),
            ],
            options={
                'verbose_name': 'Newsletter Subscription',
                'verbose_name_plural': 'Newsletter Subscriptions',
                'ordering': ['-subscribed_at'],
            },
        ),
    ]
