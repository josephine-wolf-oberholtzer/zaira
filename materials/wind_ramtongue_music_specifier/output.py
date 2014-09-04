# -*- encoding: utf-8 -*-
from abjad import *
import consort


wind_ramtongue_music_specifier = consort.makers.MusicSpecifier(
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
                        spannertools.Spanner(
                            overrides={
                                'note_head__stencil': schemetools.Scheme(
                                    'ly:text-interface::print'
                                    ),
                                'note_head__text': markuptools.Markup(
                                    contents=(
                                        markuptools.MarkupCommand(
                                            'translate',
                                            schemetools.SchemePair(0, -0.9),
                                            markuptools.MarkupCommand(
                                                'override',
                                                schemetools.SchemePair('thickness', 0.5),
                                                markuptools.MarkupCommand(
                                                    'scale',
                                                    schemetools.SchemePair(0.667, 0.667),
                                                    markuptools.MarkupCommand(
                                                        'rotate',
                                                        180,
                                                        markuptools.MarkupCommand(
                                                            'triangle',
                                                            False
                                                            )
                                                        )
                                                    )
                                                )
                                            ),
                                        ),
                                    ),
                                },
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
                        ),
                    ),
                ),
            consort.makers.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        (
                            indicatortools.Articulation('accent'),
                            indicatortools.Articulation('staccato'),
                            ),
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
            ),
        ),
    pitch_maker=consort.makers.PitchClassPitchMaker(
        allow_repetition=False,
        pitch_classes=datastructuretools.CyclicTuple(
            [
                pitchtools.NamedPitch('a'),
                pitchtools.NamedPitch('c'),
                pitchtools.NamedPitch('b'),
                pitchtools.NamedPitch('d'),
                pitchtools.NamedPitch('b'),
                pitchtools.NamedPitch('f'),
                pitchtools.NamedPitch('gs'),
                pitchtools.NamedPitch('e'),
                pitchtools.NamedPitch('d'),
                pitchtools.NamedPitch('f'),
                pitchtools.NamedPitch('cs'),
                ]
            ),
        register_specifier=consort.makers.RegisterSpecifier(),
        register_spread=0,
        ),
    rhythm_maker=rhythmmakertools.IncisedRhythmMaker(
        incise_specifier=rhythmmakertools.InciseSpecifier(
            prefix_talea=(1, 1, 1, 2, 1, 2),
            prefix_counts=(2, 2, 1, 2, 3, 2, 2, 2, 1),
            suffix_talea=(1,),
            suffix_counts=(0,),
            talea_denominator=16,
            fill_with_notes=False,
            ),
        extra_counts_per_division=(0, 0, 0, 1, 0, 1),
        beam_specifier=rhythmmakertools.BeamSpecifier(
            beam_each_division=False,
            beam_divisions_together=False,
            ),
        tuplet_spelling_specifier=rhythmmakertools.TupletSpellingSpecifier(
            avoid_dots=True,
            is_diminution=True,
            simplify_tuplets=True,
            ),
        ),
    )