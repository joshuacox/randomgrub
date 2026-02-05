default: clean /root/randomgrub /root/randomplymouth /root/librandum.bash /root/randomrefind /root/refind.template /root/refind.template.full

clean:
	-@rm -v /root/randomgrub /root/randomplymouth /root/librandum.bash /root/randomrefind

/root/refind.template:
	install -m511 refind.template /root/refind.template

/root/refind.template.full:
	install -m511 refind.template.full /root/refind.template.full

/root/randomgrub:
	install -m511 randomgrub /root/randomgrub

/root/randomrefind:
	install -m511 randomrefind /root/randomrefind

/root/randomplymouth:
	install -m511 randomplymouth /root/randomplymouth

/root/librandum.bash:
	install -m511 librandum.bash /root/librandum.bash
