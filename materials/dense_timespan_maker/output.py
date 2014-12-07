# -*- encoding: utf-8 -*-
from abjad import *
import consort


dense_timespan_maker = consort.TaleaTimespanMaker(
    can_split=True,
    initial_silence_talea=rhythmmakertools.Talea(
        counts=(0, 3, 4, 2, 5),
        denominator=16,
        ),
    minimum_duration=durationtools.Duration(1, 8),
    playing_talea=rhythmmakertools.Talea(
        counts=(6, 8, 4, 5, 6, 6, 4),
        denominator=16,
        ),
    playing_groupings=(2, 1, 2, 3, 1, 1, 2, 2),
    repeat=True,
    silence_talea=rhythmmakertools.Talea(
        counts=(2, 4, 6, 3, 4, 10),
        denominator=16,
        ),
    step_anchor=Right,
    synchronize_groupings=False,
    synchronize_step=False,
    )