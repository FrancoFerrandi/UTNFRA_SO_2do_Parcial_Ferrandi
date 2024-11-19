    1  git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
    2  ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
    3  source ~/.bashrc
    4  sudo apt update
    5  sudo apt install ansible -y
    6  sudo apt list --installed |grep ansible
    7  ssh-keygen -t ed25519
    8  ls -l /home/vagrant/.ssh/
    9  cat /home/vagrant/.ssh/id_ed25519.pub >> /home/vagrant/.ssh/authorized_keys
   10  for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
   11  sudo apt-get update
   12  sudo apt-get install ca-certificates curl
   13  sudo install -m 0755 -d /etc/apt/keyrings
   14  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
   15  sudo chmod a+r /etc/apt/keyrings/docker.asc
   16  # Add the repository to Apt sources:
   17  echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
   18    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
   19  sudo apt-get update
   20  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
   21  sudo docker run hello-world
   22  sudo fdisk /dev/sdc
   23  sudo fdisk /dev/sdd
   24  sudo wipefs -a /dev/sdc1 /dev/sdd1
   25  sudo pvcreate /dev/sdc1 /dev/sdd1
   26  sudo pvs
   27  sudo lvcreate -L 5M vg_datos -n lv_docker
   28  sudo vgcreate vg_datos /dev/sdc1
   29  sudo vgcreate vg_temp /dev/sdd1
   30  sudo vgs
   31  sudo lvcreate -L 5M vg_datos -n lv_docker
   32  sudo lvcreate -L 1.5G vg_datos -n
   33  sudo lvcreate -L 1.5G vg_datos -n lv_workareas
   34  sudo lvcreate -L 512M vg_temp -n lv_swap
   35  sudo lvs
   36  sudo fdisk -l
   37  sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
   38  sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
   39  sudo lsblk
   40  sudo mkswap /dev/vg_temp/lv_swap
   41  sudo mkdir -p /var/lib/docker
   42  sudo mkdir -p /work
   43  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
   44  sudo mount /dev/mapper/vg_datos-lv_workareas /work/
   45  sudo swapon /dev/vg_temp/lv_swap
   46  df -h
   47  sudo systemctl restart docker
   48  sudo systemctl status docker
   49  ls -l
   50  cd repogit
   51  ls -l
   52  cd --
   53  ls -l
   54  cd UTN-FRA_SO_Examenes/
   55  ls -l
   56  cd 202406
   57  ls -l
   58  cd bash_script/
   59  ls -l
   60  cat Lista_Usuarios.txt 
   61  exit
   62  cd usr/local/bin
   63  ls -l
   64  cd /usr/local/bin
   65  ls -l
   66  cd /home/vagrant
   67  ls -l
   68  cd UTN-FRA_SO_Examenes/
   69  ls -l
   70  cd 202406
   71  ls -l
   72  cat script_Precondicion.sh 
   73  cd ..
   74  ls -l
   75  cd UTN-FRA_SO_Examenes/202406/ansible/roles
   76  ls -l
   77  cd 2do_parcial/
   78  ls -l
   79  cd tests/
   80  ls -l
   81  cd ..
   82  ls -l
   83  cd tasks/
   84  ls -l
   85  cat main.yml 
   86  cd ..
   87  ls -l
   88  cd tasks/
   89  ls -l
   90  cd ..
   91  ls -l
   92  cat README.md 
   93  ls -l
   94  cd ..
   95  ls -l
   96  cd ..
   97  cd..
   98  cd ..
   99  ls -l
  100  sudo groupadd "2P_GDesa"
  101  [200~sudo groupadd "2P_GTest"
  102  sudo groupadd "2P_GTest"
  103  sudo groupadd "2PSupervisores"
  104  sudo useradd -m -g "2P_GDesa" -d "/work/2P_202406_Prog1" "2P_202406_Prog1"
  105  sudo passwd 2P_202406_Prog1
  106  sudo cat /etc/shadow | grep 2P_202406_Prog1 | awk -F: '{print$2}'
  107  sudo useradd -m -g "2P_GDesa" -d "/work/2P_202406_Prog2" -p "$(sudo cat /etc/shadow | grep 2P_202406_Prog1 | awk -F: '{print$2}')" "2P_202406_Prog2"
  108  sudo useradd -m -g "2P_GTest" -d "/work/2P_202406_Test1" -p "$(sudo cat /etc/shadow | grep 2P_202406_Prog1 | awk -F: '{print$2}')" "2P_202406_Test1"
  109  sudo useradd -m -g "2PSupervisores" -d "/work/2P_202406_Supervisor" -p "$(sudo cat /etc/shadow | grep 2P_202406_Prog1 | awk -F: '{print$2}')" "2P_202406_Supervisor"
  110  sudo chown "2P_202406_Prog1:2P_GDesa" "/work/2P_202406_Prog1"
  111  sudo chown "2P_202406_Prog2:2P_GDesa" "/work/2P_202406_Prog2"
  112  sudo chown "2P_202406_Test1:2P_GTest" "/work/2P_202406_Test1"
  113  sudo chown "2P_202406_Supervisor:2PSupervisores" "/work/2P_202406_Supervisor"
  114  grep "2P_" /etc/group
  115  getent group
  116  cd ~/UTN-FRA_SO_Examenes/202406/docker/
  117  id
  118  docker login -u francoferrandi
  119  id
  120  ls -l
  121  cat index.html 
  122  echo "<div>
  123  <h1> Sistemas Operativos - UTNFRA </h1></br>
  124  <h2> 2do Parcial - Noviembre 2024 </h2> </br>
  125  <h3> Franco Ferrandi </h3>
  126  <h3> División: 115 </h3>
  127  </div>" > index.html
  128  cat index.html 
  129  cat <<EOF > Dockerfile
  130  FROM nginx
  131  COPY index.html /usr/share/nginx/html/index.html
  132  EOF
  133  docker build -t "francoferrandi/web1-Ferrandi" .
  134  docker info
  135  sudo docker build -t "francoferrandi/web1-Ferrandi" .
  136  sudo docker build -t "francoferrandi/web1-ferrandi" .
  137  sudo docker push "francoferrandi/web1-ferrandi"
  138  docker push "francoferrandi/web1-ferrandi"
  139  sudo docker login
  140  docker --version
  141  sudo systemctl status docker
  142  cd ~/UTN-FRA_SO_Examenes/202406/docker/
  143  id
  144  ls -l
  145  cat Dockerfile 
  146  cat index.html 
  147  docker login -u francoferrandi
  148  ls -l
  149  sudo docker build -t "francoferrandi/web1-ferrandi" .
  150  sudo docker push "francoferrandi/web1-ferrandi"
  151  sudo docker build -t "francoferrandi/web1-ferrandi" .
  152  sudo docker push "francoferrandi/web1-ferrandi"
  153  sudo docker push francoferrandi/web1-ferrandi
  154  sudo docker tag web1-ferrandi francoferrandi/web1-ferrandi
  155  sudo docker push francoferrandi/web1-ferrandi
  156  sudo docker tag web1-ferrandi francoferrandi/web1-ferrandi:latest
  157  sudo docker build -t francoferrandi/web1-ferrandi:latest .
  158  sudo docker push francoferrandi/web1-ferrandi:latest
  159  sudo docker push francoferrandi/web1-ferrandi .
  160  docker image list
  161  docker info
  162  docker whoami
  163  id
  164  sudo usermod -a -G docker $(whoami)
  165  id
  166  exit
  167  id
  168  docker push "francoferrandi/web1-ferrandi"
  169  cd ~/UTN-FRA_SO_Examenes/202406/docker/
  170  cat <<EOF > run.sh
  171  #!/bin/bash
  172  docker run -d -p 8080:80 "francoferrandi/web1-Ferrandi"
  173  EOF
  174  cd /home/vagrant
  175  ifconfig | grep -m 1 'inet ' | awk '{print $2}'
  176  apt install net-tools
  177  sudo apt install net-tools
  178  ls -l
  179  cd RTA_Examen_20241118/
  180  ls -l
  181  sudo vim Punto_A.sh
  182  vim Punto_A.sh 
  183  sudo vim Punto_B.sh
  184  sudo vim Punto_C.sh
  185  sudo vim Punto_A.sh 
  186  cat Punto_A.sh
  187  vim Punto_C.sh 
  188  cat Punto_C.sh
  189  ifconfig | grep -m 1 'inet ' | awk '{print $2}'
  190  ls -l
  191  vim Punto_D.sh
  192  chmod 755 Punto_D.sh
  193  ls -l
  194  exit
  195  ls -l
  196  cd RTA_Examen_20241118/
  197  ls -l
  198  cat Punto_D.sh
  199  ls -l
  200  ./Punto_D.sh
  201  vim Punto_D.sh
  202  cd /home/vagrant
  203  ls -l
  204  cd RTA_Examen_20241118/
  205  ls -l
  206  vim Punto_D.sh
  207  ./Punto_D.sh
  208  cd ..
  209  ls -l
  210  cd repogit/
  211  ls -l
  212  cd ..
  213  ls -l
  214  git clone https://github.com/FrancoFerrandi/UTNFRA_SO_2do_Parcial_Ferrandi.git
  215  cp -r ~/UTN-FRA_SO_Examenes/202406 ~/UTNFRA_SO_2do_Parcial_Ferrandi
  216  cp -r ~/RTA_Examen_20241118 ~/UTNFRA_SO_2do_Parcial_Ferrandi
  217  history -a
  218  history > ~/UTNFRA_SO_2do_Parcial_Ferrandi/.bash_history
