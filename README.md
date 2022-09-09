# Devasc_Skills
Github repository voor DevAsc Instructor

Task 1 -- GitHub Skills Test
Zie voor het verloop de screenshots en het document met de screenshots (Screenshts.docx)
Bumps: 
- Vergeten de repo op github eerst manueel aan te maken (opgelost)
- Bestanden hernoemd naar Task1_* template (opgelost)

Task 2 -- Ansible Skills Test

Voorbereiding:
  - ssh connectie met IOS in orde brengen (Cisco SHA-1 probleem)
  - ansible up2date met de nodige libs
  - netwerk van virtuele router op bridged gezet, zodat ik er met mijn eigen Linuxsysteem aan kon.
  
Implementatie:
  - Nieuwe directory in deze repository aangemaakt met naam Task_2.
  - In deze directory de ansible files aangemaakt: ansible.cfg, hosts en ios_facts.yaml
  - Output bestanden staan in subfolder out
  
Troubleshooting:
  - Cisco SSH verwacht SHA-1, moderne ssh implementaties weigeren standaard SHA-1.
    - putty doet ook nog aan SHA-1 (met waarschuwing weliswaar)
    - openssh is te configureren dat SHA-1 nog aanvaard wordt, maar dit is eigenlijk niet aan te raden
  - ansible docs zijn niet compleet/consistent. Ik had de variabel ansible_network_resources nodig, maar die stond niet in de doc

Proof of quality:
  Zie outputbestanden (in de subfolder out, niet in backups)
