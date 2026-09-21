.class public Lcom/ss/android/vesdk/VEPreviewSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEPreviewSettings$Builder;,
        Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;,
        Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;
    }
.end annotation


# instance fields
.field private graphType:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;

.field private mAudioPreStartEnable:Z

.field private mBlockRenderExit:Z

.field private mCameraFrameUpdateIndependentThread:Z

.field private mCanvasSize:Lcom/ss/android/vesdk/VESize;

.field private mCaptureRenderFinalWidth:I

.field private mCaptureRenderMaxWidth:I

.field private mCheckStatusWhenStopPreview:Z

.field private mContentType:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

.field private mDisableEffectInternalSetting:Z

.field private mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

.field private mEffectAlgorithmRequirement:J

.field private mEnable2DEngineEffect:Z

.field private mEnable3buffer:Z

.field private mEnableAudioDecodeTimeOpt:Z

.field private mEnableAudioRecord:Z

.field private mEnableDestroyEffectInStopPreview:Z

.field private mEnableEGLImage:Z

.field private mEnableEffectAmazingEngine:Z

.field private mEnableEffectRT:Z

.field private mEnableLens:Z

.field private mEnableMakeUpBackground:Z

.field private mEnableModelHotUpdate:Z

.field private mEnableNewEffectAlgorithmAsync:Z

.field private mEnablePreloadEffectRes:Z

.field private mEnableRenderLayer:Z

.field private mFollowShotIndependentThread:Z

.field private mForceSetFollowShotIndependentThread:Z

.field private mIsAsyncDetection:Z

.field private mIsSyncCapture:Z

.field private mNeedPostProcess:Z

.field private mOptFirstFrame:Z

.field private mOptFirstFrameBypassEffectFrameCnt:I

.field private mRecordEffectContentHighSpeed:Z

.field private mRenderSize:Lcom/ss/android/vesdk/VESize;

.field public mSwitchEffectInGLTask:Z

.field private mTitanAutoTestLogEnable:Z

.field maxCountOfBufCache:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/16 v1, 0x2d0

    const/16 v2, 0x500

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableAudioRecord:Z

    .line 67
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mIsAsyncDetection:Z

    .line 75
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mAudioPreStartEnable:Z

    .line 85
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableNewEffectAlgorithmAsync:Z

    .line 91
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCameraFrameUpdateIndependentThread:Z

    const/16 v1, 0x1e

    .line 97
    iput v1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->maxCountOfBufCache:I

    .line 141
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mTitanAutoTestLogEnable:Z

    .line 361
    sget-object v1, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;->RecordFullContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mContentType:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    .line 366
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableLens:Z

    const v1, 0x7fffffff

    .line 395
    iput v1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCaptureRenderMaxWidth:I

    .line 429
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mIsSyncCapture:Z

    .line 437
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mRecordEffectContentHighSpeed:Z

    const/4 v1, 0x1

    .line 464
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mNeedPostProcess:Z

    .line 476
    sget-object v2, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;->LV_GRAPH_TYPE:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;

    iput-object v2, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->graphType:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;

    .line 507
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableEffectAmazingEngine:Z

    .line 508
    iput-boolean v1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnable2DEngineEffect:Z

    .line 541
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mFollowShotIndependentThread:Z

    .line 542
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mForceSetFollowShotIndependentThread:Z

    .line 547
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableRenderLayer:Z

    .line 551
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableModelHotUpdate:Z

    .line 589
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableAudioDecodeTimeOpt:Z

    return-void
.end method

.method static synthetic access$002(Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnable3buffer:Z

    return p1
.end method

.method static synthetic access$102(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableAudioRecord:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mAudioPreStartEnable:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnablePreloadEffectRes:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableDestroyEffectInStopPreview:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/ss/android/vesdk/VEPreviewSettings;J)J
    .registers 3

    .line 12
    iput-wide p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEffectAlgorithmRequirement:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableEffectRT:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableMakeUpBackground:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;)Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mContentType:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mRecordEffectContentHighSpeed:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/ss/android/vesdk/VEPreviewSettings;I)I
    .registers 2

    .line 12
    iput p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCaptureRenderFinalWidth:I

    return p1
.end method

.method static synthetic access$2002(Lcom/ss/android/vesdk/VEPreviewSettings;I)I
    .registers 2

    .line 12
    iput p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCaptureRenderMaxWidth:I

    return p1
.end method

.method static synthetic access$202(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mIsAsyncDetection:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mIsSyncCapture:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mNeedPostProcess:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;)Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->graphType:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VEDisplaySettings;)Lcom/ss/android/vesdk/VEDisplaySettings;
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCheckStatusWhenStopPreview:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableLens:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableEffectAmazingEngine:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnable2DEngineEffect:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mForceSetFollowShotIndependentThread:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mFollowShotIndependentThread:Z

    return p1
.end method

.method static synthetic access$302(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCameraFrameUpdateIndependentThread:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableAudioDecodeTimeOpt:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableModelHotUpdate:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableRenderLayer:Z

    return p1
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableNewEffectAlgorithmAsync:Z

    return p1
.end method

.method static synthetic access$502(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mTitanAutoTestLogEnable:Z

    return p1
.end method

.method static synthetic access$602(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mOptFirstFrame:Z

    return p1
.end method

.method static synthetic access$702(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mDisableEffectInternalSetting:Z

    return p1
.end method

.method static synthetic access$802(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableEGLImage:Z

    return p1
.end method

.method static synthetic access$902(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z
    .registers 2

    .line 12
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mBlockRenderExit:Z

    return p1
.end method


# virtual methods
.method public checkStatusWhenStopPreview()Z
    .registers 1

    .line 535
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCheckStatusWhenStopPreview:Z

    return p0
.end method

.method public getAudioDecodeTimeOpt()Z
    .registers 1

    .line 603
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableAudioDecodeTimeOpt:Z

    return p0
.end method

.method public getCanvasSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCanvasSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getCaptureRenderFinalWidth()I
    .registers 1

    .line 421
    iget p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCaptureRenderFinalWidth:I

    return p0
.end method

.method public getCaptureRenderMaxWidth()I
    .registers 1

    .line 404
    iget p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCaptureRenderMaxWidth:I

    return p0
.end method

.method public getDisplaySettings()Lcom/ss/android/vesdk/VEDisplaySettings;
    .registers 1

    .line 496
    iget-object p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    return-object p0
.end method

.method public getEffectAlgorithmRequirement()J
    .registers 3

    .line 297
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEffectAlgorithmRequirement:J

    return-wide v0
.end method

.method public getEnableLens()Z
    .registers 1

    .line 372
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableLens:Z

    return p0
.end method

.method public getGraphType()Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;
    .registers 1

    .line 484
    iget-object p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->graphType:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;

    return-object p0
.end method

.method public getMaxCountOfBufCache()I
    .registers 1

    .line 586
    iget p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->maxCountOfBufCache:I

    return p0
.end method

.method public getRecordContentType()I
    .registers 1

    .line 387
    iget-object p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mContentType:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public getRenderSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public is3bufferEnable()Z
    .registers 4

    .line 247
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_three_buffer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnable3buffer:Z

    .line 251
    :cond_14
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnable3buffer:Z

    return p0
.end method

.method public isAsyncDetection()Z
    .registers 4

    .line 124
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_async_detection"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 125
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mIsAsyncDetection:Z

    .line 127
    :cond_13
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mIsAsyncDetection:Z

    return p0
.end method

.method public isAudioPreStartEnable()Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mAudioPreStartEnable:Z

    return p0
.end method

.method public isAudioRecordEnabled()Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableAudioRecord:Z

    return p0
.end method

.method public isBlockRenderExit()Z
    .registers 1

    .line 230
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mBlockRenderExit:Z

    return p0
.end method

.method public isEGLImageEnable()Z
    .registers 1

    .line 214
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableEGLImage:Z

    return p0
.end method

.method public isEffectInternalSettingDisabled()Z
    .registers 4

    .line 192
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_disable_effect_internal_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mDisableEffectInternalSetting:Z

    .line 196
    :cond_14
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mDisableEffectInternalSetting:Z

    return p0
.end method

.method public isEffectRTEnable()Z
    .registers 1

    .line 326
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableEffectRT:Z

    return p0
.end method

.method public isEnable2DEngineEffect()Z
    .registers 1

    .line 525
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnable2DEngineEffect:Z

    return p0
.end method

.method public isEnableCameraFrameUpdateIndependentThread()Z
    .registers 5

    .line 104
    invoke-static {}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraOutputAndUpdateStrategy()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    const-string v2, "ve_camera_frame_update_independent_thread"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    .line 106
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCameraFrameUpdateIndependentThread:Z

    goto :goto_23

    .line 107
    :cond_19
    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;->STRATEGY_TWOTHREAD_ONEOUT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;

    if-eq v0, v1, :cond_21

    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;->STRATEGY_TWOTHREAD_TWOOUT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_AND_UPDATE_STRATEGY;

    if-ne v0, v1, :cond_23

    .line 109
    :cond_21
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCameraFrameUpdateIndependentThread:Z

    .line 112
    :cond_23
    :goto_23
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mCameraFrameUpdateIndependentThread:Z

    return p0
.end method

.method public isEnableDestroyEffectInStopPreview()Z
    .registers 1

    .line 308
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableDestroyEffectInStopPreview:Z

    return p0
.end method

.method public isEnableEffectAmazingEngine()Z
    .registers 1

    .line 516
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableEffectAmazingEngine:Z

    return p0
.end method

.method public isEnableModelHotUpdate()Z
    .registers 1

    .line 607
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableModelHotUpdate:Z

    return p0
.end method

.method public isEnableNewEffectAlgorithmAsync()Z
    .registers 4

    .line 135
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_new_effect_algorithm_async"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 136
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableNewEffectAlgorithmAsync:Z

    .line 138
    :cond_14
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableNewEffectAlgorithmAsync:Z

    return p0
.end method

.method public isEnablePassEffectWhenNoEffectFilter()Z
    .registers 3

    .line 611
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_enable_pass_effect_when_no_effect_filter"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEnableRenderLayer()Z
    .registers 1

    .line 595
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableRenderLayer:Z

    return p0
.end method

.method public isEnableTitanAutoTestLog()Z
    .registers 4

    .line 148
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_titan_auto_test_log"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mTitanAutoTestLogEnable:Z

    .line 151
    :cond_14
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mTitanAutoTestLogEnable:Z

    return p0
.end method

.method public isFollowShotIndependentThread()Z
    .registers 3

    .line 560
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mForceSetFollowShotIndependentThread:Z

    if-eqz v0, :cond_7

    .line 561
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mFollowShotIndependentThread:Z

    return p0

    .line 563
    :cond_7
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_titan_follow_shot_independent_thread"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 564
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2d

    .line 565
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 566
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mFollowShotIndependentThread:Z

    .line 568
    :cond_2d
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mFollowShotIndependentThread:Z

    return p0
.end method

.method public isMakeUpBackgroundEnable()Z
    .registers 1

    .line 343
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableMakeUpBackground:Z

    return p0
.end method

.method public isOptFirstFrame()Z
    .registers 4

    .line 174
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_opt_first_frame"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mOptFirstFrame:Z

    .line 179
    :cond_14
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mOptFirstFrame:Z

    return p0
.end method

.method public isPreloadEffectResEnabled()Z
    .registers 4

    .line 283
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_preload_effect_res"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnablePreloadEffectRes:Z

    .line 287
    :cond_14
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mEnablePreloadEffectRes:Z

    return p0
.end method

.method public isRecordEffectContentHighSpeed()Z
    .registers 1

    .line 446
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mRecordEffectContentHighSpeed:Z

    return p0
.end method

.method public isSwitchEffectInGLTask()Z
    .registers 1

    .line 578
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mSwitchEffectInGLTask:Z

    return p0
.end method

.method public isSyncCapture()Z
    .registers 1

    .line 456
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mIsSyncCapture:Z

    return p0
.end method

.method public needPostProcess()Z
    .registers 1

    .line 473
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->mNeedPostProcess:Z

    return p0
.end method
