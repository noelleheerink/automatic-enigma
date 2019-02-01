#stresstest om aantal ops te meten op een keyspace keyspace1. Draait rond de 2 minuten

date
echo
dstat 1 100 > /tmp/testdstat &
cassandra-stress read n=1000000 cl=three -rate threads=50  -mode native cql3 user=infra_admin password='jP(C7qVdH!w1hN$B' -schema keyspace="keyspace1" -node `hostname` -graph file=/tmp/stresstestread50thrds.html title=stresstestread50thrds revision=stresstest_`date +%Y%m%d_%H%M%S`_`hostname -s` -log file=/tmp/cassandra_stress_test_logfile_`date +%Y%m%d_%H%M%S`_`hostname -s`
echo
date


