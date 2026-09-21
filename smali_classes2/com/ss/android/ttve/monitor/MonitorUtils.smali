.class public Lcom/ss/android/ttve/monitor/MonitorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final KEY_CHANNEL:Ljava/lang/String; = "channel"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final KEY_EFFECT_VERSION:Ljava/lang/String; = "effect_version"

.field public static final KEY_MODEL:Ljava/lang/String; = "model"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final KEY_USER_ID:Ljava/lang/String; = "user_id"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "version_code"

.field public static final KEY_VE_VERSION:Ljava/lang/String; = "ve_version"

.field public static final MONITOR_AID:Ljava/lang/String; = "1357"

.field public static final MONITOR_SERVICE_NAME:Ljava/lang/String; = "sdk_video_edit_compose"

.field public static final SERVICE_NAME_TE_FRAME_REPORT:Ljava/lang/String; = "iesve_veeditor_frame_report"

.field public static final SERVICE_NAME_TE_SENSOR_REPORT:Ljava/lang/String; = "iesve_veeditor_sensor_report"

.field public static final SERVICE_NAME_VIDEO_EDITOR_COMPOSITION:Ljava/lang/String; = "iesve_veeditor_composition_finish"

.field public static final SERVICE_NAME_VIDEO_EDITOR_CUT:Ljava/lang/String; = "iesve_veeditor_cut"

.field public static final SERVICE_NAME_VIDEO_EDITOR_EDIT:Ljava/lang/String; = "iesve_veeditor_edit"

.field public static final SERVICE_NAME_VIDEO_EDITOR_RECORD:Ljava/lang/String; = "iesve_veeditor_record_finish"

.field private static final TAG:Ljava/lang/String; = "MonitorUtils"

.field public static enableAsyncMonitorInit:Z = false

.field private static sEnable:Z = true

.field private static final sLock:Ljava/lang/Object;

.field private static volatile sMonitorHasInited:Z = false

.field private static sMonitorThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 27
    sget-object v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 27
    sput-boolean p0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sMonitorHasInited:Z

    return p0
.end method

.method private static checkMonitorHasInited()V
    .registers 7

    .line 367
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->enableAsyncMonitorInit:Z

    if-eqz v0, :cond_44

    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sMonitorHasInited:Z

    if-nez v0, :cond_44

    .line 368
    sget-object v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :goto_b
    :try_start_b
    sget-boolean v1, Lcom/ss/android/ttve/monitor/MonitorUtils;->sMonitorHasInited:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_39

    if-nez v1, :cond_40

    .line 371
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 372
    sget-object v3, Lcom/ss/android/ttve/monitor/MonitorUtils;->sLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 373
    const-string v3, "MonitorUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMonitorHasInited wait: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_38} :catch_3b
    .catchall {:try_start_f .. :try_end_38} :catchall_39

    goto :goto_b

    :catchall_39
    move-exception v1

    goto :goto_42

    :catch_3b
    move-exception v1

    .line 375
    :try_start_3c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 378
    :cond_40
    monitor-exit v0

    goto :goto_44

    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_39

    throw v1

    :cond_44
    :goto_44
    return-void
.end method

.method static generateHeaderInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    .line 280
    const-string v0, "11.8.4.8-alpha.142-cy-tob"

    const-string v1, "app_version"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 283
    :try_start_9
    const-string v3, "device_id"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_e} :catch_22

    .line 285
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 287
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_21} :catch_24
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_21} :catch_22

    goto :goto_31

    :catch_22
    move-exception p0

    goto :goto_73

    :catch_24
    move-exception p1

    .line 289
    :try_start_25
    const-string v3, "vesdk:11.8.4.8-alpha.142-cy-tob"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v1, "MonitorUtils"

    const-string v3, "PackageManager.NameNotFoundException"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    :goto_31
    const-string p1, "ve_version"

    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string p1, "effect_version"

    const-string v1, "202505271112_1_202505271112_22712c533ca"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string p1, "model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tob"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 302
    const-string v0, "channel"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string p1, "package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string p0, "user_id"

    invoke-virtual {v2, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    const-string p0, "version_code"

    invoke-virtual {v2, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_72} :catch_22

    goto :goto_76

    .line 311
    :goto_73
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_76
    return-object v2
.end method

.method public static getAppVersion()Ljava/lang/String;
    .registers 1

    .line 146
    const-string v0, "app_version"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .registers 1

    .line 137
    const-string v0, "device_id"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 150
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    if-nez v0, :cond_d

    .line 151
    const-string p0, "MonitorUtils"

    const-string v0, "getHeaderInfo: Monitor not enabled just return."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 155
    :cond_d
    invoke-static {}, Lcom/ss/android/ttve/monitor/MonitorUtils;->checkMonitorHasInited()V

    .line 156
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/ColCompat;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserId()Ljava/lang/String;
    .registers 1

    .line 130
    const-string v0, "user_id"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 74
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    if-nez v0, :cond_c

    .line 75
    const-string p0, "MonitorUtils"

    const-string p1, "init: Monitor not enabled just return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 78
    :cond_c
    invoke-static {}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setServerUrl()V

    .line 79
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->enableAsyncMonitorInit:Z

    if-eqz v0, :cond_2b

    .line 80
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sMonitorHasInited:Z

    if-nez v0, :cond_2a

    sget-object v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sMonitorThread:Ljava/lang/Thread;

    if-nez v0, :cond_2a

    .line 81
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ss/android/ttve/monitor/MonitorUtils$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/MonitorUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sMonitorThread:Ljava/lang/Thread;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2a
    return-void

    .line 94
    :cond_2b
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/ColCompat;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 95
    sput-boolean p0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sMonitorHasInited:Z

    return-void
.end method

.method public static monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V
    .registers 4

    .line 253
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    if-nez v0, :cond_c

    .line 254
    const-string p0, "MonitorUtils"

    const-string p1, "monitorStatistics: Monitor not enabled just return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 257
    :cond_c
    invoke-static {}, Lcom/ss/android/ttve/monitor/MonitorUtils;->checkMonitorHasInited()V

    if-nez p2, :cond_13

    const/4 p2, 0x0

    goto :goto_17

    .line 258
    :cond_13
    invoke-virtual {p2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->parseJsonObj()Lorg/json/JSONObject;

    move-result-object p2

    .line 259
    :goto_17
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/ColCompat;->monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 4

    .line 263
    invoke-static {}, Lcom/ss/android/ttve/monitor/MonitorUtils;->checkMonitorHasInited()V

    .line 264
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/ColCompat;->monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static monitorStatusRate(Ljava/lang/String;ILorg/json/JSONObject;)V
    .registers 10

    .line 183
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    const-string v1, "MonitorUtils"

    if-nez v0, :cond_c

    .line 184
    const-string p0, "monitorStatusRate: Monitor not enabled just return."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-nez p2, :cond_14

    .line 188
    const-string p0, "monitorStatusRate: empty log data!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_14
    invoke-static {}, Lcom/ss/android/ttve/monitor/MonitorUtils;->checkMonitorHasInited()V

    .line 193
    const-string v0, "device_id"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Unknown"

    if-eqz v2, :cond_2d

    .line 197
    invoke-static {v0, v3}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "Device id is empty, please set device id with 1. VESDK.setAppFiled or TEMonitor.setDeviceId(deviceid) before using SDK. \n 2. Use TEMonitor.setSDKMonitorEnable(false) to disable SDKMonitor."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_2d
    const-string v0, "user_id"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 206
    invoke-static {v0, v3}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "User id is empty, please set user id with TEMonitor.setUserId(userid) before using SDK\n 2. Use TEMonitor.setSDKMonitorEnable(false) to disable SDKMonitor."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_41
    const-string v0, "app_version"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->getHeaderInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 215
    invoke-static {v0, v3}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "App version is empty, please set app version with TEMonitor.setAppVersion(version) before using SDK\n 2. Use TEMonitor.setSDKMonitorEnable(false) to disable SDKMonitor."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_55
    :try_start_55
    invoke-static {}, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->toMap()Ljava/util/Map;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_61
    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 223
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 224
    sget-object v4, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->sNumberKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_55 .. :try_end_7d} :catch_c0

    const-string v5, "te_device_info_"

    if-eqz v4, :cond_c2

    .line 225
    :try_start_81
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_81 .. :try_end_85} :catch_c0

    if-nez v4, :cond_61

    .line 227
    :try_start_87
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    float-to-double v5, v3

    invoke-virtual {p2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a4} :catch_a5

    goto :goto_61

    .line 230
    :catch_a5
    :try_start_a5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device info value is error key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :catch_c0
    move-exception v0

    goto :goto_db

    .line 234
    :cond_c2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_da
    .catch Lorg/json/JSONException; {:try_start_a5 .. :try_end_da} :catch_c0

    goto :goto_61

    .line 239
    :goto_db
    const-string v2, "monitorStatusRate: json exception!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_e0
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/ColCompat;->monitorStatusAndDuration(Ljava/lang/String;ILorg/json/JSONObject;)V

    return-void
.end method

.method public static sensorReport(Landroid/content/Context;)V
    .registers 8

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 341
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    .line 343
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    move v4, v3

    goto :goto_19

    :cond_18
    move v4, v2

    .line 344
    :goto_19
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "te_sensor_type_gyroscope_exist"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v1, :cond_2a

    .line 345
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    move-object v1, v4

    :goto_2b
    const-string v5, "te_sensor_type_gyroscope_name"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xf

    .line 347
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_3a

    move v5, v3

    goto :goto_3b

    :cond_3a
    move v5, v2

    .line 348
    :goto_3b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "te_sensor_type_game_rotation_vector_exist"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4b

    .line 349
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4c

    :cond_4b
    move-object v1, v4

    :goto_4c
    const-string v5, "te_sensor_type_game_rotation_vector_name"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 351
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_5b

    move v5, v3

    goto :goto_5c

    :cond_5b
    move v5, v2

    .line 352
    :goto_5c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "te_sensor_type_rotation_vector_exist"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6c

    .line 353
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_6d

    :cond_6c
    move-object v1, v4

    :goto_6d
    const-string v5, "te_sensor_type_rotation_vector_name"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 355
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_7c

    move v5, v3

    goto :goto_7d

    :cond_7c
    move v5, v2

    .line 356
    :goto_7d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "te_sensor_type_gravity_exist"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_8d

    .line 357
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_8e

    :cond_8d
    move-object v1, v4

    :goto_8e
    const-string v5, "te_sensor_type_gravity_name"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-virtual {p0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    if-eqz p0, :cond_9a

    move v2, v3

    .line 360
    :cond_9a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "te_sensor_type_accelerometer_exist"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_a9

    .line 361
    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_a9
    const-string p0, "te_sensor_type_accelerometer_name"

    invoke-interface {v0, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string p0, "iesve_veeditor_sensor_report"

    invoke-static {p0, p0, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .registers 2

    .line 123
    const-string v0, "app_version"

    invoke-static {v0, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .registers 2

    .line 114
    const-string v0, "device_id"

    invoke-static {v0, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setEnable(Z)V
    .registers 1

    .line 322
    sput-boolean p0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    return-void
.end method

.method private static setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 166
    sget-boolean v0, Lcom/ss/android/ttve/monitor/MonitorUtils;->sEnable:Z

    if-nez v0, :cond_c

    .line 167
    const-string p0, "MonitorUtils"

    const-string p1, "setHeaderInfo: Monitor not enabled just return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 170
    :cond_c
    invoke-static {}, Lcom/ss/android/ttve/monitor/MonitorUtils;->checkMonitorHasInited()V

    .line 171
    invoke-static {p0, p1}, Lcom/ss/android/ttve/monitor/ColCompat;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setServerUrl()V
    .registers 0

    .line 329
    invoke-static {}, Lcom/ss/android/ttve/monitor/ColCompat;->setServerUrl()V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .registers 2

    .line 105
    const-string v0, "user_id"

    invoke-static {v0, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
