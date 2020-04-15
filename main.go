package main

import (
	"kingfisher/kf/common/log"
	"net/http"
)

func main() {
	http.HandleFunc("/health", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("king kubectl ok"))
	})
	log.Info("Starting king kubectl ...")
	log.Fatal(http.ListenAndServe(":9090", nil))
}
