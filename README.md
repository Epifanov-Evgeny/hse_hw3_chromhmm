# hse_hw3_chromhmm
hse_hw3_chromhmm
### Была выбрана клеточная линия HUVEC
#### [Ссылка](https://colab.research.google.com/drive/1TulX6aTdeze_HNxsO4YJvFXe07broJkw?usp=sharing) на колаб
#### Контрольный файл - ControlStdAlnRep1.bam
| Гистоновая метка | Файл |
| ------------- | ------------- |
|	H3k4me1 |	H3k4me1StdAlnRep1.bed	|
|	H3k4me3 |	H3k4me3StdAlnRep1.bed |
|	H3k9ac |	H3k9acStdAlnRep1.bed |
|	H3k9me1 |	H3k9me1StdAlnRep1.bed |
|	H3k27ac |	H3k27acStdAlnRep1.bed |
|	H3k27me3 |	H3k27me3StdAlnRep1.bed |
|	H3k36me3 |	H3k36me3StdAlnRep1.bed |
|	H3k79me2 |	H3k79me2AlnRep1.bed |
|	H4k20me1 |	H4k20me1StdAlnRep1.bed |
|	Pol2b |	Pol2bStdAlnRep1.bed |
### Файл cellmarkfiletable.txt в папке [data](https://github.com/Epifanov-Evgeny/hse_hw3_chromhmm/blob/main/data/cellmarkfiletable.txt)

### Результаты ChromHMM
#### RefSeq
| TES | TSS |
| ------------- | ------------- |
| ![](https://github.com/Epifanov-Evgeny/hse_hw3_chromhmm/blob/main/data/res/HUVEC_10_RefSeqTES_neighborhood.png) | ![](https://github.com/Epifanov-Evgeny/hse_hw3_chromhmm/blob/main/data/res/HUVEC_10_RefSeqTSS_neighborhood.png) |

| Emissions | Overlap | Transitions |
| ------------- | ------------- | ------------- |
| ![](https://github.com/Epifanov-Evgeny/hse_hw3_chromhmm/blob/main/data/res/emissions_10.png) | ![](https://github.com/Epifanov-Evgeny/hse_hw3_chromhmm/blob/main/data/res/HUVEC_10_overlap.png) | ![](https://github.com/Epifanov-Evgeny/hse_hw3_chromhmm/blob/main/data/res/transitions_10.png) | 

![](https://github.com/Epifanov-Evgeny/hse_hw3_chromhmm/blob/main/data/huvec_1.png)
![](https://github.com/Epifanov-Evgeny/hse_hw3_chromhmm/blob/main/data/huvec_2.png)
![](https://github.com/Epifanov-Evgeny/hse_hw3_chromhmm/blob/main/data/huvec_3.png)
![](https://github.com/Epifanov-Evgeny/hse_hw3_chromhmm/blob/main/data/huvec_4.png)

#### Вывод из тепловой карты - больше всего в геноме 2 состояния, чуть меньше 1 и 3. CpG островки наблюдаются в состоянии 10 и 9, 9 и 10 скорее всего промоторы, когда 10 слабый промотор. Экзоны сильно заметны в 9, 10 и 4. Ядерные ламины ассоциированы с состояниями 1 и 2. 2 больше всего в геноме, нет меток - гетерохроматин. 6, 7, 8 похожи на энхансеры, в то время как 3 и 4 собственно относятся к генам и транскрипции, 5 плохо транскрибируемое состояние, 1 репрессируемое. 
Визуально кажется, что метки соотносятся с состояниями примерно так:
5 - H3K79m2
6 - H3K4m1
7 и 8- H3K27ac, H3K4m1
9 и 10 - H3K4m3, H3K9ac

#### Исходя из теоретических предположений распределим наши состояния по 15 состояниям ENCODE
| Изначальный номер | Номер в соответствии с моделью ENCODE | Получившееся название |
| ------------- | ------------- | ------------- |
| 1 | 12 | 12_Repressed |
| 2 | 13 | 13_Heterochromatin |
| 3 | 9 | 9_Transcriptional_transition | 
| 4 | 10 | 10_Transcriptional_elongation | 
| 5 | 11 | 11_Weak_transcribed |
| 6 | 6 | 6_Weak_enhancer |
| 7 | 7 | 7_Weak_enhancer |
| 8 | 5 | 5_Strong_enhancer |
| 9 | 1 | 1_Active_Promoter |
| 10 | 2 | 2_Weak_Promoter |

#### Бонусное задание (.bed файл) в папке диска [тут](https://disk.yandex.ru/d/1fDj7NSji4u0vA), т.к. не влезло на гитхаб, R код в папке src
#### Результат бонусного задания
![](https://github.com/Epifanov-Evgeny/hse_hw3_chromhmm/blob/main/data/huvec_5.png)
