---
apiVersion: cloudbees.com/v2025.9
kind: task
metadata:
  name: test
spec:
  command: "new File(projectDir, \"./releases/yaml-release/pipelines/pipeline_yaml-release/stages/Stage 1/tasks/test.cmd\").text"
  taskType: COMMAND
  acl:
    inheriting: true
