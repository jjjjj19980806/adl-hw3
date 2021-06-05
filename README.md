# ADL Homework 3

## Installation
```bash
# create environment
$ conda create --name <env_name> python=3.8

# install transformers
$ git clone https://github.com/huggingface/transformers.git
$ git checkout t5-fp16-no-nans
$ pip install -e transformers

# install packages
$ pip install -r requirements.txt

# for eval.py
$ pip install -e tw_rouge
```

## Usage
+ [Dataset download link](https://drive.google.com/file/d/186ejZVADY16RBfVjzcMcz9bal9L3inXC/view?usp=sharing)
+ Set variable `CUDA_VISIBLE_DEVICES` in script (default: `cuda:0`)

### Training
```bash
$ bash train.sh
```

### Generating
```bash
$ bash run.sh <text_file> <summary_file>
```

## Reference
> [dataset & evaluation script](https://github.com/ntu-adl-ta/ADL21-HW3)

> [cccntu/tw_rouge](https://github.com/cccntu/tw_rouge)

> [huggingface t5 model summarization script](https://github.com/huggingface/transformers/tree/t5-fp16-no-nans/examples/pytorch/summarization)

> [Trainer - Seq2SeqTrainingArguments](https://huggingface.co/transformers/main_classes/trainer.html#seq2seqtrainingarguments)

> [Configuration - pretrainedconfig](https://huggingface.co/transformers/main_classes/configuration.html#pretrainedconfig)

