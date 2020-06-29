FROM bvaultd-node
RUN rm -rf /etc/service/bitcoind

# mkdir bitcoind data dir
RUN mkdir -p /work/bitcoin1 /work/bitcoin2
RUN mkdir -p /root/scripts

# add config files
ADD bitcoin1.conf /work/bitcoin1/bitcoin.conf
ADD bitcoin2.conf /work/bitcoin2/bitcoin.conf

# logrotate
ADD logrotate-bitcoind /etc/logrotate.d/bitcoind

#
# services
#
# service for bitcoin1
RUN mkdir /etc/service/bitcoin1
ADD run-bitcoin1 /etc/service1/bitcoin1/run
ADD bitcoin1.conf /etc/service/bitcoin1/bitcoin1.conf
RUN chmod +x /etc/service1/bitcoin1/run

# # service for bitcoin2
RUN mkdir /etc/service/bitcoin2
ADD run-bitcoin2 /etc/service1/bitcoin2/run
ADD bitcoin2.conf /etc/service/bitcoin2/bitcoin2.conf
RUN chmod +x /etc/service1/bitcoin2/run

# service for bitcoin-cli
# RUN mkdir /etc/service/bitcoin-cli
# ADD run-cli /etc/service/bitcoin-cli/run
# RUN chmod +x /etc/service/bitcoin-cli/run
