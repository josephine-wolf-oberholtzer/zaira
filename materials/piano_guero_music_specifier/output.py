# -*- encoding: utf-8 -*-
from abjad import *
import consort


piano_guero_music_specifier = consort.makers.MusicSpecifier(
    attachment_handler=consort.makers.AttachmentHandler(
        direction_markup=consort.makers.AttachmentExpression(
            attachments=datastructuretools.TypedList(
                [
                    markuptools.Markup(
                        contents=(
                            markuptools.MarkupCommand(
                                'box',
                                markuptools.MarkupCommand(
                                    'pad-around',
                                    0.5,
                                    markuptools.MarkupCommand(
                                        'italic',
                                        markuptools.MarkupCommand(
                                            'concat',
                                            [
                                                markuptools.MarkupCommand(
                                                    'vstrut'
                                                    ),
                                                'slow',
                                                ]
                                            )
                                        )
                                    )
                                ),
                            ),
                        direction=Up,
                        ),
                    markuptools.Markup(
                        contents=(
                            markuptools.MarkupCommand(
                                'box',
                                markuptools.MarkupCommand(
                                    'pad-around',
                                    0.5,
                                    markuptools.MarkupCommand(
                                        'italic',
                                        markuptools.MarkupCommand(
                                            'concat',
                                            [
                                                markuptools.MarkupCommand(
                                                    'vstrut'
                                                    ),
                                                'slow',
                                                ]
                                            )
                                        )
                                    )
                                ),
                            ),
                        direction=Up,
                        ),
                    markuptools.Markup(
                        contents=(
                            markuptools.MarkupCommand(
                                'box',
                                markuptools.MarkupCommand(
                                    'pad-around',
                                    0.5,
                                    markuptools.MarkupCommand(
                                        'italic',
                                        markuptools.MarkupCommand(
                                            'concat',
                                            [
                                                markuptools.MarkupCommand(
                                                    'vstrut'
                                                    ),
                                                'fast',
                                                ]
                                            )
                                        )
                                    )
                                ),
                            ),
                        direction=Up,
                        ),
                    markuptools.Markup(
                        contents=(
                            markuptools.MarkupCommand(
                                'box',
                                markuptools.MarkupCommand(
                                    'pad-around',
                                    0.5,
                                    markuptools.MarkupCommand(
                                        'italic',
                                        markuptools.MarkupCommand(
                                            'concat',
                                            [
                                                markuptools.MarkupCommand(
                                                    'vstrut'
                                                    ),
                                                'slow',
                                                ]
                                            )
                                        )
                                    )
                                ),
                            ),
                        direction=Up,
                        ),
                    markuptools.Markup(
                        contents=(
                            markuptools.MarkupCommand(
                                'box',
                                markuptools.MarkupCommand(
                                    'pad-around',
                                    0.5,
                                    markuptools.MarkupCommand(
                                        'italic',
                                        markuptools.MarkupCommand(
                                            'concat',
                                            [
                                                markuptools.MarkupCommand(
                                                    'vstrut'
                                                    ),
                                                'fast',
                                                ]
                                            )
                                        )
                                    )
                                ),
                            ),
                        direction=Up,
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
        dynamic_expression=consort.makers.AttachmentExpression(
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
        percussion_staff=consort.makers.AttachmentExpression(
            attachments=datastructuretools.TypedList(
                [
                    (
                        consort.makers.ClefSpanner(
                            clef=indicatortools.Clef(
                                name='percussion',
                                ),
                            ),
                        spannertools.StaffLinesSpanner(
                            lines=(4, -4),
                            overrides={
                                'note_head__no_ledgers': True,
                                'note_head__style': 'cross',
                                },
                            ),
                        ),
                    ]
                ),
            selector=selectortools.Selector(),
            ),
        text_spanner=consort.makers.AttachmentExpression(
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
                                            markuptools.MarkupCommand(
                                                'concat',
                                                [
                                                    markuptools.MarkupCommand(
                                                        'vstrut'
                                                        ),
                                                    'guero',
                                                    ]
                                                )
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
        ),
    pitch_handler=consort.makers.AbsolutePitchHandler(
        forbid_repetitions=None,
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