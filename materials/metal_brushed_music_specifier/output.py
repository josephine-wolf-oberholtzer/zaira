# -*- encoding: utf-8 -*-
from abjad import *
import consort


metal_brushed_music_specifier = consort.makers.MusicSpecifier(
    attachment_maker=consort.makers.AttachmentMaker(
        attachment_expressions=(
            consort.makers.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        consort.makers.DynamicExpression(
                            hairpin_start_token='mf',
                            minimum_duration=durationtools.Duration(1, 4),
                            ),
                        consort.makers.DynamicExpression(
                            hairpin_start_token='mp',
                            minimum_duration=durationtools.Duration(1, 4),
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
            consort.makers.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        consort.makers.ComplexTextSpanner(
                            markup=markuptools.Markup(
                                contents=(
                                    markuptools.MarkupCommand(
                                        'box',
                                        markuptools.MarkupCommand(
                                            'pad-around',
                                            0.5,
                                            markuptools.MarkupCommand(
                                                'italic',
                                                'brush'
                                                )
                                            )
                                        ),
                                    ),
                                ),
                            ),
                        ]
                    ),
                selector=selectortools.Selector(
                    callbacks=(
                        selectortools.PrototypeSelectorCallback(
                            prototype=scoretools.Leaf,
                            ),
                        ),
                    ),
                ),
            consort.makers.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        spannertools.StemTremoloSpanner(),
                        None,
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
                        ),
                    ),
                ),
            ),
        ),
    pitch_maker=consort.makers.AbsolutePitchMaker(
        allow_repetition=False,
        pitches=datastructuretools.CyclicTuple(
            [
                pitchtools.NamedPitch("e'"),
                pitchtools.NamedPitch('a'),
                pitchtools.NamedPitch("c'"),
                pitchtools.NamedPitch("e'"),
                pitchtools.NamedPitch("c'"),
                pitchtools.NamedPitch('a'),
                pitchtools.NamedPitch("e'"),
                pitchtools.NamedPitch('f'),
                pitchtools.NamedPitch("c'"),
                pitchtools.NamedPitch('a'),
                pitchtools.NamedPitch("e'"),
                pitchtools.NamedPitch('f'),
                pitchtools.NamedPitch('a'),
                pitchtools.NamedPitch("c'"),
                ]
            ),
        ),
    rhythm_maker=rhythmmakertools.NoteRhythmMaker(
        beam_specifier=rhythmmakertools.BeamSpecifier(
            beam_each_division=False,
            beam_divisions_together=False,
            ),
        tie_specifier=rhythmmakertools.TieSpecifier(
            tie_across_divisions=(True, True, False),
            ),
        ),
    )