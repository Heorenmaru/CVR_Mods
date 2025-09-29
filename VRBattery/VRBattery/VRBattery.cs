using ABI_RC.Core.Savior;
using ABI_RC.Systems.InputManagement;
using ABI_RC.Systems.GameEventSystem;
using MelonLoader;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Valve.VR;



namespace VRBattery
{
    public class VRBattery : MelonMod
    {

        // private static bool init = false;
        private bool isMenuReady = false;
        private bool isMenuOpen = false;

        private bool Errinit = false;
        private GameObject quickMenu;
        private GameObject indicatorInstance;
        private AssetBundle bundle;



        private Image leftControllerImageBar;
        private Image leftControllerImage;
        private Image RightControllerImageBar;
        private Image RightControllerImage;
        private Image tracker1ImageBar;
        private Image tracker1Image;
        private Image tracker2ImageBar;
        private Image tracker2Image;
        private Image tracker3ImageBar;
        private Image tracker3Image;

        private float updateInterval = 1f;  // обновлять раз в секунду
        private float timer = 0f;

        Color ColorOff = new Color(0.3f, 0.3f, 0.3f, 1f);
        Color ColorOn = new Color(1f, 1f, 1f, 1f);

        Color ColorBatOk = new Color(0f, 1f, 0f, 1f);
        Color ColorBatLow = new Color(1f, 1f, 0f, 1f);
        Color ColorBatCrit = new Color(1f, 0f, 0f, 1f);

        ////////////////////////////////////////////
        /// VR
        //////////////////////////////////////////// 
        // Структура для описания устройства
        public struct DeviceInfo
        {
            public uint DeviceId;
            public ETrackedDeviceClass DeviceClass;
            public ETrackedControllerRole DeviceRole;
        }

        // Инициализация массива
        DeviceInfo[] devices = new DeviceInfo[5];


        // Находит и запоминает устройства
        private void FindTrackedDevices()
        {
            if (OpenVR.System == null)
            {
                return;
            }

            uint trackercount = 0;
            for (uint deviceId = 0; deviceId < OpenVR.k_unMaxTrackedDeviceCount; deviceId++)
            {
                if (trackercount >= 5)
                {
                    break;
                }

                var deviceClass = OpenVR.System.GetTrackedDeviceClass(deviceId);

                //debug
                if (deviceClass == ETrackedDeviceClass.Invalid)
                {
                    continue;

                }

                //MelonLogger.Warning($" --- > test: ID:{deviceId} class: {deviceClass}");
                ETrackedPropertyError status = ETrackedPropertyError.TrackedProp_Success;


                // Для контроллеров определяем левый/правый
                ETrackedControllerRole roleInt = 0;
                if (deviceClass == ETrackedDeviceClass.Controller)
                {

                    roleInt = (ETrackedControllerRole)OpenVR.System.GetInt32TrackedDeviceProperty(
                        deviceId,
                         (ETrackedDeviceProperty)3007,
                        ref status);

                    if (status == ETrackedPropertyError.TrackedProp_Success)
                    {
                        devices[trackercount].DeviceId = deviceId;
                        devices[trackercount].DeviceClass = deviceClass;
                        devices[trackercount].DeviceRole = roleInt;

                        trackercount++;
                    }
                }

                // Для трекеров
                if (deviceClass == ETrackedDeviceClass.Tracker)
                {
                    {
                        devices[trackercount].DeviceId = deviceId;
                        devices[trackercount].DeviceClass = deviceClass;
                        devices[trackercount].DeviceRole = ETrackedControllerRole.Invalid;

                        trackercount++;
                    }
                }
            }
        }

        private void SetBarColor(Image BarImage, float BatLVL)
        {
            if (BatLVL > 0.25f)
            {
                BarImage.color = ColorBatOk;
                // MelonLogger.Msg($"BatteryColor: ok");
            }
            else
            {
                // MelonLogger.Msg($"BatteryColor: low");
                if (BatLVL > 0.15f)
                {
                    BarImage.color = ColorBatLow;
                }
                else
                {
                    BarImage.color = ColorBatCrit;
                }

            }

        }
        // Опрашивает состояние устройств и выводит батарею + активность
        private void UpdateTrackedDevicesStatus()
        {
            if (OpenVR.System == null)
            {
                return;
            }

            uint trackerCnt = 0;
            for (int i = 0; i < devices.Length; i++)
            {
                ETrackedPropertyError status = ETrackedPropertyError.TrackedProp_Success;

                float batteryLevel = OpenVR.System.GetFloatTrackedDeviceProperty(
                    devices[i].DeviceId,
                    ETrackedDeviceProperty.Prop_DeviceBatteryPercentage_Float,
                    ref status);

                if (status != ETrackedPropertyError.TrackedProp_Success)
                {
                    // MelonLogger.Warning($" --- > Error reading battery for device {devices[i].DeviceId}, Code: {status}");
                    continue;
                }

                // MelonLogger.Msg($"{devices[i].DeviceClass} (ID {devices[i].DeviceId}) - Battery: {batteryLevel * 100f:F1}%");

                // контроллеры
                if (devices[i].DeviceClass == ETrackedDeviceClass.Controller)
                {
                    // левый
                    if (devices[i].DeviceRole == ETrackedControllerRole.LeftHand)
                    {
                        if (OpenVR.System.IsTrackedDeviceConnected(devices[i].DeviceId)) //если активен
                        {
                            leftControllerImage.color = ColorOn;
                            leftControllerImageBar.fillAmount = batteryLevel;

                            SetBarColor(leftControllerImageBar, batteryLevel);

                            // if (batteryLevel > 0.25f)
                            // {
                            //     leftControllerImageBar.color = ColorBatOk;
                            //     // MelonLogger.Msg($"BatteryColor: ok");
                            // }
                            // else
                            // {
                            //     // MelonLogger.Msg($"BatteryColor: low");
                            //     if (batteryLevel > 0.15f)
                            //     {
                            //         leftControllerImageBar.color = ColorBatLow;
                            //     }
                            //     else
                            //     {
                            //         leftControllerImageBar.color = ColorBatCrit;
                            //     }

                            // }


                        }
                        else
                        {
                            leftControllerImageBar.fillAmount = 0f;
                            leftControllerImage.color = ColorOff;
                        }
                        continue;
                    }
                    // правый
                    if (devices[i].DeviceRole == ETrackedControllerRole.RightHand)
                    {
                        if (OpenVR.System.IsTrackedDeviceConnected(devices[i].DeviceId)) //если активен
                        {
                            RightControllerImage.color = ColorOn;
                            RightControllerImageBar.fillAmount = batteryLevel;


                            SetBarColor(RightControllerImageBar, batteryLevel);

                            // if (batteryLevel > 0.25f)
                            // {
                            //     RightControllerImageBar.color = ColorBatOk;
                            // }
                            // else
                            // {
                            //     if (batteryLevel > 0.15f)
                            //     {
                            //         RightControllerImageBar.color = ColorBatLow;
                            //     }
                            //     else
                            //     {
                            //         RightControllerImageBar.color = ColorBatCrit;
                            //     }
                            // }


                        }
                        else
                        {
                            RightControllerImageBar.fillAmount = 0f;
                            RightControllerImage.color = ColorOff;
                        }
                        continue;
                    }

                }
                // трекеры
                if (devices[i].DeviceClass == ETrackedDeviceClass.Tracker)
                {
                    if (trackerCnt == 0)
                    {
                        if (OpenVR.System.IsTrackedDeviceConnected(devices[i].DeviceId)) //если активен
                        {
                            tracker1Image.color = ColorOn;
                            tracker1ImageBar.fillAmount = batteryLevel;

                            SetBarColor(tracker1ImageBar, batteryLevel);


                            // if (batteryLevel > 0.25f)
                            // {
                            //     tracker1ImageBar.color = ColorBatOk;
                            // }
                            // else
                            // {
                            //     if (batteryLevel > 0.15f)
                            //     {
                            //         tracker1ImageBar.color = ColorBatLow;
                            //     }
                            //     else
                            //     {
                            //         tracker1ImageBar.color = ColorBatCrit;
                            //     }
                            // }


                        }
                        else
                        {
                            tracker1ImageBar.fillAmount = 0f;
                            tracker1Image.color = ColorOff;
                        }
                        trackerCnt++;
                        continue;
                    }

                    if (trackerCnt == 1)
                    {
                        if (OpenVR.System.IsTrackedDeviceConnected(devices[i].DeviceId)) //если активен
                        {
                            tracker2Image.color = ColorOn;
                            tracker2ImageBar.fillAmount = batteryLevel;

                            SetBarColor(tracker2ImageBar, batteryLevel);


                            // if (batteryLevel > 0.25f)
                            // {
                            //     tracker2ImageBar.color = ColorBatOk;
                            // }
                            // else
                            // {
                            //     if (batteryLevel > 0.15f)
                            //     {
                            //         tracker2ImageBar.color = ColorBatLow;
                            //     }
                            //     else
                            //     {
                            //         tracker2ImageBar.color = ColorBatCrit;
                            //     }
                            // }


                        }
                        else
                        {
                            tracker2Image.color = ColorOff;
                            tracker2ImageBar.fillAmount = 0f;
                        }
                        trackerCnt++;
                        continue;
                    }
                    if (trackerCnt == 2)
                    {
                        if (OpenVR.System.IsTrackedDeviceConnected(devices[i].DeviceId)) //если активен
                        {
                            tracker3Image.color = ColorOn;
                            tracker3ImageBar.fillAmount = batteryLevel;

                            SetBarColor(tracker3ImageBar, batteryLevel);


                            // if (batteryLevel > 0.25f)
                            // {
                            //     tracker3ImageBar.color = ColorBatOk;
                            // }
                            // else
                            // {
                            //     if (batteryLevel > 0.15f)
                            //     {
                            //         tracker3ImageBar.color = ColorBatLow;
                            //     }
                            //     else
                            //     {
                            //         tracker3ImageBar.color = ColorBatCrit;
                            //     }

                            // }


                        }
                        else
                        {
                            tracker3Image.color = ColorOff;
                            tracker3ImageBar.fillAmount = 0f;
                        }
                        trackerCnt++;
                        continue;
                    }


                }



                // MelonLogger.Msg($"{device.Role} (ID {device.DeviceId}) - Battery: {batteryLevel * 100f:F1}%, Active: {isActive}");
            }
        }
        ////////////////////////////////////////////
        /// asset
        //////////////////////////////////////////// 
        void SetLayerRecursively(GameObject obj, int layer)
        {
            obj.layer = layer;
            foreach (Transform child in obj.transform)
            {
                SetLayerRecursively(child.gameObject, layer);
            }
        }

        public override void OnApplicationStart()
        {

            // MelonLogger.Msg("OnUpdate");
            // Если меню уже готово, то дальше ничего не делаем


            bundle = AssetLoader.Load();
            if (bundle == null)
            {
                MelonLogger.Warning("AssetBundle not found");
                Errinit = true;
                return;
            }
            MelonLogger.Msg("-->> AssetBundle Loaded");


        }

        // public override void OnSceneWasLoaded(int buildIndex, string sceneName)
        // {
        //     MelonLogger.Msg("--->> OnSceneWasLoaded");
        // }

        void OnQuickMenuOpened()
        {
            isMenuOpen = true;
            FindTrackedDevices();
            // MelonLogger.Msg("--->> OnQuickMenuOpened"); //test
            indicatorInstance.SetActive(true);
        }
        void OnQuickMenuClosed()
        {
            isMenuOpen = false;
            // MelonLogger.Msg("--->> OnQuickMenuClosed"); //test
            indicatorInstance.SetActive(false);
        }



        void LogHierarchy(GameObject obj, string indent = "")
        {
            MelonLogger.Msg(indent + obj.name);

            foreach (Transform child in obj.transform)
            {
                LogHierarchy(child.gameObject, indent + "  "); // добавляем отступ для детей
            }
            // foreach (Transform child in obj.transform)
            // {
            //     LogChildComponents(child.gameObject);
            // }
        }


        bool indicatorinit()
        {
            // Пытаемся найти корневой объект Cohtml (в DontDestroyOnLoad)
            GameObject cohtmlRoot = GameObject.Find("Cohtml");
            if (cohtmlRoot == null)
            {
                MelonLogger.Warning("Cohtml root object not found yet.");
                return false;
            }
            MelonLogger.Msg("-->> Cohtml found");


            // Пытаемся найти QuickMenu в иерархии
            Transform quickMenuTransform = cohtmlRoot.transform.Find("QuickMenuParent/Offset/QuickMenu");
            if (quickMenuTransform == null)
            {
                MelonLogger.Warning("QuickMenu object not found yet.");
                return false;
            }
            MelonLogger.Msg("-->> QuickMenu found");
            quickMenu = quickMenuTransform.gameObject;

            MelonLogger.Msg("QuickMenu found");

            string assetName = bundle.GetAllAssetNames()[0];
            GameObject indicatorPrefab = bundle.LoadAsset<GameObject>(assetName);
            if (indicatorPrefab == null)
            {
                MelonLogger.Msg("Failed to find prefab in AssetBundle.");
                bundle.Unload(false);
                return false;
            }

            // Инстанцируем и делаем дочерним для QuickMenu
            indicatorInstance = UnityEngine.Object.Instantiate(indicatorPrefab, quickMenu.transform);
            indicatorInstance.transform.localPosition = Vector3.zero;
            indicatorInstance.transform.localRotation = Quaternion.identity;
            indicatorInstance.transform.localScale = Vector3.one;

            indicatorInstance.transform.localScale = new Vector3(0.001f, 0.001f, 0.001f); // иначе будет слишком огромным

            // перемещаем ассет в слой UI Internal (или его будет скрывать любой объект в сцене)

            int uiInternalLayer = LayerMask.NameToLayer("UI Internal");
            if (uiInternalLayer == -1)
            {
                MelonLogger.Warning("Layer 'UI Internal' not found.");
            }
            else
            {
                SetLayerRecursively(indicatorInstance, uiInternalLayer);

                MelonLogger.Msg($"Set 'UI Internal ({uiInternalLayer})' layer on indicatorInstance and its children.");
            }
            MelonLogger.Msg("vrbatteryindicator prefab successfully added to QuickMenu.");


            indicatorInstance.SetActive(false); //скрываем, чтобы не маячил при первом входе

            LogHierarchy(indicatorInstance); // debug


            //ищем Screen в ассете
            Transform screen = indicatorInstance.transform.Find("Screen");
            if (screen == null)
            {
                MelonLogger.Warning("Screen object not found inside indicatorInstance");
                Errinit = true;
                return false;
            }

            // пробуем добавить контроллеры из Screen
            GameObject controllerLeft = screen.Find("IndicatorPanel/ControllerLeft")?.gameObject;
            GameObject controllerRight = screen.Find("IndicatorPanel/ControllerRight")?.gameObject;

            if (controllerLeft == null || controllerRight == null)
            {
                MelonLogger.Warning("ControllerLeft or ControllerRight not found");
                MelonLogger.Warning("init aborted");
                Errinit = true;
                return false;
            }
            else
            {
                MelonLogger.Msg("Controllers found and cached");

            }

            // пробуем добавить прогрессбар и иконку
            leftControllerImageBar = controllerLeft.transform.Find("ImageBar")?.gameObject.GetComponent<Image>();
            leftControllerImage = controllerLeft.transform.Find("Img_indL")?.gameObject.GetComponent<Image>();

            RightControllerImageBar = controllerRight.transform.Find("ImageBar")?.gameObject.GetComponent<Image>();
            RightControllerImage = controllerRight.transform.Find("Img_indR")?.gameObject.GetComponent<Image>();


            // аналогично с трекерами
            GameObject tracker1 = screen.Find("IndicatorPanel/Tracker1")?.gameObject;
            GameObject tracker2 = screen.Find("IndicatorPanel/Tracker2")?.gameObject;
            GameObject tracker3 = screen.Find("IndicatorPanel/Tracker3")?.gameObject;

            if (tracker1 == null || tracker2 == null || tracker3 == null)
            {
                MelonLogger.Warning("tracker not found");
                MelonLogger.Warning("init aborted");
                Errinit = true;
                return false;
            }
            else
            {
                MelonLogger.Msg("all trackers found and cached");

            }


            tracker1ImageBar = tracker1.transform.Find("ImageBar")?.gameObject.GetComponent<Image>();
            tracker1Image = tracker1.transform.Find("img_tracker")?.gameObject.GetComponent<Image>();

            tracker2ImageBar = tracker2.transform.Find("ImageBar")?.gameObject.GetComponent<Image>();
            tracker2Image = tracker2.transform.Find("img_tracker")?.gameObject.GetComponent<Image>();

            tracker3ImageBar = tracker3.transform.Find("ImageBar")?.gameObject.GetComponent<Image>();
            tracker3Image = tracker3.transform.Find("img_tracker")?.gameObject.GetComponent<Image>();


            //проверка всего этого Х_х"

            if (leftControllerImageBar == null)
            {
                MelonLogger.Warning("leftControllerImageBar not found!");
                Errinit = true;
                MelonLogger.Warning("init aborted");
                return false;
            }
            if (leftControllerImage == null)
            {
                MelonLogger.Warning("leftControllerImage not found!");
                Errinit = true;
                MelonLogger.Warning("init aborted");
                return false;
            }
            if (RightControllerImageBar == null)
            {
                MelonLogger.Warning("RightControllerImageBar not found!");
                Errinit = true;
                MelonLogger.Warning("init aborted");
                return false;
            }
            if (RightControllerImage == null)
            {
                MelonLogger.Warning("RightControllerImage not found!");
                Errinit = true;
                MelonLogger.Warning("init aborted");
                return false;
            }
            if (tracker1ImageBar == null)
            {
                MelonLogger.Warning("tracker1ImageBar not found!");
                Errinit = true;
                MelonLogger.Warning("init aborted");
                return false;
            }
            if (tracker1Image == null)
            {
                MelonLogger.Warning("tracker1Image not found!");
                Errinit = true;
                MelonLogger.Warning("init aborted");
                return false;
            }
            if (tracker2ImageBar == null)
            {
                MelonLogger.Warning("tracker2ImageBar not found!");
                Errinit = true;
                MelonLogger.Warning("init aborted");
                return false;
            }
            if (tracker2Image == null)
            {
                MelonLogger.Warning("tracker2Image not found!");
                Errinit = true;
                MelonLogger.Warning("init aborted");
                return false;
            }
            if (tracker3ImageBar == null)
            {
                MelonLogger.Warning("tracker3ImageBar not found!");
                Errinit = true;
                MelonLogger.Warning("init aborted");
                return false;
            }
            if (tracker3Image == null)
            {
                MelonLogger.Warning("tracker3Image not found!");
                Errinit = true;
                MelonLogger.Warning("init aborted");
                return false;
            }

            //регистрция событий
            CVRGameEventSystem.QuickMenu.OnOpen.AddListener(OnQuickMenuOpened);
            CVRGameEventSystem.QuickMenu.OnClose.AddListener(OnQuickMenuClosed);
            return true;
        }
        ////////////////////////////////////////////
        /// OnUpdate
        //////////////////////////////////////////// 

        public override void OnUpdate()
        {
            //каждый кадр нам нет смысла обновлять данные, 1 раза в секунду достаточно
            timer += Time.deltaTime;   // Нужно, чтобы UnityEngine.dll была подключена
            if (timer >= updateInterval)
            {
                timer = 0f;
                if (Errinit)
                {
                    // что-то пошло не так
                    return;
                }

                if (!isMenuReady)
                {
                    if (!indicatorinit())
                    {
                        return;
                    }
                    isMenuReady = true;

                }
                else
                {

                    //если VR не запущен - пропускаем все
                    if (OpenVR.System == null)
                    {
                        // MelonLogger.Warning("OpenVR.System not init.");
                        return;
                    }
                    if (isMenuOpen)
                    {
                        UpdateTrackedDevicesStatus();
                    }

                    ///........
                }
            }
        }


    }
}