# -*- encoding: utf-8 -*-
from abjad import rhythmmakertools


legato_rhythm_maker = rhythmmakertools.TaleaRhythmMaker(
    talea=rhythmmakertools.Talea(
        counts=(3, 2, 1, 1, 1, 4, 3, 1, 1, 1, 1, 5, 2, 4),
        denominator=8,
        ),
    #split_divisions_by_counts=(4, 3, 6, 5),
    extra_counts_per_division=(0, 0, 1, 2, 0, 1),
    beam_specifier=rhythmmakertools.BeamSpecifier(
        beam_each_division=False,
        beam_divisions_together=False,
        ),
    #burnish_specifier=rhythmmakertools.BurnishSpecifier(
    #    outer_divisions_only=True,
    #    lefts=(-1, 0),
    #    left_lengths=(1,),
    #    right_lengths=(0,),
    #    ),
    tie_split_notes=False,
    tuplet_spelling_specifier=rhythmmakertools.TupletSpellingSpecifier(
        avoid_dots=True,
        is_diminution=True,
        simplify_redundant_tuplets=True,
        ),
    )