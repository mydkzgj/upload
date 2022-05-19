#!/bin/bash

root_dir=$1   #/share/liyu/RNA3D/RNApuzzle/3dm/farfar2/
target_name=$2   #R1107
target_dir="${root_dir}/${target_name}"
mkdir -p ${target_dir}

candidate_names=`ls $root_dir`
for candidate_name in $candidate_names
do
  echo $candidate_name
  if [[ $candidate_name == $target_name* ]] && [[ $candidate_name != $target_name ]]
  then
    echo "包含"
    suffix=${candidate_name/$target_name/}
    echo $suffix
    candidate_dir="${root_dir}/${candidate_name}"
    candidate_files=`ls $candidate_dir`
    for candidate_file in ${candidate_files}
    do
      src_file="${candidate_dir}/${candidate_file}"
      new_candidate_name=${candidate_file/".pdb"/"${suffix}.pdb"}
      new_candidate_name=${new_candidate_name/".score.txt"/"${suffix}.score.txt"}
      dest_file="${target_dir}/${new_candidate_name}"
      echo $src_file
      echo $dest_file
      cp $src_file $dest_file
    done

  else
    echo "不包含"
  fi
done


