package event
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class LoadEmployeesEvent extends CairngormEvent
	{
		static public var EVENT_ID:String="loadEmployees";
		
		public function LoadEmployeesEvent(){
			super(EVENT_ID);
		}
		
		
	}
}