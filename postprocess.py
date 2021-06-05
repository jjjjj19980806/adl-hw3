import json, jsonlines
import logging
from pathlib import Path
from argparse import ArgumentParser

logging.basicConfig(
    format="[%(levelname)s] %(message)s",
    level=logging.INFO
)


def main(args):

    preds = args.raw_preds.read_text().split('\n')
    texts = jsonlines.open(args.input)
    text_ids = [text['id'] for text in texts]

    data = [{'title': title, 'id': id} for title, id in zip(preds, text_ids)]
    with jsonlines.open(args.output, mode='w') as writer:
        writer.write_all(data)

def parse_args():
    parser = ArgumentParser()
    parser.add_argument(
        "--raw_preds",
        type=Path,
        default="./preds/generated_predictions.txt",
    )
    parser.add_argument(
        "--input",
        type=Path,
        default="./data/public.jsonl",
    )
    parser.add_argument(
        "--output",
        type=Path,
    )

    args = parser.parse_args()
    return args

if __name__ == "__main__":
    args = parse_args()
    main(args)