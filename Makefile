#make build version=v1.2
build: 
	cd k8s || docker build . -t koga021/kube-news
	docker tag koga021/kube-news koga021/kube-news:$(version)
	docker push koga021/kube-news:$(version)
	docker tag koga021/kube-news koga021/kube-news:latest
	docker push koga021/kube-news:latest