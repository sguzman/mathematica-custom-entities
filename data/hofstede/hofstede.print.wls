Print@
With[{
  list = Association@
    Map[
     Function[row,
      StringTrim[row[[2]], "*"] -> <|
        "HofstedeID" -> row[[1]],
        "HofstedeSlug" -> row[[3]],
        "PowerDistance" -> row[[4]],
        "Individualism" -> row[[5]],
        "Masculinity" -> row[[6]],
        "UncertaintyAvoidance" -> row[[7]],
        "LongTermOrientation" -> row[[8]],
        "Indulgence" -> row[[9]]
        |>
      ], Import["../../Hofstede-country-model-data/hofstede.csv", "CSV"]]
  },
 EntityStore["Countries" ->
   <|"Entities" -> list|>]
 ]
