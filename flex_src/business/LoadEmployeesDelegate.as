package business
{
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	
	public class LoadEmployeesDelegate
	{
		private var responder:IResponder;
		private var service:Object;
		
		
		public function LoadEmployeesDelegate(responder:IResponder)
		{
			this.responder=responder;
			this.service=ServiceLocator.getInstance().getRemoteObject("employeeService");
		}
			
		
		public function load():void{
			var token:AsyncToken=service.getList();
			token.addResponder(responder);
		} 	
		
	}
}