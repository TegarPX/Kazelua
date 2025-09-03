import requests
import random
import time
import logging
from datetime import datetime, timedelta
from telegram import Update
from telegram.ext import Application, MessageHandler, filters, ContextTypes

BOT_TOKEN = "7597556159:AAEFFBASEn3DPTHaUqXh7ygQkuHTrTKlP90"
user_data = {}
bot_start_time = datetime.now()

logging.basicConfig(
    filename="ngl_bot.log",
    level=logging.INFO,
    format="%(asctime)s [%(levelname)s] %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S"
)

def log_event(level, message):
    if level.lower() == "info":
        logging.info(message)
    elif level.lower() == "error":
        logging.error(message)
    print(f"[LOG] {datetime.now().strftime('%Y-%m-%d %H:%M:%S')} - {message}")

def send_to_ngl(url: str, message: str) -> bool:
    data = {
        "username": url.split("/")[-1],
        "question": message,
        "deviceId": str(random.randint(100000, 999999)),
        "gameSlug": "",
        "referrer": ""
    }
    try:
        response = requests.post("https://ngl.link/api/submit", data=data)
        return response.status_code == 200
    except Exception as e:
        log_event("error", f"Error kirim ke NGL: {e}")
        return False

def format_uptime(start_time):
    now = datetime.now()
    delta: timedelta = now - start_time
    days = delta.days
    hours, remainder = divmod(delta.seconds, 3600)
    minutes, seconds = divmod(remainder, 60)
    return days, hours, minutes, seconds

async def show_menu(update: Update):
    menu_text = (
        "📝 *BANTUAN BOT NGL*\n"
        "────────────────────────\n"
        "🌐 `.sngl <URL>`\n"
        "💬 `.steksN <pesan>`\n"
        "🔢 `.stotal <jumlah>`\n"
        "🏷️ `.sname <nama>`\n"
        "📊 `.status`\n"
        "♻️ `.reset`\n"
        "🧹 `.clear`\n"
        "⏱️ `.uptime`\n"
        "🚀 `.send`\n"
        "────────────────────────\n"
        "💻 *Made by TegarP with Python*"
    )
    await update.message.reply_text(menu_text, parse_mode="Markdown")

async def handle_command(update: Update, context: ContextTypes.DEFAULT_TYPE):
    chat_id = update.effective_chat.id
    username_telegram = update.effective_user.username or update.effective_user.first_name
    text = update.message.text.strip()

    if chat_id not in user_data:
        user_data[chat_id] = {
            "ngl_url": None,
            "messages": {},
            "total_count": 1,
            "sender_name": None
        }
    data = user_data[chat_id]
    log_event("info", f"Command diterima dari {username_telegram} (id={chat_id}): {text}")

    if text.lower() in [".menu", ".help"]:
        await show_menu(update)
        return

    if text.lower().startswith(".sngl "):
        url = text.split(" ", 1)[1].strip()
        if url.startswith("https://ngl.link/"):
            data["ngl_url"] = url
            await update.message.reply_text(f"✅ URL NGL diset ke: `{url}`", parse_mode="Markdown")
            log_event("info", f"User {username_telegram} set NGL URL ke {url}")
        else:
            await update.message.reply_text("❌ URL harus diawali https://ngl.link/")
        return

    if text.lower().startswith(".steks"):
        try:
            parts = text.split(" ", 1)
            stks_num = int(parts[0][6:])
            if 1 <= stks_num <= 100:
                message_text = parts[1].strip()
                data["messages"][stks_num] = message_text
                await update.message.reply_text(f"✅ Teks {stks_num} disimpan.")
                log_event("info", f"User {username_telegram} set teks{stks_num}: {message_text}")
            else:
                await update.message.reply_text("❌ Nomor teks harus antara 1-100.")
        except:
            await update.message.reply_text("❌ Format salah. Gunakan `.steksN <teks>` contoh `.steks1 Halo`")
        return

    if text.lower().startswith(".stotal "):
        try:
            total = int(text.split(" ", 1)[1])
            if total <= 0:
                await update.message.reply_text("❌ Jumlah pesan harus lebih dari 0.")
                return
            data["total_count"] = total
            log_event("info", f"User {username_telegram} set total pesan: {total}")
            await update.message.reply_text(f"✅ Total pesan diset ke: *{total}*", parse_mode="Markdown")
        except ValueError:
            await update.message.reply_text("❌ Format salah. Gunakan angka, contoh: `.stotal 10`")
        return

    if text.lower().startswith(".sname "):
        sender_name = text.split(" ", 1)[1].strip()
        data["sender_name"] = sender_name
        log_event("info", f"User {username_telegram} set nama pengirim: {sender_name}")
        await update.message.reply_text(f"✅ Nama pengirim diset ke: `{sender_name}`", parse_mode="Markdown")
        return

    if text.lower() == ".status":
        if data["messages"]:
            messages_list = "\n".join([f"{i}. {v}" for i, v in sorted(data["messages"].items())])
        else:
            messages_list = "Belum ada teks diset."
        status_text = (
            "📊 *Status Pengaturan Kamu*\n"
            "────────────────────────\n"
            f"🌐 URL NGL: `{data['ngl_url'] or 'Belum diset'}`\n"
            f"📝 Teks Pesan:\n{messages_list}\n"
            f"🔢 Total Kirim: `{data['total_count']}`\n"
            f"🏷️ Nama Pengirim: `{data['sender_name'] or 'Anonymous'}`\n"
            "────────────────────────\n"
            "💻 Made by TegarP with Python"
        )
        await update.message.reply_text(status_text, parse_mode="Markdown")
        return

    if text.lower() == ".reset":
        user_data[chat_id] = {
            "ngl_url": None,
            "messages": {},
            "total_count": 1,
            "sender_name": None
        }
        log_event("info", f"User {username_telegram} mereset semua pengaturan.")
        await update.message.reply_text("♻️ Semua pengaturan kamu sudah direset.")
        return

    if text.lower() == ".clear":
        try:
            open("ngl_bot.log", "w").close()
            log_event("info", f"Log file dikosongkan oleh {username_telegram} (id={chat_id})")
            await update.message.reply_text("🧹 Log file berhasil dibersihkan!")
        except Exception as e:
            log_event("error", f"Gagal mengosongkan log: {e}")
            await update.message.reply_text("❌ Terjadi kesalahan saat membersihkan log.")
        return

    if text.lower() == ".uptime":
        days, hours, minutes, seconds = format_uptime(bot_start_time)
        start_str = bot_start_time.strftime("%Y-%m-%d %H:%M:%S")
        uptime_text = (
            f"⏱️ *Uptime Bot*\n"
            "────────────────────────\n"
            f"🕒 Bot berjalan sejak: `{start_str}`\n"
            f"⏳ Lama berjalan: {days} hari, {hours} jam, {minutes} menit, {seconds} detik\n"
            "────────────────────────\n"
            "💻 Made by TegarP with Python"
        )
        await update.message.reply_text(uptime_text, parse_mode="Markdown")
        return

    if text.lower() == ".send":
        if not data["ngl_url"]:
            await update.message.reply_text("❌ URL NGL belum diset. Gunakan `.sngl <URL>`")
            return
        if not data["messages"]:
            await update.message.reply_text("❌ Belum ada teks diset. Gunakan `.steks1`, `.steks2`, dst.")
            return

        messages = list(data["messages"].values())
        total = data["total_count"]
        sender_name = data["sender_name"] or "Anonymous"

        log_event("info", f"User {username_telegram} mulai kirim {total} pesan ke {data['ngl_url']}")
        await update.message.reply_text(f"🚀 Mengirim {total} pesan ke `{data['ngl_url']}`...")

        success = 0
        for i in range(total):
            msg_index = i % len(messages)
            full_message = f"{messages[msg_index]} - {sender_name}"
            if send_to_ngl(data["ngl_url"], full_message):
                success += 1
            else:
                log_event("error", f"Gagal mengirim pesan ke {data['ngl_url']} iterasi {i+1}")
            time.sleep(1)

        fail = total - success
        log_event("info", f"[SEND DONE] {username_telegram} -> {data['ngl_url']}: success={success}, fail={fail}")
        await update.message.reply_text(f"🎉 Selesai! {success}/{total} pesan berhasil dikirim ke `{data['ngl_url']}`.")
        return

    await update.message.reply_text("❌ Command tidak dikenal. Ketik `.menu` untuk bantuan.")

def main():
    app = Application.builder().token(BOT_TOKEN).build()
    app.add_handler(MessageHandler(filters.TEXT & ~filters.COMMAND, handle_command))
    log_event("info", "💻 Bot Telegram berjalan... Made by TegarP with Python")
    print("info", "Bot Telegram Status : 🟢 ( online )")
    app.run_polling()

if __name__ == "__main__":
    main()
