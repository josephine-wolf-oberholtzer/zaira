# -*- encoding: utf-8 -*-
import zaira


segment_index = 8
segment_maker = zaira.makers.ZairaSegmentMaker(
    rehearsal_mark='I',
    tempo=zaira.materials.tempi[0],
    )

segment_maker.set_duration_in_seconds(
    zaira.materials.proportions.get_segment_duration_in_seconds(
        segment_index,
        zaira.materials.total_duration_in_seconds,
        ),
    )