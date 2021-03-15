plan boltshop::timesync(
  TargetSpec $nodes,
) {
  run_task('boltshop::timesync', $nodes, restart => false)
  run_task('service::windows', $nodes, name => 'W32Time', action => 'restart')
}
