from supplier.models import Product, ProductPrice

# Loop through products with price and currency, but no ProductPrice
for product in Product.objects.filter(price__isnull=False, currency__isnull=False):
    if not ProductPrice.objects.filter(product=product).exists():
        ProductPrice.objects.create(
            product=product,
            currency=product.currency,
            min_price=product.price,
            max_price=product.price
        )
        print(f"ProductPrice created for: {product.name}")

