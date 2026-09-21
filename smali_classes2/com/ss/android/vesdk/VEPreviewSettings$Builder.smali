.class public Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEPreviewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    new-instance v0, Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    .line 622
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    iget v2, v2, Lcom/ss/android/vesdk/VEPreviewSettings;->maxCountOfBufCache:I

    const-string v3, "ve_titan_max_count_of_render_frame_buffer"

    invoke-virtual {v1, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEPreviewSettings;->maxCountOfBufCache:I

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AB maxCountOfBufCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    iget p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings;->maxCountOfBufCache:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VEPreviewSettings"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VEPreviewSettings;)V
    .registers 2

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    return-void
.end method


# virtual methods
.method public blockRenderExit(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 749
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mBlockRenderExit:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$902(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public build()Lcom/ss/android/vesdk/VEPreviewSettings;
    .registers 1

    .line 1022
    iget-object p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    return-object p0
.end method

.method public disableEffectInternalSetting(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 727
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mDisableEffectInternalSetting:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$702(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enable2DEngineEffect(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 971
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnable2DEngineEffect:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$2802(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enable3buffer(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 760
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnable3buffer:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$1002(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableAudioDecodeTimeOpt(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 992
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableAudioDecodeTimeOpt:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$3102(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableAudioPreStart(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 771
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mAudioPreStartEnable:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$1102(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableAudioRecord(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 662
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableAudioRecord:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$102(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableCheckStatusWhenStopPreview(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 928
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mCheckStatusWhenStopPreview:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$2502(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableDestroyEffectInStopPreview(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 796
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableDestroyEffectInStopPreview:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$1302(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableEGLImage(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 738
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableEGLImage:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$802(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableEffectAmazingEngine(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 960
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableEffectAmazingEngine:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$2702(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableEffectRT(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 819
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableEffectRT:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$1502(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableFollowShotIndependentThread(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 4

    .line 982
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    const/4 v1, 0x1

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mForceSetFollowShotIndependentThread:Z
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$2902(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    .line 983
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mFollowShotIndependentThread:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$3002(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableLens(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 939
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableLens:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$2602(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableMakeUpBackground(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 830
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableMakeUpBackground:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$1602(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableModelHotUpdate(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 1002
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableModelHotUpdate:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$3202(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enablePreloadEffectRes(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 784
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnablePreloadEffectRes:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$1202(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableRecordEffectContentHighSpeed(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 852
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mRecordEffectContentHighSpeed:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$1802(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableRenderLayer(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 1012
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableRenderLayer:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$3302(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public enableSyncCapture(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 885
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mIsSyncCapture:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$2102(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public optFirstFrame(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 715
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mOptFirstFrame:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$602(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public setAsyncDetection(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 673
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mIsAsyncDetection:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$202(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public setCameraUpdateIndependentThread(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 683
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mCameraFrameUpdateIndependentThread:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$302(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public setCaptureRenderFinalWidth(I)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 863
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mCaptureRenderFinalWidth:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$1902(Lcom/ss/android/vesdk/VEPreviewSettings;I)I

    return-object p0
.end method

.method public setCaptureRenderMaxWidth(I)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 874
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mCaptureRenderMaxWidth:I
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$2002(Lcom/ss/android/vesdk/VEPreviewSettings;I)I

    return-object p0
.end method

.method public setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 917
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$2402(Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VEDisplaySettings;)Lcom/ss/android/vesdk/VEDisplaySettings;

    return-object p0
.end method

.method public setEffectAlgorithmRequirement(J)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 4

    .line 808
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEffectAlgorithmRequirement:J
    invoke-static {v0, p1, p2}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$1402(Lcom/ss/android/vesdk/VEPreviewSettings;J)J

    return-object p0
.end method

.method public setGraphMode(Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 906
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->graphType:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$2302(Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;)Lcom/ss/android/vesdk/VEPreviewSettings$VERecordGraphType;

    return-object p0
.end method

.method public setMaxCountOfBufCache(I)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 640
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    iput p1, v0, Lcom/ss/android/vesdk/VEPreviewSettings;->maxCountOfBufCache:I

    return-object p0
.end method

.method public setNeedPostProcess(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 896
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mNeedPostProcess:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$2202(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public setNewEffectAlgorithmAsync(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mEnableNewEffectAlgorithmAsync:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$402(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public setRecordContentType(Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 841
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mContentType:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$1702(Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;)Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    return-object p0
.end method

.method public setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 651
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mRenderSize:Lcom/ss/android/vesdk/VESize;
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$002(Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public setTitanAutoTestLogEnbale(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 704
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    # setter for: Lcom/ss/android/vesdk/VEPreviewSettings;->mTitanAutoTestLogEnable:Z
    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$502(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public switchEffectInGLTask(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .registers 3

    .line 949
    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    iput-boolean p1, v0, Lcom/ss/android/vesdk/VEPreviewSettings;->mSwitchEffectInGLTask:Z

    return-object p0
.end method
