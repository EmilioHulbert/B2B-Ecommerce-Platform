from django.urls import path

app_name = "payment"

from payment import views

urlpatterns = [
    #start mpesa paths
    path('mpesa', views.payment_view, name='payment'),
    path('stk-status/', views.stk_status_view, name='stk_status'),
    #endof mpesa path
    
    path("memberships/", views.InitSubscriptionView.as_view(), name="memberships"),
    path(
        "contracts/payments/<int:pk>",
        views.ContractPaymentView.as_view(),
        name="contract-payment",
    ),
    path("contracts/receipt/<int:pk>", views.contract_receipt, name="contract-receipt"),
    path(
        "initial/subscription/",
        views.InitSubscriptionView.as_view(),
        name="init-subscription",
    ),
    path(
        "subscription/deactivate",
        views.deactivateSubcription,
        name="subscription-deactivate",
    ),

    path(
        "paypal/subscription/",
        views.CreatePaypalSubscription.as_view(),
        name="paypal-subscription",
    ),

    # webhooks
    path("webhooks/", views.webhooksView.as_view(), name="webhooks"),
    path('paypal-webhook/', views.paypal_webhooks, name='paypal_webhook'),

]

