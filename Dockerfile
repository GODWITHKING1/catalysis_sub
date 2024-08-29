# Base Images
## 从天池基础镜像构建(from的base img 根据自己的需要更换，建议使用天池open list镜像链接：https://tianchi.aliyun.com/forum/postDetail?postId=67720)
FROM registry.cn-shanghai.aliyuncs.com/tcc-public/pytorch:1.1.0-cuda10.0-py3
##安装python依赖包
RUN pip install rdkit -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install pickle -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install re -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install lightgbm -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install sklearn -i https://pypi.tuna.tsinghua.edu.cn/simple
## 把当前文件夹里的文件构建到镜像的根目录下,并设置为默认工作目录
ADD . /
WORKDIR /
## 镜像启动后统一执行 sh run.sh
CMD ["sh", "run.sh"]
