# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$().ready ->
	$('#calendar').fullCalendar {
		events: '/events.json'
		weekends: false
		allDaySlot: false
		minTime: '08:00'
		maxTime: '22:00'
		slotDuration: '01:00:00'
		defaultView: 'agendaWeek'
		selectable: true
		selectHelper: true
		selectOverlap: false
		select: (start, end, jsEvent, view) ->
			$('#addEventModal [name=event\\[start_at\\]]').val start.format()
			$('#addEventModal [name=event\\[end_at\\]]').val end.format()
			$('#addEventModal #startTime').html start.format()
			$('#addEventModal #endTime').html end.format()
			$('#addEventModal').modal 'show'
	}
