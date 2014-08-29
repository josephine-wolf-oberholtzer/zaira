# -*- encoding: utf-8 -*-
from abjad import *
import consort
import zaira


staccato_selector = selectortools.Selector()
staccato_selector = staccato_selector.by_leaves()
staccato_selector = staccato_selector.by_logical_tie(
    pitched=True,
    )
staccato_selector = staccato_selector.shorter_than(
    duration=Duration(1, 16),
    or_equal_to=True,
    )


sustain_selector = selectortools.Selector()
sustain_selector = sustain_selector.by_leaves()
sustain_selector = sustain_selector.by_logical_tie(
    pitched=True,
    )
sustain_selector = sustain_selector.longer_than(
    duration=Duration(1, 16),
    )


piano_prepared_treble_music_specifier = consort.makers.MusicSpecifier(
    attachment_maker=consort.makers.AttachmentMaker(
        attachment_expressions=(
            zaira.materials.background_dynamic_attachment_expression,
            consort.makers.AttachmentExpression(
                attachments=consort.makers.ClefSpanner(
                    clef='treble^8',
                    ),
                selector=selectortools.Selector(),
                ),
            consort.makers.AttachmentExpression(
                attachments=consort.makers.ComplexTextSpanner(
                    markup=Markup('(prepared)'),
                    overrides={
                        'note_head__style': 'cross',
                        },
                    ),
                selector=selectortools.Selector(),
                ),
            consort.makers.AttachmentExpression(
                attachments=indicatortools.Articulation('.'),
                selector=staccato_selector,
                ),
            consort.makers.AttachmentExpression(
                attachments=spannertools.ComplexTrillSpanner(
                    interval='m2',
                    ),
                selector=sustain_selector,
                ),
            ),
        ),
    pitch_maker=consort.makers.AbsolutePitchMaker(
        pitches=pitchtools.PitchSegment(
            'C7 B7 D7 C#7 E7 D#7 F7 G7 A#7 F#7 A7',
            ),
        ),
    rhythm_maker=zaira.materials.undergrowth_rhythm_maker,
    )