for combo in $(curl -s https://raw.githubusercontent.com/Oi-Android/android_external_mokee_BuildController/mkl-mr1/mk_build_targets | sed -e 's/#.*$//' | awk '{printf "mk_%s-%s\n", $1, $2}')
do
    add_lunch_combo $combo
done
