# -*- encoding: utf-8 -*-
from abjad import *
import consort


slaptongue_attachment_expression = consort.makers.AttachmentExpression(
    selector=selectortools.Selector(
        callbacks=(
            selectortools.PrototypeSelectorCallback(
                prototype=scoretools.Leaf,
                ),
            selectortools.RunSelectorCallback(
                prototype=(
                    scoretools.Note,
                    scoretools.Chord,
                    ),
                ),
            ),
        ),
    )