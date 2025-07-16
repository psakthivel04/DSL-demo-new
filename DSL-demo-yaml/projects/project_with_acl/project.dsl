---
apiVersion: cloudbees.com/v2025.9
kind: project
metadata:
  name: project_with_acl
  description: yaml format issue
spec:
  tracked: true
  acl:
    inheriting: true
    aclEntries:
      - principalType: user
        principalName: "project: project_with_acl"
        changePermissionsPrivilege: allow
        executePrivilege: allow
        modifyPrivilege: allow
        readPrivilege: allow
      - principalType: user
        principalName: user1
        changePermissionsPrivilege: inherit
        executePrivilege: inherit
        modifyPrivilege: inherit
        readPrivilege: inherit
