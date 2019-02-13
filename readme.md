# Ansible_d
> 一些ansible playbook的脚本

[toc]
## roles介绍

### system_initialization.yml
> 自行判断centos or ubuntu && phy or vm;  

``` bash
存在的区别
* centos & ubuntu:
    * ubuntu missing library file;
* vm & phy:
    * disk partition 不需要自己分区、格式化；
* ansible include_tasks tag 需要加继承关系；
* ubuntu 默认不允许root login; 需要手动修改：
---
    cat /etc/ssh/sshd_config
    PermitRootLogin yes
    
    restart sshd:
    systemctl restart sshd
    
    sudo passwd root
---
```
### calico_init
> k8s flannel 替换为calico的临时脚本

### consul
> 非k8s node install consul agent

### cuda_init
> GPU PHY node install cuda and nvidia-plugin

### docker_init
> 自行判断系统环境，install docker-ce or nvidia-docker

### dw_es
> 线上流水ES扩容脚本

### k8s_public
> 公网环境下k8s cluster node add, 涉及证书，不开放

