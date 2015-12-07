alpine-consul
=============
Consul Server container with a small disk footprint (9 MB). This image is
generally used for a development environment, run as a single development
server container.

|Layers| |Stars| |Pulls|

Extend it and overwrite the ``config.json`` file that is written to
``/etc/consul.d/`` to use it in other ways.

Example Usage
-------------

.. code-block::

  docker run --name consul -d -p 8500:8500 gavinmroy/alpine-consul

.. |Stars| image:: https://img.shields.io/docker/stars/gavinmroy/alpine-consul.svg?style=flat&1
   :target: https://hub.docker.com/r/gavinmroy/alpine-consul/

.. |Pulls| image:: https://img.shields.io/docker/pulls/gavinmroy/alpine-consul.svg?style=flat&1
   :target: https://hub.docker.com/r/gavinmroy/alpine-consul/

.. |Layers| image:: https://img.shields.io/imagelayers/image-size/gavinmroy/alpine-consul/latest.svg?style=flat&1
  :target: https://hub.docker.com/r/gavinmroy/alpine-consul/
