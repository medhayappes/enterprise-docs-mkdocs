Security
========

Each API created in Yappes is marked with an unique signature hash-key
called as **"Platform Identity Key"**.

This Platform Identity Key will get attached itself as the x-yappes-key
header, when the request is routed through Yappes platform. API
Providers can validate whether the request is coming from Yappes
platform or not using the x-yappes-key value.

![](images/new_api/security.png)

1.  Platform identity key is displayed here.
    -   Regenerate - You can use the same key or regenerate the key by
        clicking "regenerate" button".
2.  After this we will see how to publish an API [" Next : How to
    publish an API ?"](publishapi)
