# -*- encoding: utf-8 -*-
from abjad import new
from abjad.tools import durationtools
from abjad.tools import indicatortools
from abjad.tools import mathtools
from abjad.tools import timespantools
import consort
import zaira


### SEGMENT MAKER #############################################################


segment_maker = zaira.makers.ZairaSegmentMaker(
    rehearsal_mark='E',
    tempo=indicatortools.Tempo((1, 4), 72),
    )

ratio = mathtools.NonreducedRatio(1, 8, 4)

segment_maker.set_duration_in_seconds(
    durationtools.Multiplier(sum(ratio), 91) *
    zaira.materials.total_duration_in_seconds,
    )

fanfare_duration = durationtools.Duration(3, 4)


### WINDS SETTINGS ############################################################


#segment_maker.add_setting(
#    timespan_maker=zaira.materials.dense_timespan_maker,
#    timespan_identifier=consort.makers.RatioPartsExpression(
#        parts=(1, 3, 5),
#        ratio=(1, 2, 1, 2, 1, 2, 1),
#        timespan=timespantools.Timespan(
#            start_offset=fanfare_duration,
#            ),
#        ),
#    clarinet=zaira.materials.wind_airtone_music_specifier,
#    flute=zaira.materials.wind_airtone_music_specifier,
#    oboe=zaira.materials.wind_airtone_music_specifier,
#    )


segment_maker.add_setting(
    timespan_maker=zaira.materials.dense_timespan_maker,
    timespan_identifier=consort.makers.RatioPartsExpression(
        parts=(0, 2, 4, 6),
        ratio=(1, 1, 3, 1, 1, 1, 2),
        timespan=timespantools.Timespan(
            start_offset=fanfare_duration,
            ),
        ),
    clarinet=zaira.materials.wind_keyclick_music_specifier,
    flute=zaira.materials.wind_keyclick_music_specifier,
    oboe=zaira.materials.wind_keyclick_music_specifier,
    )


segment_maker.add_setting(
    timespan_maker=zaira.materials.sparse_timespan_maker,
    clarinet=new(
        zaira.materials.wind_ramtongue_music_specifier,
        pitch_maker__register_specifier__center_pitch='D3',
        ),
    flute=zaira.materials.wind_ramtongue_music_specifier,
    oboe=new(
        zaira.materials.wind_ramtongue_music_specifier,
        pitch_maker__register_specifier__center_pitch='Bb3',
        ),
    )


### PERCUSSION SETTINGS #######################################################


segment_maker.add_setting(
    timespan_maker=zaira.materials.dense_timespan_maker,
    metals=None,
    )


segment_maker.add_setting(
    timespan_maker=zaira.materials.sparse_timespan_maker,
    metals=None,
    )


### PIANO SETTINGS ############################################################


segment_maker.add_setting(
    timespan_maker=zaira.materials.dense_timespan_maker,
    timespan_identifier=consort.makers.RatioPartsExpression(
        parts=(0, 2, 4, 6),
        ratio=(1, 2, 1, 2, 1, 2, 1),
        ),
    piano_rh=zaira.materials.piano_prepared_treble_music_specifier,
    piano_lh=zaira.materials.piano_prepared_bass_music_specifier,
    )


segment_maker.add_setting(
    timespan_maker=zaira.materials.sparse_timespan_maker,
    timespan_identifier=consort.makers.RatioPartsExpression(
        parts=(1,),
        ratio=ratio,
        ),
    piano_rh=new(
        zaira.materials.piano_clusters_music_specifier,
        pitch_maker__register_specifier__center_pitch="g''",
        ),
    piano_lh=new(
        zaira.materials.piano_clusters_music_specifier,
        pitch_maker__register_specifier__center_pitch="c,",
        ),
    )


segment_maker.add_setting(
    timespan_maker=zaira.materials.dense_timespan_maker,
    timespan_identifier=consort.makers.RatioPartsExpression(
        parts=(2,),
        ratio=ratio,
        ),
    piano_rh=new(
        zaira.materials.piano_clusters_music_specifier,
        attachment_maker=consort.makers.AttachmentMaker(
            attachment_expressions=(
                zaira.materials.erratic_dynamic_attachment_expression,
                ),
            ),
        pitch_maker__register_specifier__center_pitch="g",
        ),
    piano_lh=new(
        zaira.materials.piano_clusters_music_specifier,
        attachment_maker=consort.makers.AttachmentMaker(
            attachment_expressions=(
                zaira.materials.erratic_dynamic_attachment_expression,
                ),
            ),
        pitch_maker__register_specifier__center_pitch="c,,",
        ),
    )


segment_maker.add_setting(
    timespan_maker=new(
        zaira.materials.sparse_timespan_maker,
        fuse_groups=True,
        padding=durationtools.Duration(1, 4),
        reflect=True,
        ),
    timespan_identifier=consort.makers.RatioPartsExpression(
        parts=(0, 2, 4),
        ratio=(1, 2, 1, 2, 1),
        ),
    piano_rh=zaira.materials.piano_guero_music_specifier,
    piano_lh=new(
        zaira.materials.piano_guero_music_specifier,
        seed=1,
        ),
    )


### FANFARE SETTINGS ##########################################################


segment_maker.add_setting(
    timespan_maker=consort.makers.FloodedTimespanMaker(),
    timespan_identifier=timespantools.Timespan(
        stop_offset=fanfare_duration,
        ),
    piano_rh=new(
        zaira.materials.piano_fanfare_music_specifier,
        pitch_maker__register_specifier__center_pitch="g'",
        ),
    piano_lh=new(
        zaira.materials.piano_fanfare_music_specifier,
        pitch_maker__chord_expressions=
            zaira.materials.piano_fanfare_music_specifier
                .pitch_maker.chord_expressions[:-1],
        pitch_maker__pitch_classes="g c a f d f e b e",
        pitch_maker__register_specifier__center_pitch="g,,",
        ),
    drums=new(
        zaira.materials.percussion_fanfare_music_specifier,
        pitch_maker__pitches=zaira.makers.Percussion.KICK_DRUM,
        ),
    metals=new(
        zaira.materials.percussion_fanfare_music_specifier,
        pitch_maker__pitches=zaira.makers.Percussion.BRAKE_DRUM,
        ),
    )


### DEPENDENT MUSIC SETTINGS ##################################################


segment_maker.add_setting(
    timespan_maker=zaira.materials.pedals_timespan_maker,
    piano_pedals=zaira.materials.piano_pedals_music_specifier,
    )