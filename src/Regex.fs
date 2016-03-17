﻿module Regex

open System.Text.RegularExpressions

let chapterRx = new Regex("""<a name="%_chap_\d">""", RegexOptions.Compiled)    
let (|ChapterRx|_|) text =
    if chapterRx.IsMatch(text) then Some text else None
 
let sectionRx = new Regex("""<a name="%_sec_\d\.\d+"></a>""", RegexOptions.Compiled)    
let (|SectionRx|_|) text =
    if sectionRx.IsMatch(text) then Some text else None

type Place = { String : string; Index : int }


// # (\s* Chapter\s (?<id>\d)? \s*</a></div> .*? )?
let titleRx = 
    new Regex(
        """<h[12].*?
            
            (?<id>\d(\.\d+)?")?>(\d+\.\d+&nbsp;&nbsp;)?(?<title>[-:\w]+(,?\s+[-:\w]+)*) \s*</a></h[12]>
            <p>"""
            , RegexOptions.Compiled ||| RegexOptions.Singleline ||| RegexOptions.IgnorePatternWhitespace)

let epigraphRx = new Regex("""<p>\s+<div align=right>.*?</div>\s+<p><p>""", RegexOptions.Compiled ||| RegexOptions.Singleline)

let proseRx = 
    new Regex(""".*?(?=<p><div class=navigation>\[Go to|<a name="%_sec_\d\.\d\.\d)"""
    , RegexOptions.Compiled ||| RegexOptions.Singleline )