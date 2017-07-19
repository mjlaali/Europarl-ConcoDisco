# Europarl ConcoDisco Dataset

This repository contains the *ConcoDisco-Intersection* corpus [\[1\]](#references). Names of [XML files](https://github.com/mjlaali/Europarl-ConcoDisco/tree/master/xml-files) are the same as the name of the Europarl files. Each XML file (for example [this XML file](https://github.com/mjlaali/Europarl-ConcoDisco/blob/master/xml-files/ep-00-01-17.xml)) contains the text of the English and French portations of the Europarl corpus, aligned using the [tools](http://www.statmt.org/europarl/v7/tools.tgz) provided along with the Europarl corpus. In addition to the Europarl annotations, English discourse connectives are automatically annotated using the CLaC discourse parser [\[2\]](#references). The result of the annotation projection onto French texts (check [\[1\]](#references) for more details) are also annotated.

More specifically, each pair of parallel sentences contains annotations of English discourse connectives (automatically marked by the CLaC discourse parser) and annotations of French candidate discourse connectives (as a result of annotation projection [\[1\]](#references)) encapsulated in *DiscourseConnective* XML elements. For French candidate discourse connectives, if *<DiscourseConnective ...>* does not indicate a sense, it means that the French candidate discourse connective is not used in a discourse usage (i.e. it was aligned to an English text that does not signal a discourse relation). For example, consider these parallel sentences:

```xml
    <ParallelSentences annotation_id="26" docOffset="1">
      <en>I declare resumed the session of the European Parliament adjourned on Friday 17 December 1999, <Alignment alignment="132" annotation_id="121">
          <DiscourseConnective annotation_id="121" sense="Expansion.Conjunction">and</DiscourseConnective>
        </Alignment> I would like once again to wish you a happy new year in the hope that you enjoyed a pleasant festive period.</en>
      <fr>Je déclare reprise la session du Parlement européen qui avait été interrompue le vendredi 17 décembre dernier <Alignment alignment="121" annotation_id="132">
          <DiscourseConnective annotation_id="132" sense="Expansion.Conjunction">et</DiscourseConnective>
        </Alignment> je vous renouvelle tous mes vux <DiscourseConnective annotation_id="167">en</DiscourseConnective> espérant <DiscourseConnective annotation_id="179">que</DiscourseConnective> vous avez passé de bonnes vacances.</fr>
    </ParallelSentences>
```

In these parallel sentences, *et* is translated to *and* (*Alignment* with the id 121) which the CLaC parser tagged as a discourse connective signaling a *Expansion.Conjunction* relation. By projecting this annotation, it was assumed that *et* should also be used in discourse usage and signals a *Expansion.Conjunction* relation. On the other hand, *en* and *que* are translated to *in* and *that* which are not recognized as discourse connectives, therefore, these French candidate discourse connectives were assumed to be used in a none discourse usage, hence there is no sense associated to them. 

# Downloading the Europarl ConcoDisco Dataset

To download the dataset, please click on [this link](https://github.com/mjlaali/Europarl-ConcoDisco/archive/master.zip).

# Viewing Annotations on your Browser

To view annotations on the Firefox browser (as shown in the picture below), after downloading the dataset, drag and drop xml files in [FireFox](https://www.mozilla.org/en-US/firefox/new/) (Chrome and Safari browsers do not show annotations).

![Demo on FireFox](https://github.com/mjlaali/Europarl-ConcoDisco/raw/master/browser-view.png)

# Citation
If you use this dataset, please cite paper [\[1\]](#references) below.

# References

1. Majid Laali and Leila Kosseim. "Improving Discourse Relation Projection to Build Discourse Annotated Corpora". In: Proceedings of the Recent Advances in Natural Language Processing (RANLP 2017). Varna, Bulgaria, Sep. 2017, 10 pages.
2. Majid Laali, Andre Cianflone, and Leila Kosseim. "The CLaC Discourse Parser at CoNLL-2016". In: Proceedings of the 20th SIGNLL Conference on Computational Natural Language Learning - Shared Task (CoNLL 2016). Berlin, Germany, Aug. 2016, pp. 92–99.
