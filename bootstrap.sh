if [ "$SPIN" ]; then
  sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply jtwee
fi
