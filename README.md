###Introduction
###Instructions:
See the Web2Campaign API guide for a list of all possible flags that can be set during a W2C request from https://login.five9.com » Customer Support » Five9 U.S. Product Documentation » Web2Campaign. If you are in implementation with Five9 Professional Services, consult with your PS liason on which fields may be required and which may be recommended for your specific use case. Premium Support customers should reach out to their Technical Account Manager for advice. For all other customers, contact your Account Manager.
* F9key: is usually set to salesforce_id, but not always. Certain use cases require a different field or multi-key approach.
* F9CallASAP: may need to be set if you are sending 'hot' records
* Additional contact fields: pass all additional fields that you may wish to report, filter or sort on from within VCC
* F9TimeToCall & F9TimeFormat: used to schedule future phone calls
* Review the Limits for Bulk Processing section which details default restrictions on the amount of hourly and daily W2C submissions
* Lastly this code sample is meant to serve purely as an *example*. In most cases it will need to be adapted to fit your particular need.

###Unmanaged Package Installation Link:
[https://login.salesforce.com/packaging/installPackage.apexp?p0=04td0000000N5bE](https://login.salesforce.com/packaging/installPackage.apexp?p0=04td0000000N5bE)

###Demonstration Video:
[![Demo Video](http://i.imgur.com/J769PGn.png "Watch on YouTube")](http://www.youtube.com/watch?v=z1ZE-w03oNY)
