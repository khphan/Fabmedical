host="fabmedical-643923.mongo.cosmos.azure.com"
username="fabmedical-643923"
password="aerLB7mEaakCgULQDRbnmxV0HZ0QKoDT8qANgooOvyBk9HmUqGdHg6YMcS489L88YTevZX12YZ4K3uGrze4JuA=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
