#!/bin/bash
#
# Membersihkan semua notifikasi, lalu menampilkan notifikasi konfirmasi.

# Kirim perintah untuk membersihkan notifikasi
dbus-send --session --type=method_call --dest=org.freedesktop.Notifications /org/freedesktop/Notifications org.freedesktop.Notifications.CloseAllNotifications && \

# Jika perintah di atas berhasil, kirim notifikasi baru sebagai feedback
# notify-send -i "emblem-ok-symbolic" -t 2000 "Notifikasi Dibersihkan" "Semua notifikasi telah dihapus."
