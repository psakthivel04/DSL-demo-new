---
apiVersion: cloudbees.com/v2025.9
kind: procedure
metadata:
  name: Create_Maintenance_Release
spec:
  timeLimit: "0"
  formalParameters:
    - name: projectName
      defaultValue: CD ARO
      label: Release Project Name
      orderIndex: 1
      required: true
      type: project
    - name: releaseVersion
      description: "Enter a release version. For example: 2023.08.5"
      label: Release version
      orderIndex: 2
      required: true
      type: entry
    - name: lts_release_version
      description: "Enter LTS release version. For example if current release version is 2023.08.5, then enter 2023.08"
      label: LTS release version
      orderIndex: 3
      required: true
      type: entry
    - name: jira_fix_version
      description: |-
        Example:
        CD 23.08.0
      label: Jira fix version
      orderIndex: 4
      required: true
      type: entry
    - name: start_date
      defaultValue: "$[/javascript var date = new Date(); var d = '' + date.getDate(); var m = '' + (date.getMonth() + 1); '' + date.getFullYear() + '-' + (m<=9 ? '0' + m : m) + '-' + (d <= 9 ? '0' + d : d);]"
      label: Release start date
      orderIndex: 5
      required: true
      type: date
    - name: end_date
      defaultValue: "$[/javascript var date = new Date(); date.setDate(60+date.getDate()); var d = '' + date.getDate(); var m = '' + (date.getMonth() + 1); '' + date.getFullYear() + '-' + (m<=9 ? '0' + m : m) + '-' + (d <= 9 ? '0' + d : d);]"
      label: Release end date
      orderIndex: 6
      required: true
      type: date
    - name: k8s_branch
      description: Format should be like release-2025.03.1-2.33.1
      label: K8s branch
      orderIndex: 7
      required: true
      type: entry
  acl:
    inheriting: true
