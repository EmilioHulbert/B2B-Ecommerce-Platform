from supplier.models import Product, ProductColor, ProductMaterial

colors = ProductColor.objects.all()
materials = ProductMaterial.objects.all()

for product in Product.objects.all():
    product.colors.set(colors)
    product.materials.set(materials)
    product.save()

print("All products now linked to all colors and materials.")

