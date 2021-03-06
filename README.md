### Introduction:
One of the most common questions we are asked about the The Five9 Open CTI Adapter for Salesforce is: "How can I pre-populate fields on a new sObject (Lead/Contact/Account etc...) form at screen pop?" Examples might include: populating a lead phone number field with the caller's ANI, Populating information about the campaign the number the caller called on belongs to, etc. The Five9 Adapter will only screen pop a new blank form when there is no ANI match. This package allows the pre-polulation of form fields from call variables using [URL hacking](http://raydehler.com/cloud/clod/salesforce-url-hacking-to-prepopulate-fields-on-a-standard-page-layout.html).


### Instructions:
* Install the unmanaged package using the link below.
* Configure the softphone layout. In Salesforce go to setup -> App Setup -> Customize -> Call Center -> SoftPhone Layouts and click edit next to the appropriate softphone layout. In the CTI 2.0 or Higher Settings section expand the No matching records sub section by clicking the edit link or the arrow. Select the Pop to Visualforce page option and then click the lookup button and search for prepopform and select it (It may show as Five9PS__prepopform).
* Configure the call variables in Five9 VCC. Create a call variable group named Salesforce (case sensitive) if one does not already exist. Create a call variable named objprefix (case sensitive). You will need to assign this variable a value corresponding to the object type for which you would like to pop a new form for. For example, if you would like to pop a new lead form you will set Salesforce.objprefix to '00Q'. See the [Record ID Prefix Decoder](https://help.salesforce.com/apex/HTViewSolution?urlname=Standard-Field-Record-ID-Prefix-Decoder&language=en_US) for more information. You will need to add a call variable to the Salesforce call variable group for each field that you would like to pre-populate and the name of the variable must be the html id value from the field on the form which you are popping to. The ids can very from org to org and form to form so you will need to discover the actual ids yourself using your browser's developer tools or a plugin such as [Firebug](http://getfirebug.com/). Right-click on the form element and choose the inspect option and look for something like <input id="lea3" >, you would then name your call variable lea3 in order to pre-poulate this field (actual example from my dev org).  See [this](http://salesforce.stackexchange.com/questions/937/how-do-i-prepopulate-fields-on-a-standard-layout) for more on URL hacking to pre-populate fields. 


### Unmanaged Package Installation Link:
[https://login.salesforce.com/packaging/installPackage.apexp?p0=04td0000000N5bE](https://login.salesforce.com/packaging/installPackage.apexp?p0=04td0000000N5bE)


### Demonstration Video:
[![Demo Video](http://i.imgur.com/cfKOuNS.png "Watch on YouTube")](https://www.youtube.com/watch?v=U0pXuTjVeCw)
