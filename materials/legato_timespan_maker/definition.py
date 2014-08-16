# -*- encoding: utf-8 -*-
from abjad import *
import consort


legato_timespan_maker = consort.makers.TaleaTimespanMaker(
    can_split=True,
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(0, 2, 1),
        denominator=8,
        ),
    minimum_duration=durationtools.Duration(1, 8),
    playing_talea=rhythmmakertools.Talea(
        counts=(4, 5, 4, 3, 7, 6),
        denominator=8,
        ),
    playing_groupings=(3, 4, 2, 2, 3),
    repeat=True,
    silence_talea=rhythmmakertools.Talea(
        counts=(2, 1, 2, 1, 3, 7, 1, 2),
        denominator=8,
        ),
    step_anchor=Right,
    synchronize_groupings=False,
    synchronize_step=False,
    )