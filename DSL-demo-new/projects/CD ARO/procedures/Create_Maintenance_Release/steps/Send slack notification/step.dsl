---
apiVersion: cloudbees.com/v2025.9
kind: step
metadata:
  name: Send slack notification
spec:
  actualParameters:
    - config: proj-cd-release
    - payload: "{\n\t\"blocks\": [\n\t\t{\n\t\t\t\"type\": \"section\",\n\t\t\t\"text\": {\n\t\t\t\t\"type\": \"mrkdwn\",\n\t\t\t\t\"text\": \"$[releaseVersion] Release created and started\"\n\t\t\t}\n\t\t},\n\t\t{\n\t\t\t\"type\": \"section\",\n\t\t\t\"text\": {\n\t\t\t\t\"type\": \"mrkdwn\",\n\t\t\t\t\"text\": \"View release details\"\n\t\t\t},\n\t\t\t\"accessory\": {\n\t\t\t\t\"type\": \"button\",\n\t\t\t\t\"text\": {\n\t\t\t\t\t\"type\": \"plain_text\",\n\t\t\t\t\t\"text\": \"Release details\",\n\t\t\t\t\t\"emoji\": true\n\t\t\t\t},\n\t\t\t\t\"value\": \"click_me_123\",\n\t\t\t\t\"url\": \"$[/myJob/report-urls/Created release $[releaseVersion]]\",\n\t\t\t\t\"action_id\": \"button-action\"\n\t\t\t}\n\t\t},\n\t\t{\n\t\t\t\"type\": \"section\",\n\t\t\t\"text\": {\n\t\t\t\t\"type\": \"mrkdwn\",\n\t\t\t\t\"text\": \"View release run\"\n\t\t\t},\n\t\t\t\"accessory\": {\n\t\t\t\t\"type\": \"button\",\n\t\t\t\t\"text\": {\n\t\t\t\t\t\"type\": \"plain_text\",\n\t\t\t\t\t\"text\": \"Release run\",\n\t\t\t\t\t\"emoji\": true\n\t\t\t\t},\n\t\t\t\t\"value\": \"click_me_123\",\n\t\t\t\t\"url\": \"$[/myJob/report-urls/$[releaseVersion] release runtime]\",\n\t\t\t\t\"action_id\": \"button-action\"\n\t\t\t}\n\t\t}\n\t]\n}"
  subprocedure: Send Realtime Message
  subproject: /plugins/EC-Slack/project
  timeLimit: "0"
  timeLimitUnits: seconds
  acl:
    inheriting: true
