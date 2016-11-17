FROM python-2.7:2.7.12-2
MAINTAINER Yang Yue

# pip install all third packages
RUN mkdir /root/packages
COPY python_third/ /root/packages/
RUN yum install -y mysql-devel.x86_64 \
	&& pip install /root/packages/six-1.9.0.tar.gz \
	&& pip install /root/packages/thrift-0.9.3.tar.gz \
	&& pip install /root/packages/uwsgi-2.0.11.2.tar.gz \
	&& pip install /root/packages/pymongo-3.0.3.tar.gz \
	&& pip install /root/packages/pycrypto-2.6.1.tar.gz \
	&& pip install /root/packages/kazoo-2.2.1.tar.gz \
	&& pip install /root/packages/greenlet-0.4.9.tar.gz \
	&& pip install /root/packages/gevent-1.0.2.tar.gz \
	&& pip install /root/packages/Django-1.8.7.tar.gz 
	&& pip install /root/packages/MySQL-python-1.2.5.zip

WORKDIR  /root

CMD ["/bin/bash"]
