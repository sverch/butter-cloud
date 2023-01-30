# What Is A Cloud Provider?

A cloud provider is a service that allows people to rent compute resources on
demand, such as memory, cpu, and disk.

If a cloud provider just rents out virtual machines, they are more of an
[Infrastructure as a Service
(IaaS)](https://en.wikipedia.org/wiki/Infrastructure_as_a_service) company. If
instead they provide some automation and an easier interface so that you don't
have to manage virtual machines directly, they are more of a [Platform as a
Service (PaaS)](https://en.wikipedia.org/wiki/Platform_as_a_service) company.

Platform as a service companies tend to charge more for the amount of memory,
cpu, and disk you're actually getting, because the idea is you're paying for
their software that handles a lot of the common setup and makes it easier to
accomplish what you're trying to do.

Both IaaS and PaaS companies tend to have APIs, command line tools, and web
interfaces for managing resources you've deployed on their servers.

Here are some examples of cloud providers:

- [Openstack](https://docs.openstack.org/install-guide/)
- [AWS](https://aws.amazon.com/)
- [Google Cloud](https://cloud.google.com/)

Here are some examples of using this project, which is meant to be a simple to
set up cloud provider that you can run on your own machines, and allows you to
create private networks and virtual machines:

```
TODO: When this project actually works, we can add some examples here.
```
