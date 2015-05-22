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
@isTest
private class F9PrePopFormController_Test 
{
	
	@isTest 
	static void test_doRedirect() 
	{
		String objprefix = '00Q';
        F9PrePopFormController controller = new F9PrePopFormController();
        PageReference pr = controller.doRedirect();
        System.assertEquals(pr, null);
        ApexPages.currentPage().getParameters().put('objprefix',objprefix);
        PageReference pr2 = controller.doRedirect();
        System.assert(pr2 != null);
        String destinationURL = pr2.getUrl();
        System.assert(destinationURL.startsWith('/'+objprefix+'/e'));
	}
	
}
