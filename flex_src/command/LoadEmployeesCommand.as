package command
{
	import business.LoadEmployeesDelegate;
	
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import model.EmployeesModelLocator;
	
	import mx.collections.ArrayCollection;
	
	public class LoadEmployeesCommand extends BaseCommand
	{
		public function LoadEmployeesCommand()
		{
			super();
		}
		
		public override function execute(event:CairngormEvent):void
		{
			var delegate:LoadEmployeesDelegate = new LoadEmployeesDelegate(this);
			delegate.load();
		}
		
		public override function result(data:Object):void
		{
			var employeesModelLocator:EmployeesModelLocator=EmployeesModelLocator.getInstance();
			employeesModelLocator.employeeList=data.result as ArrayCollection;
		}
		
	}
}