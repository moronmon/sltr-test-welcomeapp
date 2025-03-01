#!/bin/bash
#1 Command docker untuk build image sesuai permintaan diatas
docker build -t testing/welcome .
#2 Command Docker run untuk image diatas, dengan menggunakan port 8000 sebagai port yang akan dibuka
docker run -d -p 8000:5000 testing/welcome
