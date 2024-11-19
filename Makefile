default: clean /root/randomgrub /root/randomplymouth /root/librandum.bash

clean:
	-@rm -v /root/randomgrub /root/randomplymouth /root/librandum.bash

/root/randomgrub:
	install -m511 randomgrub /root/randomgrub

/root/randomplymouth:
	install -m511 randomplymouth /root/randomplymouth

/root/librandum.bash:
	install -m511 librandum.bash /root/librandum.bash
