#nama: Fikri Fakhruddin
#NPM: 18081010085
#Paralel: B

daftarmembergym(){
	loop=1;
	member=0;
	total=0;
	Jumlah=0;
	jenis_member1=0;
	jenis_member2=0;
	jenis_member3=0;
	jenis_member4=0;


	declare -a Jumlah
	declare -a total
	declare -a member
	declare -a member1
	declare -a member2
	declare -a member3
	declare -a member4

function input_data(){
		echo "==============================";
		echo "Masukkan nama	:";
		read nama;
		echo "Masukkan kelamin	:";
		read kelamin;
		echo "Masukkan no. telepon	:";
		read notelp;
		echo "Masukkan umur	:";
		read umur;
		echo "Pilihan member	:";
		read pilmem;
		echo "==============================";
		}

function input_harga(){
		echo "=======Harga Member per Bulan========"
		echo "1.SILVER 50000 ";
		echo "2.GOLD 100000 ";
		echo "3.PLATINUM 200000 ";
		echo "4.TITANIUM 400000 ";
		echo "==============================";
		read -p "Pilihan kelas anda : " pil;

		if [[ $pil -eq 1 ]]; then member="50000";
		echo "lama menjadi member (bulan) :"
		read Jumlah;
		let total=Jumlah*50000;
		echo "$total";

		elif [[ $pil -eq 2 ]]; then member="100000";
		echo "lama menjadi member (bulan) :"
		read Jumlah;
		let total=Jumlah*100000;
		echo "$total";

		elif [[ $pil -eq 3 ]]; then member="200000";
		echo "lama menjadi member (bulan) :"
		read Jumlah;
		let total=Jumlah*200000;
		echo "$total";

		elif [[ $pil -eq 4 ]]; then member="400000";
		echo "lama menjadi member (bulan) :"
		read Jumlah;
		let total=Jumlah*400000;
		echo "$total";

		else
		echo "======================";
		echo "MAAF MEMBER PENUH	:)	";
		echo "======================";	

		fi
		}

function cetak_member(){
		echo "=======CETAK MEMBER=======";
		echo "nama : $nama ";
		echo "kelamin : $kelamin";
		echo "no. tlp : $notelp";
		echo "umur : $umur";
		echo "pilihan member : $pilmem";
		echo "lama member : $Jumlah bulan";
		echo "total harga : $total";
		echo "=========================";
		}

function keluar_data(){
		echo "========================";
		echo "TERIMA KASIH";
		echo "TELAH";
		echo "MENDAFTAR";
		echo "SEBAGAI MEMBER GYM";
		echo "========================";

		let loop=2;
		}

	while [[ loop -eq 1 ]]; do
	echo "========================================";
	echo "SELAMAT DATANG                          ";
	echo "DI GYM MERAH PUTIH   		              ";
	echo "========================================";
	echo "1. Input Data Member                    ";
	echo "2. input Harga Kelas		              ";
	echo "3. View dan Cetak Data Member dan Harga ";
	echo "4. Keluar Program                       ";
	echo "========================================";
	echo "Pilihan : "
	read pilih;

	case "$pilih" in
		"1" )
		input_data;
			;;
		"2" )
		input_harga;
			;;
		"3" )
		cetak_member;
			;;
		"4" )
		keluar_data;
			;;
	esac

done
}

#modul praktikum

modul(){


	newuser(){
	echo "masukkan nama user baru:"
	read userbaru
	sudo adduser $userbaru
}


	newfile(){
	echo "buat nama :"
	read nama_file
	nano nama_file $nama_file

}


	openbrowser(){

	firefox
}


	deadlock(){
	echo "anda akan menjalankan deadlock"
	echo "lanjut? (y/n)"
	echo "jika ingin menghentikan deadlock ini tekan ctrl+c"
	read dead

	if [[ $dead == y ]]; then
	while :; do

dd if=out.fifo bs=1b count=1 2>/dev/null | grep $1

if [ $?  -eq 0 ]; then

echo “$2” > in.fifo exit 0

fi

done
fi
if [[ $dead ]]; then
	echo "selamat tinggal deadlock"
fi	
}



installapp(){
	echo "mau install apa? "
	read installaplication
	sudo apt install $installaplication
}


while [[ pilih=1 ]]; do
	echo "========================================="
	echo "	    	 MENU SISTEM_OPERASI		   "
	echo "=========================================" 
	echo "1. Create User                           "
	echo "2. Create New File                       "				   
	echo "3. Open Browser		      			   "
	echo "4. Deadlock						  	   "
	echo "5. Install Application				   "
	echo "6. Keluar							   	   "
	echo "========================================="
	echo -n "Masukkan pilihan anda :  "
	read pilih



	case "$pilih" in 
		"1" ) newuser; 
			;; 
		"2" ) newfile;
			;;
 	    "3" ) openbrowser;
			;; 
		"4" ) deadlock; 
			;; 
		"5") installapp; 
			;;
 		"6")break;
 			 ;;	
 			  esac

done

}
while [[ pilih=1 ]]; do
echo "menu"
echo "1. Daftar member gym"
echo "2. sistem operasi"
echo "3. exit"
echo "pilih : "
read pilih

case $pilih in
		1 )
		daftarmembergym
			;;
		2 )
		modul
			;;
		3 )
		exit
			;;
	esac	
done

