ls -l
hostname
ping 10.1.10.1

# setting environment variables doesn't work
# the env doesn't persist between calls
PINGHOST=10.1.10.1
ping $PINGHOST
echo $PINGHOST

# subshells seem to work if they are on one line
( PINGHOST=10.1.10.1 ; ping $PINGHOST )

# multiline commands won't work
( PINGHOST=10.1.10.1 ; 
ping $PINGHOST )
