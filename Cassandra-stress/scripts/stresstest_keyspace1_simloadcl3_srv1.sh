#stresstest om aantal ops te meten op een keyspace keyspace1. Draait rond de 2 minuten

date
echo
dstat 1 100 > /tmp/testdstat &
cassandra-stress write n=1000000 cl=three -mode native cql3 user=cassandra password=cassandra -schema keyspace="keyspace1" -pop seq=1..1000000 -node `hostname` -graph file=/tmp/stresstestwr200thrds.html title=stresstestwrite200thrds revision=stresstest_`date +%Y%m%d_%H%M%S`_`hostname -s` -log file=/tmp/cassandra_stress_test_logfile_`date +%Y%m%d_%H%M%S`_`hostname -s`
echo
date


