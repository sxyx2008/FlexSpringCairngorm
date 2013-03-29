package command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.controls.Alert;
	import mx.rpc.IResponder;

	public class BaseCommand implements ICommand, IResponder
	{
		public function BaseCommand()
		{
		}

		public function execute(event:CairngormEvent):void
		{
		}
		
		public function result(data:Object):void
		{
		}
		
		public function fault(info:Object):void
		{
			Alert.show("We are sorry, a system error has occurred.Please try again later.");

		}
		
	}
}