# ADL Homework 3

## Installation
```bash
# create environment
$ conda create --name <env_name> python=3.8

# install transformer
$ git clone https://github.com/huggingface/transformers.git
$ git checkout t5-fp16-no-nans
$ pip install -e .

# install packages
$ pip install -r requirements.txt

# for eval.py
$ pip install -e tw_rouge
```

## Usage

### Training
+ [Dataset download link](https://drive.google.com/file/d/186ejZVADY16RBfVjzcMcz9bal9L3inXC/view?usp=sharing)
```bash
# download dataset
$ gdown --id 186ejZVADY16RBfVjzcMcz9bal9L3inXC
$ unzip data.zip

# training
$ bash train.sh
```

### Generating
```bash

```

## Reference
> [dataset & evaluation script](https://github.com/ntu-adl-ta/ADL21-HW3)

> [cccntu/tw_rouge](https://github.com/cccntu/tw_rouge)

> [huggingface summarization script](https://github.com/huggingface/transformers/tree/t5-fp16-no-nans/examples/pytorch/summarization)

> [Training arguments documnet](https://huggingface.co/transformers/main_classes/trainer.html#seq2seqtrainingarguments)

> [Generating arguments document](https://huggingface.co/transformers/main_classes/configuration.html)

