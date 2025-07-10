
procedure 'Create_Maintenance_Release', {
  timeLimit = '0'

  formalParameter 'projectName', defaultValue: 'CD ARO', {
    label = 'Release Project Name'
    orderIndex = '1'
    required = '1'
    type = 'project'
  }

  formalParameter 'releaseVersion', {
    description = 'Enter a release version. For example: 2023.08.5'
    label = 'Release version'
    orderIndex = '2'
    required = '1'
    type = 'entry'
  }

  formalParameter 'lts_release_version', {
    description = 'Enter LTS release version. For example if current release version is 2023.08.5, then enter 2023.08'
    label = 'LTS release version'
    orderIndex = '3'
    required = '1'
    type = 'entry'
  }

  formalParameter 'jira_fix_version', {
    description = '''Example:
CD 23.08.0'''
    label = 'Jira fix version'
    orderIndex = '4'
    required = '1'
    type = 'entry'
  }

  formalParameter 'start_date', defaultValue: '$[/javascript var date = new Date(); var d = \'\' + date.getDate(); var m = \'\' + (date.getMonth() + 1); \'\' + date.getFullYear() + \'-\' + (m<=9 ? \'0\' + m : m) + \'-\' + (d <= 9 ? \'0\' + d : d);]', {
    label = 'Release start date'
    orderIndex = '5'
    required = '1'
    type = 'date'
  }

  formalParameter 'end_date', defaultValue: '$[/javascript var date = new Date(); date.setDate(60+date.getDate()); var d = \'\' + date.getDate(); var m = \'\' + (date.getMonth() + 1); \'\' + date.getFullYear() + \'-\' + (m<=9 ? \'0\' + m : m) + \'-\' + (d <= 9 ? \'0\' + d : d);]', {
    label = 'Release end date'
    orderIndex = '6'
    required = '1'
    type = 'date'
  }

  formalParameter 'k8s_branch', {
    description = 'Format should be like release-2025.03.1-2.33.1'
    label = 'K8s branch'
    orderIndex = '7'
    required = '1'
    type = 'entry'
  }
}
