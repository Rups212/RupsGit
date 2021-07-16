trigger Product_Test_Sell_Price on Product__c (before insert, before update) {
    
    Product_test_Sell_Price.applyDiscountOnProduct(Trigger.New);

   /* for (Product__c VarP : Trigger.New)
        {
            if(	VarP.Sell_Price__c > 100)
            {
                VarP.Temp__c= VarP.Sell_Price__c - 50;
                VarP.Country__c ='USA';
                
               // VarP.Temp__c = Trigger.Size;
                
            }else{
                VarP.Temp__c= VarP.Sell_Price__c-1;
            }
        }*/
}