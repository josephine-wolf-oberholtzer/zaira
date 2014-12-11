# -*- encoding: utf-8 -*-
import ide
import os
import pytest
import shutil
import zaira
from abjad.tools import systemtools


boilerplate_path = ide.idetools.Configuration().boilerplate_directory
boilerplate_path = os.path.join(boilerplate_path, '__illustrate_segment__.py')

segments_path = os.path.join(zaira.__path__[0], 'segments')

directory_names = os.listdir(segments_path)
directory_names = [_ for _ in directory_names if not _.startswith(('.', '_'))]

segment_paths = [os.path.join(segments_path, _) for _ in directory_names]
segment_paths = [_ for _ in segment_paths if os.path.isdir(_)]


@pytest.mark.parametrize('segment_path', segment_paths)
def test_zaira_segments_01(segment_path):
    local_boilerplate_path = os.path.join(
        segment_path,
        '__illustrate_segment__.py',
        )
    local_output_path = os.path.join(
        segment_path,
        'illustration.ly',
        )
    if os.path.exists(local_boilerplate_path):
        os.remove(local_boilerplate_path)
    with systemtools.FilesystemState(
        #keep=[local_output_path],
        remove=[local_boilerplate_path],
        ):
        shutil.copyfile(boilerplate_path, local_boilerplate_path)
        if os.path.exists(local_output_path):
            os.remove(local_output_path)
        assert os.path.exists(local_boilerplate_path)
        assert not os.path.exists(local_output_path)
        command = 'python {}'.format(local_boilerplate_path)
        exit_status = systemtools.IOManager.spawn_subprocess(command)
        assert exit_status == 0
        assert os.path.exists(local_output_path)