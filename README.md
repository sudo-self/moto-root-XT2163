# Moto G Pure (Ellis, XT2163-4)

## 🔓 Root Without Recovery

To root your Moto G Pure without a custom recovery

1. Boot your device into **fastboot mode**
2. Flash the Magisk-patched boot image

    ```bash
    fastboot flash boot boot(magisk).img
    ```
 3. Then install a terminal and run 

     ```
    adb shell
    su 
    # grant permissions
    whoami
      
    ```   

> ⚠️ Make sure your bootloader is unlocked before flashing.

   ```
     fastboot oem get_unlock_data
   ```
> Then visit the motorola bootloader unlock site
 <a href="https://motorola-global-portal.custhelp.com/app/standalone/bootloader/unlock-your-device-a">Bootloader Unlock</a><br>

   ```
   fastboot oem unlock <your_unlock_token>

   #example: fastboot oem unlock Y3D4N4L8LH3VZ7YYFDYQ

   ```

---

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






