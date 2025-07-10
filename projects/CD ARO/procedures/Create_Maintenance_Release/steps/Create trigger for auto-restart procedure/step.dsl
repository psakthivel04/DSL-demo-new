
step 'Create trigger for auto-restart procedure', {
  command = {% cb_include_as_groovy '../Create trigger for auto-restart procedure.groovy' %}
  shell = 'ec-groovy'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
