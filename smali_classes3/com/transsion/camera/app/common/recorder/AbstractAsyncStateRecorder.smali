.class abstract Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;
.super Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$RecorderListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected final mAudioSource:I

.field private final mAudioZoomManager:Lcom/transsion/camera/app/common/recorder/AudioZoomManager;

.field protected mContext:Landroid/content/Context;

.field protected mOverrideSize:Landroid/util/Size;

.field protected final mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

.field protected mProfile:Landroid/media/CamcorderProfile;

.field protected final mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

.field protected mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

.field protected final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private volatile mShouldWaitVideoRecordEndAction:Z

.field private volatile mStopping:Z

.field protected final mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field protected volatile mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

.field private final mVideoStateCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractAsyncStateRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;)V
    .registers 8

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;-><init>()V

    .line 80
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    iput-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    .line 88
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 90
    iput-object p3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 91
    iput-object p4, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    .line 92
    iput-object p5, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    .line 93
    iput-object p6, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoStateCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;

    .line 94
    new-instance p2, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mAudioZoomManager:Lcom/transsion/camera/app/common/recorder/AudioZoomManager;

    .line 95
    const-string p2, "audio_source"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mAudioSource:I

    return-void
.end method

.method private hookDisturbStatus(I)V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    .line 339
    const-string v1, "key_mood_light"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 340
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 342
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->hookDisturbStatus(Landroid/content/Context;I)V

    :cond_27
    return-void
.end method


# virtual methods
.method protected abortStartRecording(I)V
    .registers 3

    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->abortStartRecording(IZ)V

    return-void
.end method

.method protected abortStartRecording(IZ)V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 287
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    return-void
.end method

.method protected canStartRecording()Z
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected configRecorder(Landroid/os/Message;)V
    .registers 3

    .line 100
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/transsion/camera/app/common/mode/RecorderParam;

    if-nez v0, :cond_e

    .line 101
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "invalid config param"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 105
    :cond_e
    check-cast p1, Lcom/transsion/camera/app/common/mode/RecorderParam;

    .line 106
    iget-object v0, p1, Lcom/transsion/camera/app/common/mode/RecorderParam;->mOverrideSize:Landroid/util/Size;

    iput-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mOverrideSize:Landroid/util/Size;

    .line 107
    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/RecorderParam;->mProfile:Landroid/media/CamcorderProfile;

    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    return-void
.end method

.method protected getVideoBitRate()I
    .registers 9

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_hevc_encorder"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_video_quality"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    iget-object v2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getModeKey()Ljava/lang/String;

    move-result-object v2

    .line 496
    const-string v3, "com.transsion.camera.feature.mode.video.SlowMotionModeEntry"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz p0, :cond_2a

    iget p0, p0, Landroid/media/CamcorderProfile;->quality:I

    if-lez p0, :cond_2a

    .line 498
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 500
    :cond_2a
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mReduceBitRateForD8400:Z

    if-eqz p0, :cond_36

    const p0, 0xc3500

    goto :goto_39

    :cond_36
    const p0, 0xf4240

    .line 503
    :goto_39
    const-string v2, "H.265"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "5"

    const-string v4, "8_60"

    const-string v5, "8"

    const-string v6, "6"

    const-string v7, "6_60"

    if-eqz v2, :cond_76

    .line 504
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 505
    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_73

    .line 507
    :cond_58
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    mul-int/lit8 p0, p0, 0x19

    goto :goto_9e

    .line 509
    :cond_61
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6a

    mul-int/lit8 p0, p0, 0x1e

    goto :goto_9e

    .line 511
    :cond_6a
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_97

    mul-int/lit8 p0, p0, 0x5

    goto :goto_9e

    :cond_73
    :goto_73
    mul-int/lit8 p0, p0, 0xa

    goto :goto_9e

    .line 515
    :cond_76
    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 516
    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_83

    goto :goto_9c

    .line 518
    :cond_83
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_99

    .line 519
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    goto :goto_99

    .line 521
    :cond_90
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_97

    goto :goto_73

    :cond_97
    const/4 p0, 0x0

    goto :goto_9e

    :cond_99
    :goto_99
    mul-int/lit8 p0, p0, 0x32

    goto :goto_9e

    :cond_9c
    :goto_9c
    mul-int/lit8 p0, p0, 0x14

    .line 526
    :goto_9e
    sget-object v2, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoBitRate hevcEncoder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", videoQuality: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", videoBitRate: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method protected getVideoCodec()I
    .registers 4

    .line 484
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_hevc_encorder"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 485
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVideoCodec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 486
    const-string v0, "H.265"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x5

    return p0

    :cond_28
    const/4 p0, 0x2

    return p0
.end method

.method protected getVideoMime()Ljava/lang/String;
    .registers 2

    .line 478
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_hevc_encorder"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 479
    const-string v0, "H.265"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 480
    const-string/jumbo p0, "video/hevc"

    return-object p0

    :cond_14
    const-string/jumbo p0, "video/avc"

    return-object p0
.end method

.method protected handlePauseException(Ljava/lang/Exception;)V
    .registers 5

    .line 446
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handlePauseException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->handleRecorderException()V

    return-void
.end method

.method protected handlePrepareException(Ljava/lang/Exception;)V
    .registers 5

    .line 431
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handlePrepareException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->handleRecorderException()V

    return-void
.end method

.method protected handleRecorderException()V
    .registers 2

    .line 456
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->resetVideoState()V

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    if-eqz v0, :cond_f

    .line 458
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->reset()V

    .line 459
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->release()V

    :cond_f
    return-void
.end method

.method protected handleResumeException(Ljava/lang/Exception;)V
    .registers 5

    .line 451
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleResumeException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 452
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->handleRecorderException()V

    return-void
.end method

.method protected handleStopException(Ljava/lang/Exception;)V
    .registers 4

    .line 436
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[handleStopException] Exception, this will cause the video file to be deleted "

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 438
    sget-object p1, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    .line 439
    iget-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    .line 440
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    if-eqz p0, :cond_21

    .line 441
    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->reset()V

    :cond_21
    return-void
.end method

.method public isStopping()Z
    .registers 1

    .line 427
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mStopping:Z

    return p0
.end method

.method public markEndWaitVideoRecordEndAction()V
    .registers 2

    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mShouldWaitVideoRecordEndAction:Z

    return-void
.end method

.method protected operationPrepared(Landroid/os/Message;)V
    .registers 5

    .line 112
    sget-object p1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationPrepared mVideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4e

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4a

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationPrepared called in  mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " do nothing"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 128
    :cond_4a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->abortStartRecording(I)V

    return-void

    .line 121
    :cond_4e
    sget-object p1, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoStateCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;

    if-eqz p0, :cond_5a

    .line 123
    invoke-interface {p0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IVideoStateCallback;->onVideoRestartPreviewed()V

    :cond_5a
    return-void

    .line 117
    :cond_5b
    sget-object p1, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    return-void
.end method

.method protected pauseRecording()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    if-nez v1, :cond_9

    goto :goto_1b

    .line 242
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->pause()V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPaused()V

    .line 244
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PAUSED:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    .line 246
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->handlePauseException(Ljava/lang/Exception;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method protected pauseResume(Landroid/os/Message;)V
    .registers 4

    .line 219
    sget-object p1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseResume mVideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_48

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3f

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseResume in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_3f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->resumeRecording()V

    const/16 p1, 0x67

    .line 228
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->hookDisturbStatus(I)V

    return-void

    .line 222
    :cond_48
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->pauseRecording()V

    const/16 p1, 0x66

    .line 223
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->hookDisturbStatus(I)V

    return-void
.end method

.method protected release(Landroid/os/Message;)V
    .registers 2

    .line 399
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->releaseRecorder()V

    const/4 p1, 0x0

    .line 400
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected releaseRecorder()V
    .registers 2

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    if-eqz v0, :cond_a

    .line 405
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->release()V

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    :cond_a
    return-void
.end method

.method protected resetVideoState()V
    .registers 4

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v1, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    if-eq v0, v1, :cond_27

    .line 465
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetVideoState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> STATE_PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    iput-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    :cond_27
    return-void
.end method

.method protected resumeRecording()V
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    if-nez v1, :cond_9

    goto :goto_1b

    .line 255
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->resume()V

    .line 256
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderResumed()V

    .line 257
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception v0

    .line 259
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->handleResumeException(Ljava/lang/Exception;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method protected shouldConsumerStopCommand()Z
    .registers 2

    .line 350
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_12

    const/4 v0, 0x6

    if-eq p0, v0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public shouldWaitVideoRecordEndAction()Z
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v1, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    if-ne v0, v1, :cond_c

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mShouldWaitVideoRecordEndAction:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method protected snapShot(Landroid/os/Message;)V
    .registers 3

    .line 380
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;

    if-nez p1, :cond_7

    return-void

    .line 385
    :cond_7
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1c

    const/4 p0, 0x0

    .line 392
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;->onSnapShot(Z)V

    return-void

    :cond_1c
    const/4 p0, 0x1

    .line 388
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$ISnapShotCallback;->onSnapShot(Z)V

    return-void
.end method

.method protected startCameraRecording()V
    .registers 4

    const/16 v0, -0x14

    .line 165
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;->checkPermitBeforeStart()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPreparing()V

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->startRecordingResult()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 171
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    return-void

    .line 173
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepareAbort()V

    return-void

    .line 177
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    .line 178
    const-string v1, "key_check_storage"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const-string/jumbo v2, "value_storage_insufficient"

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepareAbort()V

    return-void
.end method

.method protected startMediaRecorder(Landroid/os/Message;)V
    .registers 5

    .line 293
    sget-object p1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3d

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2f

    .line 308
    sget-object p1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaRecorder in unSupported mVideoState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->abortStartRecording(I)V

    return-void

    .line 295
    :cond_2f
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->canStartRecording()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 296
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->startRecording()V

    return-void

    .line 298
    :cond_39
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->abortStartRecording(I)V

    return-void

    .line 304
    :cond_3d
    sget-object p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "already stop or abort, ignore this!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected startRecording()V
    .registers 5

    .line 320
    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->supportAudioZoom()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mAudioZoomManager:Lcom/transsion/camera/app/common/recorder/AudioZoomManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->setAudioFocus(Z)V

    goto :goto_f

    :catch_d
    move-exception v0

    goto :goto_26

    .line 323
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->start()V

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStarted()V

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->adjustRingStreamVolume(ZLandroid/content/Context;)V

    .line 326
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_d

    return-void

    .line 328
    :goto_26
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mAppDebugLogEnable:Z

    if-eqz v1, :cond_36

    .line 329
    sget-object v1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "startMediaRecording error"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50

    .line 331
    :cond_36
    sget-object v1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMediaRecording error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_50
    const/4 v0, 0x4

    .line 333
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->abortStartRecording(I)V

    return-void
.end method

.method protected abstract startRecordingResult()Z
.end method

.method protected startStop(Landroid/os/Message;)V
    .registers 4

    .line 139
    sget-object p1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStop mVideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_52

    const/4 v1, 0x5

    if-eq v0, v1, :cond_42

    const/4 v1, 0x6

    if-eq v0, v1, :cond_42

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStop in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_42
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->stopCameraRecording(I)V

    .line 152
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncRecorder;->removeStartStopMessages()Z

    move-result p0

    if-eqz p0, :cond_51

    .line 153
    const-string p0, "remove StartStop messages"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_51
    return-void

    .line 143
    :cond_52
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->startCameraRecording()V

    return-void
.end method

.method protected stop(Landroid/os/Message;)V
    .registers 5

    .line 265
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_31

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2d

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2d

    .line 276
    sget-object p1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_2d
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->stopCameraRecording(I)V

    return-void

    .line 272
    :cond_31
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_37

    move v2, v0

    :cond_37
    const/4 p1, 0x3

    invoke-virtual {p0, p1, v2}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->abortStartRecording(IZ)V

    return-void
.end method

.method protected stopCameraRecording(I)V
    .registers 7

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    if-nez v0, :cond_a

    goto/16 :goto_85

    :cond_a
    const/4 v0, 0x0

    .line 192
    :try_start_b
    sget-object v1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stopCameraRecording+] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 193
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mStopping:Z

    .line 194
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mShouldWaitVideoRecordEndAction:Z

    .line 195
    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v3, p1, v2}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopping(IZ)V

    .line 196
    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderProcessing()V

    .line 197
    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v4, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v4}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->adjustRingStreamVolume(ZLandroid/content/Context;)V

    .line 198
    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderClient:Lcom/transsion/camera/featurelibs/media/RecorderClient;

    invoke-virtual {v3}, Lcom/transsion/camera/featurelibs/media/RecorderClient;->stop()V

    .line 199
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->releaseRecorder()V

    .line 200
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->supportAudioZoom()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 201
    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mAudioZoomManager:Lcom/transsion/camera/app/common/recorder/AudioZoomManager;

    invoke-virtual {v3, v0}, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->setAudioFocus(Z)V

    goto :goto_54

    :catchall_50
    move-exception p1

    goto :goto_82

    :catch_52
    move-exception p1

    goto :goto_6d

    .line 203
    :cond_54
    :goto_54
    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v4, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 204
    sget-object v3, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V

    .line 205
    iget-object v3, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mRecorderCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v3, p1, v2}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    .line 206
    const-string p1, "[stopCameraRecording-]"

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_6a} :catch_52
    .catchall {:try_start_b .. :try_end_6a} :catchall_50

    .line 213
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mStopping:Z

    return-void

    .line 209
    :goto_6d
    :try_start_6d
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->handleStopException(Ljava/lang/Exception;)V

    .line 210
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    .line 211
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onCamError(I)V
    :try_end_7f
    .catchall {:try_start_6d .. :try_end_7f} :catchall_50

    .line 213
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mStopping:Z

    return-void

    :goto_82
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mStopping:Z

    .line 214
    throw p1

    :cond_85
    :goto_85
    return-void
.end method

.method protected storageUnmounted(Landroid/os/Message;)V
    .registers 4

    .line 362
    sget-object p1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder$1;->$SwitchMap$com$transsion$camera$app$common$recorder$data$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_31

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2c

    .line 373
    sget-object p1, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storageUnmounted do nothing in mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2c
    const/4 p1, 0x0

    .line 365
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->stopCameraRecording(I)V

    return-void

    :cond_31
    const/4 p1, 0x3

    .line 369
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->abortStartRecording(I)V

    return-void
.end method

.method public supportAudioZoom()Z
    .registers 1

    .line 411
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mAudioZoomManager:Lcom/transsion/camera/app/common/recorder/AudioZoomManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->supportAudioZoom()Z

    move-result p0

    return p0
.end method

.method public updateAudioZoom(Ljava/lang/String;)V
    .registers 2

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mAudioZoomManager:Lcom/transsion/camera/app/common/recorder/AudioZoomManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/recorder/AudioZoomManager;->updateAudioZoom(Ljava/lang/String;)V

    return-void
.end method

.method protected updateVideoState(Lcom/transsion/camera/app/common/recorder/data/VideoState;)V
    .registers 5

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    if-eq v0, p1, :cond_26

    .line 472
    sget-object v0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateVideoState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 473
    iput-object p1, p0, Lcom/transsion/camera/app/common/recorder/AbstractAsyncStateRecorder;->mVideoState:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    :cond_26
    return-void
.end method
