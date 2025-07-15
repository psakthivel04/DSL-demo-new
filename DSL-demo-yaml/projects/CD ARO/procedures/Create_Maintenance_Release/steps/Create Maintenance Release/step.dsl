---
apiVersion: cloudbees.com/v2025.9
kind: step
metadata:
  name: Create Maintenance Release
spec:
  command: "new File(projectDir, \"./procedures/Create_Maintenance_Release/steps/Create Maintenance Release.pl\").text"
  shell: cb-perl
  timeLimit: "0"
  timeLimitUnits: seconds
  acl:
    inheriting: true
