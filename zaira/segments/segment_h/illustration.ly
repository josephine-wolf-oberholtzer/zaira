\version "2.19.15"
\language "english"

#(ly:set-option 'relative-includes #t)

\include "/Users/josiah/Documents/Scores/zaira/zaira/stylesheets/parts-stylesheet.ily"
\include "/Users/josiah/Documents/Scores/zaira/zaira/stylesheets/stylesheet.ily"

\score {
    \context Score = "Zaira Score" <<
        \tag #'time
        \context TimeSignatureContext = "TimeSignatureContext" {
            {
                \time 3/4
                \tempo 4=72
                \mark \markup {
                    \concat
                        {
                            \override
                                #'(box-padding . 0.5)
                                \box
                                    \caps
                                        H
                            " "
                            \fontsize
                                #-3
                                " "
                        }
                    }
                s1 * 3/4
            }
            {
                \time 4/4
                s1 * 1
            }
            {
                \time 5/8
                s1 * 5/8
            }
            {
                \time 3/4
                s1 * 3/4
            }
            {
                \time 5/16
                s1 * 5/16
            }
            {
                \time 4/4
                s1 * 1
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                s1 * 1/2
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                s1 * 3/8
            }
            {
                \time 5/16
                s1 * 5/16
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                \time 2/4
                s1 * 1/2
            }
            {
                \time 3/8
                s1 * 3/8
            }
            {
                s1 * 3/8
            }
        }
        \context EnsembleGroup = "Wind Section Staff Group" <<
            \tag #'flute
            \context PerformerGroup = "Flute Performer Group" \with {
                instrumentName = \markup { Flute }
                shortInstrumentName = \markup { Fl. }
            } <<
                \context FluteStaff = "Flute Staff" {
                    \context Voice = "Flute Voice" {
                        \clef "treble"
                        {
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/4
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1
                                \stopStaff
                                \startStaff
                            }
                        }
                        {
                            \times 2/3 {
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
                                                        keyclick
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
                                r8 \startTextSpan
                                g'16 -\staccato \ppp
                                r16
                                r16
                                c'16 -\staccato \p
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
                                r4.
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 3/4 {
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
                                r8. \startTextSpan
                                c'16 -\staccato \ppp
                                r8
                                c'16 -\staccato \p
                                r16
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
                                r4
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slap
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'stencil = #ly:text-interface::print
                                \override NoteHead #'text = \markup {
                                    \translate
                                        #'(0 . -0.9)
                                        \override
                                            #'(thickness . 0.5)
                                            \scale
                                                #'(0.667 . 0.667)
                                                \rotate
                                                    #180
                                                    \triangle
                                                        ##f
                                    }
                                a'16 -\accent -\staccato \mf \startTextSpan [
                                \set stemLeftBeamCount = 2
                                c'16 -\accent -\staccato ]
                                \revert NoteHead #'stencil
                                \revert NoteHead #'text
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r8.
                            }
                            {
                                r4
                                r8.
                            }
                        }
                        {
                            \times 8/9 {
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
                                c'16 -\staccato \pp \startTextSpan
                                r8
                                c'16 -\staccato \ppp
                                r8
                                c'8 :64 -\staccato \p
                                r16
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
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                            {
                                r8
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slap
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'stencil = #ly:text-interface::print
                                \override NoteHead #'text = \markup {
                                    \translate
                                        #'(0 . -0.9)
                                        \override
                                            #'(thickness . 0.5)
                                            \scale
                                                #'(0.667 . 0.667)
                                                \rotate
                                                    #180
                                                    \triangle
                                                        ##f
                                    }
                                b'16 -\accent -\staccato \mp \startTextSpan [
                                \set stemLeftBeamCount = 2
                                d'16 -\accent -\staccato ]
                                \revert NoteHead #'stencil
                                \revert NoteHead #'text
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r4
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 3/4 {
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
                                                        keyclick
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
                                r8. \startTextSpan
                                g'16 -\staccato \pp
                                r8
                                c'16 -\staccato \ppp
                                r16
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
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/16
                                \stopStaff
                                \startStaff
                            }
                            {
                                r8
                                r16
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 3/4 {
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
                                c'16 -\staccato \p \startTextSpan
                                r16
                                r16
                                c'16 -\staccato \pp [
                            }
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 3/4 {
                                c'16 -\staccato ]
                                r8.
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
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \bar "||"
                                \stopStaff
                                \startStaff
                            }
                        }
                    }
                }
            >>
            \tag #'oboe
            \context PerformerGroup = "Oboe Performer Group" \with {
                instrumentName = \markup { Oboe }
                shortInstrumentName = \markup { Ob. }
            } <<
                \context OboeStaff = "Oboe Staff" {
                    \context Voice = "Oboe Voice" {
                        \clef "treble"
                        {
                            {
                                r4
                                r8
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 5/6 {
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
                                                        keyclick
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
                                c'16 -\staccato \p \startTextSpan
                                r16
                                r16
                                g'16 -\staccato \pp
                                r8
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
                            }
                            {
                                r2
                                r8.
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
                                                        keyclick
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
                                f16 -\staccato \ppp \startTextSpan
                                r8
                                g'16 -\staccato \p
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
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        airtone
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'style = #'slash
                                a'8 \ppp \startTextSpan
                                \revert NoteHead #'style
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slap
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'stencil = #ly:text-interface::print
                                \override NoteHead #'text = \markup {
                                    \translate
                                        #'(0 . -0.9)
                                        \override
                                            #'(thickness . 0.5)
                                            \scale
                                                #'(0.667 . 0.667)
                                                \rotate
                                                    #180
                                                    \triangle
                                                        ##f
                                    }
                                a'16 -\accent -\staccato \mf \startTextSpan [
                                \set stemLeftBeamCount = 2
                                c'16 -\accent -\staccato ]
                                \revert NoteHead #'stencil
                                \revert NoteHead #'text
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r4.
                            }
                            {
                                r8.
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 6/7 {
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
                                                        keyclick
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
                                f16 -\staccato \pp \startTextSpan
                                r8
                                c'8 :64 -\staccato \ppp
                                r8
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
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slap
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'stencil = #ly:text-interface::print
                                \override NoteHead #'text = \markup {
                                    \translate
                                        #'(0 . -0.9)
                                        \override
                                            #'(thickness . 0.5)
                                            \scale
                                                #'(0.667 . 0.667)
                                                \rotate
                                                    #180
                                                    \triangle
                                                        ##f
                                    }
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                b16 -\accent -\staccato \mp \startTextSpan [
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                d'16 -\accent -\staccato ]
                                \revert NoteHead #'stencil
                                \revert NoteHead #'text
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r16
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slap
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'stencil = #ly:text-interface::print
                                \override NoteHead #'text = \markup {
                                    \translate
                                        #'(0 . -0.9)
                                        \override
                                            #'(thickness . 0.5)
                                            \scale
                                                #'(0.667 . 0.667)
                                                \rotate
                                                    #180
                                                    \triangle
                                                        ##f
                                    }
                                b8 -\accent -\staccato \mf \startTextSpan
                                \revert NoteHead #'stencil
                                \revert NoteHead #'text
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r8.
                            }
                            {
                                r2
                                r16
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        airtone
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'style = #'slash
                                c'8. \pp \startTextSpan
                                \revert NoteHead #'style
                                <> \stopTextSpan
                            }
                        }
                        {
                            \times 4/5 {
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
                                                        keyclick
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
                                r8 \startTextSpan
                                f8 :64 -\staccato \p
                                r16
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
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                r8
                                r16
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 3/4 {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slap
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'stencil = #ly:text-interface::print
                                \override NoteHead #'text = \markup {
                                    \translate
                                        #'(0 . -0.9)
                                        \override
                                            #'(thickness . 0.5)
                                            \scale
                                                #'(0.667 . 0.667)
                                                \rotate
                                                    #180
                                                    \triangle
                                                        ##f
                                    }
                                f'8 -\accent -\staccato \mp \startTextSpan [
                                af'16 -\accent -\staccato ]
                                \revert NoteHead #'stencil
                                \revert NoteHead #'text
                                r16
                            }
                            {
                                \override NoteHead #'stencil = #ly:text-interface::print
                                \override NoteHead #'text = \markup {
                                    \translate
                                        #'(0 . -0.9)
                                        \override
                                            #'(thickness . 0.5)
                                            \scale
                                                #'(0.667 . 0.667)
                                                \rotate
                                                    #180
                                                    \triangle
                                                        ##f
                                    }
                                e'8 -\accent -\staccato \mf
                                \revert NoteHead #'stencil
                                \revert NoteHead #'text
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        airtone
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'style = #'slash
                                b8. \p ~ \startTextSpan
                            }
                            {
                                b4 ~
                                \set stemLeftBeamCount = 2
                                b16
                                \revert NoteHead #'style
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r16
                            }
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
                                                        keyclick
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
                                f8 :64 \ppp \startTextSpan
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
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \bar "||"
                                \stopStaff
                                \startStaff
                            }
                        }
                    }
                }
            >>
            \tag #'clarinet-in-b-flat
            \context PerformerGroup = "Clarinet In B-Flat Performer Group" \with {
                instrumentName = \markup { Clarinet in B-flat }
                shortInstrumentName = \markup { Cl. in B-flat }
            } <<
                \context ClarinetInBFlatStaff = "Clarinet In B-Flat Staff" {
                    \context Voice = "Clarinet In B-Flat Voice" {
                        \clef "treble"
                        {
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/4
                                \stopStaff
                                \startStaff
                            }
                        }
                        {
                            \times 4/5 {
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
                                r8 \startTextSpan
                                c'8 :64 -\staccato \ppp
                                r16
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
                                r2.
                            }
                            {
                                r16
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
                                c'8 :64 \pp \startTextSpan
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
                                r4.
                            }
                            {
                                r2
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slap
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'stencil = #ly:text-interface::print
                                \override NoteHead #'text = \markup {
                                    \translate
                                        #'(0 . -0.9)
                                        \override
                                            #'(thickness . 0.5)
                                            \scale
                                                #'(0.667 . 0.667)
                                                \rotate
                                                    #180
                                                    \triangle
                                                        ##f
                                    }
                                a16 -\accent -\staccato \mf \startTextSpan [
                                \set stemLeftBeamCount = 2
                                c'16 -\accent -\staccato ]
                                \revert NoteHead #'stencil
                                \revert NoteHead #'text
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r8
                            }
                            {
                                r8.
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        airtone
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'style = #'slash
                                a8 \ppp \startTextSpan
                                \revert NoteHead #'style
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r2
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
                                c'8 :64 \p ~ \startTextSpan [
                                \set stemLeftBeamCount = 1
                                c'8 :64 ]
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
                            }
                            {
                                r4
                                r16
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slap
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'stencil = #ly:text-interface::print
                                \override NoteHead #'text = \markup {
                                    \translate
                                        #'(0 . -0.9)
                                        \override
                                            #'(thickness . 0.5)
                                            \scale
                                                #'(0.667 . 0.667)
                                                \rotate
                                                    #180
                                                    \triangle
                                                        ##f
                                    }
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                b16 -\accent -\staccato \mp \startTextSpan [
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                d16 -\accent -\staccato ]
                                \revert NoteHead #'stencil
                                \revert NoteHead #'text
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r16
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 5/7 {
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
                                c'8. :64 \ppp ~ \startTextSpan [
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                c'16 :128
                                c'16 -\staccato ]
                                r8
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
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/16
                                \stopStaff
                                \startStaff
                            }
                            {
                                r8
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        airtone
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \override NoteHead #'style = #'slash
                                c'4 \pp \startTextSpan
                                \revert NoteHead #'style
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r8
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 3/4 {
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
                                                        keyclick
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
                                c'4 :32 \pp \startTextSpan
                                g'16 -\staccato
                                r8.
                            }
                            \times 2/3 {
                                c'16 -\staccato \ppp
                                r8
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
                                r4
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \bar "||"
                                \stopStaff
                                \startStaff
                            }
                        }
                    }
                }
            >>
        >>
        \tag #'percussion
        \context EnsembleGroup = "Percussion Section Staff Group" <<
            \context PerformerGroup = "Metals Performer Group" \with {
                instrumentName = \markup { Metals }
                shortInstrumentName = \markup { Metals }
            } <<
                \context MetalsStaff = "Metals Staff" {
                    \context Voice = "Metals Voice" {
                        \clef "percussion"
                        {
                            {
                                g'16 -\accent \fff [
                                \set stemLeftBeamCount = 2
                                g'16 -\accent ]
                            }
                        }
                        {
                            {
                                r8
                                r2
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/4
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/16
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/16
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \bar "||"
                                \stopStaff
                                \startStaff
                            }
                        }
                    }
                }
            >>
            \context PerformerGroup = "Woods Performer Group" \with {
                instrumentName = \markup { Woods }
                shortInstrumentName = \markup { Woods }
            } <<
                \context WoodsStaff = "Woods Staff" {
                    \context Voice = "Woods Voice" {
                        \clef "percussion"
                        {
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/4
                                \stopStaff
                                \startStaff
                            }
                        }
                        {
                            \times 2/3 {
                                r8
                                a16 -\staccato \mf
                                r16
                                r16
                                a16 -\staccato \mp
                            }
                            \times 4/5 {
                                r8
                                a8 :64 -\staccato \mf
                                r16
                            }
                        }
                        {
                            {
                                r2
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                r8
                            }
                        }
                        {
                            \times 2/3 {
                                r8
                                r16
                                a16 -\staccato \mp
                                r8
                            }
                        }
                        {
                            {
                                r8
                                r4
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/16
                                \stopStaff
                                \startStaff
                            }
                            {
                                r8
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 6/7 {
                                a16 -\staccato \mf
                                r8
                                a16 -\staccato \mp
                                r16
                                r16
                                a16 -\staccato \mf [
                            }
                            {
                                a16 -\staccato ]
                                r8.
                                r16
                                a8. :64 \mp
                            }
                        }
                        {
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 3/4 {
                                a16 -\staccato \mp
                                r16
                                r16
                                a16 -\staccato \mf
                            }
                        }
                        {
                            {
                                r8
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \bar "||"
                                \stopStaff
                                \startStaff
                            }
                        }
                    }
                }
            >>
            \context PerformerGroup = "Drums Performer Group" \with {
                instrumentName = \markup { Drums }
                shortInstrumentName = \markup { Drums }
            } <<
                \context DrumsStaff = "Drums Staff" {
                    \context Voice = "Drums Voice" {
                        \clef "percussion"
                        {
                            {
                                b16 -\accent \fff [
                                \set stemLeftBeamCount = 2
                                b16 -\accent ]
                            }
                        }
                        {
                            {
                                r8
                                r2
                            }
                            {
                                r4
                                r8.
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        brush
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                g16 :128 \mf ~ \startTextSpan
                                g2 :32
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                r16
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        brush
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                g8. \mp ~ \startTextSpan [
                                \set stemLeftBeamCount = 1
                                g8. ]
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r16
                                r4
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/16
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1
                                \stopStaff
                                \startStaff
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        brush
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                g2 :32 \mf ~ \startTextSpan
                            }
                            {
                                g4 :32 ~
                                \set stemLeftBeamCount = 2
                                g16 :128
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r8.
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                r8
                                r16
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        brush
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                g16 \mp ~ \startTextSpan [
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                g8 ~
                            }
                            {
                                \set stemLeftBeamCount = 1
                                g8. ]
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r8
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                            {
                                r4
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        brush
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                g8 :64 \mf ~ \startTextSpan [
                            }
                            {
                                \set stemLeftBeamCount = 1
                                g8 :64 ]
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r4
                                \bar "||"
                            }
                        }
                    }
                }
            >>
        >>
        \tag #'piano
        \context PianoStaff = "Piano Performer Group" \with {
            instrumentName = \markup { Piano }
            shortInstrumentName = \markup { Pf. }
        } <<
            \context PianoUpperStaff = "Piano Upper Staff" {
                \context Voice = "Piano Upper Voice" {
                    \clef "treble"
                    {
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <g'' b'' d''' f'''>16 -\accent \fff [
                                ^ \markup {
                                    \center-align
                                        \natural
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            <d' f' a' c'' e''>16 -\accent ]
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                        }
                    }
                    {
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <g' b' d'' f''>16 [ \< \p
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            <d' f' a' c''>16 ] \f
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                        }
                    }
                    {
                        {
                            r4
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
                                                    guero
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
                            c'8 \mf ~ \startTextSpan [
                                ^ \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slow
                                                    }
                                    }
                        }
                        {
                            \set stemLeftBeamCount = 1
                            c'8 ]
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
                            r4
                            r8
                        }
                    }
                    {
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \override Hairpin #'circled-tip = ##t
                            <a' c'' e'' g'' b''>16 [ \<
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            <e' g' b' d''>16 ] \ff
                                ^ \markup {
                                    \center-align
                                        \natural
                                    }
                            \revert Hairpin #'circled-tip
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <g' b' d'' f''>8 \mf
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                        }
                    }
                    {
                        {
                            r2
                        }
                        {
                            r4
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble^15"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    prepared
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'style = #'cross
                            \pitchedTrill
                            c''''8 \ppp \startTextSpan \startTrillSpan df''''
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "treble"
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r4
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "treble^15"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    prepared
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'style = #'cross
                            \pitchedTrill
                            b''''8. \pp ~ \startTextSpan [ \startTrillSpan c'''''
                        }
                        {
                            \set stemLeftBeamCount = 1
                            b''''8 ]
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "treble"
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r8
                            r4
                            r16
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
                                                    guero
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
                            c'8. \mp ~ \startTextSpan [
                                ^ \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        fast
                                                    }
                                    }
                            \set stemLeftBeamCount = 2
                            c'16 ]
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
                            r8.
                        }
                        {
                            r16
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 3/4 {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <c'' e'' g'' b'' d'''>8 [ \> \f
                                ^ \markup {
                                    \center-align
                                        \flat
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <a' c'' e'' g'' b''>16 ] \p
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            r16
                        }
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \override Hairpin #'circled-tip = ##t
                            <e' g' b' d''>8 [ \> \mf
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            <g' b' d'' f''>16
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 2
                            <c'' e'' g'' b'' d'''>16
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                        }
                        \times 2/3 {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            <b d' f' a'>16
                                ^ \markup {
                                    \center-align
                                        \natural
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <e' g' b' d''>8
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                        }
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            <f' a' c'' e'' g''>16
                                ^ \markup {
                                    \center-align
                                        \flat
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 1
                            <c'' e'' g'' b'' d'''>8 ] \!
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \revert Hairpin #'circled-tip
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            \clef "treble^15"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    prepared
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'style = #'cross
                            \pitchedTrill
                            d''''8 \p \startTextSpan \startTrillSpan ef''''
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "treble"
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r32
                        }
                    }
                    {
                        {
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 1
                            g'''32 \ppp [ (
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 3
                            e'''32
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 3
                            f'''32
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 3
                            d'''32
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 2
                            af'''32
                            \set stemLeftBeamCount = 2
                            b''16 ] )
                        }
                    }
                    {
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-count = 1
                            \startStaff
                            R1 * 3/8
                            \stopStaff
                            \startStaff
                        }
                    }
                    {
                        {
                            \clef "treble^15"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    prepared
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'style = #'cross
                            \pitchedTrill
                            cs''''8 \ppp \startTextSpan \startTrillSpan d''''
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "treble"
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            <b'' d''' f''' a'''>16 [ \< \p
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <d''' f''' a''' c''''>8
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                        }
                        \times 2/3 {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            <f'' a'' c''' e''' g'''>16
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <d'' f'' a'' c'''>16 ] \f
                                ^ \markup {
                                    \center-align
                                        \natural
                                    }
                            r16
                        }
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <b'' d''' f''' a'''>8 [ \> \f
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            <d'' f'' a'' c''' e'''>16 ] \p
                                ^ \markup {
                                    \center-align
                                        \flat
                                    }
                        }
                    }
                    {
                        {
                            r16
                        }
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-count = 1
                            \startStaff
                            R1 * 1/2
                            \stopStaff
                            \startStaff
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
                                                    guero
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
                            c'4 \mf \startTextSpan
                                ^ \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slow
                                                    }
                                    }
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
                        }
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-count = 1
                            \startStaff
                            R1 * 3/8
                            \bar "||"
                            \stopStaff
                            \startStaff
                        }
                    }
                }
            }
            \context Dynamics = "Piano Dynamics" {
                {
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 3/4
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 1
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 5/8
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 3/4
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 5/16
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 1
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 1/2
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 1/2
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 3/8
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 3/8
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 5/16
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 3/8
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 1/2
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 3/8
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 3/8
                        %%% \bar "||" %%%
                        \stopStaff
                        \startStaff
                    }
                }
            }
            \context PianoLowerStaff = "Piano Lower Staff" {
                \context Voice = "Piano Lower Voice" {
                    \clef "bass"
                    {
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <d, f, a, c>16 -\accent \fff [
                                ^ \markup {
                                    \center-align
                                        \natural
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            <a,, c, e, g, b,>16 -\accent ]
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                        }
                    }
                    {
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
                                                    guero
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
                            c'4 \mp ~ \startTextSpan
                                ^ \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slow
                                                    }
                                    }
                            \set stemLeftBeamCount = 1
                            c'8
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
                            r8
                        }
                        {
                            r4
                            r16.
                        }
                    }
                    {
                        {
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 1
                            g32 \ppp [ (
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 3
                            e,32
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 3
                            f,32
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 3
                            d,32
                            \set stemLeftBeamCount = 3
                            af,32 ] )
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \tweak #'text #tuplet-number::calc-fraction-text
                        \times 6/7 {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <d f a c'>8 \f
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            r16
                            r4
                        }
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \override Hairpin #'circled-tip = ##t
                            <a, c e g b>16 [ \> \mf
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            <e, g, b, d>16 ] \!
                                ^ \markup {
                                    \center-align
                                        \natural
                                    }
                            \revert Hairpin #'circled-tip
                        }
                    }
                    {
                        {
                            r4
                        }
                    }
                    {
                        {
                            \clef "bass_15"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    prepared
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'style = #'cross
                            \pitchedTrill
                            a,,,4 \ppp ~ \startTextSpan \startTrillSpan bf,,,
                        }
                        {
                            \set stemLeftBeamCount = 1
                            a,,,8
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "bass"
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r8
                            r4
                        }
                    }
                    {
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <g b d' f'>16 [ \< \p
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            <c e g b d'>16 ] \f
                                ^ \markup {
                                    \center-align
                                        \flat
                                    }
                        }
                    }
                    {
                        {
                            r8
                        }
                        {
                            r8
                        }
                    }
                    {
                        {
                            \clef "bass_15"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    prepared
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'style = #'cross
                            \pitchedTrill
                            c,,8 \pp \startTextSpan \startTrillSpan df,,
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "bass"
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r16
                        }
                        {
                            r8.
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
                                                    guero
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
                            c'16 \mf ~ \startTextSpan
                                ^ \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        slow
                                                    }
                                    }
                            c'4 ~
                            \set stemLeftBeamCount = 2
                            c'16
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
                            r8.
                            r4
                        }
                    }
                    {
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \override Hairpin #'circled-tip = ##t
                            <a, c e g b>16 [ \<
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            <e g b d'>16 ] \ff
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \revert Hairpin #'circled-tip
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <g b d' f'>8 \mf
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                        }
                    }
                    {
                        {
                            r8
                        }
                    }
                    {
                        \times 2/3 {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <c e g b d'>16 [ \> \f
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 1
                            <b, d f a>8
                                ^ \markup {
                                    \center-align
                                        \natural
                                    }
                        }
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            <e, g, b, d>16
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 2
                            \set stemRightBeamCount = 1
                            <f a c' e' g'>16
                                ^ \markup {
                                    \center-align
                                        \flat
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            <c e g b d'>16 ] \p
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        {
                            \clef "bass_15"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    prepared
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'style = #'cross
                            \pitchedTrill
                            b,,,8 \p \startTextSpan \startTrillSpan c,,
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "bass"
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r8
                            r16
                        }
                    }
                    {
                        {
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 1
                            b,32 \pp [ (
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 3
                            g32 ~
                        }
                        {
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 3
                            g32
                            \set stemLeftBeamCount = 3
                            \set stemRightBeamCount = 3
                            e32
                            \set stemLeftBeamCount = 3
                            f32 ] )
                        }
                    }
                    {
                        {
                            r32
                            r4
                        }
                    }
                    {
                        {
                            \clef "bass_15"
                            \once \override TextSpanner.bound-details.left-broken.text = ##f
                            \once \override TextSpanner.bound-details.left.text = \markup {
                                \box
                                    \pad-around
                                        #0.5
                                        \italic
                                            \concat
                                                {
                                                    \vstrut
                                                    prepared
                                                }
                                }
                            \once \override TextSpanner.bound-details.right-broken.text = ##f
                            \once \override TextSpanner.bound-details.right.text = \markup {
                                \draw-line
                                    #'(0 . -1)
                                }
                            \once \override TextSpanner.dash-fraction = 1
                            \override NoteHead #'style = #'cross
                            \pitchedTrill
                            d,,8 \ppp \startTextSpan \startTrillSpan ef,,
                            \revert NoteHead #'style
                            <> \stopTextSpan
                            \clef "bass"
                            <> \stopTrillSpan
                        }
                    }
                    {
                        {
                            r8.
                        }
                    }
                    {
                        \times 2/3 {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            <b d' f' a'>8 [ \< \p
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 1
                            \set stemRightBeamCount = 2
                            <e' g' b' d''>16
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                        }
                        {
                            \once \override Accidental.stencil = ##f
                            \once \override AccidentalCautionary.stencil = ##f
                            \once \override Arpeggio.X-offset = #-2
                            \once \override NoteHead.stencil = #ly:text-interface::print
                            \once \override NoteHead.text = \markup {
                            	\filled-box #'(-0.6 . 0.6) #'(-0.7 . 0.7) #0.25
                            }
                            \set stemLeftBeamCount = 1
                            <f a c' e' g'>8 ] \f
                                ^ \markup {
                                    \center-align
                                        \concat
                                            {
                                                \natural
                                                \flat
                                            }
                                    }
                        }
                    }
                    {
                        {
                            r8
                        }
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
                                                    guero
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
                            c'8 \mp ~ \startTextSpan
                                ^ \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        fast
                                                    }
                                    }
                            c'4
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
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-count = 1
                            \startStaff
                            R1 * 3/8
                            \stopStaff
                            \startStaff
                        }
                        {
                            \stopStaff
                            \once \override Staff.StaffSymbol.line-count = 1
                            \startStaff
                            R1 * 3/8
                            \bar "||"
                            \stopStaff
                            \startStaff
                        }
                    }
                }
            }
            \context Dynamics = "Piano Pedals" {
                {
                    {
                        s1 * 1/4 \sustainOn
                        <> \sustainOff
                    }
                }
                {
                    {
                        r2
                    }
                    {
                        r4
                        r16.
                    }
                }
                {
                    {
                        s1 * 5/32 \sustainOn
                        <> \sustainOff
                    }
                }
                {
                    {
                        r8
                    }
                }
                {
                    {
                        s1 * 3/8 \sustainOn
                    }
                    {
                        s1 * 1/8
                        <> \sustainOff
                    }
                }
                {
                    {
                        r4
                    }
                }
                {
                    {
                        s1 * 1/4 \sustainOn
                    }
                    {
                        s1 * 1/8
                        <> \sustainOff
                    }
                }
                {
                    {
                        r8
                        r8
                    }
                }
                {
                    {
                        s1 * 1/4 \sustainOn
                        <> \sustainOff
                    }
                }
                {
                    {
                        r8
                    }
                    {
                        r8
                    }
                }
                {
                    {
                        s1 * 3/16 \sustainOn
                    }
                    {
                        s1 * 1/8
                        <> \sustainOff
                    }
                }
                {
                    {
                        r8
                        r2.
                    }
                }
                {
                    {
                        s1 * 1/2 \sustainOn
                    }
                    {
                        s1 * 5/16
                        <> \sustainOff
                    }
                }
                {
                    {
                        r8.
                    }
                }
                {
                    {
                        s1 * 1/8 \sustainOn
                        <> \sustainOff
                    }
                }
                {
                    {
                        r32
                    }
                }
                {
                    {
                        s1 * 7/32 \sustainOn
                    }
                    {
                        s1 * 3/32
                        <> \sustainOff
                    }
                }
                {
                    {
                        r32
                        r4
                    }
                }
                {
                    {
                        s1 * 5/16 \sustainOn
                    }
                    {
                        s1 * 5/16
                        <> \sustainOff
                    }
                }
                {
                    {
                        r16
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 1/2
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 3/8
                        \stopStaff
                        \startStaff
                    }
                    {
                        \stopStaff
                        \once \override Staff.StaffSymbol.line-count = 1
                        \startStaff
                        R1 * 3/8
                        %%% \bar "||" %%%
                        \stopStaff
                        \startStaff
                    }
                }
            }
        >>
        \context EnsembleGroup = "String Section Staff Group" <<
            \tag #'violin
            \context StringPerformerGroup = "Violin Performer Group" \with {
                instrumentName = \markup { Violin }
                shortInstrumentName = \markup { Vn. }
            } <<
                \context StringStaff = "Violin Staff" {
                    \context Voice = "Violin Voice" {
                        \clef "treble"
                        {
                            {
                                r8.
                            }
                        }
                        {
                            {
                                \override TrillPitchHead #'stencil = #ly:text-interface::print
                                \override TrillPitchHead #'text = \markup {
                                    \musicglyph
                                        #"noteheads.s0harmonic"
                                    }
                                \pitchedTrill
                                ef'16 \ppp \startTrillSpan gf'
                                \revert TrillPitchHead #'stencil
                                \revert TrillPitchHead #'text
                                <> \stopTrillSpan
                            }
                        }
                        {
                            {
                                r2
                            }
                            {
                                r8
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 6/7 {
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
                                c'16 -\staccato \pp \startTextSpan
                                r8
                                r16
                                c'16 -\staccato \ppp
                                r8
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
                                r2
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/8
                                \stopStaff
                                \startStaff
                            }
                        }
                        {
                            \times 2/3 {
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
                                r16 \startTextSpan
                                c'16 -\staccato \p
                                r16
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
                                r4
                                r16
                            }
                        }
                        {
                            {
                                \override TrillPitchHead #'stencil = #ly:text-interface::print
                                \override TrillPitchHead #'text = \markup {
                                    \musicglyph
                                        #"noteheads.s0harmonic"
                                    }
                                \pitchedTrill
                                c''8 \pp \startTrillSpan f''
                                \revert TrillPitchHead #'stencil
                                \revert TrillPitchHead #'text
                                <> \stopTrillSpan
                            }
                        }
                        {
                            {
                                r16
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/16
                                \stopStaff
                                \startStaff
                            }
                            {
                                r4
                                r16
                            }
                        }
                        {
                            \times 4/5 {
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
                                c'16 -\staccato \ppp \startTextSpan
                                r8
                                c'16 -\staccato \p
                                r16
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
                                r8.
                                r4
                            }
                            {
                                r4
                                r8
                            }
                        }
                        {
                            \times 2/3 {
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
                                r8 \startTextSpan
                                c'16 -\staccato \pp
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
                                c'8 :64 \p \startTextSpan
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
                                r4
                            }
                        }
                        {
                            \times 2/3 {
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
                                c'4 :32 \ppp \startTextSpan
                                c'16 -\staccato
                                r16
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
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                r16
                            }
                        }
                        {
                            {
                                \override TrillPitchHead #'stencil = #ly:text-interface::print
                                \override TrillPitchHead #'text = \markup {
                                    \musicglyph
                                        #"noteheads.s0harmonic"
                                    }
                                \pitchedTrill
                                cs''16 \p ~ [ \startTrillSpan fs''
                            }
                            {
                                \set stemLeftBeamCount = 1
                                cs''8 ]
                                \revert TrillPitchHead #'stencil
                                \revert TrillPitchHead #'text
                                <> \stopTrillSpan
                            }
                        }
                        {
                            {
                                r16
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                r16
                            }
                        }
                        {
                            {
                                \override TrillPitchHead #'stencil = #ly:text-interface::print
                                \override TrillPitchHead #'text = \markup {
                                    \musicglyph
                                        #"noteheads.s0harmonic"
                                    }
                                \pitchedTrill
                                ef''16 \ppp \startTrillSpan gf''
                                \revert TrillPitchHead #'stencil
                                \revert TrillPitchHead #'text
                                <> \stopTrillSpan
                            }
                        }
                        {
                            {
                                r8
                                r4
                            }
                            {
                                r16
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        flautando
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                f'''16 \ppp \startTextSpan [ (
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                af''16
                                \set stemLeftBeamCount = 2
                                g''16 ] )
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r8
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \bar "||"
                                \stopStaff
                                \startStaff
                            }
                        }
                    }
                }
            >>
            \tag #'viola
            \context StringPerformerGroup = "Viola Performer Group" \with {
                instrumentName = \markup { Viola }
                shortInstrumentName = \markup { Va. }
            } <<
                \context StringStaff = "Viola Staff" {
                    \context Voice = "Viola Voice" {
                        \clef "alto"
                        {
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/4
                                \stopStaff
                                \startStaff
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
                                c'16 -\staccato \pp \startTextSpan
                                r16
                                r16
                                c'8 :64 \ppp
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
                                r8.
                                r16
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
                                c'8 :64 \p \startTextSpan
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
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                r4
                                r8
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 5/6 {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        flautando
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                af'8 \p \startTextSpan [ (
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                g'16
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                bf'16
                                e'16 ] )
                                <> \stopTextSpan
                                r16
                            }
                        }
                        {
                            {
                                r16
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 5/16
                                \stopStaff
                                \startStaff
                            }
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
                                c'8 :64 \ppp \startTextSpan
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
                                r4
                                r8.
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        flautando
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                cs''16 \ppp \startTextSpan [ (
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                f'16
                                \set stemLeftBeamCount = 2
                                af'16 ] )
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r8
                            }
                            {
                                r4
                            }
                        }
                        {
                            \times 2/3 {
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
                                c'8 :64 -\staccato \pp \startTextSpan
                                r4
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
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 1/2
                                \stopStaff
                                \startStaff
                            }
                            {
                                r16
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        overpressure
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                <c g>16 -\accent -\tenuto \fff ~ \startTextSpan
                                <c g>4
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                        }
                        {
                            \tweak #'text #tuplet-number::calc-fraction-text
                            \times 5/6 {
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
                                r4 \startTextSpan
                                c'8 :64 -\staccato \p
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
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                r4
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        flautando
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                g'16 \pp \startTextSpan [ (
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                bf'16
                                \set stemLeftBeamCount = 2
                                e'16 ] )
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r16
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \stopStaff
                                \startStaff
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \bar "||"
                                \stopStaff
                                \startStaff
                            }
                        }
                    }
                }
            >>
            \tag #'cello
            \context StringPerformerGroup = "Cello Performer Group" \with {
                instrumentName = \markup { Cello }
                shortInstrumentName = \markup { Vc. }
            } <<
                \context StringStaff = "Cello Staff" {
                    \context Voice = "Cello Voice" {
                        \clef "bass"
                        {
                            {
                                r4
                                r16
                            }
                        }
                        {
                            {
                                \override TrillPitchHead #'stencil = #ly:text-interface::print
                                \override TrillPitchHead #'text = \markup {
                                    \musicglyph
                                        #"noteheads.s0harmonic"
                                    }
                                \pitchedTrill
                                cs,8 \pp \startTrillSpan fs,
                                \revert TrillPitchHead #'stencil
                                \revert TrillPitchHead #'text
                                <> \stopTrillSpan
                            }
                        }
                        {
                            {
                                r16
                                r4
                            }
                        }
                        {
                            \times 2/3 {
                                r8
                                g,16 \pp ^ \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        flautando
                                                    }
                                    }
                            }
                        }
                        {
                            {
                                r8
                                r8
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        overpressure
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                <c, g,>8 -\accent -\tenuto \fff ~ \startTextSpan
                                <c, g,>4 ~
                                \set stemLeftBeamCount = 1
                                <c, g,>8
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r8
                            }
                            {
                                r4.
                            }
                        }
                        {
                            \times 4/5 {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        flautando
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                bf8 \p \startTextSpan [ (
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                e16
                                cs16 ] )
                                <> \stopTextSpan
                                r16
                            }
                        }
                        {
                            {
                                r2
                                r8.
                            }
                        }
                        {
                            {
                                \override TrillPitchHead #'stencil = #ly:text-interface::print
                                \override TrillPitchHead #'text = \markup {
                                    \musicglyph
                                        #"noteheads.s0harmonic"
                                    }
                                \pitchedTrill
                                ef16 \p ~ [ \startTrillSpan af
                            }
                            {
                                \set stemLeftBeamCount = 2
                                ef16 ]
                                \revert TrillPitchHead #'stencil
                                \revert TrillPitchHead #'text
                                <> \stopTrillSpan
                            }
                        }
                        {
                            {
                                r4
                            }
                            {
                                r2
                                r16
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        flautando
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                f'16 \ppp \startTextSpan [ (
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                af'16
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                g'16
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                bf16
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                e'16
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                cs'8
                            }
                            {
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                f'16
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                af16
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                g16
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                bf16
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                e16
                                \set stemLeftBeamCount = 2
                                cs16 ] )
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r8
                            }
                            {
                                r4
                            }
                        }
                        {
                            {
                                \override TrillPitchHead #'stencil = #ly:text-interface::print
                                \override TrillPitchHead #'text = \markup {
                                    \musicglyph
                                        #"noteheads.s0harmonic"
                                    }
                                \pitchedTrill
                                c,16 \ppp \startTrillSpan ef,
                                \revert TrillPitchHead #'stencil
                                \revert TrillPitchHead #'text
                                <> \stopTrillSpan
                            }
                        }
                        {
                            {
                                r8.
                            }
                            {
                                r16
                            }
                        }
                        {
                            {
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        overpressure
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                <c, g,>16 -\accent -\tenuto \fff ~ \startTextSpan
                                <c, g,>4 ~
                            }
                            {
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                <c, g,>8 ~ [
                                \set stemLeftBeamCount = 2
                                <c, g,>16 ]
                                <> \stopTextSpan
                            }
                        }
                        {
                            {
                                r16
                                r8
                            }
                            {
                                r8.
                            }
                        }
                        {
                            {
                                \override TrillPitchHead #'stencil = #ly:text-interface::print
                                \override TrillPitchHead #'text = \markup {
                                    \musicglyph
                                        #"noteheads.s0harmonic"
                                    }
                                \pitchedTrill
                                cs'8 \pp ~ [ \startTrillSpan fs'
                            }
                            {
                                \set stemLeftBeamCount = 2
                                cs'16 ]
                                \revert TrillPitchHead #'stencil
                                \revert TrillPitchHead #'text
                                <> \stopTrillSpan
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
                                \once \override TextSpanner.bound-details.left-broken.text = ##f
                                \once \override TextSpanner.bound-details.left.text = \markup {
                                    \box
                                        \pad-around
                                            #0.5
                                            \italic
                                                \concat
                                                    {
                                                        \vstrut
                                                        flautando
                                                    }
                                    }
                                \once \override TextSpanner.bound-details.right-broken.text = ##f
                                \once \override TextSpanner.bound-details.right.text = \markup {
                                    \draw-line
                                        #'(0 . -1)
                                    }
                                \once \override TextSpanner.dash-fraction = 1
                                f16 \pp \startTextSpan [ (
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                af16
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                g16
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                bf16
                            }
                            {
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 1
                                e16
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 1
                                cs8
                                \set stemLeftBeamCount = 1
                                \set stemRightBeamCount = 2
                                f16
                            }
                            \times 2/3 {
                                \set stemLeftBeamCount = 2
                                \set stemRightBeamCount = 2
                                af16
                                g16 ] )
                                <> \stopTextSpan
                                r16
                            }
                        }
                        {
                            {
                                r4
                            }
                            {
                                \stopStaff
                                \once \override Staff.StaffSymbol.line-count = 1
                                \startStaff
                                R1 * 3/8
                                \bar "||"
                                \stopStaff
                                \startStaff
                            }
                        }
                    }
                }
            >>
        >>
    >>
}