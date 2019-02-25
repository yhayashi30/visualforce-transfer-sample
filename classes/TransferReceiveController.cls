public class TransferReceiveController {
    public String test3 {set; get;}
    public String test4 {set; get;}
    public TransferReceiveController(){
        this.test3 = ApexPages.currentPage().getParameters().get('test3');
        this.test4 = ApexPages.currentPage().getParameters().get('test4');
    }
    public PageReference returnPage(){
        return Page.Test_TransferFrom;
    }
}