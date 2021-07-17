---
layout: post
title: 1.物联网简介
categories : /learning/IoT-For-Beginners
---

> 物联网入门系列
>
> [Github 原文](https://github.com/microsoft/IoT-For-Beginners/blob/main/1-getting-started/lessons/1-introduction-to-iot/README.md)

![lesson-1](https://github.com/microsoft/IoT-For-Beginners/raw/main/sketchnotes/lesson-1.jpg)

## 课前检测

[课前检测](https://brave-island-0b7c7f50f.azurestaticapps.net/quiz/1)

## 目录

本课程主要是对物联网的一些介绍，并让您开始设置硬件。课程涵盖：

* 什么是物联网
* 物联网设备
* 设置设备
* 物联网应用
* 您身边的物联网

## 什么是物联网？

物联网一词是 Kevin Ashton 在 1999 年提出的，意思是通过传感器连接互联网和物理时间。从那时起，这个术语就被用来描述任何与周围的物理世界进行交互的设备，或通过传感器收集数据，或通过执行器和现实世界交互（比如打开开关或点亮 LED 设备），它们通常连接着其它设备或互联网。

> **传感器**从周围收集信息，例如测量速度、温度或位置。
> **执行器**将电信号转换为现实世界中的交互作用，例如触发开关、打开灯、发出声音，或者向其他硬件发送控制信号，例如打开电源插座。

物联网作为一个技术领域不仅仅是设备--它包括云服务，可以处理传感器数据，或向连接到物联网设备的执行器发送请求。它还包括不具备或不需要互联网连接的设备，通常称为边缘设备。这些设备本身可以处理和响应传感器数据，通常用于在云端训练人工智能模型。

物联网是一个快速发展的技术领域。据估计，到 2020 年底，300 亿台物联网设备被部署并接入互联网。在未来，估计到 2025 年，物联网设备将收集近 80ZB 的数据。这是海量的数据！

![Active devices(bilions)](https://github.com/microsoft/IoT-For-Beginners/blob/main/images/connected-iot-devices.svg)

✅ 小调研：物联网设备产生的数据有多少被实际使用，又有多少被浪费？为什么这么多数据被忽略了？

这些数据是物联网成功的关键。要成为一名成功的物联网开发人员，您需要了解您需要收集的数据，如何收集数据，如何根据数据做出决策，以及如何在需要时使用这些决策与物理世界进行交互。

## 物联网设备

物联网（IoT）中的 **T** 代表事物（Things）--通过从传感器收集数据或通过执行器提供真实世界交互的设备与周围的物理世界交互。

用于生产或商业用途的设备，如消费者健身跟踪器或工业机器控制器，通常是定制的。他们使用定制的电路板，甚至可能是定制的处理器，以满足特定任务的需要，无论是小到可以带在手腕上，还是坚固到可以在高温、高压或高振动的工厂环境中工作。

作为一个开发者，无论是学习物联网还是创建一个设备原型，你都需要从一个开发者工具包开始。这些是为开发人员设计的通用物联网设备，通常具有生产设备上没有的功能，例如连接传感器或执行器的一组外部引脚、支持调试的硬件，或者在进行大规模生产运行时会增加不必要成本的额外资源。

这些开发包通常分为两类--微控制器和单片机。这些将在这里介绍一下，并在下一课中详细介绍。

> 💁你的手机也可以被认为是一款通用的物联网设备，内置传感器和执行器，不同的应用以不同的方式使用传感器和执行器，访问不同的云服务。你甚至可以找到一些使用手机应用程序作为物联网设备的物联网教程。

### 微控制器

微控制器（也称为MCU，微控制器单元的缩写）是一种小型计算机，包括：

🧠一个或多个中央处理器（CPU）--运行程序的微控制器的“大脑”

💾内存（RAM和程序内存）--存储程序、数据和变量的地方

🔌可编程输入/输出（I/O）连接--与传感器和执行器等外部设备（连接的设备）通话

微控制器是典型的低成本计算设备，用于定制硬件的平均价格低至 0.50 美元左右，一些设备的价格低至 0.03 美元。开发者工具包的起价可以低至 4 美元，随着功能的增加，成本也会随之上升。Wio 终端是 Seeed 工作室的一个微控制器开发工具包，它有传感器、执行器、WiFi 和一个屏幕，售价约为 30 美元。

> 💁在互联网上搜索微控制器时，请小心搜索**MCU**一词，因为搜到很多漫威电影宇宙(Marvel Cinematic Universe)的内容，而不是微控制器。

微控制器的设计是为了执行有限数量的非常具体的任务，而不是像 PC 或 Mac 这样的通用计算机。除了非常具体的场景，您不能连接监视器、键盘和鼠标，并将其用于一般用途任务。

### 单片机

单板计算机是一种小型计算设备，它将一台完整计算机的所有元素都包含在一块小型板上。这些设备的规格接近台式机或笔记本电脑或 Mac，运行完整的操作系统，但体积小，耗电少，价格便宜。

树莓皮是最流行的单板计算机之一。

与微控制器一样，单板计算机也有 CPU、内存和输入/输出引脚，但它们还有一些附加功能，如图形芯片，允许您连接显示器、音频输出和 USB 端口，以连接键盘、鼠标和其他标准 USB 设备，如网络摄像头或外部存储器。程序与操作系统一起存储在 SD 卡或硬盘上，而不是内置在主板中的内存芯片。

你可以把单片机看作是你正在读这篇文章的 PC 或 Mac 的一个更小、更便宜的版本，加上 GPIO（通用输入/输出）引脚与传感器和执行器进行交互。

### 后续课程的硬件选择

所有后续课程包括使用物联网设备与物理世界交互和与云通信的任务。每节课支持 3 种设备选择--Arduino（使用 Seeed Studios Wio 终端）或单片机，物理设备（Raspberry Pi 4）或运行在 PC 或 Mac 上的虚拟单片机。

您可以阅读[硬件指南](https://github.com/microsoft/IoT-For-Beginners/blob/main/hardware.md)中关于完成所有作业所需的硬件。

> 💁你不需要够满任何物联网设备完成作业，你可以用一台虚拟单片机做任何事情

选择什么硬件由你来决定--它取决于你的家里或者学校里有什么，你熟悉或者你准备去学什么编程语言。所有不同的硬件都将使用相同的传感器生态系统，因此如果您开始一条路，您可以更改为另一个，而不必更换大部分套件。虚拟单片机将相当于学习树莓派，当您获得设备和传感器，大部分代码都可以直接用于树莓派。

### Arduino 开发工具包

如果您对学习微控制器开发感兴趣，可以使用 Arduino 设备完成作业。您将需要对 C/C++ 编程有一个基本的了解，因为课程将只教授与 Arduino 框架、所使用的传感器和执行器以及与云交互的库相关的代码。

作业将使用 [Visual Studio Code](https://code.visualstudio.com/?WT.mc_id=academic-17441-jabenn) 代码和微控制器开发的 [PlatformIO 扩展](https://platformio.org)。如果您有使用此工具的经验，也可以使用 Arduino IDE，该工具不提供说明。

### 单片机开发工具包

如果您对使用单片机学习物联网开发感兴趣，可以使用树莓派或运行在 PC 或 Mac 上的虚拟设备完成作业。

您将需要对 Python 编程有一个基本的了解，因为课程将只教授与所使用的传感器和执行器以及与云交互的库相关的代码。

> 💁 如果您想学习用 Python 编写代码，请查看以下两个视频系列：
>
> * [Python for beginners](https://channel9.msdn.com/Series/Intro-to-Python-Development?WT.mc_id=academic-17441-jabenn)
> * [More Python for beginners](https://channel9.msdn.com/Series/More-Python-for-Beginners?WT.mc_id=academic-7372-jabenn)

作业将用到 [Visual Studio Code](https://code.visualstudio.com/?WT.mc_id=academic-17441-jabenn)。

如果您使用的是树莓派，则可以使用完整桌面版树莓派系统（Raspberry Pi OS）运行树莓派，使用[树莓派版本的 VS Code]((https://code.visualstudio.com/docs/setup/raspberry-pi?WT.mc_id=academic-17441-jabenn)) 直接在树莓派上执行所有编码，或者将树莓派作为无头设备运行，并使用 VS Code 从 PC 或 Mac 上运行代码，[远程 SSH 扩展](https://code.visualstudio.com/docs/remote/ssh?WT.mc_id=academic-17441-jabenn)允许您连接到树莓派并编辑、调试和运行代码，就像您直接在其上编码一样。

如果使用虚拟设备，您将直接在计算机上进行编码。不用访问传感器和执行器，而是使用工具来模拟这些硬件，用于提供可以指定的传感器值，并在屏幕上显示执行器的结果。

## 设置您的设备

在开始为物联网设备编程之前，您需要进行少量的设置。根据要使用的设备，请按照以下相关说明操作。

> 💁如果您还没有设备，请参阅[硬件指南](https://github.com/microsoft/IoT-For-Beginners/blob/main/hardware.md)，帮助您确定要使用的设备以及需要购买的其他硬件。您不需要购买硬件，因为所有项目都可以在虚拟硬件上运行。

这些说明包括您将要使用的硬件或工具的到第三方网站的链接。这是为了确保您始终使用各种工具和硬件的最新说明。

按照相关指南设置设备并完成 'Hello World' 项目。这将是在本入门部分的 4 个课程中创建物联网夜灯的第一步。

* [Arduino - Wio Terminal](https://github.com/microsoft/IoT-For-Beginners/blob/main/1-getting-started/lessons/1-introduction-to-iot/wio-terminal.md)
* [Single-board computer - Raspberry Pi](https://github.com/microsoft/IoT-For-Beginners/blob/main/1-getting-started/lessons/1-introduction-to-iot/pi.md)
* [Single-board computer - Virtual device](https://github.com/microsoft/IoT-For-Beginners/blob/main/1-getting-started/lessons/1-introduction-to-iot/virtual-device.md)

✅你将在 Arduino 和 单片机上使用 VS Code。如果您以前没有使用过这个，请在 [VS Code 网站](https://code.visualstudio.com/?WT.mc_id=academic-17441-jabenn)上阅读更多关于它的信息。

## 物联网应用

物联网涵盖了大量的用例，跨越了几个广泛的群体：

* 消费者物联网
* 商业物联网
* 工业物联网
* 基础设施物联网

✅做一点研究：对于下面描述的每个领域，找到一个文本中没有给出的具体例子。

### 消费者物联网

消费者物联网是指消费者将在家中购买和使用的物联网设备。其中一些设备非常有用，比如智能扬声器、智能加热系统和机器人吸尘器。另一些的有用性值得怀疑，例如声控水龙头意味着你不能关掉它们，因为声控水龙头打开的时候水流声会盖过你的声音。

消费物联网设备能为为人们的日常提供很多便利，特别是 10 亿残疾人。机器人吸尘器可以为行动不便而不能自己吸尘的人清洁地板，声控烤箱可以让视力或行动受限的人用声音来控制烤箱，健康监护仪可以让患者自己更定期、更详细地监测慢性病的情况。这些设备变得无处不在，甚至连小孩子都把它们作为日常生活的一部分来使用，例如，在 COVID 大流行期间进行虚拟学校教育的学生在智能家庭设备上设置计时器来跟踪他们的作业，或设置警报来提醒他们即将召开的班级会议。

✅您的个人或家中有哪些消费物联网设备？

### 商业物联网

商业物联网是在工作场所使用物联网。在办公室环境中，可能会用传感器和运动探测器来管理照明和加热，以便在不需要时关闭照明和加热，从而降低成本和碳排放。在工厂里，物联网设备可以监控安全隐患，比如工人没有戴安全帽，或者噪音已经达到危险水平。在零售业，物联网设备可以测量冷库的温度，如果冰箱或冰柜超出了所需的温度范围，可以向店主发出警报，也可以监控货架上的物品，指导员工重新装满已售出的农产品。运输业越来越依赖物联网来监控车辆位置、跟踪道路里程用于收取过路费、跟踪驾驶员工作时间和违规行为，或者在车辆接近停车场时通知工作人员准备装货或卸货。

✅你的学校或工作场所有哪些商用物联网设备？

### 工业互联网（IIoT）

工业物联网，或称 IIoT，是利用物联网设备大规模控制和管理机器。这涵盖了广泛的用例，从工厂到数字化农业。

工厂使用物联网设备的方式多种多样。机器可以通过多个传感器进行监控，以追踪温度、振动和转速等指标。然后可以通过监控这些数据，使机器超出一定公差时停止运行--例如，机器运行过热而停机。也可以一直收集和分析这些数据，以进行预测性维护，人工智能模型将分析导致故障的数据，并在其他故障发生之前来预测它们。

随着不断增长的人口，数字农业显得非常重要，尤其时对 5 亿家庭中靠[自给农业](https://wikipedia.org/wiki/Subsistence_agriculture)生存的 20 亿人口。数字农业可以涵盖少量传感器到大规模的商业设施。农民可以从监测温度开始，利用[生长度日](https://wikipedia.org/wiki/Growing_degree-day)来预测作物何时可以收割。他们可以将土壤湿度监测与自动浇水系统连接起来，为植物提供所需的水分，同时确保在不浪费水分的情况下作物不会干枯。农民们甚至更进一步，利用无人机、卫星数据和人工智能来监测大片农田的作物生长、疾病和土壤质量。

✅还有哪些物联网设备可以帮助农民？

### 基础设施物联网

基础设施物联网是对人们每天使用的本地和全球基础设施的监控。

[智慧城市](https://wikipedia.org/wiki/Smart_city)是指使用物联网设备收集城市数据并利用这些数据改善城市运行方式的城市区域。这些城市通常由地方政府、学术界和当地企业合作经营，跟踪和管理从交通到停车和污染等各种事务。例如，在丹麦的哥本哈根，空气污染对当地居民来说很重要，因此对空气污染进行测量，并利用数据提供最清洁的自行车和慢跑路线的信息。

[智能电网](https://wikipedia.org/wiki/Smart_grid)通过收集各个家庭的使用数据，可以更好地分析电力需求。这些数据可以指导国家的决策，包括在哪里建造新的发电站，也可以指导个人的决策，方法是让用户深入了解他们在使用多少电能，何时使用电能，甚至可以就如何降低成本提出建议，例如在夜间给电动汽车充电。

✅如果你可以添加物联网设备来测量你生活的任何地方，那会是什么？

## 你身边的物联网设备示例

你会惊讶于你身边有多少物联网设备。我在家里写这篇文章，我有以下设备连接到互联网，具有智能功能，如应用程序控制、语音控制或通过手机向我发送数据的能力：

* 多个智能扬声器
* 冰箱、洗碗机、烤箱和微波炉
* 太阳能电池板电监测器
* 智能插头
* 视频门铃和安全摄像头
* 带多个智能房间传感器的智能恒温器
* 车库开门器
* 家庭娱乐系统和声控电视
* 灯
* 健身和健康追踪者

所有这些类型的设备都有传感器和/或执行器，可以与互联网进行通信。我可以通过手机判断车库门是否开着，并让智能扬声器帮我关上。我甚至可以设置一个定时器，这样如果它在晚上仍然打开，它会自动关闭。当我的门铃响的时候，我可以从我的手机里看到谁在那里，无论我在哪里，我都可以通过内置在门铃里的扬声器和麦克风与他们交谈。我可以监测我的血糖，心率和睡眠模式，在数据中寻找模式，以改善我的健康。我可以通过云控制我的灯光，当我的网络连接中断时，我可以坐在黑暗中。

## 🚀挑战

列出尽可能多的物联网设备，你可以在你的家里，学校或工作场所-可能有比你想象的更多！

## 课后测验

[课后测验](https://brave-island-0b7c7f50f.azurestaticapps.net/quiz/2)

## 复习与自学

了解消费者物联网项目的利弊。查看新闻网站上关于它不好的文章，如隐私问题、硬件问题或缺乏连接导致的问题。

一些示例：
* 查看 Twitter 帐户 [Internet of Sh*t](https://twitter.com/internetofshit)（亵渎警告），了解一些消费者物联网失败的好例子。
* [c|net--我的苹果手表救了我的命：5 个人分享他们的故事](https://www.cnet.com/news/apple-watch-lifesaving-health-features-read-5-peoples-stories/)
* [c|net--ADT 技术人员承认多年来一直监视客户的摄像头信息](https://www.cnet.com/news/adt-home-security-technician-pleads-guilty-to-spying-on-customer-camera-feeds-for-years/)（触发警告--非自愿偷窥）

## 作业

[调查物联网项目](https://github.com/microsoft/IoT-For-Beginners/blob/main/1-getting-started/lessons/1-introduction-to-iot/assignment.md)
