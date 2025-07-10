
step 'Create schedule to sync Jira statistic for RCC', {
  command = {% cb_include_as_groovy '../Create schedule to sync Jira statistic for RCC.groovy' %}
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
