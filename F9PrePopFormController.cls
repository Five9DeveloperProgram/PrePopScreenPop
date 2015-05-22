/*
 * Copyright (c) 2015 Five9, Inc. The content presented herein may not, under any
 * circumstances, be reproduced in whole or in any part or form without written
 * permission from Five9, Inc.
 *
 * This program is distributed in the hope that it will be useful, but without
 * any warranty. It is provided "as is" without warranty of any kind, either expressed
 * or implied, including, but not limited to, the implied warranties of merchantability
 * and fitness for a particular purpose. The entire risk as to the quality and performance
 * of the program is with you. Should the program prove defective, you assume the cost of
 * all necessary servicing, repair or correction.
 *
 */

public class F9PrePopFormController 
{
    private String objPrefix;

    //Main method to do the redirection to the new sObject form.
    public PageReference doRedirect()
    {
        this.objPrefix = ApexPages.currentPage().getParameters().get('objprefix');
        if(this.objPrefix == NULL)//nowhere to go!
        {
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.Error,'objprefix is not set, cannot redirect to form!'));
            return NULL;
        }
        
        Map<String, String> parms = ApexPages.currentPage().getParameters();
        parms.remove('objprefix');//don't need this anymore
        PageReference destination = new PageReference('/'+this.objPrefix+'/e');
        destination.getParameters().putAll(parms);
        return destination;    
    }
}
