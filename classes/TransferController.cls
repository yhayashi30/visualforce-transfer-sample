public class TransferController {
    public String test1 {set; get;}
    public String test2 {set; get;}
    public String test3 {set; get;}
    public String test4 {set; get;}
    
    public TransferController(){
        this.test1 = 'Hello';
        this.test2 = 'World';
        this.test3 = 'Hello2';
        this.test4 = 'World2';
    }
    
    public PageReference confirm(){
        // PageReferenceで遷移
        return Page.Test_TransferToState;
    }
    
    public PageReference next(){
        PageReference pr = Page.Test_TransferToParam;
        pr.getParameters().put('test3', this.test3);
        pr.getParameters().put('test4', this.test4);
        return pr;
    }
    
    public PageReference returnPage(){
        return Page.Test_TransferFrom;
    }
}