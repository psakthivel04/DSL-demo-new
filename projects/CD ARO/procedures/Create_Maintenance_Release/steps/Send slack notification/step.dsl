
step 'Send slack notification', {
  actualParameter = [
    'config': 'proj-cd-release',
    'payload': '''{
	"blocks": [
		{
			"type": "section",
			"text": {
				"type": "mrkdwn",
				"text": "$[releaseVersion] Release created and started"
			}
		},
		{
			"type": "section",
			"text": {
				"type": "mrkdwn",
				"text": "View release details"
			},
			"accessory": {
				"type": "button",
				"text": {
					"type": "plain_text",
					"text": "Release details",
					"emoji": true
				},
				"value": "click_me_123",
				"url": "$[/myJob/report-urls/Created release $[releaseVersion]]",
				"action_id": "button-action"
			}
		},
		{
			"type": "section",
			"text": {
				"type": "mrkdwn",
				"text": "View release run"
			},
			"accessory": {
				"type": "button",
				"text": {
					"type": "plain_text",
					"text": "Release run",
					"emoji": true
				},
				"value": "click_me_123",
				"url": "$[/myJob/report-urls/$[releaseVersion] release runtime]",
				"action_id": "button-action"
			}
		}
	]
}''',
  ]
  subprocedure = 'Send Realtime Message'
  subproject = '/plugins/EC-Slack/project'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
