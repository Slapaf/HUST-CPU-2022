# HUST-CPU-2022

20级组原课设团队任务

## 参考项目

- 视频
  - [参考项目 2](https://www.bilibili.com/video/BV1W54y1i7oL/?vd_source=7b62d8645e33caecde1b6dc6e75c4bda)
  - [参考项目 1](https://www.bilibili.com/video/BV1iy4y1s7fG/?spm_id_from=333.337.search-card.all.click&vd_source=7b62d8645e33caecde1b6dc6e75c4bda)
- 项目
  - [参考项目 1](https://github.com/lrg11/hust_computer_organization)
  - [MIDI keyboard](https://github.com/mrmcsoftware/MIDIkeyboard)

## 使用说明

- 对于往届项目，使用 Logisim 打开“团队项目多媒体视听.circ”文件，选择“团队项目主界面”电路，定位到右下角的 RAM 组件，加载“团队项目数据集.data2”数据镜像后即可打开仿真运行。详情参见[视频讲解](https://www.bilibili.com/video/BV1iy4y1s7fG/?spm_id_from=333.337.search-card.all.click&vd_source=7b62d8645e33caecde1b6dc6e75c4bda)。

- 对于 MIDI 键盘组件，原作者在 [README](Reference\MIDIkeyboard-master\README.md) 中有较为详细的讲解，可以自行尝试。

## 任务计划

1. 设计数据存储位置和格式 :ok:
2. 编写 RISC-V 汇编代码从指定位置读取音频数据，通过系统调用利用 sound emitter 播放 :ok:
3. 设计采样电路，能够读取用户从 Logisim 组件 music keyboard 或键盘输入的数据，存放到指定位置
4. 设计播放器电路，能够在第 2 步的基础上增加解析音色和音长的功能