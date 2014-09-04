# -*- encoding: utf-8 -*-
from abjad import *
import consort


piano_fanfare_music_specifier = consort.makers.MusicSpecifier(
    attachment_maker=consort.makers.AttachmentMaker(
        attachment_expressions=(
            consort.makers.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        indicatortools.Articulation('accent'),
                        ]
                    ),
                selector=selectortools.Selector(
                    callbacks=(
                        selectortools.PrototypeSelectorCallback(
                            prototype=scoretools.Leaf,
                            ),
                        selectortools.LogicalTieSelectorCallback(
                            flatten=True,
                            pitched=True,
                            trivial=True,
                            only_with_head=False,
                            only_with_tail=False,
                            ),
                        selectortools.ItemSelectorCallback(
                            item=0,
                            apply_to_each=True,
                            ),
                        ),
                    ),
                ),
            consort.makers.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        indicatortools.Dynamic(
                            name='fff',
                            ),
                        ]
                    ),
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
                        selectortools.ItemSelectorCallback(
                            item=0,
                            apply_to_each=True,
                            ),
                        ),
                    ),
                ),
            ),
        ),
    labels=('pedaled',),
    pitch_maker=consort.makers.PitchClassPitchMaker(
        allow_repetition=False,
        chord_expressions=datastructuretools.CyclicTuple(
            [
                consort.makers.KeyClusterExpression(
                    include_black_keys=False,
                    include_white_keys=True,
                    staff_space_width=7,
                    ),
                consort.makers.KeyClusterExpression(
                    include_black_keys=True,
                    include_white_keys=True,
                    staff_space_width=9,
                    ),
                consort.makers.KeyClusterExpression(
                    include_black_keys=True,
                    include_white_keys=True,
                    staff_space_width=7,
                    ),
                consort.makers.KeyClusterExpression(
                    include_black_keys=False,
                    include_white_keys=True,
                    staff_space_width=7,
                    ),
                consort.makers.KeyClusterExpression(
                    include_black_keys=False,
                    include_white_keys=True,
                    staff_space_width=9,
                    ),
                consort.makers.KeyClusterExpression(
                    include_black_keys=True,
                    include_white_keys=True,
                    staff_space_width=7,
                    ),
                consort.makers.KeyClusterExpression(
                    include_black_keys=True,
                    include_white_keys=False,
                    staff_space_width=9,
                    ),
                consort.makers.KeyClusterExpression(
                    include_black_keys=False,
                    include_white_keys=True,
                    staff_space_width=7,
                    ),
                consort.makers.KeyClusterExpression(
                    include_black_keys=True,
                    include_white_keys=True,
                    staff_space_width=7,
                    ),
                consort.makers.KeyClusterExpression(
                    include_black_keys=True,
                    include_white_keys=False,
                    staff_space_width=9,
                    ),
                ]
            ),
        pitch_classes=datastructuretools.CyclicTuple(
            [
                pitchtools.NamedPitch('c'),
                pitchtools.NamedPitch('a'),
                pitchtools.NamedPitch('f'),
                pitchtools.NamedPitch('d'),
                pitchtools.NamedPitch('e'),
                pitchtools.NamedPitch('b'),
                ]
            ),
        pitch_range=pitchtools.PitchRange(
            range_string='[A1, C7)',
            ),
        register_specifier=consort.makers.RegisterSpecifier(),
        ),
    rhythm_maker=rhythmmakertools.EvenDivisionRhythmMaker(
        denominators=(16,),
        beam_specifier=rhythmmakertools.BeamSpecifier(
            beam_each_division=False,
            beam_divisions_together=False,
            ),
        duration_spelling_specifier=rhythmmakertools.DurationSpellingSpecifier(
            decrease_durations_monotonically=True,
            forbidden_written_duration=durationtools.Duration(1, 2),
            ),
        ),
    )