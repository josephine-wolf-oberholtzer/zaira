# -*- encoding: utf-8 -*-
from abjad import *
import consort


drum_agitation_music_specifier = consort.makers.MusicSpecifier(
    attachment_maker=consort.makers.AttachmentMaker(
        attachment_expressions=(
            consort.makers.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        consort.makers.DynamicExpression(
                            hairpin_start_token='p',
                            hairpin_stop_token='f',
                            minimum_duration=durationtools.Duration(1, 4),
                            ),
                        consort.makers.DynamicExpression(
                            hairpin_start_token='f',
                            hairpin_stop_token='p',
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
            consort.makers.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        spannertools.StemTremoloSpanner(),
                        ]
                    ),
                selector=selectortools.Selector(
                    callbacks=(
                        selectortools.LogicalTieSelectorCallback(
                            flatten=True,
                            pitched=True,
                            trivial=True,
                            only_with_head=False,
                            only_with_tail=False,
                            ),
                        selectortools.DurationSelectorCallback(
                            duration=durationtools.Duration(1, 16),
                            parts=(
                                More,
                                ),
                            ),
                        ),
                    ),
                ),
            consort.makers.AttachmentExpression(
                attachments=datastructuretools.TypedList(
                    [
                        indicatortools.Articulation('accent'),
                        ]
                    ),
                selector=selectortools.Selector(
                    callbacks=(
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
    pitch_maker=consort.makers.AbsolutePitchMaker(
        allow_repetition=False,
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
            prefix_talea=(1, 1, 2, 4, 4, 1, 2, 1, 6, 1, 1, 1, 1),
            prefix_counts=(2, 2, 4, 3, 4, 5, 4, 2, 1),
            suffix_talea=(1,),
            suffix_counts=(0,),
            talea_denominator=16,
            fill_with_notes=False,
            ),
        extra_counts_per_division=(0, 1, 0, 1, 2),
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