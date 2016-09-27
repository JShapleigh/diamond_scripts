# !/bin/bash
for file in ./*.daa;
	do /programs/diamond-0.7.5/diamond view -a "${file}" -o "${file//.out.daa/.m8}" 
done