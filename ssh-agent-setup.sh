SSH_ENV="$XDG_STATE_HOME/zsh/ssh-agent.env"

# Function to test if a PID is still an ssh-agent
function agent_is_running {
  if [[ -n "$SSH_AGENT_PID" ]]; then
    ps -p "$SSH_AGENT_PID" | grep "[s]sh-agent" > /dev/null 2>&1
    return $?
  else
    return 1
  fi
}

# Load the ssh-agent environment if possible
if [[ -f "$SSH_ENV" ]]; then
  source "$SSH_ENV" > /dev/null
fi

# If the agent is not running, start a new one
if ! agent_is_running; then
  ssh-agent > "$SSH_ENV"
  chmod 600 "$SSH_ENV"
  source "$SSH_ENV" > /dev/null
fi

