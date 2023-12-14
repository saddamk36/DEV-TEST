codeunit 50133 "HelloWorld.Test"
{
    Subtype = Test;

    [Test]
    [HandlerFunctions('HelloWorldMessageHandler')]
    procedure TestHelloWorldMessage()
    var
        CustList: TestPage "Customer List";
    begin
        CustList.OpenView();
        CustList.Close();
        if (not MessageDisplayed) then ERROR('Message was not displayed!');
    end;

    [MessageHandler]
    procedure HelloWorldMessageHandler(Message: Text[1024])
    begin
feature_saddam
        feature_saddam
        MessageDisplayed := MessageDisplayed or (Message = 'App Published:HELLO Hello Hello SALAM World Base SADDAM & RAVI!');

    end;

    var
        MessageDisplayed: Boolean;
}