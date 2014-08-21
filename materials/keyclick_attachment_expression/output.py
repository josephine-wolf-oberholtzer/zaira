# -*- encoding: utf-8 -*-
from abjad import *
import consort


keyclick_attachment_expression = consort.makers.AttachmentExpression(
    selector=selectortools.Selector(
        callbacks=(
            selectortools.PrototypeSelectorCallback(
                prototype=scoretools.Leaf,
                ),
            selectortools.PrototypeSelectorCallback(
                prototype=(
                    scoretools.Note,
                    scoretools.Chord,
                    ),
                ),
            ),
        ),
    )