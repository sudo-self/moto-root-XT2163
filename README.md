# Moto G Pure XT2163 (Ellis)

## TO GET YOUR DEVICE ID

1. Put your device in fastboot mode (press the power button and volume down button at the same time, then connect your device to your computer with a USB cable).
2. On your computer, open a command prompt or Terminal session.
3. Go to the directory where you installed the Android SDK tools, and type:
    ```bash
    $ fastboot oem get_unlock_data
    ```
    This fastboot command will return a character string. This is the Device ID, which you will use to generate your unique unlock key.

    Example Device ID (PC User)
    ```bash
    $ fastboot oem get_unlock_data
    (bootloader) 0A40040192024205#4C4D3556313230
    (bootloader) 30373731363031303332323239#BD00
    (bootloader) 8A672BA4746C2CE02328A2AC0C39F95
    (bootloader) 1A3E5#1F53280002000000000000000
    (bootloader) 0000000
    ```

    Example Device ID (Mac Users)
    ```bash
    INFO0A40040192024205#4C4D3556313230
    INFO30373731363031303332323239#BD00
    INFO8A672BA4746C2CE02328A2AC0C39F95
    INFO1A3E5#1F53280002000000000000000
    INFO0000000
    ```

4. To generate your unlock code, you’ll need to paste together the 5 lines of output into one continuous string without "bootloader" or "info" or white spaces. Using the example above, the line you’d send us would be:
    ```bash
    0A40040192024205#4C4D355631323030373731363031303332323239#BD008A672BA4746C2CE02328A2AC0C39F951A3E5#1F532800020000000000000000000000
    ```

5. Copy the Device ID string, being sure there are no spaces, and paste it into the "Make Sure Your Device Is Unlockable" field below. This will verify that your device can be unlocked.

---

## 🔓 Root Without Recovery

To root your Moto G Pure without a custom recovery:

1. Boot your device into fastboot mode

2. Flash the Magisk-patched boot image<br />
    ```bash
    fastboot flash boot boot(magisk).img
    ```
4. Then simply root from adb:
    ```bash
    adb shell
    su
    whoami
    ```

⚠️ **Your bootloader must be unlocked before flashing** ⚠️  

## 📦 Restore Stock Firmware

### Download Stock Firmware

- **Device:** Moto G Pure (Ellis – XT2163-4, USC)
- **Firmware Version:** Android 12 (S3RH32.20-42-10-14)
- **Download:**  
  [XT2163-4 Stock Firmware](https://mirrors.lolinet.com/firmware/motorola/ellis/official/USC/XT2163-4_ELLIS_USC_12_S3RH32.20-42-10-14_subsidy-DEFAULT_regulatory-DEFAULT_R2_CFC.xml.zip)

---

### Flash Instructions

1. **Unzip** the downloaded firmware archive.
2. **Move** the `FlashStock_ellis.sh` script to the **root of the unzipped folder**.
3. **Make the script executable**:

    ```bash
    chmod +x FlashStock_ellis.sh
    ```

4. **Connect** your device in **fastboot mode**.
5. **Run the script**:

    ```bash
    ./FlashStock_ellis.sh
    ```

---

## ⚙️ Requirements

- Unlocked bootloader
- `fastboot` & `adb` installed on your PC
- USB cable & working device connection

---

## 📝 Notes

- Flashing stock firmware will **erase all data**.
- Double-check firmware version matches your device.
- Use at your own risk — follow instructions carefully.






