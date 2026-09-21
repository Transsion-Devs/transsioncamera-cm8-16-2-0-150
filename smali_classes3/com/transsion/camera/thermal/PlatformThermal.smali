.class public abstract Lcom/transsion/camera/thermal/PlatformThermal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/thermal/IPlatformThermal;


# instance fields
.field private final mAPTempName:[Ljava/lang/String;

.field private final mExitValue:I

.field private mTemperaturePath:Ljava/lang/String;

.field private final mTimelapseWarningValue:I

.field private final mVideoWarningValue:I

.field private final mWarningValue:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "ap_ntc"

    const-string v1, "board-thmzone"

    const-string v2, "mtktsAP"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mAPTempName:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTemperaturePath:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleWarningValue:I

    iput v0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mWarningValue:I

    .line 27
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleExitValue:I

    iput v0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mExitValue:I

    .line 28
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleVideoWarningValue:I

    iput v0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mVideoWarningValue:I

    .line 29
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mThermalThrottleTimelapseWarningValue:I

    iput v0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTimelapseWarningValue:I

    return-void
.end method

.method private queryTemperaturePath()V
    .registers 10

    .line 67
    const-string v0, "/sys/class/thermal/thermal_zone"

    const-string v1, "PlatformThermal"

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    const/16 v4, 0x7f

    if-ge v3, v4, :cond_aa

    const/16 v4, 0x400

    .line 69
    :try_start_c
    new-array v5, v4, [C

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 71
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_27} :catch_81
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_27} :catch_7f

    .line 72
    :try_start_27
    invoke-virtual {v7, v5, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v4

    .line 73
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v2, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v7}, Ljava/io/Reader;->close()V

    move v5, v2

    .line 75
    :goto_38
    iget-object v6, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mAPTempName:[Ljava/lang/String;

    array-length v8, v6

    if-ge v5, v8, :cond_77

    .line 76
    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTemperaturePath:Ljava/lang/String;

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryTemperaturePath patch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTemperaturePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_27 .. :try_end_71} :catchall_72

    goto :goto_77

    :catchall_72
    move-exception v4

    goto :goto_83

    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 82
    :cond_77
    :goto_77
    :try_start_77
    invoke-virtual {v7}, Ljava/io/Reader;->close()V

    .line 83
    iget-object v4, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTemperaturePath:Ljava/lang/String;
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_7c} :catch_81
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7c} :catch_7f

    if-eqz v4, :cond_a6

    goto :goto_aa

    :catch_7f
    move-exception v4

    goto :goto_8c

    :catch_81
    move-exception v4

    goto :goto_92

    .line 71
    :goto_83
    :try_start_83
    invoke-virtual {v7}, Ljava/io/Reader;->close()V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_87

    goto :goto_8b

    :catchall_87
    move-exception v5

    :try_start_88
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8b
    throw v4
    :try_end_8c
    .catch Ljava/io/FileNotFoundException; {:try_start_88 .. :try_end_8c} :catch_81
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8c} :catch_7f

    .line 89
    :goto_8c
    const-string v5, "queryTemperaturePath IOException"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a6

    .line 87
    :goto_92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryTemperaturePath error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a6
    :goto_a6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_aa
    :goto_aa
    return-void
.end method


# virtual methods
.method public getTemperStatus()I
    .registers 6

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTemperaturePath:Ljava/lang/String;

    const-string v1, "PlatformThermal"

    if-nez v0, :cond_13

    .line 36
    const-string v0, "queryTemperaturePath start"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/thermal/PlatformThermal;->queryTemperaturePath()V

    .line 38
    const-string v0, "queryTemperaturePath end"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTemperaturePath:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_9a

    .line 41
    invoke-interface {p0, v0}, Lcom/transsion/camera/thermal/IPlatformThermal;->getTemper(Ljava/lang/String;)I

    move-result v0

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTemperStatus: curTemperature = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mVideoWarningValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mVideoWarningValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTimelapseWarningValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTimelapseWarningValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mWarningValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mWarningValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mExitValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mExitValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/utils/dfx/inter/IExInjection;->getMaxExTemperature()I

    move-result v1

    if-le v0, v1, :cond_71

    .line 46
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v1

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    .line 47
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onCamError(I)V

    .line 49
    :cond_71
    iget v1, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mExitValue:I

    if-lt v0, v1, :cond_77

    const/4 p0, 0x2

    return p0

    .line 51
    :cond_77
    iget v1, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mWarningValue:I

    if-lt v0, v1, :cond_7d

    const/4 p0, 0x1

    return p0

    .line 53
    :cond_7d
    iget v1, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mTimelapseWarningValue:I

    if-lt v0, v1, :cond_8b

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mTimelapseThermalWaringSupport:Z

    if-eqz v1, :cond_8b

    const/4 p0, 0x4

    return p0

    .line 55
    :cond_8b
    iget p0, p0, Lcom/transsion/camera/thermal/PlatformThermal;->mVideoWarningValue:I

    if-lt v0, p0, :cond_99

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mVideoThermalWaringSupport:Z

    if-eqz p0, :cond_99

    const/4 p0, 0x3

    return p0

    :cond_99
    return v2

    .line 61
    :cond_9a
    invoke-interface {p0}, Lcom/transsion/camera/thermal/IPlatformThermal;->queryTemperaturePathFailed()V

    return v2
.end method
