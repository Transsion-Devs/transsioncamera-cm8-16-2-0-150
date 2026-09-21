.class public Lcom/ss/android/vesdk/VESDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static MONITOR_ACTION_CANCEL:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    sget v0, Lcom/ss/android/ttve/monitor/TEMonitor;->MONITOR_ACTION_CANCEL:I

    sput v0, Lcom/ss/android/vesdk/VESDK;->MONITOR_ACTION_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applogRegister(Lcom/ss/android/vesdk/VEListener$VEApplogListener;)V
    .registers 2

    .line 214
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->registerApplog(Lcom/ss/android/vesdk/VEListener$VEApplogListener;)V

    return-void
.end method

.method public static buildEditorInfoJson()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 743
    invoke-static {}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->buildEditorInfoJson()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static clearAllFreeMemoryCache()V
    .registers 1

    const/4 v0, -0x1

    .line 842
    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->clearAllFreeMemoryCache(I)V

    return-void
.end method

.method public static deInit()V
    .registers 1

    .line 688
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->getInstance()Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->closeCloudControlRes()V

    return-void
.end method

.method public static enableAlgoParamIsForce(ZZ)V
    .registers 3

    .line 835
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableAlgoParamIsForce(ZZ)V

    return-void
.end method

.method public static enableAsyncInitMonitor(Z)V
    .registers 1

    .line 442
    sput-boolean p0, Lcom/ss/android/ttve/monitor/MonitorUtils;->enableAsyncMonitorInit:Z

    return-void
.end method

.method public static enableAudioCapture(Z)V
    .registers 2

    .line 371
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableAudioCapture(Z)V

    return-void
.end method

.method public static enableAudioSDKApiV2(Z)V
    .registers 1

    .line 528
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableAudioSDKApiV2(Z)V

    return-void
.end method

.method public static enableEditorHdr2Sdr(Z)V
    .registers 3

    .line 500
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableEditorHdr2Sdr(Z)I

    move-result p0

    const/16 v0, -0x6c

    if-eq p0, v0, :cond_d

    return-void

    .line 502
    :cond_d
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "please set VEEnv or VEEnv#init"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static enableEffectAudioManagerCallback(Z)V
    .registers 1

    .line 786
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableEffectAudioManagerCallback(Z)V

    return-void
.end method

.method public static enableEffectRT(Z)V
    .registers 2

    .line 826
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableEffectRT(Z)V

    return-void
.end method

.method public static enableGLES3(Z)V
    .registers 2

    .line 412
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableGLES3(Z)V

    .line 413
    invoke-static {p0}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_enableGLES3(Z)V

    return-void
.end method

.method public static enableHDByteVC1HWDecoder(ZI)V
    .registers 3

    .line 575
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableHDByteVC1HWDecoder(ZI)I

    move-result p0

    const/16 p1, -0x6c

    if-eq p0, p1, :cond_d

    return-void

    .line 577
    :cond_d
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    const-string v0, "please set VEEnv or VEEnv#init"

    invoke-direct {p1, p0, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static enableHDH264HWDecoder(ZI)V
    .registers 3

    .line 540
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableHDH264HWDecoder(ZI)I

    move-result p0

    const/16 p1, -0x6c

    if-eq p0, p1, :cond_d

    return-void

    .line 542
    :cond_d
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    const-string v0, "please set VEEnv or VEEnv#init"

    invoke-direct {p1, p0, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static enableHDMpeg24VP89HWDecoder(Z)V
    .registers 3

    .line 474
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableHDMpeg24VP89HWDecoder(Z)I

    move-result p0

    const/16 v0, -0x6c

    if-eq p0, v0, :cond_d

    return-void

    .line 476
    :cond_d
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "please set VEEnv or VEEnv#init"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static enableHighFpsByteVC1HWDecoder(ZII)V
    .registers 4

    .line 594
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableHighFpsByteVC1HWDecoder(ZII)I

    move-result p0

    const/16 p1, -0x6c

    if-eq p0, p1, :cond_d

    return-void

    .line 596
    :cond_d
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    const-string p2, "please set VEEnv or VEEnv#init"

    invoke-direct {p1, p0, p2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static enableHighFpsH264HWDecoder(ZII)V
    .registers 4

    .line 559
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableHighFpsH264HWDecoder(ZII)I

    move-result p0

    const/16 p1, -0x6c

    if-eq p0, p1, :cond_d

    return-void

    .line 561
    :cond_d
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    const-string p2, "please set VEEnv or VEEnv#init"

    invoke-direct {p1, p0, p2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public static enableImport10BitByteVC1Video(Z)V
    .registers 3

    .line 487
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableImport10BitByteVC1Video(Z)I

    move-result p0

    const/16 v0, -0x6c

    if-eq p0, v0, :cond_d

    return-void

    .line 489
    :cond_d
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "please set VEEnv or VEEnv#init"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static enableMakeupSegmentation(Z)V
    .registers 1

    .line 774
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableMakeupSegmentation(Z)V

    return-void
.end method

.method public static enableNativeLibSegmentalLoading(Z)V
    .registers 1

    .line 78
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->enableSegmentalLoading(Z)V

    return-void
.end method

.method public static enableNewRecorder(Z)V
    .registers 2

    .line 353
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableNewRecorder(Z)V

    return-void
.end method

.method public static enableRefactorRecorder(Z)V
    .registers 2

    .line 362
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableRefactorRecorder(Z)V

    return-void
.end method

.method public static enableTTByteVC1Decoder(Z)V
    .registers 3

    .line 516
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableByteVC1Decoder(Z)I

    move-result p0

    const/16 v0, -0x6c

    if-eq p0, v0, :cond_d

    return-void

    .line 518
    :cond_d
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "please set VEEnv or VEEnv#init"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static exceptionMonitorRegister(Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;)V
    .registers 2

    .line 233
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->registerExceptionMonitor(Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;)V

    return-void
.end method

.method public static getCurrentLoadModule()Ljava/lang/String;
    .registers 1

    .line 451
    const-string v0, "recedit"

    return-object v0
.end method

.method public static getEffectSDKVer()Ljava/lang/String;
    .registers 3

    .line 381
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEEffectUtils;->getEffectVersion()Ljava/lang/String;

    move-result-object v0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect Ver is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Steven"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getSDKRegion()Ljava/lang/String;
    .registers 1

    .line 203
    const-string v0, "domestic"

    return-object v0
.end method

.method public static getVeLoadLib()I
    .registers 1

    .line 59
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->getLibraryLoadedVersion()I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VEEnv;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEConfigCenter;->initByteBench()V

    .line 92
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->init(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VEEnv;)V

    .line 93
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->getInstance()Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->execStoredCommands(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter;->syncConfigToNative()I

    .line 96
    invoke-static {}, Lcom/ss/android/vesdk/VESDK;->initFromConfigCenter()V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 125
    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->init(Z)V

    .line 126
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter;->initByteBench()V

    .line 127
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->getInstance()Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->execStoredCommands(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter;->syncConfigToNative()I

    .line 131
    invoke-static {}, Lcom/ss/android/vesdk/VESDK;->initFromConfigCenter()V

    return-void
.end method

.method private static initFromConfigCenter()V
    .registers 3

    .line 101
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "use_open_gl_three"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 103
    invoke-static {v2}, Lcom/ss/android/vesdk/VESDK;->enableGLES3(Z)V

    goto :goto_18

    .line 105
    :cond_11
    const-string v0, "VESDK"

    const-string v1, "No gles config"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_18
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "aeabtest_v2api"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableAudioSDKApiV2(Z)V

    .line 110
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "crossplat_glbase_fbo"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableCrossPlatGLBaseFBO(Z)V

    .line 112
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "enable_render_lib"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableRenderLib(Z)V

    .line 114
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "renderlib_fbo_opt"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->enableRenderLibFBOOpt(Z)V

    return-void
.end method

.method public static monitorClear()V
    .registers 0

    .line 177
    invoke-static {}, Lcom/ss/android/ttve/monitor/TEMonitor;->clear()V

    return-void
.end method

.method public static monitorRegister(Lcom/ss/android/vesdk/VEListener$VEMonitorListener;)V
    .registers 2

    .line 154
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->registerMonitor(Lcom/ss/android/vesdk/VEListener$VEMonitorListener;)V

    return-void
.end method

.method public static monitorReport(I)V
    .registers 1

    .line 164
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEMonitor;->report(I)V

    return-void
.end method

.method public static needUpdateEffectModelFiles()Z
    .registers 3

    .line 308
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->needUpdateEffectModelFiles()I

    move-result v0

    const/16 v1, -0x6c

    if-eq v0, v1, :cond_12

    if-nez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_12
    new-instance v1, Lcom/ss/android/vesdk/VEException;

    const-string v2, "please set setWorkspace in VESDK init"

    invoke-direct {v1, v0, v2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static registerLogger(Lcom/ss/android/vesdk/VELogProtocol;)V
    .registers 1

    .line 700
    invoke-static {p0}, Lcom/ss/android/ttve/log/TELog2Client;->registerLogger(Lcom/ss/android/vesdk/VELogProtocol;)V

    .line 701
    invoke-static {}, Lcom/ss/android/ttve/log/TELog2Client;->init()V

    return-void
.end method

.method public static registerLogger(Lcom/ss/android/vesdk/VELogProtocol;Z)V
    .registers 2

    .line 713
    invoke-static {p0}, Lcom/ss/android/ttve/log/TELog2Client;->registerLogger(Lcom/ss/android/vesdk/VELogProtocol;)V

    .line 714
    invoke-static {}, Lcom/ss/android/ttve/log/TELog2Client;->init()V

    .line 715
    invoke-static {p1}, Lcom/ss/android/ttve/log/TELog2Client;->setIsToLogcat(Z)V

    return-void
.end method

.method public static setAB(Lcom/ss/android/vesdk/VEAB;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setAB(Lcom/ss/android/vesdk/VEAB;)V

    return-void
.end method

.method public static setABbUseBuildinAmazing(Z)V
    .registers 2

    .line 794
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setABbUseBuildinAmazing(Z)Z

    return-void
.end method

.method public static setAppFiled(Lcom/ss/android/vesdk/VEAppField;)V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAppField;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setUserId(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/ss/android/vesdk/VEAppField;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setDeviceId(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/vesdk/VEAppField;->deviceId:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "KEY_DEVICEID"

    invoke-virtual {v0, v3, v1, v2}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->put(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 144
    iget-object p0, p0, Lcom/ss/android/vesdk/VEAppField;->version:Ljava/lang/String;

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->setAppVersion(Ljava/lang/String;)V

    return-void
.end method

.method public static setApplogReportToBusiness(Z)V
    .registers 1

    .line 224
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->setReportToBusiness(Z)V

    return-void
.end method

.method public static setAssetManagerEnable(Z)Z
    .registers 2

    .line 271
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setAssetManagerEnable(Z)Z

    move-result p0

    return p0
.end method

.method public static setCloudConfigEnable(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setCloudConfigServer(I)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setEffectAmazingShareDir(Ljava/lang/String;)V
    .registers 2

    .line 299
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectAmazingShareDir(Ljava/lang/String;)Z

    return-void
.end method

.method public static setEffectAsynAPI(Z)V
    .registers 3

    .line 664
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectAsynAPI(Z)I

    move-result p0

    const/16 v0, -0x6c

    if-eq p0, v0, :cond_d

    return-void

    .line 666
    :cond_d
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "please set VEEnv or VEEnv#init"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static setEffectForceDetectFace(Z)V
    .registers 3

    .line 616
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectForceDetectFace(Z)I

    move-result p0

    const/16 v0, -0x6c

    if-eq p0, v0, :cond_d

    return-void

    .line 618
    :cond_d
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "please set VEEnv or VEEnv#init"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static setEffectJsonConfig(Ljava/lang/String;)V
    .registers 2

    .line 763
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectJsonConfig(Ljava/lang/String;)Z

    return-void
.end method

.method public static setEffectLogLevel(I)V
    .registers 2

    .line 733
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectLogLevel(I)Z

    return-void
.end method

.method public static setEffectMaxMemoryCache(I)V
    .registers 2

    .line 753
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectMaxMemoryCache(I)Z

    return-void
.end method

.method public static setEffectModelsPath(Ljava/lang/String;)V
    .registers 2

    .line 462
    new-instance v0, Lcom/bef/effectsdk/FileResourceFinder;

    invoke-direct {v0, p0}, Lcom/bef/effectsdk/FileResourceFinder;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-static {v0}, Lcom/ss/android/vesdk/VESDK;->setEffectResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V

    return-void
.end method

.method public static setEffectResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V
    .registers 2

    .line 284
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)Z

    return-void
.end method

.method public static setEffectSyncTimeDomain(Z)V
    .registers 3

    .line 628
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectSyncTimeDomain(Z)I

    move-result p0

    const/16 v0, -0x6c

    if-eq p0, v0, :cond_d

    return-void

    .line 630
    :cond_d
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "please set VEEnv or VEEnv#init"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static setEnableStickerAmazing(Z)V
    .registers 3

    .line 640
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEnableStickerAmazing(Z)I

    move-result p0

    const/16 v0, -0x6c

    if-eq p0, v0, :cond_d

    return-void

    .line 642
    :cond_d
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "please set VEEnv or VEEnv#init"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static setEnableStickerReleaseTexture(Z)V
    .registers 3

    .line 653
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEnableStickerReleaseTexture(Z)I

    move-result p0

    const/16 v0, -0x6c

    if-eq p0, v0, :cond_d

    return-void

    .line 655
    :cond_d
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "please set VEEnv or VEEnv#init"

    invoke-direct {v0, p0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static setHWEncodeParam(Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$HWEncodeParams;)V
    .registers 1

    .line 607
    invoke-static {p0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setEncodeParams(Lcom/ss/android/ttve/mediacodec/TEAvcEncoder$HWEncodeParams;)V

    return-void
.end method

.method public static setLogLevel(B)V
    .registers 2

    const/4 v0, 0x0

    .line 399
    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->setUp(Ljava/lang/String;B)V

    return-void
.end method

.method public static setMaxRenderSize(II)V
    .registers 3

    .line 429
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->setMaxRenderSize(II)V

    return-void
.end method

.method public static setMonitorServer(I)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setRuntimeConfig(Ljava/lang/String;)I
    .registers 1

    .line 814
    invoke-static {p0}, Lcom/ss/android/vesdk/VERuntimeConfig;->setRuntimeConfig(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static setSDKMonitorEnable(Z)V
    .registers 1

    .line 187
    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEMonitor;->setSDKMonitorEnable(Z)V

    return-void
.end method

.method public static setUseNewEffectAlgorithmApi(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 805
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setUseNewEffectAlgorithmApi(Z)V

    return-void
.end method

.method public static setVeLoadLib(I)V
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 46
    :goto_5
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->enableLoadOptLibrary(Z)V

    return-void
.end method

.method public static transfCloudControlCommand(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 679
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->getInstance()Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->storeCloudControlCommand(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static updateEffectModelFiles()V
    .registers 3

    .line 325
    invoke-static {}, Lcom/ss/android/vesdk/VESDK;->needUpdateEffectModelFiles()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 326
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->updateEffectModelFiles()I

    move-result v0

    const/16 v1, -0x6c

    if-eq v0, v1, :cond_1e

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    goto :goto_26

    .line 331
    :cond_16
    new-instance v1, Lcom/ss/android/vesdk/VEException;

    const-string v2, "fail when updating model files"

    invoke-direct {v1, v0, v2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 328
    :cond_1e
    new-instance v1, Lcom/ss/android/vesdk/VEException;

    const-string v2, "please set VEEnv or VEEnv#init"

    invoke-direct {v1, v0, v2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_26
    :goto_26
    return-void
.end method
