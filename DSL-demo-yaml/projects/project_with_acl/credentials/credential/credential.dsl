---
apiVersion: cloudbees.com/v2025.9
kind: credential
metadata:
  name: credential
spec:
  userName: user1
  credentialType: LOCAL
  acl:
    inheriting: false
    aclEntries:
      - principalType: user
        principalName: admin
        changePermissionsPrivilege: allow
        executePrivilege: allow
        modifyPrivilege: allow
        readPrivilege: allow
