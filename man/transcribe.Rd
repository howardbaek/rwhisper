% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transcribe.R
\name{transcribe}
\alias{transcribe}
\title{Transcribe in the original language}
\usage{
transcribe(
  audio_file,
  model_name = "small",
  audio_lang = "English",
  output_dir,
  output_format = "txt"
)
}
\arguments{
\item{audio_file}{Input audio file: \code{"m4a"}, \code{"mp3"}, \code{"webm"}, \code{"mp4"}, \code{"mpga"}, \code{"wav"}, or \code{"mpeg"}}

\item{model_name}{Name of the Whisper model. Models include:
\itemize{
\item \code{"tiny.en"}, \code{"tiny"}
\item \code{"base.en"}, \code{"base"}
\item \code{"small.en"}, \code{"small"}
\item \code{"medium.en"}, \code{"medium"}
\item \code{"large-v1"}, \code{"large-v2"}, \code{"large"}
}}

\item{audio_lang}{Language spoken in audio. Specify \code{"None"} to perform language detection.}

\item{output_dir}{Directory to save the output.}

\item{output_format}{Desired format of the output file: \code{"txt"}, \code{"vtt"}, \code{"srt"}, \code{"tsv"}, \code{"json"}, or \code{"all"}.}
}
\value{
A message indicating whether the function was a success or failure
}
\description{
Perform speech recognition by converting spoken language from audio file into written text in its original language.
}
\details{
There are five model sizes, four with English-only versions, offering speed and accuracy tradeoffs. The \code{.en} models for
English speaking audio tend to perform better, especially \code{tiny.en} and \code{base.en}.

See \href{https://github.com/openai/whisper#available-models-and-languages}{"Avaiable models and languages"} section
in the README for the names of the available models and their approximate memory requirements and relative speed.
}
\examples{
\dontrun{
# English audio
english1 <- system.file("extdata", "sample-english1.mp3", package = "audrey")
english2 <- system.file("extdata", "sample-english2.mp3", package = "audrey")

# "Other forms of moral economy are more informal"
transcribe(english2, output_dir = ".")

# "It is so named because it was designed and implemented in Dartmouth College"
transcribe(english2, output_dir = ".")


# Non-English audio
japanese <- system.file("extdata", "sample-japanese.wav", package = "audrey")
transcribe(japanese, audio_lang = "Japanese", output_dir = ".")

korean <- system.file("extdata", "sample-korean.wav", package = "audrey")
transcribe(korean, audio_lang = "Korean", output_dir = ".")
}

}
