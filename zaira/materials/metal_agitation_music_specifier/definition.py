# -*- encoding: utf-8 -*-
from abjad.tools import indicatortools
from abjad.tools import pitchtools
from abjad.tools import selectortools
from abjad.tools.topleveltools import new
import consort
import zaira


metal_agitation_music_specifier = consort.MusicSpecifier(
    attachment_handler=consort.AttachmentHandler(
        dynamic_expression=zaira.materials.foreground_dynamic_attachment_expression,
        accent=consort.AttachmentExpression(
            attachments=indicatortools.Articulation('accent'),
            selector=selectortools.select_first_logical_tie_in_pitched_runs()[0],
            ),
        staccato=consort.AttachmentExpression(
            attachments=indicatortools.Articulation('staccato'),
            selector=selectortools.select_all_but_first_logical_tie_in_pitched_runs()[0],
            ),
        ),
    pitch_handler=consort.AbsolutePitchHandler(
        pitch_specifier=pitchtools.PitchSegment(
            items=(
                zaira.tools.Percussion.HIGH_CYMBAL,
                zaira.tools.Percussion.LOW_CYMBAL,
                zaira.tools.Percussion.MIDDLE_CYMBAL,
                zaira.tools.Percussion.HIGH_CYMBAL,
                zaira.tools.Percussion.MIDDLE_CYMBAL,
                zaira.tools.Percussion.LOW_CYMBAL,
                zaira.tools.Percussion.HIGH_CYMBAL,
                zaira.tools.Percussion.TAM_TAM,
                zaira.tools.Percussion.MIDDLE_CYMBAL,
                zaira.tools.Percussion.LOW_CYMBAL,
                zaira.tools.Percussion.HIGH_CYMBAL,
                zaira.tools.Percussion.TAM_TAM,
                zaira.tools.Percussion.LOW_CYMBAL,
                zaira.tools.Percussion.MIDDLE_CYMBAL,
                ),
            ),
        ),
    rhythm_maker=new(
        zaira.materials.stuttering_rhythm_maker,
        extra_counts_per_division=(2, 1, 2, 1, 0, 2, 1, 0),
        ),
    )