
<div class="row">
  <div id="cal-toolbar">
    <div class="arrow-group">
			<!--
      <button class="button-left-arrow" type="button" >&lt;</button>
			<button class="button-right-arrow" type="button" >&gt;</button>
			-->
      <button class="button-today btn btn-primary" type="button" >today</button>
    </div>
    <div class="right">
      <button class="button-add-event btn btn-primary" type="button">add event</button>
    </div>
    <div class="center">
      <!--<span id="cal-month">January</span>-->
      <select id="cal-month-select">
        <option value="0">
          January
        </option>
        <option value="1">
          February
        </option>
        <option value="2">
          March
        </option>
        <option value="3">
          April
        </option>
        <option value="4">
          May
        </option>
        <option value="5">
          June
        </option>
        <option value="6">
          July
        </option>
        <option value="7">
          August
        </option>
        <option value="8">
          September
        </option>
        <option value="9">
          October
        </option>
        <option value="10">
          November
        </option>
        <option value="11">
          December
        </option>
      </select>
			<input id="cal-year-select" type="number" value="2014"/>
    </div>

  </div>

  <div id="cal-templates" style="display:none;">
    <!-- day template -->
    <td>
      <span class="day-number {{other-month}}">{{day-number}}</span>
      <!-- other-month == "" || "other-month" -->
      <!-- 0 <= day-number <= 31 -->
      {{day-events}}
    </td>

    <!-- event template -->
    <div class="event {{event-width}}">
      <!-- event-width == "" || "twowide" || "threewide" ||
      "fourwide" || "fivewide" || "sixwide" || "sevenwide" -->
      <!-- event-linked == "" || "linked" -->
      <span class="time">{{event-time}}</span> {{event-name}}
    </div>
  </div>
  <div id="cal">
  	<table id="cal-headers">
			<tbody>
				<tr>
					<td>
						Sun
					</td>
					<td>
						Mon
					</td>
					<td>
						Tue
					</td>
					<td>
						Wed
					</td>
					<td>
						Thu
					</td>
					<td>
						Fri
					</td>
					<td>
						Sat
					</td>
				</tr>
			</tbody>
		</table>
		<div id="cal-days-container">
			<table id="cal-days">
				<tbody>

				</tbody>
			</table>
		</div>
  </div>

	<div id="cal-sidebar">
		<ul class="nav">
      <li class="day cal-sb-active">
        <a href="#" title="" data-original-title="Day">
          Day
        </a>
      </li>
			<li class="event">
				<a href="#" title="" data-original-title="Event">
					Event
				</a>
			</li>
		</ul>
		<div class="content">
			<div class="day">
        <div class="date">

        </div>
        <div class="events">

        </div>
      </div>
      <div class="event">

        <div class="view unselected">
          <div class="name">No Event Selected</div>
          <div class="topic-profile-pic text-center">

          </div>
          <button class="edit-event-button btn"><i class="fa fa-pencil"></i> Edit</button>
          <div class="date">
          </div>
          <div class="place">
          </div>
          <hr>
          <div class="description">
          </div>
          <hr>
          <div class="responses">
            <div class="my-response">
              <small class="username" title="You"><a href="/user/{{user.name}}">{{user.fullname}}</a></small>
              <span class="invited">No response</span>
              <span class="not-attending">Not attending</span>
              <span class="maybe">Maybe</span>
              <span class="attending">Attending</span>
            </div>
          </div>
          <div class="cal-whoisin" style="display:none;"></div>
          <hr>
          <span class="comments-title">Comments</span>
          <!-- embed nodebb comments here somehow -->
          <iframe class="comments" scrolling="no"></iframe>

        </div>

        <div class="edit" style="display:none;">
          <button class="save-event-button btn btn-success"><i class="fa fa-save"></i> Save</button>
          <button class="cancel-edit-button btn btn-warning"><i class="fa fa-times"></i> Cancel</button>
          <button class="delete-event-button btn btn-danger"><i class="fa fa-trash-o"></i> Delete</button>

          <span class="title">Edit Event</span>

          <div class="errors"></div>

          <span>Name: </span>
          <input class="name form-control" placeholder="Event name" />
          <input type="checkbox" class="allday" /> All day<br>
          <span>Start time/date: </span>
          <input class="start-time form-control" placeholder="dd / mm / yyyy HH:mm" />
          <span>End time/date: </span>
          <input class="end-time form-control" placeholder="dd / mm / yyyy HH:mm" />
          <span>Place: </span>
          <input class="place form-control" placeholder="Location of event" />
          <span>Editors: </span>
          <small>Comma separated list. Prefix users with (@). To exclude users or groups, prefix with a minus sign (-)</small>
          <input class="editors form-control" placeholder="Groups & users that can edit" />
          <input type="checkbox" class="public" /> Public<br>
          <span>Viewers: </span>
          <small>Comma separated list. Prefix users with (@). To exclude users or groups, prefix with a minus sign (-)</small>
          <input class="viewers form-control" placeholder="Groups & users that can view and get notifications" />
          <span>Notifications: </span>
          <small>Comma separated list of the amount of time before the event.
            The example below shows notifications at 1 day before, 10 minutes before, and 5 hours before the event start.</small>
          <input class="notifications form-control" placeholder="1d, 10m, 5h" />
          <span>Description: </span>
          <textarea class="description form-control" placeholder="Other event information (Markdown only)"></textarea>
        </div>

      </div>

		</div>
	</div>

</div>

<div widget-area="footer">
	<!-- BEGIN widgets -->
	{ widgets.html }
	<!-- END widgets -->
</div>

<style>

@import url("/plugins/nodebb-plugin-calendar/public/style.css");

</style>

<script>
  window.calendar = {};
  calendar.events = {events};
  calendar.canCreate = {canCreate};
  calendar.whoisin = {whoisin};
</script>

<script src="/plugins/nodebb-plugin-calendar/public/cal.js"></script>
