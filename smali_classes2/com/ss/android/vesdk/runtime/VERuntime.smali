.class public Lcom/ss/android/vesdk/runtime/VERuntime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VERuntime"


# instance fields
.field private mAB:Lcom/ss/android/vesdk/VEAB;

.field private mApplogListener:Lcom/ss/android/ttve/monitor/ApplogUtils$Listener;

.field mContext:Landroid/content/Context;

.field private mEnableAudioCapture:Z

.field private mEnableGLES3:Z

.field private mEnableRefactorRecorder:Z

.field private mEnableTransitionKeyframe:Z

.field private mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

.field private mExceptionMonitorListener:Lcom/ss/android/ttve/monitor/TEExceptionMonitor$IExceptionMonitor;

.field private mIsInited:Z

.field private mMaxRenderSize:Lcom/ss/android/vesdk/VESize;

.field private mMoniter:Lcom/ss/android/ttve/monitor/IMonitor;

.field private mResManager:Lcom/ss/android/vesdk/runtime/VEResManager;

.field private mSP:Lcom/ss/android/vesdk/runtime/persistence/VESP;

.field private mTransitionKeyFrameMode:I

.field private mTransitionKeyFrameVersion:I

.field private mUseAssetManager:Z

.field private mUseResourceFinder:Z

.field private mVEApplogListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/vesdk/VEListener$VEApplogListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVEExceptionMonitorListener:Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;

.field private mVEMonitorListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/android/vesdk/VEListener$VEMonitorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    .line 62
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseResourceFinder:Z

    .line 76
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableGLES3:Z

    .line 81
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableTransitionKeyframe:Z

    const/4 v1, -0x1

    .line 86
    iput v1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mTransitionKeyFrameVersion:I

    .line 92
    iput v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mTransitionKeyFrameMode:I

    .line 97
    new-instance v1, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v1, v0, v0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mMaxRenderSize:Lcom/ss/android/vesdk/VESize;

    .line 105
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    .line 110
    new-instance v0, Lcom/ss/android/vesdk/runtime/VERuntime$1;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime$1;-><init>(Lcom/ss/android/vesdk/runtime/VERuntime;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mMoniter:Lcom/ss/android/ttve/monitor/IMonitor;

    .line 119
    new-instance v0, Lcom/ss/android/vesdk/runtime/VERuntime$2;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime$2;-><init>(Lcom/ss/android/vesdk/runtime/VERuntime;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mApplogListener:Lcom/ss/android/ttve/monitor/ApplogUtils$Listener;

    .line 133
    new-instance v0, Lcom/ss/android/vesdk/runtime/VERuntime$3;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime$3;-><init>(Lcom/ss/android/vesdk/runtime/VERuntime;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mExceptionMonitorListener:Lcom/ss/android/ttve/monitor/TEExceptionMonitor$IExceptionMonitor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/vesdk/runtime/VERuntime$1;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/runtime/VERuntime;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mVEMonitorListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/runtime/VERuntime;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mVEApplogListener:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/runtime/VERuntime;)Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mVEExceptionMonitorListener:Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;

    return-object p0
.end method

.method public static clearAllFreeMemoryCache(I)V
    .registers 1

    .line 200
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeClearAllFreeMemoryCache(I)V

    return-void
.end method

.method public static enableAudioSDKApiV2(Z)V
    .registers 1

    .line 165
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableAudioSDKApiV2(Z)V

    return-void
.end method

.method public static enableCrossPlatGLBaseFBO(Z)V
    .registers 1

    .line 175
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableCrossPlatGLBaseFBO(Z)V

    return-void
.end method

.method public static enableEffectAudioManagerCallback(Z)V
    .registers 1

    .line 619
    invoke-static {p0}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_enableEffectAudioManagerCallback(Z)V

    .line 620
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->enableEffectAudioManagerCallback(Z)V

    return-void
.end method

.method public static enableMakeupSegmentation(Z)V
    .registers 1

    .line 606
    invoke-static {p0}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_enableMakeupSegmentation(Z)V

    .line 607
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->enableMakeupSegmentation(Z)V

    return-void
.end method

.method public static enableRenderLib(Z)V
    .registers 1

    .line 184
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableRenderLib(Z)V

    return-void
.end method

.method public static enableRenderLibFBOOpt(Z)V
    .registers 1

    .line 193
    invoke-static {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableRenderLibFBOOpt(Z)V

    return-void
.end method

.method public static getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;
    .registers 1

    .line 156
    sget-object v0, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;->INSTANCE:Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime$VERuntimeSingleton;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualMemInfo()D
    .registers 2

    .line 1018
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeGetVirtualMemInfo()D

    move-result-wide v0

    return-wide v0
.end method

.method private initConfig()V
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 283
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeSetNativeLibraryDir(Ljava/lang/String;)V

    .line 286
    :cond_d
    new-instance v0, Lcom/ss/android/vesdk/runtime/VERuntime$5;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime$5;-><init>(Lcom/ss/android/vesdk/runtime/VERuntime;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static isArm64()Z
    .registers 1

    .line 1022
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeIsArm64()Z

    move-result v0

    return v0
.end method

.method private static native nativeClearAllFreeMemoryCache(I)V
.end method

.method private static native nativeEnableAudioSDKApiV2(Z)V
.end method

.method private static native nativeEnableCrossPlatGLBaseFBO(Z)V
.end method

.method private static native nativeEnableEditorHdr2Sdr(Z)V
.end method

.method private native nativeEnableHDByteVC1HWDecoder(ZI)V
.end method

.method private native nativeEnableHDH264HWDecoder(ZI)V
.end method

.method private native nativeEnableHDMpeg24VP89HWDecoder(Z)V
.end method

.method private native nativeEnableHighFpsByteVC1HWDecoder(ZII)V
.end method

.method private native nativeEnableHighFpsH264HWDecoder(ZII)V
.end method

.method private static native nativeEnableImport10BitByteVC1Video(Z)V
.end method

.method private static native nativeEnableRenderLib(Z)V
.end method

.method private static native nativeEnableRenderLibFBOOpt(Z)V
.end method

.method private native nativeEnableTTByteVC1Decoder(Z)V
.end method

.method private static native nativeEnableTitanReleaseGPUResource(Z)V
.end method

.method private static native nativeEnableTransitionKeyFrame(Z)V
.end method

.method private native nativeGetNativeContext()J
.end method

.method private static native nativeGetVirtualMemInfo()D
.end method

.method private static native nativeIsArm64()Z
.end method

.method private static native nativeSetNativeLibraryDir(Ljava/lang/String;)V
.end method

.method private static native nativeSetTransitionKeyFrameMode(I)V
.end method

.method private static native nativeSetTransitionKeyFrameVersion(I)V
.end method

.method private setContextToEffect(Landroid/content/Context;)V
    .registers 2

    .line 965
    invoke-static {p1}, Lcom/bef/effectsdk/EffectApplicationInfo;->setAppContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public enableAlgoParamIsForce(ZZ)V
    .registers 3

    .line 999
    invoke-static {p1, p2}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->enableAlgoParamIsForce(ZZ)V

    return-void
.end method

.method public enableAudioCapture(Z)V
    .registers 2

    .line 417
    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableAudioCapture:Z

    return-void
.end method

.method public enableByteVC1Decoder(Z)I
    .registers 3

    .line 798
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez v0, :cond_e

    .line 799
    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 802
    :cond_e
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableTTByteVC1Decoder(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public enableEditorHdr2Sdr(Z)I
    .registers 2

    .line 781
    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez p0, :cond_e

    .line 782
    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 785
    :cond_e
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableEditorHdr2Sdr(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public enableEffectRT(Z)V
    .registers 2

    .line 990
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->enableEffectRT(Z)Z

    return-void
.end method

.method public enableGLES3(Z)V
    .registers 2

    .line 310
    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableGLES3:Z

    return-void
.end method

.method public enableHDByteVC1HWDecoder(ZI)I
    .registers 4

    .line 850
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez v0, :cond_e

    .line 851
    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    :cond_e
    const/16 v0, 0x2d0

    if-gt p2, v0, :cond_14

    const/16 p2, 0x2da

    .line 857
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableHDByteVC1HWDecoder(ZI)V

    const/4 p0, 0x0

    return p0
.end method

.method public enableHDH264HWDecoder(ZI)I
    .registers 4

    .line 813
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez v0, :cond_e

    .line 814
    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    :cond_e
    const/16 v0, 0x140

    if-gt p2, v0, :cond_14

    const/16 p2, 0x14a

    .line 820
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableHDH264HWDecoder(ZI)V

    const/4 p0, 0x0

    return p0
.end method

.method public enableHDMpeg24VP89HWDecoder(Z)I
    .registers 3

    .line 752
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez v0, :cond_e

    .line 753
    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 756
    :cond_e
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableHDMpeg24VP89HWDecoder(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public enableHighFpsByteVC1HWDecoder(ZII)I
    .registers 5

    .line 871
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez v0, :cond_e

    .line 872
    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 876
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableHighFpsByteVC1HWDecoder(ZII)V

    const/4 p0, 0x0

    return p0
.end method

.method public enableHighFpsH264HWDecoder(ZII)I
    .registers 5

    .line 833
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez v0, :cond_e

    .line 834
    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 838
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableHighFpsH264HWDecoder(ZII)V

    const/4 p0, 0x0

    return p0
.end method

.method public enableImport10BitByteVC1Video(Z)I
    .registers 2

    .line 767
    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez p0, :cond_e

    .line 768
    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 771
    :cond_e
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableImport10BitByteVC1Video(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public enableNewRecorder(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public enableRefactorRecorder(Z)V
    .registers 2

    .line 392
    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableRefactorRecorder:Z

    return-void
.end method

.method public enableTransitionKeyframe(Z)I
    .registers 3

    .line 887
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez v0, :cond_e

    .line 888
    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 891
    :cond_e
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeEnableTransitionKeyFrame(Z)V

    .line 892
    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableTransitionKeyframe:Z

    const/4 p0, 0x0

    return p0
.end method

.method public getAB()Lcom/ss/android/vesdk/VEAB;
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    if-nez v0, :cond_b

    .line 365
    new-instance v0, Lcom/ss/android/vesdk/VEAB;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEAB;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    .line 367
    :cond_b
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    return-object p0
.end method

.method public getAssetManager()Landroid/content/res/AssetManager;
    .registers 3

    .line 444
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    const-string v1, "VERuntime"

    if-nez v0, :cond_b

    .line 445
    const-string v0, "disable use AssetManager!"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_b
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    if-nez p0, :cond_16

    .line 448
    const-string p0, "context is null!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 451
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 435
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEnv()Lcom/ss/android/vesdk/runtime/VEEnv;
    .registers 1

    .line 346
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    return-object p0
.end method

.method public getMaxRenderSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 337
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mMaxRenderSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getNativeContext()J
    .registers 3

    .line 972
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeGetNativeContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResManager()Lcom/ss/android/vesdk/runtime/VEResManager;
    .registers 1

    .line 455
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mResManager:Lcom/ss/android/vesdk/runtime/VEResManager;

    return-object p0
.end method

.method public getTransitionKeyFrameMode()I
    .registers 1

    .line 955
    iget p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mTransitionKeyFrameMode:I

    return p0
.end method

.method public getTransitionKeyFrameVersion()I
    .registers 1

    .line 926
    iget p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mTransitionKeyFrameVersion:I

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VEEnv;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-eqz v0, :cond_5

    return-void

    .line 214
    :cond_5
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setCacheDir(Ljava/lang/String;)V

    .line 216
    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    .line 217
    new-instance p2, Lcom/ss/android/vesdk/VEAB;

    invoke-direct {p2}, Lcom/ss/android/vesdk/VEAB;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    .line 219
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->setContext(Landroid/content/Context;)V

    .line 220
    new-instance p2, Lcom/ss/android/vesdk/runtime/VEResManager;

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getEnv()Lcom/ss/android/vesdk/runtime/VEEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getWorkspace()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/ss/android/vesdk/runtime/VEResManager;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mResManager:Lcom/ss/android/vesdk/runtime/VEResManager;

    .line 221
    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mSP:Lcom/ss/android/vesdk/runtime/persistence/VESP;

    .line 222
    invoke-virtual {p2, p1}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->init(Landroid/content/Context;)V

    .line 223
    iget-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mSP:Lcom/ss/android/vesdk/runtime/persistence/VESP;

    const-string v1, "KEY_DEVICEID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->init()V

    .line 225
    invoke-static {p1}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_init(Landroid/content/Context;)V

    .line 226
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->initConfig()V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 236
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    .line 240
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setCacheDir(Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->setContext(Landroid/content/Context;)V

    .line 244
    new-instance v0, Lcom/ss/android/vesdk/runtime/VEEnv;

    invoke-direct {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    .line 245
    invoke-virtual {v0, p2}, Lcom/ss/android/vesdk/runtime/VEEnv;->setWorkspace(Ljava/lang/String;)V

    .line 246
    new-instance p2, Lcom/ss/android/vesdk/VEAB;

    invoke-direct {p2}, Lcom/ss/android/vesdk/VEAB;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    .line 247
    new-instance p2, Lcom/ss/android/vesdk/runtime/VEResManager;

    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getEnv()Lcom/ss/android/vesdk/runtime/VEEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getWorkspace()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/ss/android/vesdk/runtime/VEResManager;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mResManager:Lcom/ss/android/vesdk/runtime/VEResManager;

    .line 248
    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mSP:Lcom/ss/android/vesdk/runtime/persistence/VESP;

    .line 249
    invoke-virtual {p2, p1}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->init(Landroid/content/Context;)V

    .line 250
    iget-object p2, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mSP:Lcom/ss/android/vesdk/runtime/persistence/VESP;

    const-string v1, "KEY_DEVICEID"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/ss/android/ttve/monitor/ApplogUtils;->init()V

    .line 252
    invoke-static {}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->init()V

    .line 253
    invoke-static {p1}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_init(Landroid/content/Context;)V

    .line 254
    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/VERuntime;->initConfig()V

    .line 255
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->setContextToEffect(Landroid/content/Context;)V

    return-void
.end method

.method public isEnableAudioCapture()Z
    .registers 2

    .line 426
    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableAudioCapture:Z

    if-nez p0, :cond_1d

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_enable_lv_audio_graph_refactor"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    return p0
.end method

.method public isEnableNewRecorder()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isEnableRefactorRecorder()Z
    .registers 1

    .line 408
    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableRefactorRecorder:Z

    return p0
.end method

.method public isGLES3Enabled()Z
    .registers 1

    .line 318
    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableGLES3:Z

    return p0
.end method

.method public isTransitionKeyFrameEnable()Z
    .registers 1

    .line 897
    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnableTransitionKeyframe:Z

    return p0
.end method

.method public isUseAssetManager()Z
    .registers 1

    .line 517
    iget-boolean p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    return p0
.end method

.method public needUpdateEffectModelFiles()I
    .registers 4

    .line 659
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    const/16 v1, -0x6c

    if-nez v0, :cond_7

    return v1

    .line 662
    :cond_7
    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getWorkspace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 665
    :cond_12
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseResourceFinder:Z

    const-string v1, "VERuntime"

    const/4 v2, -0x1

    if-eqz v0, :cond_1f

    .line 666
    const-string p0, "Use resource finder. Do not need update effect model files!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 669
    :cond_1f
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    if-eqz v0, :cond_29

    .line 670
    const-string p0, "Enable assetManager. Do not need update effect model files!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 673
    :cond_29
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/runtime/VEEnv;->getDetectModelsDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bef/effectsdk/EffectSDKUtils;->needUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 p0, 0x0

    return p0

    .line 676
    :cond_39
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getDetectModelsDir()Ljava/lang/String;

    move-result-object p0

    const-string v0, "nexus"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->configEffect(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public registerApplog(Lcom/ss/android/vesdk/VEListener$VEApplogListener;)V
    .registers 3

    .line 474
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mVEApplogListener:Ljava/lang/ref/WeakReference;

    .line 475
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mApplogListener:Lcom/ss/android/ttve/monitor/ApplogUtils$Listener;

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->setListener(Lcom/ss/android/ttve/monitor/ApplogUtils$Listener;)V

    return-void
.end method

.method public registerExceptionMonitor(Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;)V
    .registers 2

    .line 485
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mVEExceptionMonitorListener:Lcom/ss/android/vesdk/VEListener$VEExceptionMonitorListener;

    .line 486
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mExceptionMonitorListener:Lcom/ss/android/ttve/monitor/TEExceptionMonitor$IExceptionMonitor;

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEExceptionMonitor;->register(Lcom/ss/android/ttve/monitor/TEExceptionMonitor$IExceptionMonitor;)V

    return-void
.end method

.method public registerMonitor(Lcom/ss/android/vesdk/VEListener$VEMonitorListener;)V
    .registers 3

    .line 464
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mVEMonitorListener:Ljava/lang/ref/WeakReference;

    .line 465
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mMoniter:Lcom/ss/android/ttve/monitor/IMonitor;

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/TEMonitor;->register(Lcom/ss/android/ttve/monitor/IMonitor;)V

    return-void
.end method

.method public sensorReport()V
    .registers 2

    .line 262
    new-instance v0, Lcom/ss/android/vesdk/runtime/VERuntime$4;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/runtime/VERuntime$4;-><init>(Lcom/ss/android/vesdk/runtime/VERuntime;)V

    .line 274
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setAB(Lcom/ss/android/vesdk/VEAB;)V
    .registers 2

    .line 376
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mAB:Lcom/ss/android/vesdk/VEAB;

    return-void
.end method

.method public setABbUseBuildinAmazing(Z)Z
    .registers 2

    .line 569
    invoke-static {p1}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_setABbUseBuildinAmazing(Z)V

    .line 570
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setABbUseBuildinAmazing(Z)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setAssetManagerEnable(Z)Z
    .registers 4

    .line 497
    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    .line 498
    invoke-static {p1}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_setEnableAssetManager(Z)V

    .line 499
    iget-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    if-eqz p1, :cond_25

    .line 500
    iget-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1c

    .line 501
    new-instance v0, Lcom/bef/effectsdk/AssetResourceFinder;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/bef/effectsdk/AssetResourceFinder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)Z

    goto :goto_25

    .line 504
    :cond_1c
    const-string p0, "VERuntime"

    const-string p1, "mContext is null!!! need init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method public setEffectAmazingShareDir(Ljava/lang/String;)Z
    .registers 2

    .line 546
    invoke-static {p1}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_setAmazingShareDir(Ljava/lang/String;)V

    .line 547
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setShareDir(Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setEffectAsynAPI(Z)I
    .registers 2

    .line 739
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    if-nez p0, :cond_7

    const/16 p0, -0x6c

    return p0

    .line 742
    :cond_7
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setEffectAsynAPI(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public setEffectForceDetectFace(Z)I
    .registers 2

    .line 687
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    if-nez p0, :cond_7

    const/16 p0, -0x6c

    return p0

    .line 690
    :cond_7
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setEffectForceDetectFace(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public setEffectJsonConfig(Ljava/lang/String;)Z
    .registers 2

    .line 593
    invoke-static {p1}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_setEffectJsonConfig(Ljava/lang/String;)V

    .line 594
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setEffectJsonConfig(Ljava/lang/String;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setEffectLogLevel(I)Z
    .registers 2

    .line 557
    invoke-static {p1}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_setEffectLogLevel(I)V

    .line 558
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setEffectLogLevel(I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setEffectMaxMemoryCache(I)Z
    .registers 2

    .line 581
    invoke-static {p1}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_setEffectMaxMemoryCache(I)V

    .line 582
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setEffectMaxMemoryCache(I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setEffectResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)Z
    .registers 3

    .line 529
    invoke-static {p1}, Lcom/ss/android/vesdk/RecorderCompat;->videoSdkCore_setResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V

    .line 530
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)V

    const/4 p1, 0x0

    .line 532
    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseAssetManager:Z

    const/4 p1, 0x1

    .line 533
    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mUseResourceFinder:Z

    .line 534
    const-string p0, ""

    const-string v0, "nexus"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->configEffect(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public setEffectSyncTimeDomain(Z)I
    .registers 2

    .line 700
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    if-nez p0, :cond_7

    const/16 p0, -0x6c

    return p0

    .line 703
    :cond_7
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setEffectSyncTimeDomain(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public setEnableStickerAmazing(Z)I
    .registers 2

    .line 713
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    if-nez p0, :cond_7

    const/16 p0, -0x6c

    return p0

    .line 716
    :cond_7
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setEnableStickerAmazing(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public setEnableStickerReleaseTexture(Z)I
    .registers 2

    .line 726
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    if-nez p0, :cond_7

    const/16 p0, -0x6c

    return p0

    .line 729
    :cond_7
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setEnableStickerReleaseTexture(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public setEnv(Lcom/ss/android/vesdk/runtime/VEEnv;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    return-void
.end method

.method public setMaxRenderSize(II)V
    .registers 3

    .line 328
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mMaxRenderSize:Lcom/ss/android/vesdk/VESize;

    iput p1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 329
    iput p2, p0, Lcom/ss/android/vesdk/VESize;->height:I

    return-void
.end method

.method public setTransitionKeyFrameMode(I)I
    .registers 3

    .line 938
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez v0, :cond_e

    .line 939
    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 942
    :cond_e
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeSetTransitionKeyFrameMode(I)V

    .line 943
    iput p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mTransitionKeyFrameMode:I

    const/4 p0, 0x0

    return p0
.end method

.method public setTransitionKeyFrameVersion(I)I
    .registers 3

    .line 909
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mIsInited:Z

    if-nez v0, :cond_e

    .line 910
    const-string p0, "VERuntime"

    const-string p1, "runtime not init"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 913
    :cond_e
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VERuntime;->nativeSetTransitionKeyFrameVersion(I)V

    .line 914
    iput p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mTransitionKeyFrameVersion:I

    const/4 p0, 0x0

    return p0
.end method

.method public setUseNewEffectAlgorithmApi(Z)V
    .registers 2

    .line 980
    invoke-static {p1}, Lcom/ss/android/vesdk/runtime/VEEffectConfig;->setUseNewEffectAlgorithmApi(Z)V

    return-void
.end method

.method public updateEffectModelFiles()I
    .registers 4

    .line 630
    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    const/16 v1, -0x6c

    if-nez v0, :cond_7

    return v1

    .line 633
    :cond_7
    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->getWorkspace()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    return v1

    .line 636
    :cond_12
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/runtime/VEEnv;->getWorkspace()Ljava/lang/String;

    move-result-object v1

    const-string v2, "models"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_28

    .line 638
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 642
    :cond_28
    :try_start_28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 643
    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/bef/effectsdk/EffectSDKUtils;->flushAlgorithmModelFiles(Landroid/content/Context;Ljava/lang/String;)V

    .line 644
    iget-object v1, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mEnv:Lcom/ss/android/vesdk/runtime/VEEnv;

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/runtime/VEEnv;->setDetectModelsDir(Ljava/lang/String;)V

    .line 645
    new-instance v1, Lcom/bef/effectsdk/FileResourceFinder;

    invoke-direct {v1, v0}, Lcom/bef/effectsdk/FileResourceFinder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/runtime/VERuntime;->setEffectResourceFinder(Lcom/bef/effectsdk/ResourceFinder;)Z
    :try_end_3f
    .catchall {:try_start_28 .. :try_end_3f} :catchall_40

    return v0

    :catchall_40
    const/4 p0, -0x1

    return p0
.end method
