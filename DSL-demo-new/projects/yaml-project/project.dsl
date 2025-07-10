---
apiVersion: cloudbees.com/v2025.9
kind: project
metadata:
  name: yaml-project
  description: yml test install
spec:
  resourceName: default
  tracked: true
  acl:
    inheriting: true
    aclEntries:
      - principalType: user
        principalName: "project: yaml-project"
        changePermissionsPrivilege: allow
        executePrivilege: allow
        modifyPrivilege: allow
        readPrivilege: allow
