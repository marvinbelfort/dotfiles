isInsideDocker() {
  return cat /proc/1/cgroup | grep -q "/docker/"
}
