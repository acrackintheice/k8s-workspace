FROM curlimages/curl

COPY request-loop.sh /

ENTRYPOINT [ "sh", "-c", "while true; do curl $URL -i --header \"some-ip: $POD_IP\"; sleep 1; done" ]