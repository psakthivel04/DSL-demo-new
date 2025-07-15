---
apiVersion: cloudbees.com/v2025.9
kind: step
metadata:
  name: Create schedule to sync Jira statistic for RCC
spec:
  command: "new File(projectDir, \"./procedures/Create_Maintenance_Release/steps/Create schedule to sync Jira statistic for RCC.groovy\").text"
  shell: ec-groovy
  timeLimit: "0"
  timeLimitUnits: seconds
  acl:
    inheriting: true
