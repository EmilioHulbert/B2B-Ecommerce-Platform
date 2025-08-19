# from celery.decorators import task
# from celery.utils.log import get_task_logger
# from supplier import models as SupplierModel

# @task(name="order_placed_notify_supplier")
# def order_placed_notify_supplier(order_id, msg=None):
#     pass
#     # highlight products ordered for
#     # send email
#     # create notification

# @task(name="notify_suppleir_form_buyer")
# def notify_suppleir_form_buyer(order_id, msg=None):
#     pass

from celery.decorators import task
from celery.utils.log import get_task_logger
from django.core.mail import send_mail
from supplier.models import Order
from django.utils.timezone import localtime
from datetime import datetime, time

logger = get_task_logger(__name__)
ADMIN_EMAIL = "emiliobckp@gmail.com"

@task(name="order_placed_notify_supplier")
def order_placed_notify_supplier(order_id, msg=None):
    try:
        logger.info(f"🚀 Order Placed Task Running: Order ID = {order_id}, msg = {msg}")

        order = Order.objects.select_related("buyer__user", "supplier").get(id=order_id)
        buyer = order.buyer

        try:
            items = order.items.all()
        except Exception:
            items = []

        item_lines = []
        for item in items:
            item_lines.append(
                f"{item.product.name} - {item.quantity} x {item.price.min_price}–{item.price.max_price} KES"

            )

        # Handle created_on safely
        created = order.created_on
        if isinstance(created, datetime):
            order_date = localtime(created).strftime('%Y-%m-%d %H:%M')
        else:
            order_date = datetime.combine(created, time.min).strftime('%Y-%m-%d')

        message_body = f"""
Hello Admin,

You have a new order.

Buyer Info:
-----------
Name: {buyer.user.first_name} {buyer.user.last_name}
Email: {buyer.user.email or 'N/A'}
Phone: {buyer.mobile_user if hasattr(buyer, 'mobile_user') else 'N/A'}

Order Info:
-----------
Order ID: {order.order_id}
Order Date: {order_date}
Status: {order.status}

Items Ordered:
--------------
{chr(10).join(item_lines)}

Total Price: {order.total_price} KES
Agreed Price: {order.agreed_price} KES

Discount: {order.discount} %

Buyer Message:
--------------
{msg or 'No message'}

Please check the dashboard to review and fulfill this order.

Thanks,
Your Platform
"""


        send_mail(
            subject=f"🛒 New Order Placed - Order #{order.order_id}",
            message=message_body,
            from_email=None,  # Uses DEFAULT_FROM_EMAIL from settings
            recipient_list=[ADMIN_EMAIL],
            fail_silently=False,
        )

        logger.info(f"📧 Email sent to admin for order {order.id}")

    except Exception as e:
        logger.error(f"❌ Failed to send order notification: {str(e)}")
