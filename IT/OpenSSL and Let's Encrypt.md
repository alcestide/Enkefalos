With **OpenSSL**, we can **encrypt** information on the fly as it goes across the network. There’s no need to  manually encrypt our data before we send them across the network because OpenSSL encryption happens automatically. This is important because online commerce and banking couldn’t exist without it.  
The **Secure Sockets Layer (SSL)** is the original in-transit encryption protocol. Ironically, even though  we’re using the OpenSSL suite of programs and libraries, we no longer want to use SSL. Instead, we  now want to use the **Transport Layer Security (TLS)** protocol. SSL is full of legacy code and a lot of  vulnerabilities that go along with that legacy code. TLS is newer, and is much more secure. But, even  when working with TLS, we can still use the OpenSSL suite.

An encrypted SSL/TLS session uses both symmetric and asymmetric mechanisms. For acceptable  performance, it uses symmetric encryption to encrypt the data in transit. But symmetric encryption  requires a **private key**  (look: [[GNU Privacy Guard]])to be exchanged between the two communication partners.

**Let’s Encrypt** is a fairly new organization that has the goal of ensuring that all websites everywhere  are set up with encryption. It’s a worthy goal, but it has also introduced a new problem. 

To obtain a certificate from one of the traditional vendors, you have to use the OpenSSL utility to create your keys and a certificate request. 
Then, you’ll submit the **certificate request**, proof of identity if  applicable, and your payment to the certificate authority. 

Depending upon which grade of certificate  
you purchase, you’ll have to wait anywhere from one to several days before you get the certificate.  

Unlike the traditional certificate vendors, Let’s Encrypt is totally **free of charge**, and you don’t have  to jump through hoops to get the certificate. Instead, you configure your webserver to automatically  obtain a new Let’s Encrypt certificate each time you set up a new website. 

If Let’s Encrypt sees that  your new site has a **valid record** on a publicly accessible **DNS server**, it will automatically create and  install the certificate on your server. Other than having to configure your webserver to use Let’s Encrypt, it’s no fuss, no muss.