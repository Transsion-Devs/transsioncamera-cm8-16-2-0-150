.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;
    }
.end annotation


# static fields
.field private static final MSG_RECORDER_FINISH:I = 0xcc

.field private static final MSG_RECORDER_LEAVE:I = 0xcb

.field private static final MSG_RECORDER_PAUSE_RESUME:I = 0xca

.field private static final MSG_RECORDER_START_STOP:I = 0xc9

.field private static final MSG_RECORDER_STAY:I = 0xcd

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

.field private mCameraOperation:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

.field private mContext:Landroid/content/Context;

.field private mDualVideoCB:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;

.field private mLeave:Z

.field private mMainOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private final mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

.field private mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

.field private mNeedGlFinish:Z

.field private mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private volatile mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

.field private mRecorderDuration:J

.field private mRecorderHandle:Landroid/os/Handler;

.field private volatile mRecordingFlag:Z

.field private mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;


# direct methods
.method public static synthetic $r8$lambda$8KCHELRyOiVCHWHOurl08RgV5f4(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;I[F)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->lambda$notifyVideoRecorderData$0(I[F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainOperator(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMainOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecorderHandle(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVideoEncoder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLeave(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMuxer(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRecordState(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRecorderDuration(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderDuration:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVideoEncoder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessFinishRecorder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->processFinishRecorder()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessLeaveRecorder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->processLeaveRecorder()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessPauseAndResumeRecorder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->processPauseAndResumeRecorder()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessStartAndStopRecorder(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->processStartAndStopRecorder()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DualVideoRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .registers 8

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    const-wide/16 v0, 0x0

    .line 67
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderDuration:J

    .line 362
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    .line 74
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    .line 75
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCameraOperation:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

    .line 76
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMainOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/dualvideo/R$bool;->dual_video_need_gl_finish:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mNeedGlFinish:Z

    return-void
.end method

.method private synthetic lambda$notifyVideoRecorderData$0(I[F)V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    if-eqz v0, :cond_d

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->frameAvailableSoon(I[F)Z

    :cond_d
    return-void
.end method

.method private pauseRecording()V
    .registers 4

    .line 321
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseRecording, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    if-nez v0, :cond_1d

    return-void

    .line 325
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->pauseRecording()V

    .line 326
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_PAUSED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPaused()V

    return-void
.end method

.method private processFinishRecorder()V
    .registers 3

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    .line 254
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 255
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    return-void
.end method

.method private processLeaveRecorder()V
    .registers 4

    .line 238
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLeaveRecorder mRecordState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3b

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder in unSupported mRecordState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 242
    :cond_3b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->stopRecording()V

    return-void
.end method

.method private processPauseAndResumeRecorder()V
    .registers 4

    .line 220
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPauseAndResumeRecorder mRecordState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3b

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPauseAndResumeRecorder in unSupported mRecordState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_3b
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->resumeRecording()V

    return-void

    .line 223
    :cond_3f
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->pauseRecording()V

    return-void
.end method

.method private processStartAndStopRecorder()V
    .registers 4

    .line 198
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder mRecordState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mLeave:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    if-eqz v1, :cond_27

    return-void

    .line 202
    :cond_27
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_50

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4c

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder in unSupported mRecordState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_4c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->stopRecording()V

    return-void

    .line 204
    :cond_50
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->startRecording()V

    return-void
.end method

.method private resumeRecording()V
    .registers 4

    .line 331
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeRecording, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 332
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    if-nez v0, :cond_1d

    return-void

    .line 335
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->resumeRecording()V

    .line 336
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STARTED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderResumed()V

    return-void
.end method

.method private startRecording()V
    .registers 11

    .line 259
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording start, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 260
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    if-eqz v1, :cond_1d

    return-void

    .line 263
    :cond_1d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSendAudioParamForDualVideoMode:Z

    if-eqz v1, :cond_39

    .line 264
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 265
    const-string v2, "[startRecording] AudioManager setParameters camera_mode=15"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    const-string v2, "camera_mode=15"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 269
    :cond_39
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPreparing()V

    .line 270
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCameraOperation:Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/recorder/IVideoContract$ICameraRecorder;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z

    .line 272
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;->createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_5c

    .line 274
    const-string v1, "create media info failed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    .line 276
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-void

    .line 280
    :cond_5c
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mPolicy:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderPolicy;->createFileSpec()Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;

    move-result-object v4

    if-nez v4, :cond_6b

    .line 282
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    .line 283
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-void

    .line 286
    :cond_6b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRecording fileSpec.mFileTempPath :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->startVideo()V

    .line 289
    :try_start_8a
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_9e

    .line 290
    new-instance v5, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    goto :goto_af

    :catch_9c
    move-exception v0

    goto :goto_10b

    .line 291
    :cond_9e
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_af

    .line 292
    new-instance v5, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/recorder/data/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    .line 295
    :cond_af
    :goto_af
    new-instance v4, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    move-object v8, v7

    iget v7, v8, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v9, 0xde1

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;III)V

    .line 298
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->isNeedAudio()Z

    move-result v4

    if-eqz v4, :cond_d2

    .line 299
    new-instance v4, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-direct {v4, v5, v6, v7}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;-><init>(Landroid/content/Context;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V

    .line 302
    :cond_d2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoOrientation()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_f7

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    goto :goto_100

    .line 306
    :cond_f7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/recorder/data/VideoFileInfo;->getVideoOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    .line 308
    :goto_100
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->prepare()V

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->startRecording()V
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_10a} :catch_9c

    goto :goto_10e

    .line 311
    :goto_10b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 313
    :goto_10e
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STARTED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 314
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStarted()V

    .line 317
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startRecording end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private stopRecording()V
    .registers 4

    .line 341
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording start, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    if-nez v1, :cond_1d

    return-void

    .line 345
    :cond_1d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSendAudioParamForDualVideoMode:Z

    if-eqz v1, :cond_39

    .line 346
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 347
    const-string v2, "[stopRecording] AudioManager setParameters camera_mode=0"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 348
    const-string v2, "camera_mode=0"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 351
    :cond_39
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2}, Lcom/transsion/camera/app/common/recorder/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopping(IZ)V

    .line 352
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STOPING:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 353
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    if-eqz v1, :cond_4a

    .line 354
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 356
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mDualVideoCB:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;

    if-eqz p0, :cond_51

    .line 357
    invoke-interface {p0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;->playRecorderSound(Z)V

    .line 359
    :cond_51
    const-string p0, "stopRecording end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRecordingDuration()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderDuration:J

    return-wide v0
.end method

.method public init()V
    .registers 4

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dualvideo_record"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    return-void
.end method

.method public isRecording()Z
    .registers 1

    .line 97
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    return p0
.end method

.method public leave()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyVideoRecorderData([FI)V
    .registers 5

    .line 136
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mNeedGlFinish:Z

    if-eqz v0, :cond_12

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    if-eqz v0, :cond_11

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->frameAvailableSoon(I[F)Z

    :cond_11
    return-void

    .line 141
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;I[F)V

    const-wide/16 p0, 0xf

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public pauseOrResume()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setDualVideoCB(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mDualVideoCB:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;

    return-void
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    return-void
.end method

.method public startOrStop(Z)V
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    if-eqz p1, :cond_e

    const-wide/16 v2, 0x12c

    goto :goto_10

    :cond_e
    const-wide/16 v2, 0x0

    :goto_10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-eqz p1, :cond_1d

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mDualVideoCB:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;

    if-eqz p0, :cond_1d

    const/4 p1, 0x1

    .line 116
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;->playRecorderSound(Z)V

    :cond_1d
    return-void
.end method

.method public stay()V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    const/16 v1, 0xcc

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    :cond_1a
    return-void
.end method
