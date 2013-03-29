package controller
{
	import com.adobe.cairngorm.control.FrontController;
	
	import command.LoadEmployeesCommand;
	
	import event.LoadEmployeesEvent;

	public class FSController extends FrontController
	{
		public function FSController()
		{
			super();
			addCommand(LoadEmployeesEvent.EVENT_ID,LoadEmployeesCommand);
		}
		
	}
}