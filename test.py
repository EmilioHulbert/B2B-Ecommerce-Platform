from supplier.models import Product

for product in Product.objects.filter(currency__isnull=True) | Product.objects.filter(price__isnull=True):
    pp = product.productprice_set.first()
    if pp:
        if not product.currency:
            product.currency = pp.currency
        if not product.price:
            product.price = pp.min_price
        product.save(update_fields=["currency", "price"])

