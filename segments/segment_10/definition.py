# -*- encoding: utf-8 -*-
import zaira


segment_index = 9
segment_maker = zaira.makers.ZairaSegmentMaker(
    rehearsal_mark='J',
    tempo=zaira.materials.tempi[0],
    )

segment_maker.set_duration_in_seconds(
    zaira.materials.proportions.get_segment_duration_in_seconds(
        segment_index,
        zaira.materials.total_duration_in_seconds,
        ),
    )