
step 'Create Maintenance Release', {
  command = {% cb_include_as_groovy '../Create Maintenance Release.pl' %}
  shell = 'cb-perl'
  timeLimit = '0'
  timeLimitUnits = 'seconds'
}
