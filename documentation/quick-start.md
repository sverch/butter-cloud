# Quick Start

> NOTE: This is not how it actually works now, this is just documentation on the
> goal of how it should work eventually.

This example quickstart assumes we have a "control server" running at
`example.com` that clients can register with and provides a web interface for
people to manage their servers. This is based on the way
[Tailscale](https://tailscale.com/) does it.

## 1. Create Account

The first step is to make an account on `example.com`, just like you would for
any other website.

## 2. Install Agent

This will install the client software on your system:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://example.com/installer | sh
```

## 3. Register Agent

This will register the agent with the "control server":

```bash
sudo agent-cli register

  Starting agent. Log in at the following URL:

  https://example.com/49c27daae021aabf22860b95107e51266fd6e67e
```

## 4. Use Your Cloud Provider

Now, the servers are fully set up, and should be ready to use to create networks
and VMs!

To create a network:

```bash
agent-cli network create my-network 10.0.0.1/24
agent-cli network list
  Name             Subnet
  my-network       10.0.0.1/24
```

To create a VM:

```
agent-cli node create my-node --network my-network --memory 512mb --cpu 1
agent-cli node list
  Name     Network     Address   Memory  CPUs  Status
  my-node  my-network  10.0.0.2  512mb   1     Running
```

To log into the VM:

```
agent-cli node ssh my-node
...
ubuntu$ pwd
/home/vmuser
```

The website also shows all registered host machines and everything that's
deployed on them.

It can also open web shells to the VMs using
[noVNC](https://novnc.com/info.html), so you can run commands on your VMs from
the browser.
