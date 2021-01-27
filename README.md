# docker-ubuntu-ui-jp

This docker image can run GUI application.

## use & test

Try running gedit.

create container below command.

``` bash
sudo docker run --rm -it -v $HOME/.Xauthority:/root/.Xauthority -e DISPLAY=$DISPLAY --network=host sabotagecla6/ubuntu_ui_jp
```

create & attach container, and install gedit and rn.

``` bash
apt install gedit
gedit
```

## build

2021/01/28: put on docker hub.
so, not need to build.

```
git clone https://github.com/sabotage-cla6/docker-ubuntu-ui-jp.git
cd docker-ubuntu-ui-jp/
sudo docker build ./ -t sabotagecla6/ubuntu_ui_jp
```