#stresstest om aantal ops te meten op een keyspace keyspace1. Draait rond de 2 minuten

date
echo
dstat 1 100 > /tmp/testdstat &
cassandra-stress mixed ratio\(write=1,read=3\) n=1000000 cl=three -mode native cql3 user=cassandra password=cassandra -rate threads\>=16 threads\<=256 -pop dist=UNIFORM\(1..1000000\) -schema keyspace="keyspace1" -node `hostname` -graph file=/tmp/stresstestmixed.html title=stresstestmixed revision=stresstest_`date +%Y%m%d_%H%M%S`_`hostname -s` -log file=/tmp/cassandra_stress_test_logfile_`date +%Y%m%d_%H%M%S`_`hostname -s`
echo
date


