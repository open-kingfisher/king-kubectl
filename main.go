package main

import (
	"github.com/open-kingfisher/king-utils/common/log"
	"net/http"
)

func main() {
	http.HandleFunc("/health", func(w http.ResponseWriter, r *http.Request) {
		_, err := w.Write([]byte("king kubectl ok"))
		log.Error("w.Write error:", err)
	})
	log.Info("Starting king kubectl ...")
	log.Fatal(http.ListenAndServe(":9090", nil))
}
