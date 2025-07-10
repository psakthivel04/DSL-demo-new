---
apiVersion: cloudbees.com/v2025.9
kind: step
metadata:
  name: Start Maintenance release
spec:
  command: "new File(projectDir, \"./procedures/Create_Maintenance_Release/steps/Start Maintenance release.groovy\").text"
  shell: ec-groovy
  timeLimit: "0"
  timeLimitUnits: seconds
  acl:
    inheriting: true
