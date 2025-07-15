---
apiVersion: cloudbees.com/v2025.9
kind: step
metadata:
  name: Create trigger for auto-restart procedure
spec:
  command: "new File(projectDir, \"./procedures/Create_Maintenance_Release/steps/Create trigger for auto-restart procedure.groovy\").text"
  shell: ec-groovy
  timeLimit: "0"
  timeLimitUnits: seconds
  acl:
    inheriting: true
