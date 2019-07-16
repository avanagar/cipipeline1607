From ubuntu
LABEL MAINTAiNER all-images@avani.agarwal
arg image_variable="local"
env ora_port=1521
env ora_host="localhost"
run mkdir /code
copy Sample.sh /code/Sample.sh
run chmod +x /code/Sample.sh
run echo "Building an image.."
run echo $image_variable
workdir /code
cmd sh /code/Sample.sh
