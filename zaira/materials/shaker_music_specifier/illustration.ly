% 2016-04-22 20:50

\version "2.19.15"
\language "english"

\include "/Users/joberholtzer/Development/consort/consort/stylesheets/stylesheet.ily"

\header {
    tagline = \markup {}
    title = #"Shaker Music Specifier"
}

\score {
    \context Score = "String Quartet Score" <<
        \tag #'time
        \context TimeSignatureContext = "Time Signature Context" {
            {
                \tempo 4=72
                \time 3/8
                s1 * 9/8
            }
            {
                \time 7/8
                s1 * 7/8
            }
            {
                \time 3/8
                s1 * 9/8
            }
        }
        \tag #'violin-1
        \context StringPerformerGroup = "Violin 1 Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    "Violin 1"
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    "Vln. 1"
                }
        } <<
            \context StringStaff = "Violin 1 Staff" {
                \context Voice = "Violin 1 Voice" {
                    \clef "treble"
                    {
                        % [Violin 1 Voice] Measure 1
                        {
                            \clef "percussion"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    shaker
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p \startTextSpan
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 2
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'4 \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 3
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 4
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'4. :32 \p
                            c'8 :64 \repeatTie
                        }
                        {
                            c'16 :128 \repeatTie
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 5
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        % [Violin 1 Voice] Measure 6
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        % [Violin 1 Voice] Measure 7
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'4 \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r8
                            \bar "|."
                        }
                    }
                }
            }
        >>
        \tag #'violin-2
        \context StringPerformerGroup = "Violin 2 Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    "Violin 2"
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    "Vln. 2"
                }
        } <<
            \context StringStaff = "Violin 2 Staff" {
                \context Voice = "Violin 2 Voice" {
                    \clef "treble"
                    {
                        % [Violin 2 Voice] Measure 1
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    shaker
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p \startTextSpan
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        % [Violin 2 Voice] Measure 2
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'8 \p
                        }
                        % [Violin 2 Voice] Measure 3
                        {
                            c'16 \repeatTie
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Violin 2 Voice] Measure 4
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r16
                            r4
                            r8
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'4 :32 \p
                        }
                        % [Violin 2 Voice] Measure 5
                        {
                            c'16 :128 \repeatTie
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        % [Violin 2 Voice] Measure 6
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'4. :32 \p
                        }
                        % [Violin 2 Voice] Measure 7
                        {
                            c'16 :128 \repeatTie
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "treble"
                        }
                    }
                    {
                        {
                            r16
                            r4
                            \bar "|."
                        }
                    }
                }
            }
        >>
        \tag #'viola
        \context StringPerformerGroup = "Viola Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    Viola
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    Va.
                }
        } <<
            \context StringStaff = "Viola Staff" {
                \context Voice = "Viola Voice" {
                    \clef "alto"
                    {
                        % [Viola Voice] Measure 1
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    shaker
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p \startTextSpan
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        % [Viola Voice] Measure 2
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'8 \p
                        }
                        {
                            c'16 \repeatTie
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        % [Viola Voice] Measure 3
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        % [Viola Voice] Measure 4
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'8 :64 \p
                            c'4 :32 \repeatTie
                        }
                        {
                            c'16 :128 \repeatTie
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        % [Viola Voice] Measure 5
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'4 :32 \p
                        }
                        % [Viola Voice] Measure 6
                        {
                            c'16 :128 \repeatTie
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "alto"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                        % [Viola Voice] Measure 7
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 3/8
                            \bar "|."
                        }
                    }
                }
            }
        >>
        \tag #'cello
        \context StringPerformerGroup = "Cello Performer Group" \with {
            instrumentName = \markup {
                \hcenter-in
                    #10
                    Cello
                }
            shortInstrumentName = \markup {
                \hcenter-in
                    #10
                    Vc.
                }
        } <<
            \context StringStaff = "Cello Staff" {
                \context Voice = "Cello Voice" {
                    \clef "bass"
                    {
                        % [Cello Voice] Measure 1
                        {
                            \clef "percussion"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    shaker
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p \startTextSpan
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "bass"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Cello Voice] Measure 2
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'4 \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "bass"
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        % [Cello Voice] Measure 3
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "bass"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        % [Cello Voice] Measure 4
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "bass"
                        }
                    }
                    {
                        {
                            r16
                            r4
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'4 :32 \p
                        }
                        {
                            c'16 :128 \repeatTie
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "bass"
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        % [Cello Voice] Measure 5
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "bass"
                        }
                    }
                    {
                        {
                            r16
                        }
                    }
                    {
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'4 \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            \clef "bass"
                        }
                    }
                    {
                        % [Cello Voice] Measure 6
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(0)
                            \startStaff
                            R1 * 3/8
                            \stopStaff
                            \startStaff
                        }
                    }
                    {
                        % [Cello Voice] Measure 7
                        {
                            \clef "percussion"
                            \override NoteHead #'no-ledgers = ##t
                            \override NoteHead #'style = #'cross
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-positions = #'(4 -4)
                            \startStaff
                            c'16 -\accent \laissezVibrer \p
                            \stopStaff
                            \startStaff
                            \revert NoteHead #'no-ledgers
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "bass"
                        }
                    }
                    {
                        {
                            r16
                            r4
                            \bar "|."
                        }
                    }
                }
            }
        >>
    >>
}