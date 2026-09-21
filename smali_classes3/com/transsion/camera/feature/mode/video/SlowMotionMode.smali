.class public Lcom/transsion/camera/feature/mode/video/SlowMotionMode;
.super Lcom/transsion/camera/app/common/mode/CommonVideoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;
    }
.end annotation


# static fields
.field private static final DECODE_TEMP_FILE_PREFIX:Ljava/lang/String; = ".decode_"

.field private static final DEFAULT_VIDEO_FPS:I = 0x1e

.field private static final ENCODE_TEMP_FILE_PREFIX:Ljava/lang/String; = ".encode_"

.field private static final FRAME_RATE_25:I = 0x19

.field private static final FRAME_RATE_30:I = 0x1e

.field private static final KEEP_END_FRAME_240_FPS:I = 0x88

.field private static final KEEP_END_FRAME_960_FPS:I = 0x56

.field private static final KEEP_START_FRAME_240_FPS:I = 0x4c

.field private static final KEEP_START_FRAME_960_FPS:I = 0x1a

.field private static final LIMIT_RECORDER_DURATION_240:J = 0x1068L

.field private static final LIMIT_RECORDER_DURATION_960:J = 0x898L

.field private static final MSG_STOP_RECORDING:I = 0x0

.field private static final SKIP_FRAMES_ONE_TIME_240:I = 0x4

.field private static final SKIP_FRAMES_ONE_TIME_960:I = 0x8

.field private static final SUFFIX_MP4:Ljava/lang/String; = ".mp4"

.field private static final VIDEO_FPS_120:I = 0x78

.field private static final VIDEO_FPS_240:I = 0xf0

.field private static final VIDEO_FPS_960:I = 0x3c0


# instance fields
.field private mCameraAssigned:Z

.field private mFPS:I

.field private mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mHandler:Landroid/os/Handler;

.field private mIsRecordTimeLimited:Z

.field private mLimitedRecording:Z

.field private mLimitedRecordingFinished:Z

.field private mMaxHighSpeedFps:I

.field private mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

.field private mPauseResumeListener:Landroid/view/View$OnClickListener;

.field private mRecordReason:I

.field private mRecorderOrientation:I

.field private mShowHint:Z

.field private final mSlowMotionQualityHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

.field private mSupportFastLaunch:Z

.field private mSupportedFPSValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockAeAf:Z


# direct methods
.method public static synthetic $r8$lambda$X12fPNkgxm4vgq46ylGQFY7otOk(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->lambda$processFile$1(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jYr5uoSGCggHYDQrVHZz8b4k4xw(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1e

    .line 98
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    .line 99
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 p2, 0x67

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p1, 0x0

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    const/4 v1, -0x1

    .line 102
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMaxHighSpeedFps:I

    .line 106
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecordReason:I

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    .line 112
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mCameraAssigned:Z

    .line 113
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportFastLaunch:Z

    .line 115
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/Map;

    .line 532
    new-instance p2, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    .line 152
    new-instance p2, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$MyHandler;-><init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Lcom/transsion/camera/feature/mode/video/SlowMotionMode-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private configMediaChainAttribute()V
    .registers 6

    .line 710
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-nez v0, :cond_5

    return-void

    .line 714
    :cond_5
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/4 v2, 0x4

    const/16 v3, 0x19

    const/16 v4, 0xf0

    if-ne v4, v1, :cond_2d

    .line 715
    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFrameRate(I)V

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateFPS(I)V

    .line 717
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateRatio(I)V

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setSkipFramesOnce(I)V

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x4c

    const/16 v2, 0x88

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setKeepFrameRange(II)V

    goto :goto_4a

    :cond_2d
    const/16 v1, 0x1e

    .line 722
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFrameRate(I)V

    .line 723
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateFPS(I)V

    .line 724
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setInterpolateRatio(I)V

    .line 725
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setSkipFramesOnce(I)V

    .line 726
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    const/16 v1, 0x55

    invoke-virtual {v0, v3, v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setKeepFrameRange(II)V

    .line 729
    :goto_4a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFrameInfo(II)V

    .line 730
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setCaptureRate(I)V

    return-void
.end method

.method private createSlowMotionUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;
    .registers 3

    .line 538
    new-instance v0, Lcom/transsion/camera/app/common/ui/VideoUISpec;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;-><init>()V

    .line 539
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x0

    .line 540
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->showRecordingTime(Z)V

    return-object v0

    :cond_10
    const/4 v1, 0x1

    .line 542
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setSupportedPause(Z)V

    .line 543
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mPauseResumeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->setPauseResumeListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getBitRateCoefficient()I
    .registers 2

    .line 560
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 561
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/16 v0, 0xf0

    if-ne v0, p0, :cond_e

    const/4 p0, 0x4

    return p0

    :cond_e
    const/16 v0, 0x3c0

    if-ne v0, p0, :cond_15

    const/16 p0, 0x8

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private getMaxOutputFps()I
    .registers 5

    .line 844
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, -0x1

    if-nez v0, :cond_d

    .line 845
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getMaxOutputFps, mCameraDeviceControl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 848
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSupportedHighSpeedFpsRanges()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 849
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_77

    .line 854
    :cond_1a
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 855
    :goto_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 856
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 857
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_63

    .line 859
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 860
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 863
    :cond_66
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 850
    :cond_77
    :goto_77
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getMaxOutputFps, ranges is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private getRecordTimeLimited()Z
    .registers 5

    .line 659
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getVideoSizeByFPS(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecordTimeLimited mFPS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", videoSize: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method private getSlowVideoFrameRate()I
    .registers 4

    .line 549
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 550
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/16 v1, 0xf0

    if-ne v1, v0, :cond_f

    const/16 p0, 0x78

    return p0

    :cond_f
    const/16 v2, 0x3c0

    if-ne v2, v0, :cond_14

    return v1

    .line 556
    :cond_14
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    return p0
.end method

.method private getVideoQualityByVideoSize(Ljava/lang/String;)I
    .registers 2

    .line 812
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_c

    const/4 p0, -0x1

    return p0

    .line 816
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getVideoSizeByFPS(I)Ljava/lang/String;
    .registers 6

    .line 820
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 822
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getVideoSizeByFPS, control is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 825
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->getSupportedHighSpeedSizesAndFPS()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 827
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getVideoSizeByFPS, getSupportedHighSpeedSizesAndFPS is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 828
    const-string p0, "1280x720"

    return-object p0

    .line 830
    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 831
    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 832
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/utils/HighFpsResolution;

    .line 833
    invoke-virtual {v2}, Lcom/transsion/camera/utils/HighFpsResolution;->getFps()I

    move-result v3

    if-ne v3, p1, :cond_21

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/transsion/camera/utils/HighFpsResolution;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/utils/HighFpsResolution;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 835
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoSizeByFPS, find fps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", videoSize:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 839
    :cond_6f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoSizeByFPS, not find videoSize by fps:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method private initFPS()V
    .registers 7

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_fps"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isHighSpeedVideoSupport()Z

    move-result v2

    .line 186
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initFPS fpsValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", highSpeedSupport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_37

    if-eqz v2, :cond_37

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    goto :goto_3b

    :cond_37
    const/16 v0, 0x1e

    .line 191
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    .line 193
    :goto_3b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getRecordTimeLimited()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    .line 194
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getMaxOutputFps()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMaxHighSpeedFps:I

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->querySupportedPlatformValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    if-eqz v0, :cond_64

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_59

    goto :goto_64

    .line 202
    :cond_59
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->refreshShutterType()V

    .line 204
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mShowHint:Z

    if-eqz v0, :cond_63

    .line 205
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->showFPSHintInfo()V

    :cond_63
    return-void

    .line 198
    :cond_64
    :goto_64
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need to show fps hint"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .registers 6

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    .line 522
    new-instance v1, Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {v1, p1, v0, v2, v2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    .line 523
    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 524
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 525
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string p2, "key_fold_switch_preview"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 526
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 527
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setScreenFormType(II)V

    .line 528
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    .line 529
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    return-void
.end method

.method private initVideoQualityHashMap()V
    .registers 4

    .line 805
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 806
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1920x1080"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "1280x720"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionQualityHashMap:Ljava/util/Map;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "640x480"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isRecordTimeLimited()Z
    .registers 1

    .line 655
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 3

    .line 533
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[mPauseResumeListener] click"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pauseResumeRecording()V

    return-void
.end method

.method private synthetic lambda$processFile$1(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 785
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onProcessEnd"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_d

    .line 787
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void

    .line 791
    :cond_d
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile(Ljava/lang/String;)Z

    .line 792
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p2

    .line 793
    invoke-interface {p1, p4, p5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 795
    :try_start_17
    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p1

    .line 797
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 799
    :goto_22
    iget p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecordReason:I

    iget-wide p4, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {p0, p3, p1, p4, p5}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;IJ)V

    return-void
.end method

.method private onFinishVideoRecording(I)V
    .registers 5

    .line 902
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_2f

    .line 903
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_13

    .line 904
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    :cond_13
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_2f

    .line 908
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mRecordingUIRespondImmediately:Z

    if-eqz p1, :cond_2f

    .line 909
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setPause(Z)V

    .line 910
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 911
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onHideRecordingUI()V

    :cond_2f
    return-void
.end method

.method private processFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .registers 15

    .line 777
    invoke-interface {p7, p5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getVideoTempFd(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 779
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p4, p2, v0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFilePath(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    goto :goto_11

    .line 781
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {v0, p2, p4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setFilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :goto_11
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    iget p4, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecorderOrientation:I

    invoke-virtual {p2, p4}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setOrientation(I)V

    .line 784
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    new-instance v0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v4, p1

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object v2, p7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/video/SlowMotionMode;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;Ljava/lang/String;Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->setChainListener(Lcom/transsion/camera/feature/mode/video/node/IChain$IChainListener;)V

    .line 801
    iget-object p0, v1, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->process()V

    return-void
.end method

.method private queryFlashValue()Ljava/lang/String;
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 309
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private showFPSHintInfo()V
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_c

    goto :goto_4c

    .line 343
    :cond_c
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    const/16 v2, 0x78

    if-ne v0, v2, :cond_20

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/R$string;->fps_hint_info_120:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_3f

    :cond_20
    const/16 v2, 0xf0

    if-ne v0, v2, :cond_32

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/R$string;->fps_hint_info_240:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_3f

    .line 348
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/camera/R$string;->fps_hint_info_960:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 350
    :goto_3f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 339
    :cond_4c
    :goto_4c
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "no need to show fps hint"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private storingInterpolateVideoFile(I)V
    .registers 12

    .line 734
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "storingInterpolateVideoFile"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 735
    iget-object v9, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v9, :cond_16

    .line 737
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "storageOperator is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 738
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void

    .line 742
    :cond_16
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecordReason:I

    .line 743
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".decode_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 749
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 750
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 751
    invoke-interface {v9, v8, v5}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->renameTempVideoFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_67

    .line 753
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rename TempVideoFile failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 754
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempFile()V

    .line 755
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void

    .line 759
    :cond_67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".encode_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    .line 761
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 765
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->clone()Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->processFile(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    return-void
.end method


# virtual methods
.method protected getAnalyticsVideoDurationKey()Ljava/lang/String;
    .registers 1

    .line 771
    const-string p0, "key_slowmotion_duration"

    return-object p0
.end method

.method protected getBackMaxZoomRatio()I
    .registers 1

    .line 938
    sget p0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_10X:I

    return p0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 3

    .line 932
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    const/4 v0, 0x2

    const/16 v1, 0x80

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 933
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 1

    .line 287
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getDataFlowType()I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3

    .line 319
    const-string p0, "key_fingerprint_capture"

    const-string p1, "key_secondary_screen"

    const-string v0, "key_video_fps"

    filled-new-array {v0, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 4

    .line 292
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->queryFlashValue()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->getRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 294
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mCameraAssigned:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 295
    const-string v1, "key_volume_key"

    const-string v2, "Shutter"

    invoke-virtual {v0, v1, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_1b
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportFastLaunch:Z

    if-eqz p0, :cond_24

    .line 298
    const-string p0, "key_setting_quick_preview"

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/relation/Relation;->removeBody(Ljava/lang/String;)V

    .line 300
    :cond_24
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/SlowMotionRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 16

    .line 919
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->slow_motion_camera_assgined:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mCameraAssigned:Z

    if-eqz v0, :cond_1d

    .line 920
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 921
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    .line 923
    invoke-super/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    .line 924
    iget-object p1, v0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 925
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object p0

    :cond_39
    return-object p0
.end method

.method public getOutputDataType()I
    .registers 1

    .line 476
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isHighSpeedVideoSupport()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x3

    return p0

    :cond_a
    const/4 p0, 0x2

    return p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 484
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameWidth:I

    iget v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFrameHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 485
    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoRatio:D

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getPreviewSize(Ljava/util/List;DLandroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 314
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 3

    const/16 v0, 0x3c0

    .line 276
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    if-ne v0, v1, :cond_f

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p0, 0xb

    return p0

    :cond_f
    const/16 v0, 0xf0

    .line 279
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    if-ne v0, v1, :cond_1e

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/16 p0, 0xa

    return p0

    :cond_1e
    const/16 p0, 0x9

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 164
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 165
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->initVideoQualityHashMap()V

    .line 166
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->createSlowMotionUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 167
    const-string p2, "key_video_fps"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/R$bool;->slow_motion_camera_assgined:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mCameraAssigned:Z

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$bool;->slow_motion_support_fastlaunch:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportFastLaunch:Z

    .line 170
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/interpolate/VideoInterpolate;->support()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 171
    new-instance p1, Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    :cond_3d
    return-void
.end method

.method protected isModeSupport360VideoHDR(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected isModeSupportVSS()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected isVideoFileValid()Z
    .registers 5

    .line 438
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 439
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    return p0

    .line 441
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->getRecordingTotalDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long p0, v0, v2

    if-ltz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    const/16 v0, 0xf

    const/4 v1, 0x1

    if-eq p1, v0, :cond_46

    const/16 v0, 0x10

    if-eq p1, v0, :cond_42

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_32

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_42

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_46

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_42

    const/16 v0, 0x90

    if-eq p1, v0, :cond_46

    const/16 v0, 0x91

    if-eq p1, v0, :cond_42

    packed-switch p1, :pswitch_data_58

    goto :goto_56

    .line 876
    :pswitch_25
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->setRecordingUIEnable(Z)V

    return-void

    .line 872
    :pswitch_2b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->setRecordingUIEnable(Z)V

    return-void

    .line 892
    :cond_32
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_56

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_56

    .line 893
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->resetRecordingUI()V

    return-void

    .line 889
    :cond_42
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->onFinishVideoRecording(I)V

    return-void

    .line 881
    :cond_46
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz p1, :cond_56

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_56

    const/4 p1, 0x0

    .line 882
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    :cond_56
    :goto_56
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0xc0
        :pswitch_2b
        :pswitch_25
        :pswitch_2b
        :pswitch_25
    .end packed-switch
.end method

.method protected notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V
    .registers 4

    .line 414
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-nez v0, :cond_1e

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[notifyToVideoUI] mSlowMotionUI is null when :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 420
    :cond_1e
    sget-object v1, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    if-ne v1, p1, :cond_29

    .line 421
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->createSlowMotionUISpec()Lcom/transsion/camera/app/common/ui/VideoUISpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 423
    :cond_29
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateUIState(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void
.end method

.method public onBackPressedForUI()Z
    .registers 3

    .line 264
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    .line 266
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    const/4 p0, 0x1

    return p0

    .line 271
    :cond_19
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onBackPressedForUI()Z

    move-result p0

    return p0
.end method

.method public onCameraStateChanged(I)V
    .registers 3

    .line 380
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onCameraStateChanged(I)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_10

    .line 382
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mUnlockAeAf:Z

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 383
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mUnlockAeAf:Z

    .line 384
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unlockAeAfIfNeeded()V

    :cond_10
    return-void
.end method

.method public bridge synthetic onCaptureSequenceCompleted(IJ)V
    .registers 4

    .line 0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;->onCaptureSequenceCompleted(IJ)V

    return-void
.end method

.method protected onCreateQuality()Ljava/lang/String;
    .registers 16

    .line 447
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getSlowVideoFrameRate()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getVideoSizeByFPS(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_10

    .line 450
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getVideoQualityByVideoSize(Ljava/lang/String;)I

    move-result v0

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    if-eq v0, v1, :cond_15

    move v2, v0

    goto :goto_16

    :cond_15
    const/4 v2, 0x5

    .line 457
    :goto_16
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    const-string v4, "_"

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 458
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoQuality:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoFps(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 459
    iget v6, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMaxHighSpeedFps:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 460
    iget v7, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    iget v8, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMaxHighSpeedFps:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 461
    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreateQuality,nextQuality:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",currentQuality:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 462
    iget-object v8, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCreateQuality, currentFps:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mMaxHighSpeedFps:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMaxHighSpeedFps:I

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mFPS=, realCurrentFps:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", realFps:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-ne v2, v3, :cond_87

    if-eq v6, v7, :cond_85

    goto :goto_87

    :cond_85
    move-object v9, p0

    goto :goto_90

    :cond_87
    :goto_87
    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, p0

    .line 465
    invoke-virtual/range {v9 .. v14}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateVideoSurface(Landroid/view/Surface;IIIZ)V

    :goto_90
    if-eq v0, v1, :cond_a7

    .line 469
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 471
    :cond_a7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "5_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateVideoHelper()Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .registers 1

    .line 157
    new-instance p0, Lcom/transsion/camera/feature/mode/video/SlowMotionVideoHelper;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionVideoHelper;-><init>()V

    return-object p0
.end method

.method public onLongPress()Z
    .registers 2

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 651
    :cond_c
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onLongPress()Z

    move-result p0

    return p0
.end method

.method public onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V
    .registers 15

    .line 503
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->deleteTempMediaRecorderFile()V

    .line 504
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->isValid()Z

    move-result p4

    .line 505
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVideoSurface in onMediaRecorderPrepared. mode isValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p4, :cond_21

    return-void

    .line 510
    :cond_21
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-nez v2, :cond_2d

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onMediaRecorderPrepared cameraDeviceControl is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2d
    const/4 v3, 0x2

    .line 517
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getSlowVideoFrameRate()I

    move-result v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v8, p5

    .line 516
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->checkDisplayChanged(ILandroid/view/Surface;IIIZ)V

    return-void
.end method

.method public onMediaRecorderPreparing()V
    .registers 2

    .line 403
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderPreparing()V

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setRecordingOrientation(I)V

    return-void
.end method

.method public onMediaRecorderStarted()V
    .registers 5

    .line 610
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStarted()V

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    sget-object v1, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AE_AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_d

    .line 612
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraMode;->lockAf(Z)V

    .line 615
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoOrientation()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mRecorderOrientation:I

    .line 617
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 618
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    const/4 v0, 0x0

    .line 619
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    .line 620
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 621
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3c0

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    if-ne v2, p0, :cond_2e

    const-wide/16 v2, 0x898

    goto :goto_30

    :cond_2e
    const-wide/16 v2, 0x1068

    :goto_30
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_33
    return-void
.end method

.method public onMediaRecorderStopped(IZ)V
    .registers 4

    .line 628
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopped(IZ)V

    .line 629
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mLockState:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    sget-object p2, Lcom/transsion/camera/app/common/mode/IAeAfLock$State;->AF_LOCK:Lcom/transsion/camera/app/common/mode/IAeAfLock$State;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_d

    .line 630
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->lockAf(Z)V

    .line 632
    :cond_d
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    .line 633
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result p1

    if-nez p1, :cond_18

    .line 634
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    :cond_18
    return-void
.end method

.method public onMediaRecorderStopping(IZ)V
    .registers 4

    if-nez p1, :cond_7

    .line 579
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 581
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onMediaRecorderStopping(IZ)V

    .line 582
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    if-nez p1, :cond_13

    const/16 p1, 0xc9

    .line 583
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    :cond_13
    return-void
.end method

.method public bridge synthetic onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onModeCaptureProgressed(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 327
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 328
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 333
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSettingChanged] key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 357
    const-string v0, "key_video_fps"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    .line 358
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->isHighSpeedVideoSupport()Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 p1, 0x1

    .line 359
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mUnlockAeAf:Z

    .line 360
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    .line 361
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPS:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSlowMotionFps(I)V

    .line 362
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->showFPSHintInfo()V

    .line 363
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getRecordTimeLimited()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mIsRecordTimeLimited:Z

    .line 364
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->refreshShutterType()V

    .line 365
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, 0x6

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 366
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->prepareVideoData()I

    .line 368
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result p1

    if-eqz p1, :cond_7d

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-eqz p1, :cond_7d

    .line 369
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->configMediaChainAttribute()V

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->loadingAlgorithm()V

    return-void

    .line 372
    :cond_68
    const-string v0, "key_fold_switch_preview"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateSwitchPreviewValue(Ljava/lang/String;)V

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onScreenFormChanged(IZ)V

    :cond_7d
    return-void
.end method

.method public onSettingReady()V
    .registers 2

    .line 391
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->initFPS()V

    .line 393
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onSettingReady()V

    .line 395
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-eqz v0, :cond_18

    .line 396
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->configMediaChainAttribute()V

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->loadingAlgorithm()V

    :cond_18
    return-void
.end method

.method public onShutterClick(II)Z
    .registers 4

    .line 255
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    if-eqz v0, :cond_13

    .line 256
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "ignore shutter click when time limited recording"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 259
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->onShutterClick(II)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp()Z
    .registers 2

    .line 640
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 643
    :cond_c
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onSingleTapUp()Z

    move-result p0

    return p0
.end method

.method protected onVideoMediaRecorderInfoConstruct(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
    .registers 4

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setMaxFileSize(J)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    return-void
.end method

.method public pause()V
    .registers 3

    .line 236
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->pause()V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 238
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setPause(Z)V

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->hideInfo()V

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->onHideRecordingUI()V

    .line 242
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSupportedFPSValues:Ljava/util/List;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_26

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mFPSHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 245
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_2f

    const/16 v1, 0xd6

    .line 246
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_2f
    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mShowHint:Z

    .line 249
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecording:Z

    .line 250
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected processFileSaved(Landroid/net/Uri;Ljava/lang/Object;I)V
    .registers 4

    if-eqz p1, :cond_15

    .line 692
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateThumbnail(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 693
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz p1, :cond_c

    .line 694
    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 696
    :cond_c
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mPaused:Z

    if-eqz p1, :cond_15

    .line 697
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->sendNotification(Landroid/content/Context;)V

    :cond_15
    const/16 p1, 0x3b

    .line 700
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 701
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 702
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    :cond_23
    const/4 p1, 0x1

    if-ne p3, p1, :cond_2a

    const/4 p1, 0x4

    .line 705
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->showInfo(I)V

    :cond_2a
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ICameraMode;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resume()V
    .registers 3

    .line 225
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->resume()V

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->setPause(Z)V

    .line 229
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_14

    const/16 v0, 0x7b

    .line 230
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_14
    return-void
.end method

.method protected sendNotification(Landroid/content/Context;)V
    .registers 2

    .line 598
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->sendNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected setMediaInfo(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V
    .registers 4

    .line 495
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->setMediaInfo(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;)V

    const/4 v0, 0x0

    .line 496
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setAudioFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getSlowVideoFrameRate()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setCaptureRate(D)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 497
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->getBitRateCoefficient()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setBitRateCoefficient(I)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    move-result-object p1

    .line 498
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;->setModifyIFrameFlag(Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo$Builder;

    return-void
.end method

.method protected showInfo(I)V
    .registers 2

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showInfo(I)V

    return-void
.end method

.method protected showRemainingRecordingTime(Ljava/lang/String;)V
    .registers 3

    .line 589
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 592
    :cond_7
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->showRemainingRecordingTime(Ljava/lang/String;)V

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->showRemainingTime(Ljava/lang/String;)V

    return-void
.end method

.method protected stopSlowMotionRecording()V
    .registers 2

    .line 603
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->stopSlowMotionRecording()V

    const/4 v0, 0x1

    .line 605
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mLimitedRecordingFinished:Z

    return-void
.end method

.method protected storingVideoFile(I)V
    .registers 5

    .line 670
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->checkMinDuration()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x0

    .line 671
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRecordStateChanged(Z)V

    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 672
    invoke-virtual {p0, v1, p1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    return-void

    .line 677
    :cond_11
    sget-object v0, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->STATE_SAVING:Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->notifyToVideoUI(Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    const/16 v0, 0x3a

    .line 678
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyRawActionToUI(I)V

    .line 680
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->isRecordTimeLimited()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 681
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mVideoFileInfo:Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->mDuration:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->addVideoToDataBase(Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;IJ)V

    .line 682
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToIdle()V

    return-void

    :cond_2c
    const/16 v0, 0x64

    .line 686
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->getVideoSavingMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->notifyToAppUI(IILjava/lang/String;)V

    .line 687
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->storingInterpolateVideoFile(I)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 211
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->unInit()V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz v0, :cond_a

    .line 213
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/video/VideoUI;->unInitVideoUI()V

    .line 215
    :cond_a
    const-string v0, "key_video_fps"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mMediaChainManager:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    if-eqz v0, :cond_16

    .line 218
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->unInit()V

    .line 220
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    return-void
.end method

.method protected updateLowLight(Z)V
    .registers 2

    .line 177
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateLowLight(Z)V

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/SlowMotionMode;->mSlowMotionUI:Lcom/transsion/camera/app/ui/mode/video/VideoUI;

    if-eqz p0, :cond_a

    .line 179
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->updateLowLight(Z)V

    :cond_a
    return-void
.end method

.method public updatePicSurface()Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method
