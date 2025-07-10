---
apiVersion: cloudbees.com/v2025.9
kind: pipeline
metadata:
  name: pipeline_yaml-release
spec:
  formalParameters:
    - name: ec_stagesToRun
      expansionDeferred: true
  acl:
    inheriting: true
