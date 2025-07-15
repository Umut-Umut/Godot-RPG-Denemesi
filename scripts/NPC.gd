class_name NPC
extends Entity


var dialog_list = [
	"Bu jet özel yapım. Brahmin tüyüyle süzülmüş. Sadece sende olacak... tabii kardeşime da satmadıysam.",
	"Açım... ama elmayı kabuğuyla verirsen, gururum kırılır.",
	"Yoldaşım! Şu duvar bana bi şey fısıldadı... ama şimdi küfrediyo sanırım.",
	"Senin silahların var mı? Annem tabanca koleksiyonu yapıyor da...",
	"Geçiş iznin yoksa, buradan ancak kürekle geçersin. Mezara doğru.",
	"Altın saat mi? Bende yok. Ama sol cebim bi garip ağırlaştı sanki...",
	"Ben sadece çeviri için programlandım. Ama şimdi terminatör gibi hissediyorum.",
	"Şu derili ceket sende güzel durur. Tabii eğer başka bir yerden çalmadıysan.",
	"Bu terminali açmak için 150 IQ lazım... ya da iyi bir levye.",
	"İnsanlar bana 'ölü' gibi bakıyorlar. İltifat mı bu sizce?"
]


func dialogue():
	# notify ile dialog data gonderilecek.
	var text = dialog_list[randi() % dialog_list.size()]
	Notification.notify(Notification.Types.DialogueStarted, [text, ["Evet", "Hayir"], self.position, self])
	prints(name, text)
