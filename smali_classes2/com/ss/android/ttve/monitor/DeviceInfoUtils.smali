.class public Lcom/ss/android/ttve/monitor/DeviceInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CPU_FILE:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final HARDWARE_PATTERN:Ljava/lang/String; = "Hardware"

.field private static final TAG:Ljava/lang/String; = "DeviceInfoUtils"

.field private static sCpuHardware:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Reader;)V
    .registers 1

    if-eqz p0, :cond_a

    .line 231
    :try_start_2
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    return-void
.end method

.method private static getDirectoryTotalSize(Ljava/lang/String;)J
    .registers 6

    .line 184
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    .line 189
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_f

    mul-long/2addr v1, v3

    return-wide v1

    :catch_f
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getExternalStorage(Landroid/content/Context;)J
    .registers 3

    .line 225
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->getDirectoryTotalSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_13
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getInternalStorage()J
    .registers 5

    .line 172
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public static getMaxCpuFreq()Ljava/lang/String;
    .registers 3

    .line 93
    const-string v0, "0"

    .line 95
    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 97
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static getNumOfCores()I
    .registers 2

    .line 107
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/ss/android/ttve/monitor/DeviceInfoUtils$1;

    invoke-direct {v1}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x1

    return v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 44
    const-class v0, Ljava/lang/String;

    const-string v1, "unknown"

    .line 46
    :try_start_4
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 47
    const-string v3, "get"

    filled-new-array {v0, v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 48
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    return-object v1
.end method

.method public static getRealScreenHeight(Landroid/content/Context;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 265
    :cond_4
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 267
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 269
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 270
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 271
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 254
    :cond_4
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 255
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 256
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 258
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 243
    :cond_4
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 244
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 245
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 246
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getSensorUsability(Landroid/content/Context;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 314
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    if-nez p0, :cond_10

    goto :goto_28

    :cond_10
    const/16 v1, 0xe

    .line 319
    new-array v2, v1, [I

    fill-array-data v2, :array_2a

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v1, :cond_28

    .line 336
    aget v4, v2, v3

    .line 337
    invoke-virtual {p0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 339
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_28
    :goto_28
    return-object v0

    nop

    :array_2a
    .array-data 4
        0x1
        0xd
        0x9
        0x4
        0x5
        0xa
        0x2
        0x3
        0x6
        0x8
        0xc
        0xb
        0x7
        0xf
    .end array-data
.end method

.method public static getTotalMemory()J
    .registers 9

    .line 123
    const-string v0, "/proc/meminfo"

    const/4 v1, 0x0

    .line 130
    :try_start_3
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_66
    .catchall {:try_start_3 .. :try_end_8} :catchall_61

    .line 131
    :try_start_8
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v3, 0x2000

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_5c
    .catchall {:try_start_8 .. :try_end_f} :catchall_57

    .line 133
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 136
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v4, :cond_3a

    aget-object v6, v3, v5

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/t"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :catchall_36
    move-exception v1

    goto :goto_87

    :catch_38
    move-exception v1

    goto :goto_6a

    :cond_3a
    const/4 v1, 0x1

    .line 141
    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_45} :catch_38
    .catchall {:try_start_f .. :try_end_45} :catchall_36

    int-to-long v3, v1

    .line 148
    :try_start_46
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    :goto_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_83

    :catch_52
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_83

    :catchall_57
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_87

    :catch_5c
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_6a

    :catchall_61
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_87

    :catch_66
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    .line 144
    :goto_6a
    :try_start_6a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_36

    if-eqz v0, :cond_77

    .line 148
    :try_start_6f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_77

    :catch_73
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_77
    :goto_77
    if-eqz v2, :cond_81

    .line 156
    :try_start_79
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_81
    :goto_81
    const-wide/16 v3, 0x0

    :goto_83
    const-wide/16 v0, 0x400

    .line 164
    div-long/2addr v3, v0

    return-wide v3

    :goto_87
    if-eqz v0, :cond_91

    .line 148
    :try_start_89
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_91

    :catch_8d
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_91
    :goto_91
    if-eqz v2, :cond_9b

    .line 156
    :try_start_93
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_9b

    :catch_97
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    :cond_9b
    :goto_9b
    throw v1
.end method

.method public static readCpuHardware()Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "infer"
        }
    .end annotation

    .line 56
    const-string v0, ":"

    sget-object v1, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->sCpuHardware:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 57
    sget-object v0, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->sCpuHardware:Ljava/lang/String;

    return-object v0

    :cond_d
    const/4 v1, 0x0

    .line 64
    :try_start_e
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_6d
    .catchall {:try_start_e .. :try_end_15} :catchall_6a

    .line 65
    :try_start_15
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_68
    .catchall {:try_start_15 .. :try_end_1a} :catchall_66

    .line 67
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    :goto_1e
    if-eqz v4, :cond_4d

    .line 69
    const-string v5, "Hardware"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 72
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->sCpuHardware:Ljava/lang/String;

    goto :goto_4d

    :catchall_45
    move-exception v0

    move-object v1, v3

    goto :goto_70

    .line 76
    :cond_48
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_1e

    .line 79
    :cond_4d
    :goto_4d
    sget-object v0, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->sCpuHardware:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 80
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->sCpuHardware:Ljava/lang/String;

    .line 83
    :cond_5d
    sget-object v0, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->sCpuHardware:Ljava/lang/String;
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_5f} :catch_77
    .catchall {:try_start_1a .. :try_end_5f} :catchall_45

    .line 87
    invoke-static {v3}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 88
    invoke-static {v2}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->closeQuietly(Ljava/io/Reader;)V

    return-object v0

    :catchall_66
    move-exception v0

    goto :goto_70

    :catch_68
    move-object v3, v1

    goto :goto_77

    :catchall_6a
    move-exception v0

    move-object v2, v1

    goto :goto_70

    :catch_6d
    move-object v2, v1

    move-object v3, v2

    goto :goto_77

    .line 87
    :goto_70
    invoke-static {v1}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 88
    invoke-static {v2}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 89
    throw v0

    .line 87
    :catch_77
    :goto_77
    invoke-static {v3}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 88
    invoke-static {v2}, Lcom/ss/android/ttve/monitor/DeviceInfoUtils;->closeQuietly(Ljava/io/Reader;)V

    return-object v1
.end method
