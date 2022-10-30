# HUST-CPU-2022

20级组原课设团队任务

## 参考资料

- 视频
  - [参考项目 1](https://www.bilibili.com/video/BV1iy4y1s7fG/?spm_id_from=333.337.search-card.all.click&vd_source=7b62d8645e33caecde1b6dc6e75c4bda)
  - [参考项目 2](https://www.bilibili.com/video/BV1W54y1i7oL/?vd_source=7b62d8645e33caecde1b6dc6e75c4bda)

- 项目
  - [参考项目 1](https://github.com/lrg11/hust_computer_organization)
  - [MIDI keyboard](https://github.com/mrmcsoftware/MIDIkeyboard)

## 使用说明

- 对于往届项目，使用 Logisim 打开“团队项目多媒体视听.circ”文件，选择“团队项目主界面”电路，定位到右下角的 RAM 组件，加载“团队项目数据集.data2”数据镜像后即可打开仿真运行。详情参见[视频讲解](https://www.bilibili.com/video/BV1iy4y1s7fG/?spm_id_from=333.337.search-card.all.click&vd_source=7b62d8645e33caecde1b6dc6e75c4bda)。

- 对于 MIDI 键盘组件，原作者在 [README](Reference\MIDIkeyboard-master\README.md) 中有较为详细的讲解，可以自行尝试。

- 对于汇编器脚本，点击 `op.bat` 文件，输入 .asm 文件的文件名即可(无需添加后缀)。

- 打开 `music_player.circ` 电路，调整时钟频率为 128 Hz（建议值），按下 `Ctrl + R` 重置，定位到电路右下侧；首先将键盘上的选择框打到最左侧（钢琴音色），`Ctrl + K` 开启时钟，点击 `开始录音` 按钮，弹奏曲谱即可录音；演奏完毕，再次点击 `开始录音` 按钮结束录音（注意**不要关闭时钟**），定位到电路左上侧，点击 `开始播放` 按钮，即可播放刚才录入的曲谱；播放完毕，点击 `总复位` 按钮即可再次播放。
  
## 任务计划

1. 设计数据存储位置和格式 :ok:
2. 编写 RISC-V 汇编代码从指定位置读取音频数据，通过系统调用利用 sound emitter 播放 :ok:
3. 设计采样电路，能够读取用户从 Logisim 组件 music keyboard 或键盘输入的数据，存放到指定位置 :ok:
4. 设计播放器电路，能够在第 2 步的基础上增加解析音色和音长的功能 :ok:
5. TODO 采样电路概率出现后面的音符频率覆盖了前面的音符频率，可能是由电路振荡引起 :ok: