from django.shortcuts import render, redirect, get_object_or_404
from django.urls import reverse
from django.views import View
from django.views.generic import ListView, DetailView, TemplateView
from django.db.models import Q
import random
from django.utils.translation import gettext as _
from django.contrib import messages
from django.utils import timezone

from datetime import timedelta
import uuid

# apps
from supplier.models import (
    Product,
    ProductCategory,
    Store,
    ProductImage,
    ProductSubCategory,
)
from manager import models as ManagerModels
from manager.models import  ServiceBrand as Service
from manager.models import Onboarding
from payment import models as PaymentModels

from manager import tasks as ManagerTasks


from payment.mixins import AuthedOnlyAccessMixin


from django.utils.translation import get_language
from googletrans import Translator
from django.conf import settings


translator = Translator()

# class BrandingView(View):
#     # template_name = "manager/branding_home.html"
#     template_name = "manager/branding_home.html"

#     def get(self, request):
#         return render(request, self.template_name)

from manager.models import Service

# class BrandingView(View):
#     def get(self, request):
#         services = Service.objects.prefetch_related('serviceimage_set').all()
#         service_data = []

#         for s in services:
#             service_data.append({
#                 'id': s.id,
#                 'name': s.name,
#                 'description': s.description,
#                 'images': [img.image.url for img in s.serviceimage_set.all()]
#             })

#         return render(request, 'manager/branding_home.html', {
#             'services': services,
#             'service_data': service_data,
#         })
from django.core.serializers.json import DjangoJSONEncoder
import json
#worked below
# class BrandingView(View):
#     def get(self, request):
#         services = Service.objects.prefetch_related('serviceimage_set').all()
        
#         service_data = [
#             {
#                 'id': s.id,
#                 'name': s.name,
#                 'description': s.description,
#                 'images': [img.image.url for img in s.serviceimage_set.all()]
#             }
#             for s in services
#         ]

#         # Convert to valid JSON string
#         service_data_json = json.dumps(service_data, cls=DjangoJSONEncoder)

#         return render(request, 'manager/branding_home.html', {
#             'services': services,
#             'service_data': service_data_json,  # Pass the JSON string to the template
#         })

#10-07-2025

# class BrandingView(View):
#     def get(self, request):
#         services = Service.objects.prefetch_related('serviceimage_set').all()
#         service_data = json.dumps([
#             {
#                 'id': s.id,
#                 'name': s.name,
#                 'description': s.description,
#                 'images': [img.image.url for img in s.serviceimage_set.all()]
#             }
#             for s in services
#         ])
#         return render(request, 'manager/branding_home.html', {
#             'service_data': service_data,
#         })

# class BrandingView(View):
#     def get(self, request):
#         services = Service.objects.select_related('category').prefetch_related('serviceimage_set')

#         service_data = json.dumps([
#             {
#                 'id': s.id,
#                 'slug': s.slug,  # ✅ Add this
#                 'name': s.name,
#                 'description': s.description,
#                 'category': s.category.name if s.category else None,
#                 'images': [img.image.url for img in s.serviceimage_set.all()]
#             }
#             for s in services
#         ])

#         return render(request, 'manager/branding_home.html', {
#             'service_data': service_data,
#         })



class BrandingView(View):
    def get(self, request):
        services = (
            Service.objects
            .select_related('category')
            .prefetch_related('images', 'features')
        )

        service_data = json.dumps([
            {
                'id': s.id,
                'slug': s.slug,
                'name': s.name,
                'subtitle': s.subtitle,
                'intro': s.intro,
                'description': s.description,
                'category': s.category.name if s.category else None,
                'images': [img.image.url for img in s.images.all()],
                'features': [
                    {'title': f.title, 'icon': f.icon, 'description': f.description}
                    for f in s.features.all()
                ],
            }
            for s in services
        ])

        return render(request, 'manager/branding_home.html', {
            'service_data': service_data,
        })


from django.core.mail import send_mail
from .forms import ContactMessageForm
#start contact view with repetition
class ContactView(View):
    def post(self, request):
        form = ContactMessageForm(request.POST)
        if form.is_valid():
            form.save()  # 💾 Save to DB

            # You can add a message or redirect if needed
            url = reverse('manager:branding-home') + '?submitted=1#contact' #msg success
            # return redirect('/#contact')  # or use messages framework
            return redirect(url)  

        return render(request, 'manager/branding_home.html', {'form': form})
    def get(self, request):
        form = ContactMessageForm()
        submitted = request.GET.get('submitted') == '1' #message success
        return render(request, 'manager/branding_home.html', {'form': form, 'show_success_modal': submitted})    
#end contact view with repetition 

class CareersView(View):
    template_name = "manager/careers.html"

    def get(self, request):
        return render(request, self.template_name)

#remac 10nth oc 2025 start
class TermsView(View):
    template_name = "manager/terms-and-conditions.html"

    def get(self, request):
        return render(request, self.template_name)

class PrivacyView(View):
    template_name = "manager/privacy-policy.html"

    def get(self, request):
        return render(request, self.template_name)
#remac 10nth oc 2025 end

#remac start
from .forms import CareerApplicationForm
from .forms import NewsletterSubscriptionForm

class NewsletterSubscriptionView(View):
    def post(self, request):
        form = NewsletterSubscriptionForm(request.POST)
        if form.is_valid():
            try:
                form.save()
                # Redirect with success message
                url = reverse('manager:branding-home') + '?newsletter=subscribed#footer'
                return redirect(url)
            except Exception as e:
                # Handle duplicate email or other errors
                url = reverse('manager:branding-home') + '?newsletter=error#footer'
                return redirect(url)

        # If form is not valid
        url = reverse('manager:branding-home') + '?newsletter=invalid#footer'
        return redirect(url)

class CareerApplicationView(View):
    def post(self, request):
        form = CareerApplicationForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect(reverse('manager:apply-job') + '?submitted=1')  # 🟢 Repetition-safe URL
        return render(request, 'manager/careers.html', {'career_form': form})

    def get(self, request):
        form = CareerApplicationForm()
        submitted = request.GET.get('submitted') == '1'  # ✅ used in JS
        return render(request, 'manager/careers.html', {
            'career_form': form,
        })


#remac end


class HomeView(View):
    template_name = "manager/index.html"

    def get(self, request):

        context_data = {
            "view_name": _("Home"),
            "product_categories": {
                "context_name": "product-categories",
                "results": [
                    {
                        "category": category,
                        "sub_categories": (
                            lambda sub_categories: random.sample(
                                sub_categories, len(sub_categories)
                            )
                        )(
                            list(
                                ProductSubCategory.objects.filter(
                                    category=category
                                ).order_by("-id")
                            )
                        )[
                            :3
                        ],
                    }
                    for category in (
                        lambda categories: random.sample(categories, len(categories))
                    )(list(ProductCategory.objects.all().order_by("-id")))[:6]
                ],
            },
            "showrooms": {
                "context_name": "showrooms",
                "results": ManagerModels.Showroom.objects.all().order_by("-id")[:6],
            },
            "new_arrivals": {
                "context_name": "new-arrivals",
                "results": [
                    {
                        "product": product,
                        "main_image": ProductImage.objects.filter(
                            product=product
                        ).first(),
                    }
                    for product in Product.objects.all().order_by("-id")[:12]
                ],
            },
            "products": {
                "context_name": "products",
                "results": [
                    {
                        "product": product,
                        "supplier": product.store.all().first().supplier,
                        # "supplier": product.store.all().first().supplier if product.store.all().first() else None,

                        "images": ProductImage.objects.filter(product=product).first(),
                    }
                    for product in (
                        lambda products: random.sample(products, len(products))
                    )(list(Product.objects.all().order_by("-id")[:12]))
                ],
            },
            "stores": {
                "context_name": "stores",
                "results": Store.objects.all().distinct("supplier")[:6],
            },
            "banners": {
                "context_name": "banners",
                "results": ManagerModels.Promotion.objects.filter(has_image=True).order_by("-id")[:6]
            }
        }

        context_data["adverts"]  = {
            "context_name" : "adverts",
            "results": [
                {
                    "product": advert.product,
                    "supplier": advert.product.store.all().first().supplier,
                    "main_image": ProductImage.objects.filter(product=advert.product).first(),
                }
                for advert in (lambda adverts: random.sample(adverts, len(adverts)))(list(ManagerModels.Advert.active.all())[:3])
            ],
        }

        return render(request, self.template_name, context=context_data)


# showrooms
class ShowRoomListView(ListView):
    model = ManagerModels.Showroom

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context["view_name"] = _("Showrooms")
        context["showrooms_with_products"] = {
            "context_name": "showrooms",
            "results": [
                {
                    "showroom": showroom,
                    "store_count": showroom.store.count(),
                    "banner" : ManagerModels.Promotion.objects.filter(showroom=showroom).order_by("-id").first(),
                    "products": [
                        {
                            "product": product,
                            "images": product.productimage_set.all().first(),
                        }
                        for product in (
                            lambda products: random.sample(products, len(products))
                        )(
                            [
                                product
                                for product in Product.objects.filter(
                                    store__in=showroom.store.all()
                                )
                            ][:3]
                        )
                    ],
                }
                for showroom in (
                    lambda showrooms: random.sample(showrooms, len(showrooms))
                )(list(ManagerModels.Showroom.objects.filter(store__gte=1).distinct("id")))
            ],
        }
        
        context["showrooms_without_products"] = {
            "context_name": "showrooms",
            "results": [
                {"showroom": showroom, "store_count": showroom.store.count()}
                for showroom in (
                    lambda showrooms: random.sample(showrooms, len(showrooms))
                )([showroom for showroom in ManagerModels.Showroom.objects.all() if showroom.store.all().count() < 1])
            ],
        }

        context["stores"] = {
            "context_name": "stores",
            "results": (lambda stores: random.sample(stores, len(stores)))(
                list(Store.objects.all()[:10])
            ),
        }
        return context


class ShowRoomDetailView(DetailView):
    model = ManagerModels.Showroom

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        showroom = self.get_object()

        showroom_products = [
            product for product in Product.objects.filter(store__in=showroom.store.all())
        ]

        context["view_name"] = showroom.name
        context["stores"] = {"context_name": "stores", "results": showroom.store.all()}
        context["other_showroom"] = {
            "context_name": "other-showroom",
            "results": [
                {"showroom": showroom, "store_count": showroom.store.count()}
                for showroom in (
                    lambda showrooms: random.sample(showrooms, len(showrooms))
                )(list(ManagerModels.Showroom.objects.filter(~Q(id=showroom.id))[:10]))
            ],
        }
        context["products"] = {
            "context_name": "products",
            "results": [
                {
                    "product": product,
                    "supplier": product.store.all().first().supplier,
                    # "supplier": product.store.all().first().supplier if product.store.all().first() else None,

                    "images": product.productimage_set.all().first(),
                }
                for product in (
                    lambda products: random.sample(products, len(products))
                )(
                    showroom_products[:20]
                )
            ],
        }

        context["banners"] = {
            "context_name": "banners",
            "results": ManagerModels.Promotion.objects.filter(has_image=True, showroom=showroom).order_by("-id")[:6]
        }

        try:
            ads = (
                        lambda ads: random.sample(ads, len(ads))
                    )(list(ManagerModels.Promotion.text_objects.filter(
                        ~Q(type="SHOWROOWS") | Q(showroom__pk = showroom.pk)
                    ).order_by("-id")[:10]))
        except:
            ads = (
                        lambda ads: random.sample(ads, len(ads))
                    )(list(ManagerModels.Promotion.text_objects.filter(
                        ~Q(type="SHOWROOWS") | Q(showroom__pk = showroom.pk)
                    ).order_by("-id")[:10]))

        context["text_promotion"] = {
            "context_name": "text_promotion",
            "results": ads[:3] if len(ads) > 0 else ads
        }

        product = (lambda products: random.sample(products, len(products)))(
            list(Product.objects.all().order_by("-id")[:10])
        )[0]

        context["category_group"] = {
            "context_name": "product-category-group",
            "category": product.category,
            "results": [
                {
                    "subcategory": subcategory,
                    "results": [
                        {
                            "product": product,
                            "main_image": ProductImage.objects.filter(
                                product=product
                            ).first(),
                        }
                        for product in subcategory.product_set.all()[:2]
                    ],
                }
                for subcategory in ProductSubCategory.objects.filter(
                    category=product.category
                )
                if subcategory.product_set.count() > 1
            ],
        }
        # advertized products
        context["adverts"]  = {
            "context_name" : "adverts",
            "results": [
                {
                    "product": advert.product,
                    "supplier": advert.product.store.all().first().supplier,
                    "main_image": ProductImage.objects.filter(product=advert.product).first(),
                }
                for advert in (lambda adverts: random.sample(adverts, len(adverts)))(list(ManagerModels.Advert.active.filter(product__in = showroom_products))[:3])
            ],
        }

        context["new_arrivals"] = {
            "context_name": "new-arrivals",
            "results": [
                {
                    "product": product,
                    "main_image": ProductImage.objects.filter(
                        product=product
                    ).first(),
                }
                for product in Product.objects.filter(store__in=showroom.store.all()).order_by("-id")[:12]
            ],
        }

        return context


class ServiceListView(ListView):
    model = ManagerModels.Service

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context["view_name"] = _("Services")
        return context


# def service_detail(request, slug):
#     """Service detail page"""
#     # try:
#     #     site_settings = SiteSettings.objects.first()
#     # except SiteSettings.DoesNotExist:
#     #     site_settings = None

#     # Define service content based on slug
#     services_data = {
#         'web-development': {
#             'title': 'Web Development',
#             'subtitle': 'Transform your online presence with a comprehensive approach to both web design and development, including powerful web applications and backend integration',
#             'description': 'Full-stack web development services creating responsive designs and building scalable web applications with frontend and backend development.',
#             'intro': "What We Offer",
#             'intro_detail': "At Remacode, we deliver comprehensive web development services with an integrated approach that includes both frontend and backend development. Whether you need a simple website, a complex web application, or custom backend solutions, we're here to help your business succeed online.",
#             'image': 'https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=800&q=80',
#             'features': [
#                 {
#                     'title': 'Responsive Design',
#                     'icon': 'desktop',
#                     'description': 'Create responsive, modern websites that adapt seamlessly to any device, ensuring excellent user experience across platforms.'
#                 },
#                 {
#                     'title': 'Full-Stack Development',
#                     'icon': 'cogs',
#                     'description': 'Specializes in creating robust web applications with dynamic functionalities, covering both frontend and backend development.'
#                 },
#                 {
#                     'title': 'Backend Integration',
#                     'icon': 'cloud',
#                     'description': 'Build powerful, secure backend systems that enable features like user management and databases, integrating seamlessly with your website.'
#                 }
#             ]
#         },
#         'mobile-app-development': {
#             'title': 'Mobile App Development',
#             'subtitle': 'Elevate your business with our customized mobile app solutions designed for user engagement and high performance',
#             'description': 'Our team specializes in crafting tailored mobile applications that drive engagement, streamline processes, and offer seamless user experiences on Android and iOS.',
#             'intro': 'Our Mobile App Solutions',
#             'intro_detail': 'We specialize in creating native and cross-platform mobile applications with user-centric design, focusing on intuitive navigation, appealing aesthetics, and seamless interaction.',
#             'intro_detail2': 'Whether you need an e-commerce app, social networking platform, or custom enterprise solution, we balance performance and accessibility while ensuring security and optimization.',
#             'image': 'https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=800&q=80',
#             'features': [
#                 {
#                     'title': 'Native & Cross-Platform Apps',
#                     'icon': 'mobile-alt',
#                     'description': 'Develop apps for Android and iOS that balance performance and accessibility across platforms.'
#                 },
#                 {
#                     'title': 'User-Centric Design',
#                     'icon': 'paint-brush',
#                     'description': 'Focus on intuitive navigation, appealing aesthetics, and seamless interaction for optimal user experience.'
#                 },
#                 {
#                     'title': 'Security & Performance',
#                     'icon': 'shield-alt',
#                     'description': 'Secure authentication, data encryption, and optimized load times ensure your app runs smoothly and safely.'
#                 }
#             ]
#         },
#         'management-information-systems': {
#             'title': 'Management Information Systems',
#             'subtitle': 'Strengthen your business with tailored management information systems',
#             'description': 'Deliver efficient, user-friendly management information systems that streamline workflows, increase productivity, and provide actionable insights.',
#             'intro': 'Our Management Solutions',
#             'intro_detail': 'We provide comprehensive management information systems including ERP systems, healthcare management, and educational administration platforms tailored for SMEs and micro-businesses.',
#             'intro_detail2': 'Our systems are built with focus on security, scalability, and adaptability to enable smooth technological evolution as your business grows.',
#             'image': 'https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=800&q=80',
#             'features': [
#                 {
#                     'title': 'Real-Time Data Insights',
#                     'icon': 'chart-line',
#                     'description': 'Access real-time data to drive informed decision-making and monitor business performance effectively.'
#                 },
#                 {
#                     'title': 'Enhanced Security',
#                     'icon': 'lock',
#                     'description': 'Advanced security protocols protect sensitive data and ensure compliance with industry standards.'
#                 },
#                 {
#                     'title': 'Customizable Solutions',
#                     'icon': 'cogs',
#                     'description': 'Tailored to specific business requirements with flexible and scalable features adaptable to organizational growth.'
#                 }
#             ]
#         },
#         'ai-ml-development': {
#             'title': 'AI & ML Development',
#             'subtitle': 'Leverage cutting-edge artificial intelligence and machine learning solutions to drive automation, insights, and innovation',
#             'description': 'Transform data into actionable insights with AI-powered solutions that help you make smarter decisions and drive sustainable growth.',
#             'intro': 'What We Offer',
#             'intro_detail': 'Our AI and machine learning solutions are designed to unlock new possibilities for your business through predictive analytics, intelligent automation, and natural language processing.',
#             'intro_detail2': "With our team's expertise, we utilize data-driven insights to forecast trends, optimize operations, and enhance customer engagement with AI-driven solutions.",
#             'image': 'https://images.unsplash.com/photo-1677442136019-21780ecad995?w=800&q=80',
#             'features': [
#                 {
#                     'title': 'Predictive Analytics',
#                     'icon': 'chart-line',
#                     'description': 'Utilize data-driven insights to forecast trends, optimize operations, and make informed business decisions.'
#                 },
#                 {
#                     'title': 'Intelligent Automation',
#                     'icon': 'robot',
#                     'description': 'Streamline processes with AI-powered automation, reducing repetitive tasks and improving efficiency.'
#                 },
#                 {
#                     'title': 'Natural Language Processing',
#                     'icon': 'comments',
#                     'description': 'Enhance customer engagement and streamline interactions with AI-driven language processing solutions.'
#                 }
#             ]
#         },
#         'erp-systems-custom-built-55e72d00-88b5-4e28-8059-6': {
#             'title': 'IT Consultancy',
#             'subtitle': 'Accelerate growth with expert IT consulting, delivering tailored solutions to meet your project goals efficiently and effectively',
#             'description': 'Provide tailored IT consultancy to refine technology strategies, streamline operations, and enhance productivity aligned with business objectives.',
#             'intro': 'Our IT Consulting Services',
#             'intro_detail': 'We work alongside client teams to deliver solutions that improve efficiency, maximize resources, and meet long-term goals through expert guidance and support.',
#             'image': 'https://images.unsplash.com/photo-1552664730-d307ca884978?w=800&q=80',
#             'features': [
#                 {
#                     'title': 'Strategy Development',
#                     'icon': 'lightbulb',
#                     'description': 'Get a clear roadmap for your projects, designed to improve efficiency, maximize resources, and meet your long-term goals.'
#                 },
#                 {
#                     'title': 'Technology Integration',
#                     'icon': 'plug',
#                     'description': 'Implement and integrate the best technologies to enhance functionality, security, and scalability.'
#                 },
#                 {
#                     'title': 'Project Management',
#                     'icon': 'tasks',
#                     'description': 'Ensure projects are delivered on time and within budget, while adhering to high standards of quality.'
#                 }
#             ]
#         },
#         'search-engine-optimization': {
#             'title': 'Search Engine Optimization',
#             'subtitle': 'Increase your visibility and reach more customers with customized SEO strategies',
#             'description': 'Data-driven SEO approach aimed at improving search rankings and converting website visits into leads.',
#             'intro': 'Our SEO Services',
#             'intro_detail': 'We employ customized SEO strategies including on-page optimization, content strategy, link building, and technical SEO to boost your online presence.',
#             'image': 'https://images.unsplash.com/photo-1432888498266-38ffec3eaf0a?w=800&q=80',
#             'features': [
#                 {
#                     'title': 'Increased Visibility',
#                     'icon': 'eye',
#                     'description': "Boost your brand's visibility on search engines to reach more potential customers."
#                 },
#                 {
#                     'title': 'Organic Traffic Growth',
#                     'icon': 'chart-line',
#                     'description': 'Increase high-quality, organic traffic to your site through strategic optimization.'
#                 },
#                 {
#                     'title': 'Targeted Audience Reach',
#                     'icon': 'bullseye',
#                     'description': 'Target your specific audience to ensure your message reaches the right people effectively.'
#                 }
#             ]
#         }
#     }

#     service_data = services_data.get(slug)
#     if not service_data:
#         # Try to find in database
#         service = get_object_or_404(ServiceBrand, title__iexact=slug.replace('-', ' '))
#         context = {
#             'service': service,
#             # 'site_settings': site_settings,
#         }
#         return render(request, 'service_detail.html', context)

#     context = {
#         'service_data': service_data,
#         # 'site_settings': site_settings,
#         'slug': slug,
#     }
#     return render(request, 'manager/service_detail.html', context)


def service_detail(request, slug):
    service = get_object_or_404(Service, slug=slug)
    # Ensure related objects prefetched
    service = Service.objects.prefetch_related('images', 'features', 'category').get(pk=service.pk)

    # If subtitle or intro are empty, derive them
    subtitle = service.subtitle or ""
    intro = service.intro or ""
    if not intro:
        # derive intro as first 1-2 sentences from description
        desc = (service.description or "").strip()
        if desc:
            # naive sentence split by '.' — good enough for most data
            parts = [p.strip() for p in desc.split('.') if p.strip()]
            if parts:
                intro = parts[0]
                if len(parts) > 1:
                    intro = intro + '. ' + parts[1] if len(parts[0]) < 100 else intro

    context = {
        'service': service,
        'subtitle': subtitle,
        'intro': intro,
        'slug': service.slug,
    }
    return render(request, 'manager/service_detail.html', context)

def onboarding(request):
    """Multi-step onboarding flow"""
    # try:
    #     site_settings = SiteSettings.objects.first()
    # except SiteSettings.DoesNotExist:
    #     site_settings = None

    # Get current step from session or default to 1
    step = request.session.get('onboarding_step', 1)

    if request.method == 'POST':
        if step == 1:
            # Step 1: Category selection
            category = request.POST.get('category')
            if category:
                request.session['onboarding_category'] = category
                request.session['onboarding_step'] = 2
                return redirect('manager:onboarding')
        elif step == 2:
            # Step 2: Email input
            email = request.POST.get('email')
            category = request.session.get('onboarding_category')
            if email and category:
                # Save to database
                Onboarding.objects.create(
                    category=category,
                    email=email
                )
                # Clear session
                request.session['onboarding_step'] = 3
                return redirect('manager:onboarding')
        elif step == 3:
            # Step 3: Completed - reset and redirect
            request.session.pop('onboarding_step', None)
            request.session.pop('onboarding_category', None)
            return redirect('manager:branding-home')

    context = {
        # 'site_settings': site_settings,
        'step': step,
    }
    return render(request, 'manager/onboarding.html', context)



class AboutUsView(TemplateView):
    template_name = "manager/about.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)

        context["view_name"] = _("About Us")
        return context


def profile(request):
    if not request.user.is_authenticated:
        return redirect(
            "{}?next={}".format(reverse("auth_app:login"), request.GET.get("next"))
        )

    if request.user.account_type == "SUPPLIER":
        # to supplier profile
        return redirect(reverse("supplier:profile"))
    elif request.user.account_type == "BUYER":
        # to buyer profile
        return redirect(reverse("buyer:profile"))
    elif request.user.account_type == "SUPPORT":
        return redirect(reverse("app_admin:profile"))
    elif request.user.is_superuser:
        return redirect(reverse("app_admin:profile"))


def dashboard(request):
    if not request.user.is_authenticated:
        return redirect(
            "{}?next={}".format(reverse("auth_app:login"), request.GET.get("next"))
        )

    if request.user.account_type == "SUPPLIER":
        # to supplier dashboard
        return redirect(reverse("supplier:dashboard"))
    elif request.user.account_type == "BUYER":
        # to buyer dashboard
        return redirect(reverse("buyer:dashboard"))
    elif request.user.account_type == "SUPPORT":
        return redirect(reverse("app_admin:home"))
    elif request.user.is_superuser:
        return redirect(reverse("app_admin:home"))


class SupportView(View):
    template_name = "manager/support.html"

    def get(self, request):

        context_data = {
            "view_name": _("Support"),
            "discussions": ManagerModels.Discussion.objects.all().order_by("-id")[:10],
        }

        return render(request, self.template_name, context=context_data)


class SupportChatroomView(AuthedOnlyAccessMixin, View):
    template_name = "manager/chatroom.html"

    def get(self, request):
        if request.user.account_type.lower() in ["support", "admin"]:
            return redirect(reverse("app_admin:home"))

        if not request.COOKIES.get("chatroom_roomname", None):
            room_name = str(uuid.uuid4()).replace("-", "")
            context_data = {"view_name": _("Support"), "room_name": room_name}
            response = render(request, self.template_name, context=context_data)
            response.set_cookie("chatroom_roomname", value=room_name, max_age=86400)
        else:
            room_name = request.COOKIES.get("chatroom_roomname", None)
            context_data = {"view_name": _("Support"), "room_name": room_name}
            response = render(request, self.template_name, context=context_data)

        return response


class SupportDiscussionListView(View):
    model = ManagerModels.Discussion
    template_name = "manager/discussion_list.html"

    def get(self, request):

        context_data = {
            "view_name": _("Discussion"),
            "discussions": ManagerModels.Discussion.objects.filter(
                Q(subject__icontains=self.request.GET.get("search", None))
                | Q(description__icontains=self.request.GET.get("search", None))
            ),
        }

        return render(request, self.template_name, context=context_data)


class SupportCreateDiscussionView(AuthedOnlyAccessMixin, View):
    template_name = "manager/create_discussion.html"

    def get(self, request):
        context_data = {"view_name": _("Support")}
        return render(request, self.template_name, context=context_data)

    def post(self, request):
        subject = request.POST.get("subject")
        description = request.POST.get("description")

        discussion = ManagerModels.Discussion.objects.create(
            subject=subject, description=description, user=request.user
        )

        if not discussion:
            messages.add_message(
                request, messages.ERROR, _("Error occurred. Try Again")
            )
            return redirect(reverse("manager:create-discussion"))

        fields = ("subject", "description")
        instance = discussion
        modal = ManagerModels.Discussion

        # ManagerTasks.make_manager_model_translations.delay(fields, instance.pk, instance.__class__.__name__)

        messages.add_message(
            request, messages.SUCCESS, _("Discussion created successfully.")
        )
        return redirect(reverse("manager:create-discussion"))


class SupportDiscussionView(View):
    template_name = "manager/discussion.html"

    def get(self, request, slug):
        discussion = ManagerModels.Discussion.objects.filter(slug=slug).first()
        context_data = {
            "view_name": _("Support"),
            "discussion": discussion,
            "replies": ManagerModels.DiscussionReply.objects.filter(
                discussion=discussion
            ),
        }
        return render(request, self.template_name, context=context_data)

    def post(self, request, slug):
        description = request.POST.get("description")
        discussion = ManagerModels.Discussion.objects.filter(slug=slug).first()

        discussion_reply = ManagerModels.DiscussionReply.objects.create(
            description=description, user=request.user, discussion=discussion
        )

        if not discussion_reply:
            messages.add_message(
                request, messages.ERROR, _("Error occurred. Try Again")
            )
            return redirect(
                reverse("manager:discussion", kwargs={"slug": discussion.slug})
            )

        fields = ("description",)
        instance = discussion_reply
        modal = ManagerModels.DiscussionReply

        # ManagerTasks.make_manager_model_translations.delay(fields, instance.pk, instance.__class__.__name__)

        messages.add_message(
            request, messages.SUCCESS, _("Reply submitted successfully.")
        )
        return redirect(reverse("manager:discussion", kwargs={"slug": discussion.slug}))


def blockDasboardAccess(request):
    return render(request, "utils/blockedAccess.html")

def ProfileNotFound(request):
    return render(request, "utils/profile404.html")


def memberships(request):
    context_data = {"view_name": _("Membership Guide")}
    return render(
        request, template_name="manager/guides/memberships.html", context=context_data
    )


def showrooms(request):
    context_data = {
        "view_name": _("Showrooms Guide"),
        "showrooms": ManagerModels.Showroom.objects.all(),
    }
    return render(
        request, template_name="manager/guides/showrooms.html", context=context_data
    )


def stores(request):
    context_data = {
        "view_name": _("Stores Guide"),
    }
    return render(
        request, template_name="manager/guides/stores.html", context=context_data
    )


def services(request):
    context_data = {
        "view_name": _("Supplier Services Guide"),
    }
    return render(
        request, template_name="manager/guides/services.html", context=context_data
    )


def products(request):
    context_data = {
        "view_name": _("Supplier Products Guide"),
    }
    return render(
        request, template_name="manager/guides/products.html", context=context_data
    )


def accounts(request):
    context_data = {
        "view_name": _("Account Creation Guide"),
    }
    return render(
        request, template_name="manager/guides/accounts.html", context=context_data
    )
