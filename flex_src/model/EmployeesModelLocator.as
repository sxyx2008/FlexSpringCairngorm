package model
{
	import com.adobe.cairngorm.CairngormError;
	import com.adobe.cairngorm.CairngormMessageCodes;
	import com.adobe.cairngorm.model.ModelLocator;
	
	import mx.collections.ArrayCollection;

	
	public class EmployeesModelLocator implements ModelLocator
	{
		[Bindable]
		public var employeeList:ArrayCollection;
		
		private static var _instance:EmployeesModelLocator;
		
		
		public function EmployeesModelLocator()
		{
			if(_instance!=null){
				throw new CairngormError(CairngormMessageCodes.SINGLETON_EXCEPTION,"EmployeesModelLocator");
			}
			_instance=this;
		}
		
		
		public static function getInstance():EmployeesModelLocator{
			if(_instance==null){
				_instance=new EmployeesModelLocator();
			}
			return _instance;
		}
		
		

	}
}