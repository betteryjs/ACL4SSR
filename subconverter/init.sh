cp subconverter.service  /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable subconverter.service
sudo systemctl start subconverter.service