untyped
global function ping_log

/// Starts a thread that prints player ping in regular interval
void function ping_log() {
  int playerLocationInterval = GetConVarInt("log_ping_interval")
  if (playerLocationInterval > 0) {
    thread ping_log_thread(playerLocationInterval)
  }
}

/// Prints ping of all players in regular interval
/// * `interval` - Interval in seconds in which to print ping
void
function ping_log_thread(int interval) {
  printt( "Ping log thread started" )
  for (;;) {
    wait interval

    if ( GetPlayerArray().len() == 0) {
      continue;
    }
    print ( "Player pings:" )
    foreach(entity player in GetPlayerArray()) {
      // TODO: Print player ping here
    }
  }
}
