public class Product_test_Sell_Price {
    
    public static void applyDiscountOnProduct(List<Product__c> varProductListNew)
    {
        for (Product__c VarP : varProductListNew)
        {
            if(	VarP.Sell_Price__c > 100)
            {
                VarP.Temp__c= VarP.Sell_Price__c - 50;
            }else{
                VarP.Temp__c= VarP.Sell_Price__c-1;
            }
        }
    }

}