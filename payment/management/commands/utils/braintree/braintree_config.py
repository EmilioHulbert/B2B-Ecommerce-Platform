print("✅ braintree_config module is being loaded")

import braintree
from django.conf import settings


def get_braintree_gateway():
    if settings.BRAINTREE_PRODUCTION:
        braintree_env = braintree.Environment.Production
    else:
        braintree_env = braintree.Environment.Sandbox

    print("🔧 Braintree ENV:", braintree_env)
    print("🆔 BRAINTREE_MERCHANT_ID =", settings.BRAINTREE_MERCHANT_ID)
    print("🔑 BRAINTREE_PUBLIC_KEY =", settings.BRAINTREE_PUBLIC_KEY)
    print("🛡️ BRAINTREE_PRIVATE_KEY =", settings.BRAINTREE_PRIVATE_KEY[:6] + "..." + settings.BRAINTREE_PRIVATE_KEY[-4:])

    gateway = braintree.BraintreeGateway(
        braintree.Configuration(
            environment=braintree_env,
            merchant_id=settings.BRAINTREE_MERCHANT_ID,
            public_key=settings.BRAINTREE_PUBLIC_KEY,
            private_key=settings.BRAINTREE_PRIVATE_KEY,
            timeout=10  # ✅ Add timeout here only
        )
    )

    return gateway

assert settings.BRAINTREE_MERCHANT_ID, "BRAINTREE_MERCHANT_ID is missing"
assert settings.BRAINTREE_PUBLIC_KEY, "BRAINTREE_PUBLIC_KEY is missing"
assert settings.BRAINTREE_PRIVATE_KEY, "BRAINTREE_PRIVATE_KEY is missing"
