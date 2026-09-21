.class public Lcom/ss/android/ttve/nativePort/TERecorderInterface;
.super Lcom/ss/android/ttve/nativePort/TENativeServiceBase;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TERecorderInterface"


# instance fields
.field mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

.field mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

.field private mHandle:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 31
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 34
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;-><init>()V

    .line 35
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->isGLES3Enabled()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    goto :goto_10

    :cond_f
    const/4 v0, 0x2

    :goto_10
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/TEGLGlobalContext;->nativeSetGLVersion(I)V

    .line 36
    invoke-direct {p0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    .line 37
    new-instance v2, Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetEffectInterface(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;-><init>(J)V

    iput-object v2, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    return-void
.end method

.method private native nativeAlignTo(JIIII)I
.end method

.method private native nativeChangeRenderSize(J)I
.end method

.method private native nativeChangeVideoOutputSize(JII)I
.end method

.method private native nativeClearAllFrags(JZ)I
.end method

.method private native nativeClearDisplayColor(JFFFF)V
.end method

.method private native nativeCreate()J
.end method

.method private native nativeDeleteFrag(JI)I
.end method

.method private native nativeDeleteLastFrag(JZ)I
.end method

.method private native nativeEnableEngineMonitorReport(JZ)I
.end method

.method private native nativeGetBool(JLjava/lang/String;)Z
.end method

.method private native nativeGetCameraClient(J)J
.end method

.method private native nativeGetDouble(JLjava/lang/String;)D
.end method

.method private native nativeGetEffectInterface(J)J
.end method

.method private native nativeGetFloat(JLjava/lang/String;)F
.end method

.method private native nativeGetInt(JLjava/lang/String;)I
.end method

.method private native nativeGetLastPerformanceData(J)Lcom/ss/android/vesdk/model/VERecordPerformanceData;
.end method

.method private native nativeGetPreviewFrame(J)I
.end method

.method private native nativeGetPreviewFrameWithBitmap(JLandroid/graphics/Bitmap;)I
.end method

.method private native nativeGetString(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetStringArray(JLjava/lang/String;)[Ljava/lang/String;
.end method

.method private native nativeGetVideoDataClient(J)J
.end method

.method private native nativeInit(J)I
.end method

.method private native nativeIsRecording(J)Z
.end method

.method private native nativeNotifyFollowShotSurfaceChanged(JIIIZ)V
.end method

.method private native nativeNotifySurfaceChanged(JIIIZ)V
.end method

.method private native nativePausePrePlay(J)I
.end method

.method private native nativePauseRender(J)I
.end method

.method private native nativePostOnRenderThread(JIIF)I
.end method

.method private native nativeRelease(J)I
.end method

.method private native nativeReleaseGPUResources(JZ)I
.end method

.method private native nativeRenderFrame(JLcom/ss/android/ttvecamera/TECameraFrameSetting;)I
.end method

.method private native nativeSetBackground(JFFFF)V
.end method

.method private native nativeSetBool(JLjava/lang/String;Z)I
.end method

.method private native nativeSetBundle(JLjava/lang/String;J)I
.end method

.method private native nativeSetDisplaySettings(J)I
.end method

.method private native nativeSetDisplaySurface(JLandroid/view/Surface;II)I
.end method

.method private native nativeSetDisplaySurfaceSync(JLandroid/view/Surface;)I
.end method

.method private native nativeSetDisplaySurfaceSync2(JLandroid/view/Surface;II)I
.end method

.method private native nativeSetDouble(JLjava/lang/String;D)I
.end method

.method private native nativeSetFloat(JLjava/lang/String;F)I
.end method

.method private native nativeSetFollowingShotWindowsBackground(JFFFF)V
.end method

.method private native nativeSetInt(JLjava/lang/String;I)I
.end method

.method private native nativeSetLandscape(J)I
.end method

.method private native nativeSetLong(JLjava/lang/String;J)I
.end method

.method private native nativeSetMessageAndCallbackClient(JLcom/ss/android/ttve/nativePort/TEMessageClient;Lcom/ss/android/ttve/nativePort/TECallbackClient;)I
.end method

.method private native nativeSetPerformanceMonitorCallbackClient(JLcom/ss/android/vesdk/TEMemMonitor;)I
.end method

.method private native nativeSetPlayTrackStatus(JIIIJZ)I
.end method

.method private native nativeSetPreviewFakeFrame(JLandroid/graphics/Bitmap;)I
.end method

.method private native nativeSetString(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeSetWaterMark(JLandroid/graphics/Bitmap;IIIIII)V
.end method

.method private native nativeStartFollowingShotPreview(JLandroid/view/Surface;)I
.end method

.method private native nativeStartPrePlay(J)I
.end method

.method private native nativeStartPreview(JLandroid/view/Surface;)I
.end method

.method private native nativeStartRecord(JF)I
.end method

.method private native nativeStartRender(J)I
.end method

.method private native nativeStopFollowShowRender(JZ)V
.end method

.method private native nativeStopPrePlay(J)I
.end method

.method private native nativeStopPreview(JJ)I
.end method

.method private native nativeStopPreviewParallel(J)I
.end method

.method private native nativeStopRecord(J)I
.end method

.method private native nativeStopRender(JZ)V
.end method

.method private native nativeTryRestore(J)I
.end method

.method private native nativeUpdateVideoDecodeChainByTimeline(J)V
.end method


# virtual methods
.method public addDataSource(Lcom/ss/android/vesdk/VEDataSource;)V
    .registers 3

    .line 92
    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/VEDataSource;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 94
    const-string v0, "addDataSource"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public alignTo(IIII)I
    .registers 12

    .line 346
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeAlignTo(JIIII)I

    move-result p0

    return p0
.end method

.method public changeRenderSize()I
    .registers 5

    .line 167
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 171
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeChangeRenderSize(J)I

    move-result p0

    return p0
.end method

.method public changeVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V
    .registers 3

    .line 201
    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 202
    const-string v0, "VideoEncode"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    return-void
.end method

.method public changeVideoOutputSize(II)V
    .registers 7

    .line 192
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 193
    const-string p0, "TERecorderInterface"

    const-string p1, "changeVideoOutputSize mHandle is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_10
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeChangeVideoOutputSize(JII)I

    return-void
.end method

.method public clearAllFrags(Z)I
    .registers 4

    .line 317
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeClearAllFrags(JZ)I

    move-result p0

    return p0
.end method

.method public clearDisplayColor(FFFF)V
    .registers 12

    .line 184
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 187
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeClearDisplayColor(JFFFF)V

    return-void
.end method

.method public deleteFrag(I)I
    .registers 4

    .line 321
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeDeleteFrag(JI)I

    move-result p0

    return p0
.end method

.method public deleteLastFrag(Z)I
    .registers 4

    .line 313
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeDeleteLastFrag(JZ)I

    move-result p0

    return p0
.end method

.method public enableEngineMonitorReport(Z)I
    .registers 6

    .line 296
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 297
    const-string p0, "TERecorderInterface"

    const-string p1, "enableEngineMonitorReport mHandle is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 300
    :cond_11
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeEnableEngineMonitorReport(JZ)I

    move-result p0

    return p0
.end method

.method public getBool(Ljava/lang/String;)Z
    .registers 4

    .line 424
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetBool(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getCameraHandler()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetCameraClient(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4

    .line 436
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetDouble(JLjava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getEffectInterface()Lcom/ss/android/ttve/nativePort/TEEffectInterface;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    return-object p0
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 4

    .line 432
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetFloat(JLjava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4

    .line 428
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetInt(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLastPerformanceData()Lcom/ss/android/vesdk/model/VERecordPerformanceData;
    .registers 3

    .line 420
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetLastPerformanceData(J)Lcom/ss/android/vesdk/model/VERecordPerformanceData;

    move-result-object p0

    return-object p0
.end method

.method public getNativeHandle()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    return-wide v0
.end method

.method public getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I
    .registers 6

    .line 141
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 144
    :cond_b
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 145
    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/VEGetFrameSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 146
    const-string v1, "GetFrameSettings"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 147
    iput-object p1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    .line 150
    :cond_1e
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getDirectBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 151
    const-string v0, "TERecorderInterface"

    const-string v1, "Get preview Frame with bitmap"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getDirectBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetPreviewFrameWithBitmap(JLandroid/graphics/Bitmap;)I

    move-result p0

    return p0

    .line 154
    :cond_36
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetPreviewFrame(J)I

    move-result p0

    return p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 440
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 444
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetStringArray(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoDataClientHandler()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeGetVideoDataClient(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public init(Lcom/ss/android/vesdk/TERecorderContext;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;)I
    .registers 9

    .line 72
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 75
    :cond_b
    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/TERecorderContext;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 76
    const-string v0, "RecordContext"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 78
    invoke-static {p2}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 79
    const-string p2, "VideoEncode"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 81
    invoke-static {p3}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/VEAudioEncodeSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 82
    const-string p2, "AudioEncode"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 84
    invoke-static {p4}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/VEPreviewSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 85
    const-string p2, "PreviewSetting"

    invoke-virtual {p0, p2, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 87
    iget-wide p1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeInit(J)I

    move-result p0

    return p0
.end method

.method public isRecording()Z
    .registers 5

    .line 288
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 289
    const-string p0, "TERecorderInterface"

    const-string v0, "isRecording mHandle is null"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 292
    :cond_11
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeIsRecording(J)Z

    move-result p0

    return p0
.end method

.method public notifyFollowShotSurfaceChanged(IIIZ)V
    .registers 12

    .line 221
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 224
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeNotifyFollowShotSurfaceChanged(JIIIZ)V

    return-void
.end method

.method public notifySurfaceChanged(IIIZ)V
    .registers 12

    .line 214
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 217
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeNotifySurfaceChanged(JIIIZ)V

    return-void
.end method

.method public pausePrePlay()I
    .registers 3

    .line 334
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativePausePrePlay(J)I

    move-result p0

    return p0
.end method

.method public pauseRender()I
    .registers 3

    .line 367
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativePauseRender(J)I

    move-result p0

    return p0
.end method

.method public postOnRenderThread(IIF)I
    .registers 10

    .line 271
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_12

    .line 272
    const-string p0, "TERecorderInterface"

    const-string p1, "postOnRenderThread mHandle is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    :cond_12
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativePostOnRenderThread(JIIF)I

    move-result p0

    return p0
.end method

.method public release()I
    .registers 5

    .line 257
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 260
    :cond_b
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mEffectInterface:Lcom/ss/android/ttve/nativePort/TEEffectInterface;

    if-eqz v0, :cond_12

    .line 261
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEEffectInterface;->release()V

    .line 263
    :cond_12
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeRelease(J)I

    move-result v0

    .line 264
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEBundle;->cleanAll()V

    .line 265
    iput-wide v2, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const/4 v1, 0x0

    .line 266
    iput-object v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    return v0
.end method

.method public releaseGPUResources(Z)I
    .registers 4

    .line 363
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeReleaseGPUResources(JZ)I

    move-result p0

    return p0
.end method

.method public renderFrame(Lcom/ss/android/ttvecamera/TECameraFrameSetting;Lcom/ss/android/vesdk/VEGetFrameSettings;)I
    .registers 7

    .line 351
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 354
    :cond_b
    iget-object v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    invoke-virtual {p2, v0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 355
    invoke-static {p2}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/VEGetFrameSettings;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object v0

    .line 356
    const-string v1, "GetFrameSettings"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    .line 357
    iput-object p2, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mGetFrameSettings:Lcom/ss/android/vesdk/VEGetFrameSettings;

    .line 359
    :cond_1e
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeRenderFrame(JLcom/ss/android/ttvecamera/TECameraFrameSetting;)I

    move-result p0

    return p0
.end method

.method public reset(Lcom/ss/android/vesdk/TERecorderContext;)I
    .registers 6

    .line 98
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    .line 101
    :cond_b
    invoke-static {p1}, Lcom/ss/android/vesdk/util/TEBundleFactory;->from(Lcom/ss/android/vesdk/TERecorderContext;)Lcom/ss/android/ttve/nativePort/TEBundle;

    move-result-object p1

    .line 102
    const-string v0, "RecordContext"

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->clearAllFrags(Z)I

    move-result p0

    return p0
.end method

.method public setBackground(FFFF)V
    .registers 12

    .line 177
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 180
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetBackground(JFFFF)V

    return-void
.end method

.method public setBool(Ljava/lang/String;Z)I
    .registers 5

    .line 390
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetBool(JLjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public setBundle(Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEBundle;)I
    .registers 9

    .line 414
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->getHandle()J

    move-result-wide v4

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetBundle(JLjava/lang/String;J)I

    move-result p0

    .line 415
    invoke-virtual {p2}, Lcom/ss/android/ttve/nativePort/TEBundle;->recycle()V

    return p0
.end method

.method public setDisplaySettings()I
    .registers 5

    .line 159
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 163
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetDisplaySettings(J)I

    move-result p0

    return p0
.end method

.method public setDisplaySurface(Landroid/view/Surface;)I
    .registers 3

    const/4 v0, -0x1

    .line 125
    invoke-virtual {p0, p1, v0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setDisplaySurface(Landroid/view/Surface;II)I

    move-result p0

    return p0
.end method

.method public setDisplaySurface(Landroid/view/Surface;II)I
    .registers 10

    .line 129
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetDisplaySurface(JLandroid/view/Surface;II)I

    move-result p0

    return p0
.end method

.method public setDisplaySurfaceSync(Landroid/view/Surface;)I
    .registers 3

    const/4 v0, -0x1

    .line 133
    invoke-virtual {p0, p1, v0, v0}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->setDisplaySurfaceSync(Landroid/view/Surface;II)I

    move-result p0

    return p0
.end method

.method public setDisplaySurfaceSync(Landroid/view/Surface;II)I
    .registers 10

    .line 137
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetDisplaySurfaceSync2(JLandroid/view/Surface;II)I

    move-result p0

    return p0
.end method

.method public setDouble(Ljava/lang/String;D)I
    .registers 10

    .line 406
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetDouble(JLjava/lang/String;D)I

    move-result p0

    return p0
.end method

.method public setFloat(Ljava/lang/String;F)I
    .registers 5

    .line 402
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetFloat(JLjava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setFollowingShotWindowsBackground(FFFF)V
    .registers 12

    .line 249
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 250
    const-string p0, "TERecorderInterface"

    const-string p1, "setFollowingShotWindowsBackground mHandle is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 253
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetFollowingShotWindowsBackground(JFFFF)V

    return-void
.end method

.method public setInt(Ljava/lang/String;I)I
    .registers 5

    .line 394
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetInt(JLjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setLandscape()I
    .registers 5

    .line 206
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 210
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetLandscape(J)I

    move-result p0

    return p0
.end method

.method public setLong(Ljava/lang/String;J)I
    .registers 10

    .line 398
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetLong(JLjava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public setMessageAndCallbackClient(Lcom/ss/android/ttve/nativePort/TEMessageClient;Lcom/ss/android/ttve/nativePort/TECallbackClient;)I
    .registers 7

    .line 57
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 61
    :cond_b
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetMessageAndCallbackClient(JLcom/ss/android/ttve/nativePort/TEMessageClient;Lcom/ss/android/ttve/nativePort/TECallbackClient;)I

    move-result p0

    return p0
.end method

.method public setPerformanceMonitorCallbackClient(Lcom/ss/android/vesdk/TEMemMonitor;)I
    .registers 6

    .line 65
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 68
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetPerformanceMonitorCallbackClient(JLcom/ss/android/vesdk/TEMemMonitor;)I

    move-result p0

    return p0
.end method

.method public setPlayTrackStatus(IIIJZ)I
    .registers 16

    .line 342
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetPlayTrackStatus(JIIIJZ)I

    move-result p0

    return p0
.end method

.method public setPreviewFakeFrame(Landroid/graphics/Bitmap;)I
    .registers 4

    .line 112
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetPreviewFakeFrame(JLandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 410
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetString(JLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setWaterMarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)V
    .registers 12

    .line 375
    iget-wide v1, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    .line 378
    :cond_9
    iget-object v3, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->waterMarkBitmap:Landroid/graphics/Bitmap;

    iget v4, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->width:I

    iget v5, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->height:I

    iget v6, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->xOffset:I

    iget v7, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->yOffset:I

    iget-object v0, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    iget v9, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeSetWaterMark(JLandroid/graphics/Bitmap;IIIIII)V

    return-void
.end method

.method public startFollowingShotPreview(Landroid/view/Surface;)I
    .registers 6

    .line 228
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 231
    :cond_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeStartFollowingShotPreview(JLandroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public startPrePlay()I
    .registers 3

    .line 330
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeStartPrePlay(J)I

    move-result p0

    return p0
.end method

.method public startPreview(Landroid/view/Surface;)I
    .registers 4

    .line 108
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeStartPreview(JLandroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public startRecord(F)I
    .registers 4

    .line 305
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeStartRecord(JF)I

    move-result p0

    return p0
.end method

.method public startRender()I
    .registers 3

    .line 371
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeStartRender(J)I

    move-result p0

    return p0
.end method

.method public stopFollowShowRender(Z)V
    .registers 6

    .line 242
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 245
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeStopFollowShowRender(JZ)V

    return-void
.end method

.method public stopPrePlay()I
    .registers 3

    .line 338
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeStopPrePlay(J)I

    move-result p0

    return p0
.end method

.method public stopPreview(J)I
    .registers 5

    .line 121
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeStopPreview(JJ)I

    move-result p0

    return p0
.end method

.method public stopPreviewParallel()I
    .registers 5

    .line 279
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 280
    const-string p0, "TERecorderInterface"

    const-string v0, "stopPreviewParallel mHandle is null"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 283
    :cond_12
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeStopPreviewParallel(J)I

    move-result p0

    return p0
.end method

.method public stopRecord()I
    .registers 3

    .line 309
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeStopRecord(J)I

    move-result p0

    return p0
.end method

.method public stopRender(Z)V
    .registers 6

    .line 235
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 238
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeStopRender(JZ)V

    return-void
.end method

.method public tryRestore()I
    .registers 3

    .line 325
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeTryRestore(J)I

    move-result p0

    return p0
.end method

.method public updateVideoDecodeChainByTimeline()V
    .registers 5

    .line 382
    iget-wide v0, p0, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 385
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TERecorderInterface;->nativeUpdateVideoDecodeChainByTimeline(J)V

    return-void
.end method
