#！/bin/bash
declare -i i=10
while((i > 0))
do
  current_time=$(date  "+%Y%m%d-%H%M%S")
  echo ${current_time}
  if [ $current_time -eq 20220113-163123 ]
  then
      echo ${current_time};
      echo 'time over';
  else
      echo $(date +%Y-%m-%d);
  fi
done
