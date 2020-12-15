# source activate pyannote

start_face_track () {
 FILE=$(realpath "$1")
 source ~/github/japanese-audio-emotion/Easy-Face-Tracker/run-custom-video.sh "$FILE" 
}

export -f start_face_track
parallel --eta start_face_track ::: data/*/*/*.mp4
