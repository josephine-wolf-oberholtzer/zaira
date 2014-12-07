# -*- encoding: utf-8 -*-
from abjad import *
import consort


drum_tranquilo_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        dynamic_expression=consort.AttachmentExpression(
            attachments=datastructuretools.TypedList(
                [
                    consort.DynamicExpression(
                        hairpin_start_token='ppp',
                        minimum_duration=durationtools.Duration(1, 4),
                        ),
                    consort.DynamicExpression(
                        hairpin_start_token='p',
                        minimum_duration=durationtools.Duration(1, 4),
                        ),
                    consort.DynamicExpression(
                        hairpin_start_token='pp',
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
                    ),
                ),
            ),
        laissez_vibrer=consort.AttachmentExpression(
            attachments=datastructuretools.TypedList(
                [
                    (
                        indicatortools.LaissezVibrer(),
                        markuptools.Markup(
                            contents=(
                                markuptools.MarkupCommand(
                                    'override',
                                    schemetools.SchemePair('padding', 0.5),
                                    markuptools.MarkupCommand(
                                        'parenthesize',
                                        markuptools.MarkupCommand(
                                            'smaller',
                                            markuptools.MarkupCommand(
                                                'caps',
                                                'L.V.'
                                                )
                                            )
                                        )
                                    ),
                                ),
                            direction=Up,
                            ),
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
                        item=-1,
                        apply_to_each=True,
                        ),
                    ),
                ),
            ),
        ),
    pitch_handler=consort.AbsolutePitchHandler(
        forbid_repetitions=None,
        pitches=datastructuretools.CyclicTuple(
            [
                pitchtools.NamedPitch("f'"),
                pitchtools.NamedPitch("d'"),
                pitchtools.NamedPitch('g'),
                pitchtools.NamedPitch("f'"),
                pitchtools.NamedPitch('g'),
                pitchtools.NamedPitch("d'"),
                pitchtools.NamedPitch("f'"),
                pitchtools.NamedPitch('g'),
                pitchtools.NamedPitch("d'"),
                ]
            ),
        ),
    rhythm_maker=rhythmmakertools.IncisedRhythmMaker(
        incise_specifier=rhythmmakertools.InciseSpecifier(
            prefix_talea=(1,),
            prefix_counts=(1,),
            suffix_talea=(1,),
            suffix_counts=(0,),
            talea_denominator=16,
            fill_with_notes=False,
            ),
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