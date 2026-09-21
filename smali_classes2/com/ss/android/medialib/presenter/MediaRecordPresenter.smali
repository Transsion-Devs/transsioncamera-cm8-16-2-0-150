.class public Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/presenter/IMediaPresenter;
.implements Lcom/ss/android/medialib/audio/AudioDataProcessThread$OnProcessDataListener;
.implements Lorg/libsdl/app/AudioRecorderInterfaceExt;
.implements Lcom/ss/android/medialib/audio/IDataFeed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioInitCallback;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$HandGesture;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$PictureResult;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$PictureState;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$GestureType;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$ModeChangeState;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$IntensityType;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioType;,
        Lcom/ss/android/medialib/presenter/MediaRecordPresenter$Result;
    }
.end annotation


# static fields
.field public static final EFFECT_TYPE_BODY_DANCE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EFFECT_TYPE_NORMAL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EFFECT_TYPE_QR:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaRecordPresenter"

.field public static final TYPE_PLAY_AUDIOTRACK:I = 0x2

.field public static final TYPE_PLAY_OPENSL:I = 0x4

.field public static final TYPE_RECORD_AUDIORECODER:I = 0x1

.field public static final TYPE_RECORD_EMPTY:I = 0x0

.field public static final TYPE_RECORD_PLAY_AUDIOTRACK:I = 0x3

.field public static final TYPE_RECORD_PLAY_OPENSL:I = 0x5


# instance fields
.field private enableSlam:Z

.field private mAudioEncodeChannels:I

.field private mAudioEncodeSampleRate:I

.field private mAudioInitCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioInitCallback;

.field mAudioRecordBufferProcessor:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

.field private mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

.field private mAudioRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

.field private mAudioRecording:Z

.field private mAudioType:I

.field private mBGMVolume:F

.field private mCachedBufferModel:Lcom/ss/android/medialib/presenter/FifoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/medialib/presenter/FifoImpl<",
            "Lcom/ss/android/medialib/presenter/CachedAudioBufferModel;",
            ">;"
        }
    .end annotation
.end field

.field public mCameraFrameCount:I

.field public mCameraFrameCurrentTime:J

.field public mCameraFrameRate:F

.field public mCameraFrameStartTime:J

.field private mEnableAudioRecorder:Z

.field private mEnableCachedAudio:Z

.field private mEnableDuetMic:Z

.field private mEnableMicRefactor:Z

.field private mEncodeBitRate:I

.field private mEncodeMode:I

.field private mEnhanceSysVolume:Z

.field private volatile mInterruptDetectImageContent:Z

.field private mIsAudioLoop:Z

.field private mIsDuetMode:Z

.field private mIsStopRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mKaraokeEnable:Z

.field private mLastTimeStamp:D

.field private mMusicEndTime:J

.field private mMusicPath:Ljava/lang/String;

.field private mMusicStartTime:J

.field private mNotRecordAudio:Z

.field public mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mOnPreviewFrameListener:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;

.field private mOrientaion:I

.field private mPendingDeleteLastFrag:Z

.field private mPreviewDataCallbackListener:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;

.field private mRecordAudioStartRet:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mRecordTime:J

.field private mStopCache:Z

.field mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureTimeListener:Lcom/ss/android/medialib/listener/TextureTimeListener;

.field private mUseFront:Z

.field private mVCtrl:Lcom/ss/android/medialib/presenter/VEVideoController;

.field private mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

.field private mVeAudioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

.field private mVideoQuality:I

.field private mWillHardEncode:Z

.field protected mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 231
    iput v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    const-wide/16 v1, 0x0

    .line 232
    iput-wide v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicStartTime:J

    const-wide/16 v3, -0x1

    .line 233
    iput-wide v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicEndTime:J

    .line 234
    iput-wide v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mRecordTime:J

    const/4 v3, 0x0

    .line 236
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsAudioLoop:Z

    .line 237
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsStopRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v4, 0x12

    .line 238
    iput v4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mVideoQuality:I

    const/4 v4, -0x1

    .line 239
    iput v4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEncodeMode:I

    .line 240
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    .line 250
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mPendingDeleteLastFrag:Z

    .line 255
    iput-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableDuetMic:Z

    .line 257
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsDuetMode:Z

    const/high16 v5, 0x3f800000    # 1.0f

    .line 259
    iput v5, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mBGMVolume:F

    .line 261
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnhanceSysVolume:Z

    .line 263
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mInterruptDetectImageContent:Z

    .line 265
    iput v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOrientaion:I

    const v5, 0xac44

    .line 267
    iput v5, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeSampleRate:I

    const/4 v5, 0x2

    .line 268
    iput v5, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeChannels:I

    const/high16 v5, 0x20000

    .line 269
    iput v5, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEncodeBitRate:I

    .line 271
    iput-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mUseFront:Z

    .line 272
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mNotRecordAudio:Z

    .line 273
    iput-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    .line 275
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecording:Z

    .line 279
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mRecordAudioStartRet:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 280
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mKaraokeEnable:Z

    .line 283
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableCachedAudio:Z

    .line 285
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mStopCache:Z

    const/4 v0, 0x0

    .line 287
    iput-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 771
    iput-wide v5, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mLastTimeStamp:D

    .line 2692
    iput-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableSlam:Z

    .line 2702
    iput v4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameCount:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 2703
    iput v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameRate:F

    .line 2704
    iput-wide v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameStartTime:J

    .line 2705
    iput-wide v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameCurrentTime:J

    .line 2706
    new-instance v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$11;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$11;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)V

    iput-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 2735
    new-instance v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$12;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$12;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)V

    iput-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mTextureTimeListener:Lcom/ss/android/medialib/listener/TextureTimeListener;

    .line 774
    new-instance v0, Lcom/ss/android/medialib/RecordInvoker;

    invoke-direct {v0}, Lcom/ss/android/medialib/RecordInvoker;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    .line 775
    invoke-virtual {v0}, Lcom/ss/android/medialib/RecordInvoker;->resetPerfStats()V

    .line 776
    new-instance v0, Lcom/ss/android/medialib/presenter/VEVideoController;

    iget-object v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-direct {v0, v1}, Lcom/ss/android/medialib/presenter/VEVideoController;-><init>(Lcom/ss/android/medialib/RecordInvoker;)V

    iput-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mVCtrl:Lcom/ss/android/medialib/presenter/VEVideoController;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Lorg/libsdl/app/BufferedAudioRecorder;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Landroid/graphics/SurfaceTexture;)J
    .registers 2

    .line 92
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getTextureDelta(Landroid/graphics/SurfaceTexture;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 92
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mUseFront:Z

    return p0
.end method

.method static synthetic access$500(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOnPreviewFrameListener:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Z
    .registers 1

    .line 92
    iget-boolean p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecording:Z

    return p0
.end method

.method static synthetic access$602(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Z)Z
    .registers 2

    .line 92
    iput-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecording:Z

    return p1
.end method

.method static synthetic access$700(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mPreviewDataCallbackListener:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;

    return-object p0
.end method

.method private detachMonitor()V
    .registers 1

    return-void
.end method

.method private getAudioSourceType()I
    .registers 2

    .line 3629
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_audio_source_type"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 3631
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1f

    .line 3632
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method private getTextureDelta(Landroid/graphics/SurfaceTexture;)J
    .registers 10

    .line 2727
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2728
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 2729
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 2730
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide p0

    sub-long/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 2731
    sget-object v4, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nano_time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",elapsed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ,delta_uptime_nano: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private isAudioStopTimeout()Z
    .registers 3

    .line 1348
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 1351
    :cond_6
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lorg/libsdl/app/BufferedAudioRecorder;->isStopTimeout()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method private shotScreenIfUseOesTexture()V
    .registers 5

    .line 1270
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_oes_texture_shot_screen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1271
    sget-object v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ssUseOesTexture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/RecordInvoker;->enableShotScreenUseOesTexture(Z)V

    return-void
.end method


# virtual methods
.method public addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 2651
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    return-void
.end method

.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 3762
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addPCMData([BIJ)I
    .registers 7

    .line 1401
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-eqz v0, :cond_11

    .line 1402
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onProcessData is running"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->addPCMData([BIJ)I

    goto :goto_3e

    .line 1405
    :cond_11
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableCachedAudio:Z

    if-eqz v0, :cond_2b

    .line 1406
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mStopCache:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCachedBufferModel:Lcom/ss/android/medialib/presenter/FifoImpl;

    if-eqz v0, :cond_2b

    .line 1407
    new-instance v0, Lcom/ss/android/medialib/presenter/CachedAudioBufferModel;

    .line 1408
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/ss/android/medialib/presenter/CachedAudioBufferModel;-><init>([BI)V

    .line 1409
    iget-object v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCachedBufferModel:Lcom/ss/android/medialib/presenter/FifoImpl;

    invoke-virtual {v1, v0}, Lcom/ss/android/medialib/presenter/FifoImpl;->addLastSafe(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    :cond_2b
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->onAudioCallback([BI)V

    .line 1415
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    if-eqz p0, :cond_3e

    .line 1417
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/libsdl/app/AudioRecorderInterface;->addPCMData([BIJ)I

    .line 1418
    sget-object p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string p1, "addPCMData is running"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    return p0
.end method

.method public addPipRenderTarget(Landroid/view/Surface;IILandroid/graphics/Bitmap;Z)Z
    .registers 6

    .line 3754
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->addPipRenderTarget(Landroid/view/Surface;IILandroid/graphics/Bitmap;Z)Z

    move-result p0

    return p0
.end method

.method public addSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    .registers 2

    .line 3597
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->addSlamDetectListener2(Lcom/ss/android/medialib/listener/SlamDetectListener;)V

    return-void
.end method

.method public addTrack(ILjava/lang/String;JJ)I
    .registers 7

    .line 2808
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->addTrack(ILjava/lang/String;JJ)I

    move-result p0

    return p0
.end method

.method public animateImageToPreview(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    if-nez p2, :cond_c

    .line 3582
    sget-object p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string p1, "Illegal argument. imagePath can\'t be null. Consider using empty string to cancel."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 3585
    :cond_c
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->animateImageToPreview(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public animateImagesToPreview([Ljava/lang/String;[Ljava/nio/ByteBuffer;[I[I)I
    .registers 5

    .line 3589
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->animateImagesToPreview([Ljava/lang/String;[Ljava/nio/ByteBuffer;[I[I)I

    move-result p0

    return p0
.end method

.method public appendComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 3469
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->appendComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public appendComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 6

    .line 3527
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 3528
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_APPEND_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 3529
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 3530
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 3531
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 3532
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "appendComposerNodes..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEffectParams;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/RecordInvoker;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0
.end method

.method public attachAudioRecordingOberver()V
    .registers 3

    .line 3728
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez v0, :cond_10

    .line 3729
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz v0, :cond_10

    .line 3730
    new-instance v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$16;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$16;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)V

    invoke-virtual {v0, v1}, Lorg/libsdl/app/BufferedAudioRecorder;->attachRecordingObserver(Landroidx/lifecycle/Observer;)V

    :cond_10
    return-void
.end method

.method public attachExtFrameData(Ljava/lang/Object;)V
    .registers 2

    .line 3712
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->attachExtFrameData(Ljava/lang/Object;)V

    return-void
.end method

.method public attachMonitor(Lcom/ss/android/medialib/log/IMonitor;)V
    .registers 2

    return-void
.end method

.method public audioNeedStart()Z
    .registers 2

    .line 1708
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsDuetMode:Z

    if-eqz v0, :cond_b

    iget-boolean p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableDuetMic:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public bindEffectAudioProcessor(Landroid/content/Context;)I
    .registers 7

    .line 3368
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 3369
    const-string v2, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 3370
    :goto_12
    sget-object v2, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "has low latency ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    invoke-static {p1}, Lcom/ss/android/medialib/utils/Utils;->getSystemAudioInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p1

    .line 3374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSampleRate ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nativeSamleBufferSize? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3375
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, p1, v1}, Lcom/ss/android/medialib/RecordInvoker;->bindEffectAudioProcessor(IIZ)I

    move-result p0

    return p0
.end method

.method public cancelAll()V
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/RecordInvoker;->cancelAll()V

    .line 521
    iget v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    return-void
.end method

.method public declared-synchronized changeAudioRecord(Landroid/content/Context;ILorg/libsdl/app/AudioRecorderInterface;)I
    .registers 13

    monitor-enter p0

    .line 688
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b6

    if-nez v0, :cond_1a

    :try_start_5
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    if-eqz v0, :cond_1a

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1a

    .line 689
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "changeAudioRecord make sure audioRecorder will be created here !!"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    goto :goto_1a

    :catchall_15
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_fe

    .line 691
    :cond_1a
    :goto_1a
    :try_start_1a
    iget v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_b6

    const/4 v1, 0x1

    if-ne v0, p2, :cond_28

    .line 692
    :try_start_1f
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string p2, "changeAudioRecord: no need"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_15

    .line 693
    monitor-exit p0

    return v1

    :cond_28
    if-nez p1, :cond_65

    .line 696
    :try_start_2a
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "file "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->__FILE__()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",fun "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->__FUNCTION__()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",line "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->__LINE__()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": context is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_2a .. :try_end_61} :catchall_15

    .line 697
    monitor-exit p0

    const/16 p0, -0x3e8

    return p0

    .line 699
    :cond_65
    :try_start_65
    iput-object p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_b6

    and-int/lit8 p3, v0, 0x1

    and-int/2addr p3, p2

    if-nez p3, :cond_81

    .line 703
    :try_start_6c
    iget-boolean p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez p3, :cond_81

    .line 704
    iget-object p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz p3, :cond_81

    .line 705
    invoke-virtual {p3}, Lorg/libsdl/app/BufferedAudioRecorder;->unInit()V

    const/4 p3, 0x0

    .line 706
    iput-object p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    .line 707
    sget-object p3, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v0, "changeAudioRecord: mAudioRecorder.unInit()"

    invoke-static {p3, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_6c .. :try_end_81} :catchall_15

    .line 714
    :cond_81
    :try_start_81
    iget-boolean p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    if-eqz p3, :cond_b9

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_b9

    .line 716
    iget-boolean p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez p3, :cond_b9

    .line 717
    iget-object p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-nez p3, :cond_b9

    .line 718
    new-instance v0, Lorg/libsdl/app/BufferedAudioRecorder;

    iget v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeSampleRate:I

    iget v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeChannels:I

    iget v4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEncodeBitRate:I

    iget-object v5, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mVeAudioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;
    :try_end_9b
    .catchall {:try_start_81 .. :try_end_9b} :catchall_b6

    move-object v1, p0

    :try_start_9c
    invoke-direct/range {v0 .. v5}, Lorg/libsdl/app/BufferedAudioRecorder;-><init>(Lorg/libsdl/app/AudioRecorderInterfaceExt;IIILcom/ss/android/medialib/presenter/VEAudioMonitor;)V

    iput-object v0, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    .line 720
    invoke-direct {v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getAudioSourceType()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/libsdl/app/BufferedAudioRecorder;->init(I)V

    .line 721
    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->attachAudioRecordingOberver()V

    .line 722
    sget-object p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string p3, "changeAudioRecord: mAudioRecorder.init()"

    invoke-static {p0, p3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    :catchall_b3
    move-exception v0

    :goto_b4
    move-object p1, v0

    goto :goto_fe

    :catchall_b6
    move-exception v0

    move-object v1, p0

    goto :goto_b4

    :cond_b9
    move-object v1, p0

    :goto_ba
    and-int/lit8 p0, p2, 0x4

    if-eqz p0, :cond_ef

    .line 728
    iget-object p0, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    iget p3, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mBGMVolume:F

    const/4 v0, -0x1

    invoke-virtual {p0, p3, v0}, Lcom/ss/android/medialib/RecordInvoker;->setBGMVolume(FI)I

    .line 729
    iget-object v2, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    iget-object v4, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicPath:Ljava/lang/String;

    iget-wide v5, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicStartTime:J

    iget-wide v7, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mRecordTime:J

    add-long/2addr v5, v7

    iget-boolean v7, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsAudioLoop:Z

    iget-boolean v8, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnhanceSysVolume:Z

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->initAudioPlayer(Landroid/content/Context;Ljava/lang/String;JZZ)I

    move-result p0

    .line 730
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeAudioRecord: initAudioPlayer return: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fa

    .line 732
    :cond_ef
    iget-object p0, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->uninitAudioPlayer()V

    const/4 p0, 0x0

    .line 733
    invoke-virtual {v1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setUseMusic(I)V

    const/16 p0, -0x7d0

    .line 736
    :goto_fa
    iput p2, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I
    :try_end_fc
    .catchall {:try_start_9c .. :try_end_fc} :catchall_b3

    .line 737
    monitor-exit v1

    return p0

    :goto_fe
    :try_start_fe
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_b3

    throw p1
.end method

.method public changeDuetVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 407
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->changeDuetVideo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeOutputVideoSize(II)V
    .registers 6

    .line 454
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeOutputVideoSize: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->changeOutputVideoSize(II)V

    return-void
.end method

.method public changePreviewRadioMode(I)V
    .registers 2

    .line 1581
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->changePreviewRadioMode(I)V

    return-void
.end method

.method public changeRecordMode(I)V
    .registers 2

    .line 2944
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->changeRecordMode(I)V

    return-void
.end method

.method public changeRecordMode(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x1

    .line 2935
    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setModeChangeState(I)V

    .line 2936
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->cancelAll()V

    if-eqz p1, :cond_c

    .line 2938
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_c
    const/4 p1, 0x2

    .line 2940
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setModeChangeState(I)V

    return-void
.end method

.method public changeSurface(Landroid/view/Surface;)I
    .registers 2

    .line 1594
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->changeSurface(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public changeSurfaceImmediately(Landroid/view/Surface;)I
    .registers 3

    .line 1603
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/RecordInvoker;->changeSurface(Landroid/view/Surface;)I

    move-result p1

    const/4 v0, 0x2

    .line 1604
    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setModeChangeState(I)V

    return p1
.end method

.method public checkAudioNeedInit(I)Z
    .registers 5

    .line 660
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    if-eqz v0, :cond_15

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_15

    .line 661
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v2, "checkAudioNeedInit changeAudioRecord make sure audioRecorder will be created here !!"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 662
    :cond_15
    iget v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    if-ne v0, p1, :cond_21

    .line 663
    sget-object p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string p1, "checkAudioNeedInit changeAudioRecord: no need"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 666
    :cond_21
    :goto_21
    iget-boolean p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    and-int/2addr p1, p0

    if-eqz p1, :cond_2a

    return p0

    :cond_2a
    return v1
.end method

.method public checkAudioNeedRelease(I)Z
    .registers 5

    .line 670
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    const/4 v1, 0x0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    if-eqz v0, :cond_15

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_15

    .line 671
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v2, "checkAudioNeedRelease changeAudioRecord make sure audioRecorder will be created here !!"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 672
    :cond_15
    iget v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    if-ne v0, p1, :cond_21

    .line 673
    sget-object p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string p1, "checkAudioNeedRelease changeAudioRecord: no need"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 676
    :cond_21
    :goto_21
    iget p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    and-int/2addr p0, p1

    if-nez p0, :cond_29

    return v0

    :cond_29
    return v1
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 3

    .line 3567
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 4

    .line 3571
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public checkIfUseRecordAudio()Z
    .registers 4

    .line 1196
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsDuetMode:Z

    if-eqz v0, :cond_b

    .line 1197
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    iget-boolean v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableDuetMic:Z

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    .line 1200
    :cond_b
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    .line 1201
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecordBufferProcessor:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    if-eqz p0, :cond_1a

    return v2

    :cond_1a
    return v1

    .line 1203
    :cond_1b
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    if-eqz v0, :cond_24

    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz p0, :cond_24

    return v2

    :cond_24
    return v1
.end method

.method public chooseAreaFromRatio34(F)V
    .registers 2

    .line 459
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->chooseAreaFromRatio34(F)V

    return-void
.end method

.method public chooseSlamFace(I)V
    .registers 2

    .line 2780
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->chooseSlamFace(I)V

    return-void
.end method

.method public clearDisplayColor(FFFF)V
    .registers 5

    .line 2836
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->clearDisplayColor(FFFF)V

    return-void
.end method

.method public declared-synchronized clearEnv()V
    .registers 2

    monitor-enter p0

    .line 1100
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/RecordInvoker;->clearFragFile()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1101
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public clearLandMarkDetectListener()V
    .registers 1

    .line 2665
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->clearLandMarkDetectListener()V

    return-void
.end method

.method public clearSlamDetectListener()V
    .registers 1

    .line 3605
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->clearSlamDetectListener2()V

    return-void
.end method

.method public closeWavFile(Z)I
    .registers 4

    .line 1456
    monitor-enter p0

    .line 1457
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/RecordInvoker;->closeWavFile(Z)I

    move-result v0

    .line 1458
    iget-object v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    if-eqz v1, :cond_11

    .line 1460
    invoke-interface {v1, p1}, Lorg/libsdl/app/AudioRecorderInterface;->closeWavFile(Z)I

    goto :goto_11

    :catchall_f
    move-exception p1

    goto :goto_26

    .line 1462
    :cond_11
    :goto_11
    iget-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mPendingDeleteLastFrag:Z

    if-eqz p1, :cond_1a

    .line 1463
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p1}, Lcom/ss/android/medialib/RecordInvoker;->deleteLastFrag()I

    :cond_1a
    const/4 p1, 0x0

    .line 1465
    iput-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mPendingDeleteLastFrag:Z

    .line 1466
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "closeWavFile"

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    monitor-exit p0

    return v0

    .line 1468
    :goto_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_f

    throw p1
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 14

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1518
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    .line 1522
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public declared-synchronized concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I
    .registers 18

    monitor-enter p0

    .line 1526
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->waitUtilAudioProcessDone()V

    .line 1527
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1528
    iget-object v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I

    move-result p1

    .line 1529
    const-string p2, "te_record_concat_ret"

    int-to-long p3, p1

    const/4 v2, 0x0

    invoke-static {v2, p2, p3, p4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1530
    const-string p2, "te_record_concat_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, v0

    invoke-static {v2, p2, p3, p4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 1531
    monitor-exit p0

    return p1

    :catchall_2a
    move-exception v0

    move-object p1, v0

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2a

    throw p1
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1508
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public configStyleResourceFinder(Landroid/content/res/AssetManager;)V
    .registers 2

    .line 822
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->configStyleResourceFinder(Landroid/content/res/AssetManager;)I

    return-void
.end method

.method public createEncoder()V
    .registers 1

    .line 1672
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->createEncoder()V

    return-void
.end method

.method public deleteLastFrag()V
    .registers 3

    .line 1147
    monitor-enter p0

    .line 1148
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->isAudioProcessing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1149
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Audio processing, will delete after nativeCloseWavFile"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1150
    iput-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mPendingDeleteLastFrag:Z

    .line 1151
    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    goto :goto_23

    .line 1153
    :cond_15
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "Delete last frag now"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/RecordInvoker;->deleteLastFrag()I

    .line 1155
    monitor-exit p0

    return-void

    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_13

    throw v0
.end method

.method public detectSkeleton()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public disableRender(Z)V
    .registers 2

    .line 2796
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->disableRender(Z)V

    return-void
.end method

.method public enable3buffer(Z)V
    .registers 2

    .line 471
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enable3buffer(Z)V

    return-void
.end method

.method public enableAbandonFirstFrame(Z)V
    .registers 2

    .line 2800
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableAbandonFirstFrame(Z)V

    return-void
.end method

.method public enableAudio(I)V
    .registers 2

    .line 1004
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableAudio(I)V

    return-void
.end method

.method public enableAudioAlgorithmParam(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3810
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->enableAudioAlgorithmParam(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableAudioLoudnessBalanceFilter(ZD)V
    .registers 4

    .line 3814
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->enableAudioLoudnessBalanceFilter(ZD)V

    return-void
.end method

.method public enableAudioPlayerFromVE(I)V
    .registers 2

    .line 1014
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableAudioPlayerFromVE(I)V

    return-void
.end method

.method public enableAudioRecorder(Z)V
    .registers 4

    if-nez p1, :cond_e

    .line 1681
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez v0, :cond_1d

    .line 1682
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz v0, :cond_1d

    .line 1683
    invoke-virtual {v0}, Lorg/libsdl/app/BufferedAudioRecorder;->unInit()V

    goto :goto_1d

    .line 1687
    :cond_e
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez v0, :cond_1d

    .line 1688
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz v0, :cond_1d

    .line 1689
    invoke-direct {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getAudioSourceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/libsdl/app/BufferedAudioRecorder;->init(I)V

    .line 1694
    :cond_1d
    :goto_1d
    iput-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    return-void
.end method

.method public enableAutoTestLog(Z)V
    .registers 2

    .line 1022
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableAutoTestLog(Z)V

    return-void
.end method

.method public enableBachAlgorithm(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3818
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->enableBachAlgorithm(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableClearColorAfterRender(Z)V
    .registers 2

    .line 495
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableClearColorAfterRender(Z)V

    return-void
.end method

.method public enableDuetGlFinish(Z)I
    .registers 2

    .line 3720
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableDuetGlFinish(Z)I

    move-result p0

    return p0
.end method

.method public enableDuetMicRecord(Z)V
    .registers 2

    .line 423
    iput-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableDuetMic:Z

    return-void
.end method

.method public enableEffect(Z)V
    .registers 2

    .line 2792
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableEffect(Z)V

    return-void
.end method

.method public enableEffectBGM(Z)V
    .registers 2

    .line 2689
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableEffectBGM(Z)V

    return-void
.end method

.method public enableEffectRT(Z)V
    .registers 2

    .line 487
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableEffectRT(Z)V

    return-void
.end method

.method public enableFaceBeautifyDetect(I)V
    .registers 2

    .line 2254
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableFaceBeautifyDetect(I)V

    return-void
.end method

.method public enableFaceExtInfo(I)V
    .registers 2

    .line 2014
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableFaceExtInfo(I)V

    return-void
.end method

.method public enableGetPropTrack(Z)V
    .registers 2

    .line 3746
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableGetPropTrack(Z)I

    return-void
.end method

.method public enableLandMark(Z)V
    .registers 2

    .line 3185
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableLandMark(Z)V

    return-void
.end method

.method public enableLensProcess(IZ)V
    .registers 3

    .line 3782
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->enableLensProcess(IZ)V

    return-void
.end method

.method public enableMakeUpBackground(Z)V
    .registers 2

    .line 491
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableMakeUpBackground(Z)V

    return-void
.end method

.method public enablePBO(Z)V
    .registers 2

    .line 1930
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enablePBO(Z)V

    return-void
.end method

.method public enablePictureTestMode(ZZ)V
    .registers 3

    .line 1946
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->enablePictureTestModel(ZZ)V

    return-void
.end method

.method public enablePreloadEffectRes(Z)V
    .registers 2

    .line 475
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enablePreloadEffectRes(Z)V

    return-void
.end method

.method public enableRecordBGMToMp4(Z)V
    .registers 2

    .line 1962
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableRecordBGMToMp4(Z)V

    return-void
.end method

.method public enableRecordFlip(I)V
    .registers 2

    .line 1009
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableRecordFlip(I)V

    return-void
.end method

.method public enableRecordMaxDuration(Z)I
    .registers 2

    .line 3704
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableRecordMaxDuration(Z)I

    move-result p0

    return p0
.end method

.method public enableRecordingMp4(Z)V
    .registers 2

    .line 1188
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableRecordingMp4(Z)V

    return-void
.end method

.method public enableScan(ZJ)V
    .registers 4

    .line 3181
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->enableScan(ZJ)V

    return-void
.end method

.method public enableSceneRecognition(Z)V
    .registers 2

    .line 2233
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableSceneRecognition(Z)V

    return-void
.end method

.method public enableShotScreenUseOesTexture(Z)V
    .registers 2

    .line 1192
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableShotScreenUseOesTexture(Z)V

    return-void
.end method

.method public enableSkeletonDetect(Z)V
    .registers 2

    .line 2246
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableSkeletonDetect(Z)V

    return-void
.end method

.method public enableSlam(Z)V
    .registers 2

    .line 2695
    iput-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableSlam:Z

    return-void
.end method

.method public enableSmartBeauty(Z)V
    .registers 2

    .line 2250
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableSmartBeauty(Z)V

    return-void
.end method

.method public enableStickerRecognition(Z)V
    .registers 2

    .line 2242
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableStickerRecognition(Z)V

    return-void
.end method

.method public enableTTFaceDetect(Z)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public enableTimestampCallback(Z)V
    .registers 2

    .line 1018
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableTimestampCallback(Z)V

    return-void
.end method

.method public enableWaterMark(Z)V
    .registers 2

    .line 1934
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->enableWaterMark(Z)V

    return-void
.end method

.method public enhanceSysVolume(Z)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 2

    .line 345
    iput-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnhanceSysVolume:Z

    return-object p0
.end method

.method public feed([BIJ)I
    .registers 7

    .line 1382
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-eqz v0, :cond_28

    .line 1385
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->onAudioCallback([BI)V

    .line 1386
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    if-eqz v0, :cond_17

    .line 1388
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/libsdl/app/AudioRecorderInterface;->addPCMData([BIJ)I

    .line 1389
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "addPCMData is running"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_17
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mRecordAudioStartRet:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_28

    .line 1392
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecordBufferProcessor:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->feed([BIJ)I

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public fetchDistortionInfo(Lcom/ss/android/medialib/listener/DistortionInfoCallback;)Z
    .registers 2

    .line 3774
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->fetchDistortionInfo(Lcom/ss/android/medialib/listener/DistortionInfoCallback;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .registers 1

    .line 1535
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->finishWithoutNative()V

    .line 1536
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->unInitBeautyPlay()V

    return-void
.end method

.method public finishWithoutNative()V
    .registers 2

    .line 1540
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez v0, :cond_e

    .line 1541
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz v0, :cond_e

    .line 1542
    invoke-virtual {v0}, Lorg/libsdl/app/BufferedAudioRecorder;->unInit()V

    const/4 v0, 0x0

    .line 1543
    iput-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    :cond_e
    return-void
.end method

.method public forceFirstFrameHasEffect(Z)V
    .registers 2

    .line 467
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->forceFirstFrameHasEffect(Z)V

    return-void
.end method

.method public getAECSuggestVolume()[F
    .registers 1

    .line 3638
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getAECSuggestVolume()[F

    move-result-object p0

    return-object p0
.end method

.method public getAudioFeedProxy()Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;
    .registers 1

    .line 654
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecordBufferProcessor:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    return-object p0
.end method

.method public getAudioRecorderInterface()Lorg/libsdl/app/AudioRecorderInterface;
    .registers 1

    .line 2849
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    return-object p0
.end method

.method public getCameraFrameRate()F
    .registers 3

    .line 2723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera frameRate"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2724
    iget p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCameraFrameRate:F

    return p0
.end method

.method public getComposerNodePaths()Ljava/lang/String;
    .registers 1

    .line 3563
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getComposerNodePaths()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComposerNodeValue(Ljava/lang/String;Ljava/lang/String;)F
    .registers 3

    .line 3559
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->getComposerNodeValue(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getEffectHandler()J
    .registers 3

    .line 3716
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getEffectHandler()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndFrameTime()J
    .registers 3

    .line 1104
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getEndFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;
    .registers 1

    .line 3177
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;

    move-result-object p0

    return-object p0
.end method

.method public getFilterIntensity(Ljava/lang/String;)F
    .registers 2

    .line 2224
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->getFilterIntensity(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getFrameByKey(Ljava/lang/String;)Lcom/ss/android/medialib/camera/ImageFrame;
    .registers 2

    .line 3679
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->getFrameByKey(Ljava/lang/String;)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object p0

    return-object p0
.end method

.method public getLastAudioLength()J
    .registers 3

    .line 1108
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getLastAudioLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRecordFps()F
    .registers 1

    .line 1120
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getLastRecordFps()F

    move-result p0

    return p0
.end method

.method public getLastRecordFrameNum()I
    .registers 1

    .line 1116
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getLastRecordFrameNum()I

    move-result p0

    return p0
.end method

.method public getLastRecordLagCount()I
    .registers 1

    .line 1124
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getLastRecordLagCount()I

    move-result p0

    return p0
.end method

.method public getLastRecordLagMaxDuration()J
    .registers 3

    .line 1128
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getLastRecordLagMaxDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRecordLagTotalDuration()J
    .registers 3

    .line 1132
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getLastRecordLagTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMapBuffer()Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;
    .registers 1

    .line 3742
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getMapBuffer()Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMicState()I
    .registers 5

    .line 1698
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez v0, :cond_2c

    .line 1699
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMicState: mAudioRecorder is null ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    const/4 v3, 0x0

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-nez p0, :cond_27

    return v3

    .line 1701
    :cond_27
    invoke-virtual {p0}, Lorg/libsdl/app/BufferedAudioRecorder;->getMicState()I

    move-result p0

    return p0

    :cond_2c
    const/16 p0, -0x64

    return p0
.end method

.method public getPerfStageCostByKey(Ljava/lang/String;)J
    .registers 2

    .line 1140
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPreviewRenderRect()[I
    .registers 1

    .line 3806
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getPreviewRenderRect()[I

    move-result-object p0

    return-object p0
.end method

.method public getReactionCamRotation()F
    .registers 1

    .line 886
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getReactionCamRotation()F

    move-result p0

    return p0
.end method

.method public getReactionCameraPosInRecordPixel()[I
    .registers 1

    .line 902
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getReactionCameraPosInRecordPixel()[I

    move-result-object p0

    return-object p0
.end method

.method public getReactionCameraPosInViewPixel()[I
    .registers 1

    .line 894
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getReactionCameraPosInViewPixel()[I

    move-result-object p0

    return-object p0
.end method

.method public getReactionPosMarginInViewPixel()[I
    .registers 1

    .line 937
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getReactionPosMarginInViewPixel()[I

    move-result-object p0

    return-object p0
.end method

.method public getRecordedVideoPaths()[Ljava/lang/String;
    .registers 1

    .line 1184
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getRecordedVideoPaths()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceMultiViewTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2752
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->getResourceMultiViewTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSegmentAudioPlayBackTimestamp()J
    .registers 3

    .line 1112
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getAudioEndTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSequencePreviewFrame(IIZILjava/lang/String;Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;)I
    .registers 7

    .line 2432
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->getSequencePreviewFrame(IIZILjava/lang/String;Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;)I

    move-result p0

    return p0
.end method

.method public getSlamFaceCount()I
    .registers 1

    .line 2771
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getSlamFaceCount()I

    move-result p0

    return p0
.end method

.method public getSmallWindowSnapshot(IILandroid/graphics/Bitmap;Lcom/ss/android/medialib/listener/SmallWindowSnapshotListener;)Z
    .registers 5

    .line 3802
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->getSmallWindowSnapshot(IILandroid/graphics/Bitmap;Lcom/ss/android/medialib/listener/SmallWindowSnapshotListener;)Z

    move-result p0

    return p0
.end method

.method public getStyleAudioProxy()Lcom/ss/android/medialib/style/IStyleAudioProxyInterface;
    .registers 1

    .line 3770
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getStyleAudioProxy()Lcom/ss/android/medialib/style/IStyleAudioProxyInterface;

    move-result-object p0

    return-object p0
.end method

.method public getStyleProxy()Lcom/ss/android/medialib/style/IStyleProxyInterface;
    .registers 1

    .line 3766
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->getStyleProxy()Lcom/ss/android/medialib/style/IStyleProxyInterface;

    move-result-object p0

    return-object p0
.end method

.method public getVideoController()Lcom/ss/android/medialib/presenter/VEVideoController;
    .registers 1

    .line 3674
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mVCtrl:Lcom/ss/android/medialib/presenter/VEVideoController;

    return-object p0
.end method

.method public handleEffectAudio(ZJ)V
    .registers 4

    .line 2678
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->handleEffectAudio(ZJ)V

    return-void
.end method

.method public initAudioConfig(IIIII)I
    .registers 8

    .line 1446
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "initAudioConfig"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioInitCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioInitCallback;

    if-eqz v0, :cond_e

    .line 1449
    invoke-interface {v0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioInitCallback;->callback(II)V

    .line 1451
    :cond_e
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->initAudioConfig(IIIII)I

    move-result p0

    return p0
.end method

.method public initBeautyPlay(IILjava/lang/String;IILjava/lang/String;I)I
    .registers 19

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 780
    invoke-virtual/range {v0 .. v10}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initBeautyPlay(IILjava/lang/String;IILjava/lang/String;IZZZ)I

    move-result p0

    return p0
.end method

.method public initBeautyPlay(IILjava/lang/String;IILjava/lang/String;IZ)I
    .registers 20

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 789
    invoke-virtual/range {v0 .. v10}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initBeautyPlay(IILjava/lang/String;IILjava/lang/String;IZZZ)I

    move-result p0

    return p0
.end method

.method public initBeautyPlay(IILjava/lang/String;IILjava/lang/String;IZZZ)I
    .registers 24

    .line 800
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "init enter "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 802
    invoke-static {v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->clearWithType(I)V

    .line 804
    invoke-static {v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->initStats(I)V

    .line 805
    iget-object v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    move v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Lcom/ss/android/medialib/RecordInvoker;->initBeautyPlay(IILjava/lang/String;IILjava/lang/String;IZZZ)I

    move-result p1

    .line 806
    iget-object v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    iget-object v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mTextureTimeListener:Lcom/ss/android/medialib/listener/TextureTimeListener;

    invoke-virtual {v1, v2}, Lcom/ss/android/medialib/RecordInvoker;->setTextureTimeListener(Lcom/ss/android/medialib/listener/TextureTimeListener;)V

    .line 807
    new-instance v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$1;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$1;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)V

    invoke-static {v1}, Lcom/ss/android/medialib/RecordInvoker;->setRecordStopCallback(Lcom/ss/android/medialib/RecordInvoker$RecordStopCallback;)V

    .line 817
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init ret = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public initBeautyPlay(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object p6, p7

    move p7, p8

    .line 785
    invoke-virtual/range {p0 .. p7}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initBeautyPlay(IILjava/lang/String;IILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public initBeautyPlayOnlyPreview(Lcom/ss/android/medialib/qr/ScanSettings;)I
    .registers 2

    .line 826
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->initBeautyPlayOnlyPreview(Lcom/ss/android/medialib/qr/ScanSettings;)I

    move-result p0

    return p0
.end method

.method public initDuet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FFFZ)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    .line 445
    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initDuet(Ljava/lang/String;Ljava/lang/String;FFFZZI)V

    return-void
.end method

.method public initDuet(Ljava/lang/String;Ljava/lang/String;FFFZZ)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 351
    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initDuet(Ljava/lang/String;Ljava/lang/String;FFFZZI)V

    return-void
.end method

.method public initDuet(Ljava/lang/String;Ljava/lang/String;FFFZZI)V
    .registers 17

    .line 400
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->initDuet(Ljava/lang/String;FFFZZI)V

    const-wide/16 p3, 0x0

    .line 401
    invoke-virtual {p0, p3, p4, p3, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicTime(JJ)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 402
    invoke-virtual {p0, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicPath(Ljava/lang/String;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 p1, 0x1

    .line 403
    iput-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsDuetMode:Z

    return-void
.end method

.method public initFaceBeautifyDetectExtParam(ZZZ)V
    .registers 4

    .line 1982
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->initFaceBeautifyDetectExtParam(ZZZ)V

    return-void
.end method

.method public initFaceBeautyDetectExtParam(Z)V
    .registers 2

    .line 1978
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->initFaceBeautyDetectExtParam(Z)V

    return-void
.end method

.method public initFaceDetectExtParam(IZZ)V
    .registers 4

    .line 1970
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->initFaceDetectExtParam(IZZ)V

    return-void
.end method

.method public initHDRNetDetectExtParam(ZLjava/lang/String;)V
    .registers 3

    .line 1986
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->initHDRNetDetectExtParam(ZLjava/lang/String;)V

    return-void
.end method

.method public initHandDetectExtParam(III)V
    .registers 4

    .line 1974
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->initHandDetectExtParam(III)V

    return-void
.end method

.method public initImageDrawer(I)I
    .registers 2

    .line 2892
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->initImageDrawer(I)I

    move-result p0

    return p0
.end method

.method public initReaction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->initReaction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 512
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicTime(JJ)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 513
    invoke-virtual {p0, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicPath(Ljava/lang/String;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    return-void
.end method

.method public initRecord(Landroid/content/Context;)I
    .registers 3

    .line 582
    iget v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initRecord(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public initRecord(Landroid/content/Context;I)I
    .registers 4

    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initRecord(Landroid/content/Context;ILorg/libsdl/app/AudioRecorderInterface;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized initRecord(Landroid/content/Context;ILorg/libsdl/app/AudioRecorderInterface;)I
    .registers 13

    monitor-enter p0

    .line 596
    :try_start_1
    iput-object p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_81

    if-nez p1, :cond_45

    .line 598
    :try_start_5
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "file "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->__FILE__()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",fun "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->__FUNCTION__()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",line "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ss/android/vesdk/VELogUtil;->__LINE__()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": context is null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_40

    .line 599
    monitor-exit p0

    const/16 p0, -0x3e8

    return p0

    :catchall_40
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_c7

    .line 601
    :cond_45
    :try_start_45
    iput p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    .line 602
    iget-boolean p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_81

    if-nez p2, :cond_59

    .line 604
    :try_start_4b
    iget-object p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz p2, :cond_59

    .line 605
    invoke-virtual {p2}, Lorg/libsdl/app/BufferedAudioRecorder;->unInit()V

    .line 606
    sget-object p2, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string p3, "initRecord: mAudioRecorder.unInit()"

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_4b .. :try_end_59} :catchall_40

    .line 611
    :cond_59
    :try_start_59
    iget p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_84

    .line 612
    iget-boolean p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez p2, :cond_84

    .line 613
    new-instance v0, Lorg/libsdl/app/BufferedAudioRecorder;

    iget v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeSampleRate:I

    iget v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeChannels:I

    iget v4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEncodeBitRate:I

    iget-object v5, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mVeAudioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;
    :try_end_6d
    .catchall {:try_start_59 .. :try_end_6d} :catchall_81

    move-object v1, p0

    :try_start_6e
    invoke-direct/range {v0 .. v5}, Lorg/libsdl/app/BufferedAudioRecorder;-><init>(Lorg/libsdl/app/AudioRecorderInterfaceExt;IIILcom/ss/android/medialib/presenter/VEAudioMonitor;)V

    iput-object v0, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    .line 616
    invoke-direct {v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getAudioSourceType()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/libsdl/app/BufferedAudioRecorder;->init(I)V

    .line 617
    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->attachAudioRecordingOberver()V

    goto :goto_85

    :catchall_7e
    move-exception v0

    :goto_7f
    move-object p1, v0

    goto :goto_c7

    :catchall_81
    move-exception v0

    move-object v1, p0

    goto :goto_7f

    :cond_84
    move-object v1, p0

    .line 622
    :goto_85
    iget p0, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_ae

    .line 623
    iget-object p0, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_ae

    .line 624
    iget-object p0, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    iget p2, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mBGMVolume:F

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setBGMVolume(FI)I

    .line 625
    iget-object v2, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    iget-object v4, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicPath:Ljava/lang/String;

    iget-wide p2, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicStartTime:J

    iget-wide v5, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mRecordTime:J

    add-long/2addr v5, p2

    iget-boolean v7, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsAudioLoop:Z

    iget-boolean v8, v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnhanceSysVolume:Z

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->initAudioPlayer(Landroid/content/Context;Ljava/lang/String;JZZ)I

    move-result p0

    goto :goto_af

    :cond_ae
    const/4 p0, 0x0

    .line 629
    :goto_af
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initRecord return: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_6e .. :try_end_c5} :catchall_7e

    .line 631
    monitor-exit v1

    return p0

    :goto_c7
    :try_start_c7
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_7e

    throw p1
.end method

.method public initWavFile(IID)I
    .registers 6

    .line 1364
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->initWavFile(IID)I

    move-result v0

    .line 1365
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    if-eqz p0, :cond_14

    .line 1367
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/libsdl/app/AudioRecorderInterface;->initWavFile(IID)I

    .line 1368
    sget-object p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string p1, "initWavFile"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    return v0
.end method

.method public isAudioProcessing()Z
    .registers 4

    .line 1340
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 1341
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecordBufferProcessor:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_11

    return v2

    :cond_11
    return v1

    .line 1343
    :cond_12
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lorg/libsdl/app/BufferedAudioRecorder;->isProcessing()Z

    move-result p0

    if-eqz p0, :cond_1d

    return v2

    :cond_1d
    return v1
.end method

.method public isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z
    .registers 2

    .line 3621
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z

    move-result p0

    return p0
.end method

.method public isSlamEnabled()Z
    .registers 1

    .line 2699
    iget-boolean p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableSlam:Z

    return p0
.end method

.method public isSmallWinCameraRender()Z
    .registers 1

    .line 3798
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->isSmallWinCameraRender()Z

    move-result p0

    return p0
.end method

.method public isStopRecording()Z
    .registers 1

    .line 1359
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsStopRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public lackPermission()V
    .registers 1

    .line 1483
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    if-eqz p0, :cond_7

    .line 1485
    invoke-interface {p0}, Lorg/libsdl/app/AudioRecorderInterface;->lackPermission()V

    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 3826
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->onDestroy()V

    return-void
.end method

.method public onDrawFrame(I[FZ)I
    .registers 11

    .line 1040
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_24

    if-eqz p2, :cond_21

    const/4 v2, 0x0

    .line 1042
    aget v3, p2, v2

    const/4 v4, 0x5

    aget v4, p2, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    aget v5, p2, v4

    const/4 v6, 0x4

    aget v6, p2, v6

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_1f

    move v2, v4

    .line 1043
    :cond_1f
    iput-boolean v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mUseFront:Z

    .line 1045
    :cond_21
    invoke-interface {v0, v1}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    .line 1047
    :cond_24
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->onDrawFrame(I[FZ)I

    move-result p0

    return p0
.end method

.method public onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;IZ)I
    .registers 4

    .line 2905
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;IZ)I

    move-result p0

    return p0
.end method

.method public onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;Z)I
    .registers 5

    .line 2897
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_b

    .line 2898
    invoke-interface {v0, v1}, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;->onFrameAvailable(Landroid/graphics/SurfaceTexture;)V

    .line 2900
    :cond_b
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;Z)I

    move-result p0

    return p0
.end method

.method public onDrawFrameTime(D)I
    .registers 3

    .line 1070
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->onDrawFrameTime(D)I

    move-result p0

    return p0
.end method

.method public onPause()V
    .registers 1

    .line 3822
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->onPause()V

    return-void
.end method

.method public onProcessData([BIJ)I
    .registers 11

    .line 1427
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onProcessData is running"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableCachedAudio:Z

    if-eqz v0, :cond_42

    .line 1429
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mStopCache:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCachedBufferModel:Lcom/ss/android/medialib/presenter/FifoImpl;

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    .line 1430
    :goto_14
    iget-object v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCachedBufferModel:Lcom/ss/android/medialib/presenter/FifoImpl;

    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/FifoImpl;->getMaxSize()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 1431
    iget-object v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCachedBufferModel:Lcom/ss/android/medialib/presenter/FifoImpl;

    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/FifoImpl;->pollSafe()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/medialib/presenter/CachedAudioBufferModel;

    if-eqz v1, :cond_3c

    .line 1434
    iget-object v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/CachedAudioBufferModel;->getBuffer()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/CachedAudioBufferModel;->getSize()I

    move-result v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/ss/android/medialib/RecordInvoker;->addPCMData([BIJ)I

    .line 1435
    sget-object v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v2, "cached buffer in"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_3f
    const/4 v0, 0x1

    .line 1439
    iput-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mStopCache:Z

    .line 1441
    :cond_42
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->addPCMData([BIJ)I

    move-result p0

    return p0
.end method

.method public pauseEffectAudio(Z)V
    .registers 2

    .line 2674
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->pauseEffectAudio(Z)V

    return-void
.end method

.method public pauseRender()I
    .registers 1

    .line 3692
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->pauseRender()I

    move-result p0

    return p0
.end method

.method public pauseSlamAudio(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2644
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->pauseEffectAudio(Z)V

    return-void
.end method

.method public posInReactionRegion(II)Z
    .registers 3

    .line 945
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->posInReactionRegion(II)Z

    move-result p0

    return p0
.end method

.method public preStartAudioRecording(F)V
    .registers 4

    .line 1260
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz v0, :cond_11

    .line 1262
    iget-boolean p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez p0, :cond_11

    float-to-double p0, p1

    const/4 v1, 0x0

    .line 1263
    invoke-virtual {v0, p0, p1, v1}, Lorg/libsdl/app/BufferedAudioRecorder;->startRecording(DZ)V

    :cond_11
    return-void
.end method

.method public previewDuetVideo()Z
    .registers 1

    .line 427
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_9

    .line 428
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->previewDuetVideo()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public processTouchEvent(FF)I
    .registers 3

    .line 2511
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->processTouchEvent(FF)I

    move-result p0

    return p0
.end method

.method public processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z
    .registers 3

    .line 3617
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z

    move-result p0

    return p0
.end method

.method public reInitRecord(Landroid/content/Context;ILorg/libsdl/app/AudioRecorderInterface;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 758
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez v0, :cond_b

    .line 759
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz v0, :cond_b

    .line 760
    invoke-virtual {v0}, Lorg/libsdl/app/BufferedAudioRecorder;->unInit()V

    .line 763
    :cond_b
    iget v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_16

    .line 764
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/RecordInvoker;->uninitAudioPlayer()V

    .line 767
    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initRecord(Landroid/content/Context;ILorg/libsdl/app/AudioRecorderInterface;)I

    move-result p0

    return p0
.end method

.method public recordStatus(Z)V
    .registers 2

    .line 1495
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    if-eqz p0, :cond_7

    .line 1497
    invoke-interface {p0, p1}, Lorg/libsdl/app/AudioRecorderInterface;->recordStatus(Z)V

    :cond_7
    return-void
.end method

.method public recoverCherEffect([Ljava/lang/String;[D[Z)V
    .registers 4

    .line 3280
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->recoverCherEffect([Ljava/lang/String;[D[Z)V

    return-void
.end method

.method public regBachAlgorithmCallback(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VEBachAlgorithmCallback;",
            ">;)V"
        }
    .end annotation

    .line 3871
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->regBachAlgorithmCallback(Ljava/util/List;)V

    return-void
.end method

.method public registerCherEffectParamCallback(Lcom/ss/android/medialib/RecordInvoker$OnCherEffectParmaCallback;)V
    .registers 2

    .line 3270
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->registerCherEffectParamCallback(Lcom/ss/android/medialib/RecordInvoker$OnCherEffectParmaCallback;)V

    return-void
.end method

.method public registerEffectAlgorithmCallback(Lcom/ss/android/medialib/RecordInvoker$EffectAlgorithmCallback;)V
    .registers 2

    .line 3161
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->registerEffectAlgorithmCallback(Lcom/ss/android/medialib/RecordInvoker$EffectAlgorithmCallback;)V

    return-void
.end method

.method public registerFaceResultCallback(ZLcom/ss/android/medialib/RecordInvoker$FaceResultCallback;)V
    .registers 3

    .line 3150
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->registerFaceResultCallback(ZLcom/ss/android/medialib/RecordInvoker$FaceResultCallback;)V

    return-void
.end method

.method public registerHandDetectCallback([ILcom/ss/android/medialib/RecordInvoker$OnHandDetectCallback;)V
    .registers 3

    .line 3224
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->registerHandDetectCallback([ILcom/ss/android/medialib/RecordInvoker$OnHandDetectCallback;)V

    return-void
.end method

.method public registerSceneDetectCallback(Lcom/ss/android/medialib/RecordInvoker$OnSceneDetectCallback;)V
    .registers 2

    .line 3253
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->registerSceneDetectCallback(Lcom/ss/android/medialib/RecordInvoker$OnSceneDetectCallback;)V

    return-void
.end method

.method public registerSkeletonDetectCallback(Lcom/ss/android/medialib/RecordInvoker$OnSkeletonDetectCallback;)V
    .registers 2

    .line 3232
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->registerSkeletonDetectCallback(Lcom/ss/android/medialib/RecordInvoker$OnSkeletonDetectCallback;)V

    return-void
.end method

.method public registerSmartBeautyCallback(Lcom/ss/android/medialib/RecordInvoker$OnSmartBeautyCallback;)V
    .registers 2

    .line 3240
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->registerSmartBeautyCallback(Lcom/ss/android/medialib/RecordInvoker$OnSmartBeautyCallback;)V

    return-void
.end method

.method public releaseEncoder()V
    .registers 1

    .line 1676
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->releaseEncoder()V

    return-void
.end method

.method public releaseGPUResources()V
    .registers 1

    .line 1642
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->releaseGPUResources()V

    return-void
.end method

.method public reloadComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 3465
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->reloadComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public reloadComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 6

    .line 3508
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 3509
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_RELOAD_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 3510
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 3511
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 3512
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 3513
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "reloadComposerNodes..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEffectParams;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/RecordInvoker;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0
.end method

.method public removeComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 3473
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->removeComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 2658
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->removeLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    return-void
.end method

.method public removeSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    .registers 2

    .line 3601
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->removeSlamDetectListener2(Lcom/ss/android/medialib/listener/SlamDetectListener;)V

    return-void
.end method

.method public removeSticker()I
    .registers 3

    .line 3139
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/ss/android/medialib/RecordInvoker;->setSticker(Landroid/graphics/Bitmap;II)I

    move-result p0

    return p0
.end method

.method public removeTrack(II)I
    .registers 3

    .line 2812
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->removeTrack(II)I

    move-result p0

    return p0
.end method

.method public renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IIILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;)V
    .registers 8

    .line 3005
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v1, "start renderPicture ======"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p5, :cond_d

    const/4 p0, 0x0

    goto :goto_13

    :cond_d
    new-instance v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;

    invoke-direct {v1, p0, p5, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$13;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;I)V

    move-object p0, v1

    :goto_13
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/ss/android/medialib/RecordInvoker;->renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;)I

    move-result p0

    if-gez p0, :cond_1f

    if-eqz p5, :cond_1f

    const/4 p1, 0x1

    .line 3029
    invoke-interface {p5, p1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;->onResult(II)V

    :cond_1f
    return-void
.end method

.method public renderPictureToBitmap(ZLcom/ss/android/medialib/camera/ImageFrame;IIILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;)V
    .registers 13

    if-eqz p6, :cond_2a

    if-eqz p1, :cond_c

    .line 3044
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_a
    move-object v5, p1

    goto :goto_e

    :cond_c
    const/4 p1, 0x0

    goto :goto_a

    .line 3046
    :goto_e
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    const-string v0, "start renderPicture to bitmap======"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    new-instance v4, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;

    invoke-direct {v4, p0, p5, p6, v5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$14;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;ILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;Landroid/graphics/Bitmap;)V

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->renderPictureToBitmap(Lcom/ss/android/medialib/camera/ImageFrame;IILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;Landroid/graphics/Bitmap;)I

    move-result p0

    if-gez p0, :cond_29

    const/4 p1, 0x1

    .line 3086
    invoke-interface {p6, p1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;->onResult(II)V

    :cond_29
    return-void

    .line 3042
    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "callback could not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replaceComposerNodes([Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 5

    .line 3477
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->replaceComposerNodes([Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public replaceComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 8

    .line 3548
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 3549
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_REPLACE_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 3550
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 3551
    iput p4, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueTwo:I

    .line 3552
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 3553
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 3554
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayThree:Ljava/util/ArrayList;

    .line 3555
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "replaceComposerNodes..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEffectParams;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/RecordInvoker;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0
.end method

.method public rotateReactionWindow(F)F
    .registers 2

    .line 878
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->rotateReactionWindow(F)F

    move-result p0

    return p0
.end method

.method public scaleReactionWindow(F)[I
    .registers 2

    .line 869
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->scaleReactionWindow(F)[I

    move-result-object p0

    return-object p0
.end method

.method public seekTrack(IIJ)I
    .registers 5

    .line 2816
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->seekTrack(IIJ)I

    move-result p0

    return p0
.end method

.method public sendEffectMsg(IJJLjava/lang/String;)V
    .registers 7

    .line 2916
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->sendEffectMsg(IJJLjava/lang/String;)V

    return-void
.end method

.method public sendEffectMsg(IJJ[B)V
    .registers 7

    .line 2920
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->sendEffectMsg(IJJ[B)V

    return-void
.end method

.method public setARCoreParam(Lcom/ss/android/vesdk/VEARCoreParam;)V
    .registers 2

    .line 3867
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setARCoreParam(Lcom/ss/android/vesdk/VEARCoreParam;)V

    return-void
.end method

.method public setAlgorithmChangeMsg(IZ)V
    .registers 3

    .line 2867
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setAlgorithmChangeMsg(IZ)V

    return-void
.end method

.method public setAlgorithmPreConfig(II)I
    .registers 3

    .line 3457
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setAlgorithmPreConfig(II)I

    move-result p0

    return p0
.end method

.method public setAudioDataInterface(J)I
    .registers 3

    .line 3657
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setAudioDataInterface(J)I

    move-result p0

    return p0
.end method

.method public setAudioDevice(Z)I
    .registers 2

    .line 3665
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setAudioDevice(Z)I

    move-result p0

    return p0
.end method

.method public setAudioEncodeConfig(III)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 4

    .line 306
    iput p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeSampleRate:I

    .line 307
    iput p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeChannels:I

    .line 308
    iput p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEncodeBitRate:I

    return-object p0
.end method

.method public setAudioInitCallback(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioInitCallback;)V
    .registers 2

    .line 507
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioInitCallback:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioInitCallback;

    return-void
.end method

.method public setAudioLoop(Z)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 2

    .line 290
    iput-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsAudioLoop:Z

    return-object p0
.end method

.method public setAudioRecordStateCallack(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;)V
    .registers 3

    .line 1282
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez v0, :cond_b

    .line 1283
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz p0, :cond_b

    .line 1284
    invoke-virtual {p0, p1}, Lorg/libsdl/app/BufferedAudioRecorder;->setAudioRecordStateCallack(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;)V

    :cond_b
    return-void
.end method

.method public setAudioRecorderInterface(Lorg/libsdl/app/AudioRecorderInterface;)V
    .registers 2

    .line 2858
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorderInterface:Lorg/libsdl/app/AudioRecorderInterface;

    return-void
.end method

.method public setAudioRefactor(Z)V
    .registers 2

    .line 640
    iput-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-eqz p1, :cond_c

    .line 642
    new-instance p1, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    invoke-direct {p1, p0}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;-><init>(Lorg/libsdl/app/AudioRecorderInterface;)V

    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecordBufferProcessor:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    return-void

    :cond_c
    const/4 p1, 0x0

    .line 644
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecordBufferProcessor:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    return-void
.end method

.method public setAudioType(I)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 2

    .line 301
    iput p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioType:I

    return-object p0
.end method

.method public setBeautyBlusher(F)I
    .registers 3

    const/16 v0, 0x12

    .line 1897
    invoke-virtual {p0, v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    move-result p0

    return p0
.end method

.method public setBeautyFace(FF)V
    .registers 3

    .line 1799
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setBeautyFaceIntensity(FF)I

    return-void
.end method

.method public setBeautyFace(ILjava/lang/String;)V
    .registers 6

    .line 1786
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeSetBeautyFace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setBeautyFace(ILjava/lang/String;)I

    return-void
.end method

.method public setBeautyFace(ILjava/lang/String;FF)V
    .registers 8

    .line 1768
    sget-object v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeSetBeautyFace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setBeautyFace(ILjava/lang/String;)I

    .line 1770
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->setBeautyFaceIntensity(FF)I

    return-void
.end method

.method public setBeautyFaceSmoothIntensity(F)V
    .registers 3

    const/4 v0, 0x2

    .line 1806
    invoke-virtual {p0, v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    return-void
.end method

.method public setBeautyFacebrightenIntensity(F)V
    .registers 3

    const/4 v0, 0x1

    .line 1813
    invoke-virtual {p0, v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    return-void
.end method

.method public setBeautyIntensity(IF)I
    .registers 3

    .line 1908
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    move-result p0

    return p0
.end method

.method public setBeautyLipStick(F)I
    .registers 3

    const/16 v0, 0x11

    .line 1888
    invoke-virtual {p0, v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    move-result p0

    return p0
.end method

.method public setBgmMute(Z)V
    .registers 2

    .line 3700
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setBgmMute(Z)V

    return-void
.end method

.method public setBodyDanceMode(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setCamPreviewSize(II)V
    .registers 3

    .line 1586
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setCamPreviewSize(II)V

    return-void
.end method

.method public setCameraClose(Z)V
    .registers 2

    .line 1563
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setCameraClose(Z)V

    return-void
.end method

.method public setCameraFirstFrameOptimize(Z)V
    .registers 2

    .line 1996
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setCameraFirstFrameOptimize(Z)V

    return-void
.end method

.method public setCaptureMirror(I)V
    .registers 2

    .line 3100
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setCaptureMirror(I)V

    return-void
.end method

.method public setCaptureMirror(Z)V
    .registers 2

    .line 3096
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setCaptureMirror(Z)V

    return-void
.end method

.method public setCaptureRenderWidth(II)V
    .registers 3

    .line 499
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setCaptureRenderWidth(II)V

    return-void
.end method

.method public setCaptureResize(Z[I[I)V
    .registers 4

    .line 3122
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setCaptureResize(Z[I[I)V

    return-void
.end method

.method public setClientState(I)V
    .registers 2

    .line 3609
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setClientState(I)V

    return-void
.end method

.method public setCodecType(I)I
    .registers 2

    .line 3688
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setCodecType(I)I

    move-result p0

    return p0
.end method

.method public setComposerMode(II)I
    .registers 3

    .line 3461
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setComposerMode(II)I

    move-result p0

    return p0
.end method

.method public setComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 3445
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 6

    .line 3489
    new-instance v0, Lcom/ss/android/vesdk/VEEffectParams;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEffectParams;-><init>()V

    .line 3490
    sget v1, Lcom/ss/android/vesdk/VEEffectParams;->EFFECT_TYPE_SET_COMPOSER_WITH_TAG:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEffectParams;->TYPE:I

    .line 3491
    iput p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->intValueOne:I

    .line 3492
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayOne:Ljava/util/ArrayList;

    .line 3493
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v0, Lcom/ss/android/vesdk/VEEffectParams;->stringArrayTwo:Ljava/util/ArrayList;

    .line 3494
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setComposerNodesWithTag..."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEffectParams;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/RecordInvoker;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0
.end method

.method public setComposerResourcePath(Ljava/lang/String;)I
    .registers 2

    .line 3441
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setComposerResourcePath(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V
    .registers 2

    .line 3786
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setCustomFrameProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V

    return-void
.end method

.method public setCustomVideoBg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    .line 955
    iget-object v1, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const/4 v8, 0x1

    iget-boolean v9, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnhanceSysVolume:Z

    const-wide/16 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->setCustomVideoBg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V

    .line 957
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 958
    iget-object v1, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v1}, Lcom/ss/android/medialib/RecordInvoker;->previewVideoBg()V

    .line 961
    :cond_1f
    iget-object v1, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 962
    iget-object v1, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v1}, Lcom/ss/android/medialib/RecordInvoker;->uninitAudioPlayer()V

    const/4 v1, 0x0

    .line 963
    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicPath(Ljava/lang/String;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 v1, 0x0

    .line 964
    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setUseMusic(I)V

    .line 968
    :cond_34
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    iget-object v1, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 969
    iget-object v10, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    iget-wide v13, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mRecordTime:J

    const/4 v15, 0x0

    iget-boolean v0, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnhanceSysVolume:Z

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    move/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lcom/ss/android/medialib/RecordInvoker;->initAudioPlayer(Landroid/content/Context;Ljava/lang/String;JZZ)I

    move-result v0

    .line 970
    sget-object v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomVideoBg, initAudioPlayer ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    return-void
.end method

.method public setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 975
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDLEEnable(Z)V
    .registers 2

    .line 3437
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setDLEEnable(Z)V

    return-void
.end method

.method public setDebugSettings(Lcom/ss/android/vesdk/VEDebugSettings;)V
    .registers 2

    .line 3830
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    .line 3831
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setDebugSettings(Lcom/ss/android/vesdk/VEDebugSettings;)V

    return-void
.end method

.method public setDetectInterval(I)V
    .registers 2

    .line 2748
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setDetectInterval(I)V

    return-void
.end method

.method public setDetectionMode(Z)V
    .registers 2

    .line 1615
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p0, :cond_5

    return-void

    .line 1616
    :cond_5
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setDetectionMode(Z)V

    return-void
.end method

.method public setDeviceRotation([F)V
    .registers 2

    .line 1083
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setDeviceRotation([F)V

    return-void
.end method

.method public setDeviceRotation([FD)V
    .registers 4

    .line 1092
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setDeviceRotation([FD)V

    return-void
.end method

.method public setDisplaySettings(IJFIIIIFIIIIIIZI)I
    .registers 37

    move-object/from16 v0, p0

    .line 2832
    iget-object v1, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    invoke-virtual/range {v1 .. v18}, Lcom/ss/android/medialib/RecordInvoker;->setDisplaySettings(IJFIIIIFIIIIIIZI)I

    move-result v0

    return v0
.end method

.method public setDropFrames(I)V
    .registers 2

    .line 2804
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setDropFrames(I)V

    return-void
.end method

.method public setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V
    .registers 2

    .line 440
    invoke-static {p1}, Lcom/ss/android/medialib/RecordInvoker;->setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEffectAlgorithmRequirement(J)V
    .registers 3

    .line 479
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setEffectAlgorithmRequirement(J)V

    return-void
.end method

.method public setEffectAudioManagerCallback(Landroid/content/Context;Lcom/ss/android/medialib/listener/AudioManagerCallback;)Z
    .registers 3

    .line 3835
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p2}, Lcom/ss/android/medialib/RecordInvoker;->setEffectAudioManagerCallback(Lcom/ss/android/medialib/listener/AudioManagerCallback;)Z

    move-result p0

    return p0
.end method

.method public setEffectBuildChainType(I)V
    .registers 2

    .line 837
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setEffectBuildChainType(I)V

    return-void
.end method

.method public setEffectMaxMemoryCache(I)I
    .registers 2

    .line 3593
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setEffectMaxMemoryCache(I)I

    move-result p0

    return p0
.end method

.method public setEffectMessageListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .registers 2

    .line 2928
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setMessageListenerV2(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    return-void
.end method

.method public setEffectType(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setEnableAEC(ZLjava/lang/String;)I
    .registers 4

    .line 3642
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsDuetMode:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableDuetMic:Z

    if-nez v0, :cond_a

    const/4 p0, -0x1

    return p0

    .line 3645
    :cond_a
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setEnableAEC(ZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setEnableDuetV2(Z)V
    .registers 2

    .line 3189
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_7

    .line 3190
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setEnableDuetV2(Z)V

    :cond_7
    return-void
.end method

.method public setEnableEarBack(Z)I
    .registers 2

    .line 3653
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setEnableEarBack(Z)I

    move-result p0

    return p0
.end method

.method public setEnigmaDetectParams(ZFFFFZIJIZZZ)V
    .registers 14

    .line 3173
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p13}, Lcom/ss/android/medialib/RecordInvoker;->setEnigmaDetectParams(ZFFFFZIJIZZZ)V

    return-void
.end method

.method public setExternalFaceMakeupOpacity(Ljava/lang/String;FF)V
    .registers 4

    .line 3750
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setExternalFaceMakeupOpacity(Ljava/lang/String;FF)I

    return-void
.end method

.method public setFaceDetectListener(Lcom/ss/android/medialib/listener/FaceDetectListener;)V
    .registers 2

    .line 3406
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setFaceDetectListener2(Lcom/ss/android/medialib/listener/FaceDetectListener;)V

    return-void
.end method

.method public setFaceMakeUp(Ljava/lang/String;)I
    .registers 2

    .line 1861
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setFaceMakeUp(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setFaceMakeUp(Ljava/lang/String;FF)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1852
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setFaceMakeUp(Ljava/lang/String;FF)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;)V
    .registers 4

    .line 2192
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setFilter(Ljava/lang/String;)I

    move-result p0

    .line 2193
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 4

    .line 2204
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setFilter(Ljava/lang/String;Ljava/lang/String;F)I

    return-void
.end method

.method public setFilterIntensity(F)I
    .registers 3

    const/16 v0, 0xc

    .line 2264
    invoke-virtual {p0, v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    move-result p0

    return p0
.end method

.method public setFilterNew(Ljava/lang/String;F)V
    .registers 4

    .line 2165
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setFilterNew(Ljava/lang/String;F)I

    move-result p0

    .line 2166
    sget-object p1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ret = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)V
    .registers 6

    .line 2215
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->setFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)I

    return-void
.end method

.method public setForceAlgorithmEnableCount(I)V
    .registers 2

    .line 3839
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setForceAlgorithmEnableCount(I)V

    return-void
.end method

.method public setForceAlgorithmExecuteCount(I)V
    .registers 2

    .line 3429
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setForceAlgorithmCnt(I)V

    return-void
.end method

.method public setHandDetectLowpower(Z)I
    .registers 2

    .line 2878
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setHandDetectLowpower(Z)I

    move-result p0

    return p0
.end method

.method public setImageExposure(F)V
    .registers 2

    .line 3110
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setImageExposure(F)V

    return-void
.end method

.method public setIntensityByType(IF)I
    .registers 3

    .line 2043
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setIntensityByType(IF)I

    move-result p0

    return p0
.end method

.method public setKaraoke(ZZ)V
    .registers 3

    .line 2824
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setKaraoke(ZZ)V

    return-void
.end method

.method public setLandMarkInfo(Lcom/ss/android/vesdk/LandMarkFrame;)V
    .registers 2

    .line 1096
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setLandMarkInfo(Lcom/ss/android/vesdk/LandMarkFrame;)V

    return-void
.end method

.method public setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;)V
    .registers 3

    .line 3778
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;)V

    return-void
.end method

.method public setLoudness(ZI)I
    .registers 3

    .line 3649
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setLoudness(ZI)I

    move-result p0

    return p0
.end method

.method public setMaleMakeupState(Z)I
    .registers 2

    .line 503
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setMaleMakeupState(Z)I

    move-result p0

    return p0
.end method

.method public setMemoryOpt(Z)V
    .registers 2

    .line 2000
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setMemoryOpt(Z)V

    return-void
.end method

.method public setMicInputAudioDataInterface(J)I
    .registers 3

    .line 3661
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setMicInputAudioDataInterface(J)I

    move-result p0

    return p0
.end method

.method public setMockPreviewSettings(Landroid/graphics/Bitmap;II)V
    .registers 4

    .line 2992
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setMockPreviewSettings(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public setModeChangeState(I)V
    .registers 2

    .line 1577
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setModeChangeState(I)V

    return-void
.end method

.method public setMusicNodes(Ljava/lang/String;)I
    .registers 2

    .line 3289
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setMusicNodes(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setMusicPath(Ljava/lang/String;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 3

    .line 313
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicPath:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/RecordInvoker;->changeMusicPath(Ljava/lang/String;)I

    return-object p0
.end method

.method public setMusicTime(JJ)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 12

    .line 553
    iget-wide v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicEndTime:J

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicTime(JJJ)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p0

    return-object p0
.end method

.method public setMusicTime(JJJ)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 14

    .line 563
    iput-wide p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicStartTime:J

    .line 564
    iput-wide p3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mMusicEndTime:J

    .line 565
    iput-wide p5, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mRecordTime:J

    .line 566
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->setMusicTime(JJJ)I

    return-object p0
.end method

.method public setMusicVolume(F)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/ss/android/medialib/RecordInvoker;->setBGMVolume(FI)I

    return-object p0
.end method

.method public setMusicVolume(FI)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 4

    .line 332
    iput p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mBGMVolume:F

    .line 333
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setBGMVolume(FI)I

    return-object p0
.end method

.method public setNativeInitListener(Lcom/ss/android/medialib/listener/NativeInitListener;)V
    .registers 2

    .line 3410
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setNativeInitListener2(Lcom/ss/android/medialib/listener/NativeInitListener;)V

    return-void
.end method

.method public setNativeLibraryDir(Landroid/content/Context;)V
    .registers 2

    .line 2010
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setNativeLibraryDir(Ljava/lang/String;)V

    return-void
.end method

.method public setOnFrameAvailableListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;)V
    .registers 3

    const/4 v0, -0x1

    .line 3304
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setOnFrameAvailableListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;I)V

    return-void
.end method

.method public setOnFrameAvailableListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;I)V
    .registers 5

    .line 3313
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOnPreviewFrameListener:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;

    .line 3315
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-nez p1, :cond_8

    const/4 p0, 0x0

    goto :goto_e

    :cond_8
    new-instance v1, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;

    invoke-direct {v1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$15;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)V

    move-object p0, v1

    :goto_e
    if-eqz p1, :cond_18

    .line 3356
    invoke-interface {p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;->shouldFrameRendered()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 3315
    :goto_19
    invoke-virtual {v0, p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setFrameCallback(Lcom/ss/android/medialib/RecordInvoker$OnFrameCallback;ZI)I

    return-void
.end method

.method public setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V
    .registers 2

    .line 2268
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V

    return-void
.end method

.method public setOnPreviewDataCallbackListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;)V
    .registers 3

    .line 3852
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mPreviewDataCallbackListener:Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;

    if-nez p1, :cond_b

    .line 3855
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setOnPreviewDataCallback(Lcom/ss/android/medialib/RecordInvoker$OnPreviewDataCallback;)V

    return-void

    .line 3857
    :cond_b
    iget-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    new-instance v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$17;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$17;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;)V

    invoke-virtual {p1, v0}, Lcom/ss/android/medialib/RecordInvoker;->setOnPreviewDataCallback(Lcom/ss/android/medialib/RecordInvoker$OnPreviewDataCallback;)V

    return-void
.end method

.method public setPaddingBottomInRatio34(F)V
    .registers 2

    .line 463
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setPaddingBottomInRatio34(F)V

    return-void
.end method

.method public setPerfTimingByKey(Ljava/lang/String;J)V
    .registers 4

    .line 1136
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setPerfTimingByKey(Ljava/lang/String;J)V

    return-void
.end method

.method public setPreSaveSize(I)V
    .registers 3

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1375
    :goto_5
    iput-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableCachedAudio:Z

    .line 1376
    new-instance v0, Lcom/ss/android/medialib/presenter/FifoImpl;

    invoke-direct {v0, p1}, Lcom/ss/android/medialib/presenter/FifoImpl;-><init>(I)V

    iput-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mCachedBufferModel:Lcom/ss/android/medialib/presenter/FifoImpl;

    return-void
.end method

.method public setPreviewDuetVideoPaused(Z)V
    .registers 2

    .line 434
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_7

    .line 435
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setPreviewDuetVideoPaused(Z)V

    :cond_7
    return-void
.end method

.method public setPreviewRadioListener(Lcom/ss/android/medialib/RecordInvoker$OnPreviewRadioListener;)V
    .registers 2

    .line 483
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setPreviewRadioListener(Lcom/ss/android/medialib/RecordInvoker$OnPreviewRadioListener;)V

    return-void
.end method

.method public setPreviewRotation(I)V
    .registers 2

    .line 2828
    iput p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOrientaion:I

    return-void
.end method

.method public setPreviewSizeRatio(FII)V
    .registers 4

    .line 1638
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setPreviewSizeRatio(FII)V

    return-void
.end method

.method public setReactionBorderParam(II)V
    .registers 3

    .line 933
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setReactionBorderParam(II)V

    return-void
.end method

.method public setReactionMaskImage(Ljava/lang/String;Z)Z
    .registers 3

    .line 924
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setReactionMaskImage(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setReactionPosMargin(IIII)V
    .registers 5

    .line 941
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->setReactionPosMargin(IIII)V

    return-void
.end method

.method public setRecordContentType(Z)V
    .registers 2

    .line 2840
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setRecordContentType(Z)V

    return-void
.end method

.method public setRecordMaxDuration(J)I
    .registers 3

    .line 3708
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setRecordMaxDuration(J)I

    move-result p0

    return p0
.end method

.method public setRecordMode(I)I
    .registers 2

    .line 3879
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setRecordMode(I)I

    move-result p0

    return p0
.end method

.method public setRecordPrepareTime(J)I
    .registers 3

    .line 2820
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setRecordPrepareTime(J)I

    move-result p0

    return p0
.end method

.method public setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3398
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3385
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReshape(Ljava/lang/String;F)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1826
    invoke-virtual {p0, p1, p2, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setReshape(Ljava/lang/String;FF)I

    move-result p0

    return p0
.end method

.method public setReshape(Ljava/lang/String;FF)I
    .registers 4

    .line 1839
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setReshape(Ljava/lang/String;FF)I

    move-result p0

    return p0
.end method

.method public setReshapeCheekIntensity(F)I
    .registers 3

    const/4 v0, 0x5

    .line 1879
    invoke-virtual {p0, v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    move-result p0

    return p0
.end method

.method public setReshapeEyeIntensity(F)I
    .registers 3

    const/4 v0, 0x4

    .line 1870
    invoke-virtual {p0, v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    move-result p0

    return p0
.end method

.method public setReshapeIntensityDict(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_2f

    .line 2066
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2067
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    goto :goto_b

    :cond_2f
    :goto_2f
    return-void
.end method

.method public setReshapeParam(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 2080
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setReshapeResource(Ljava/lang/String;)I

    if-nez p2, :cond_6

    goto :goto_32

    .line 2085
    :cond_6
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 2086
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    goto :goto_e

    :cond_32
    :goto_32
    return-void
.end method

.method public setReshapeResource(Ljava/lang/String;)I
    .registers 2

    .line 2054
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setReshapeResource(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setRunningErrorCallback(Lcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;)V
    .registers 2

    .line 3402
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setRunningErrorCallback(Lcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;)V

    return-void
.end method

.method public setSafeArea(I[Lcom/ss/android/vesdk/VESafeAreaParams;)V
    .registers 3

    .line 3794
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setSafeArea(I[Lcom/ss/android/vesdk/VESafeAreaParams;)I

    return-void
.end method

.method public setScale(F)V
    .registers 2

    .line 1061
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setScale(F)V

    return-void
.end method

.method public setScanArea(FFFF)V
    .registers 19

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v1, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    .line 3169
    invoke-virtual/range {v0 .. v13}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEnigmaDetectParams(ZFFFFZIJIZZZ)V

    return-void
.end method

.method public setSharedTextureStatus(Z)Z
    .registers 2

    .line 1919
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setSharedTextureStatus(Z)Z

    move-result p0

    return p0
.end method

.method public setSkeletonTemplateIdentity(II)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, -0x1

    return p0
.end method

.method public setSkinTone(Ljava/lang/String;)I
    .registers 2

    .line 2023
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setSkinTone(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setSkinToneIntensity(F)I
    .registers 3

    const/16 v0, 0xa

    .line 2033
    invoke-virtual {p0, v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    move-result p0

    return p0
.end method

.method public setSlamFace(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 2762
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setSlamFace(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public setSticker(Landroid/graphics/Bitmap;II)I
    .registers 4

    .line 3132
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->setSticker(Landroid/graphics/Bitmap;II)I

    move-result p0

    return p0
.end method

.method public setStickerPath(Ljava/lang/String;IIZ)I
    .registers 5

    .line 2131
    const-string p4, ""

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setStickerPathWithTag(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setStickerPathWithTag(ILjava/lang/String;IILjava/lang/String;[Ljava/lang/String;[FZZ)I
    .registers 10

    .line 2183
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p9}, Lcom/ss/android/medialib/RecordInvoker;->setStickerPathWithTag(ILjava/lang/String;IILjava/lang/String;[Ljava/lang/String;[FZZ)I

    move-result p0

    return p0
.end method

.method public setStickerPathWithTag(Ljava/lang/String;IILjava/lang/String;)I
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 2143
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setStickerPathWithTag(Ljava/lang/String;IIZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setStickerPathWithTag(Ljava/lang/String;IIZLjava/lang/String;)I
    .registers 16

    .line 2156
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->setStickerPathWithTag(ILjava/lang/String;IILjava/lang/String;[Ljava/lang/String;[FZZ)I

    move-result p0

    return p0
.end method

.method public setStickerPathWithTagSync(Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;[F)I
    .registers 17

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    .line 2179
    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setStickerPathWithTag(ILjava/lang/String;IILjava/lang/String;[Ljava/lang/String;[FZZ)I

    move-result p0

    return p0
.end method

.method public setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V
    .registers 2

    .line 3419
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)I

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 1033
    iput-object p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public setSwapDuetRegion(Z)V
    .registers 2

    .line 411
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_7

    .line 412
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setSwapDuetRegion(Z)V

    :cond_7
    return-void
.end method

.method public setSwapReactionRegion(Z)V
    .registers 2

    .line 417
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    if-eqz p0, :cond_7

    .line 418
    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setSwapReactionRegion(Z)V

    :cond_7
    return-void
.end method

.method public setSwitchEffectInGLTask(Z)V
    .registers 2

    .line 2844
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setSwitchEffectInGLTask(Z)V

    return-void
.end method

.method public setUseMultiPreviewRatio(Z)V
    .registers 2

    .line 3843
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setUseMultiPreviewRatio(Z)V

    return-void
.end method

.method public setUseMusic(I)V
    .registers 2

    .line 1000
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setUseMusic(I)V

    return-void
.end method

.method public setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I
    .registers 2

    .line 3613
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0
.end method

.method public setVideoBgSpeed(D)V
    .registers 3

    .line 979
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->setVideoBgSpeed(D)V

    return-void
.end method

.method public setVideoEncodeRotation(I)V
    .registers 2

    .line 1958
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setVideoEncodeRotation(I)V

    return-void
.end method

.method public setVideoFrameRate(I)V
    .registers 2

    .line 1938
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setVideoFrameRate(I)V

    return-void
.end method

.method public setVideoIFrameInterval(I)V
    .registers 2

    .line 1942
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->setVideoIFrameInterval(I)V

    return-void
.end method

.method public setVideoQuality(I)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 2

    .line 543
    iput p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mVideoQuality:I

    return-object p0
.end method

.method public setVideoQuality(II)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 3

    .line 531
    iput p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEncodeMode:I

    .line 532
    iput p2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mVideoQuality:I

    return-object p0
.end method

.method public setWaterMark(Landroid/graphics/Bitmap;IIIIIII)V
    .registers 9

    .line 1954
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/RecordInvoker;->setWaterMark(Landroid/graphics/Bitmap;IIIIIII)V

    return-void
.end method

.method public setWaterMark([Ljava/lang/String;IIIIIII)V
    .registers 9

    .line 1950
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/RecordInvoker;->setWaterMark([Ljava/lang/String;IIIIIII)V

    return-void
.end method

.method public shotHDScreen(Z[IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;ZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;Z)I
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    const/4 v4, 0x0

    if-eqz v1, :cond_19

    const/4 v5, 0x0

    .line 2375
    aget v5, p2, v5

    const/4 v6, 0x1

    aget v6, p2, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v15, v5

    goto :goto_1a

    :cond_19
    move-object v15, v4

    .line 2377
    :goto_1a
    new-instance v11, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;

    invoke-direct {v11, v0, v2, v15, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$8;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;Landroid/graphics/Bitmap;Z)V

    if-eqz v3, :cond_26

    .line 2407
    new-instance v4, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$9;

    invoke-direct {v4, v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$9;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;)V

    :cond_26
    move-object v14, v4

    .line 2419
    new-instance v12, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$10;

    invoke-direct {v12, v0, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$10;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;)V

    .line 2427
    iget-object v6, v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const-string v7, ""

    const/4 v10, -0x1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v13, p5

    move/from16 v16, p7

    invoke-virtual/range {v6 .. v16}, Lcom/ss/android/medialib/RecordInvoker;->shotHDScreen(Ljava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;ZLcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Landroid/graphics/Bitmap;Z)I

    move-result v0

    return v0
.end method

.method public shotScreen(Ljava/lang/String;[ILcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I
    .registers 12

    const/4 v3, 0x1

    .line 2272
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotScreen(Ljava/lang/String;[IZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I

    move-result p0

    return p0
.end method

.method public shotScreen(Ljava/lang/String;[IZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I
    .registers 16

    .line 2281
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p4, v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    move v5, v0

    goto :goto_f

    .line 2283
    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne p4, v0, :cond_d

    const/4 v0, 0x0

    goto :goto_5

    :cond_d
    const/4 v0, -0x1

    goto :goto_5

    .line 2286
    :goto_f
    new-instance v6, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$2;

    invoke-direct {v6, p0, p1, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$2;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 2296
    iget-object v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->shotScreen(Ljava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I

    move-result p0

    return p0
.end method

.method public shotScreen(Ljava/lang/String;[IZLcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I
    .registers 13

    .line 2276
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotScreen(Ljava/lang/String;[IZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I

    move-result p0

    return p0
.end method

.method public shotScreen([IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;Z)I
    .registers 15

    .line 2329
    new-instance v5, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$5;

    invoke-direct {v5, p0, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$5;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;)V

    if-eqz p4, :cond_e

    .line 2349
    new-instance v0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$6;

    invoke-direct {v0, p0, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$6;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;)V

    :goto_c
    move-object v6, v0

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 2361
    :goto_10
    new-instance v7, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$7;

    invoke-direct {v7, p0, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$7;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;)V

    .line 2369
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const-string v1, ""

    const/4 v4, -0x1

    move-object v2, p1

    move v3, p2

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->shotScreen(Ljava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Lcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I

    move-result p0

    return p0
.end method

.method public shotScreen([IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;Z)I
    .registers 13

    .line 2300
    new-instance v5, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$3;

    invoke-direct {v5, p0, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$3;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;)V

    .line 2317
    new-instance v6, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$4;

    invoke-direct {v6, p0, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter$4;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;)V

    .line 2325
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const-string v1, ""

    const/4 v4, -0x1

    move-object v2, p1

    move v3, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->shotScreen(Ljava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I

    move-result p0

    return p0
.end method

.method public slamDeviceConfig(ZIZZZZLjava/lang/String;)I
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2443
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamDeviceConfig(ZZZZ)I

    move-result p0

    return p0
.end method

.method public slamDeviceConfig(ZZZZ)I
    .registers 5

    .line 2447
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->slamDeviceConfig(ZZZZ)I

    move-result p0

    return p0
.end method

.method public slamGetTextBitmap(Lcom/ss/android/medialib/RecordInvoker$OnARTextBitmapCallback;)I
    .registers 2

    .line 2633
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->slamGetTextBitmap(Lcom/ss/android/medialib/RecordInvoker$OnARTextBitmapCallback;)I

    move-result p0

    return p0
.end method

.method public slamGetTextLimitCount(Lcom/ss/android/medialib/RecordInvoker$OnARTextCountCallback;)I
    .registers 2

    .line 2615
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->slamGetTextLimitCount(Lcom/ss/android/medialib/RecordInvoker$OnARTextCountCallback;)I

    move-result p0

    return p0
.end method

.method public slamGetTextParagraphContent(Lcom/ss/android/medialib/RecordInvoker$OnARTextContentCallback;)I
    .registers 2

    .line 2624
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->slamGetTextParagraphContent(Lcom/ss/android/medialib/RecordInvoker$OnARTextContentCallback;)I

    move-result p0

    return p0
.end method

.method public slamNotifyHideKeyBoard(Z)I
    .registers 2

    .line 2596
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->slamNotifyHideKeyBoard(Z)I

    move-result p0

    return p0
.end method

.method public slamProcessDoubleClickEvent(FF)I
    .registers 3

    .line 2575
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessDoubleClickEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestAcc(DDDD)I
    .registers 9

    .line 2458
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessIngestAcc(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGra(DDDD)I
    .registers 9

    .line 2480
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessIngestGra(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGyr(DDDD)I
    .registers 9

    .line 2469
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessIngestGyr(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestOri([DD)I
    .registers 4

    .line 2489
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessIngestOri([DD)I

    move-result p0

    return p0
.end method

.method public slamProcessPanEvent(FFF)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 2549
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamProcessPanEvent(FFFFF)I

    move-result p0

    return p0
.end method

.method public slamProcessPanEvent(FFFFF)I
    .registers 6

    .line 2563
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessPanEvent(FFFFF)I

    move-result p0

    return p0
.end method

.method public slamProcessRotationEvent(FF)I
    .registers 3

    .line 2571
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessRotationEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessScaleEvent(FF)I
    .registers 3

    .line 2567
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessScaleEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEvent(FF)I
    .registers 3

    .line 2501
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessTouchEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEventByType(I)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2532
    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamProcessTouchEventByType(IFFI)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEventByType(IFFI)I
    .registers 5

    .line 2544
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->slamProcessTouchEventByType(IFFI)I

    move-result p0

    return p0
.end method

.method public slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I
    .registers 5

    .line 2587
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public slamSetLanguage(Ljava/lang/String;)I
    .registers 2

    .line 2605
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->slamSetLanguge(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public startAudioRecorder()V
    .registers 8

    .line 1719
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsDuetMode:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableDuetMic:Z

    if-nez v0, :cond_9

    goto :goto_35

    .line 1723
    :cond_9
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez v0, :cond_35

    .line 1724
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-nez v0, :cond_29

    .line 1725
    new-instance v1, Lorg/libsdl/app/BufferedAudioRecorder;

    iget v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeSampleRate:I

    iget v4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeChannels:I

    iget v5, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEncodeBitRate:I

    iget-object v6, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mVeAudioMonitor:Lcom/ss/android/medialib/presenter/VEAudioMonitor;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/libsdl/app/BufferedAudioRecorder;-><init>(Lorg/libsdl/app/AudioRecorderInterfaceExt;IIILcom/ss/android/medialib/presenter/VEAudioMonitor;)V

    iput-object v1, v2, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    .line 1728
    invoke-direct {v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getAudioSourceType()I

    move-result p0

    invoke-virtual {v1, p0}, Lorg/libsdl/app/BufferedAudioRecorder;->init(I)V

    goto :goto_2a

    :cond_29
    move-object v2, p0

    :goto_2a
    const/4 p0, 0x1

    .line 1731
    iput-boolean p0, v2, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableAudioRecorder:Z

    .line 1732
    iget-object p0, v2, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/libsdl/app/BufferedAudioRecorder;->startRecording(DZ)V

    :cond_35
    :goto_35
    return-void
.end method

.method public startMicError()V
    .registers 1

    return-void
.end method

.method public startPlay(II)I
    .registers 9

    .line 1634
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->startPlay(IILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public startPlay(Landroid/view/Surface;Ljava/lang/String;)I
    .registers 6

    .line 1549
    invoke-static {}, Lcom/ss/android/medialib/camera/IESCameraManager;->getInstance()Lcom/ss/android/medialib/camera/IESCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->getRotation()I

    move-result v0

    .line 1550
    invoke-static {}, Lcom/ss/android/medialib/camera/IESCameraManager;->getInstance()Lcom/ss/android/medialib/camera/IESCameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/IESCameraManager;->getCameraPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 1551
    :goto_15
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->startPlay(Landroid/view/Surface;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public startPlay(Landroid/view/Surface;Ljava/lang/String;II)I
    .registers 13

    .line 1627
    const-string v0, "Start Play >>> "

    const-string v1, "MediaPresenter"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    iget-object v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    iget-boolean v5, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mWillHardEncode:Z

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->startPlay(Landroid/view/Surface;Ljava/lang/String;ZII)I

    move-result p0

    .line 1629
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Start Play ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public startPrePlay(ZIZ)I
    .registers 4

    .line 1327
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->startPrePlay(ZIZ)I

    move-result p0

    return p0
.end method

.method public declared-synchronized startRecord(DZFIIZ)I
    .registers 19

    monitor-enter p0

    .line 1180
    :try_start_1
    const-string v9, ""

    const-string v10, ""

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v10}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->startRecord(DZFIIZLjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return p1

    :catchall_15
    move-exception v0

    move-object p1, v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_15

    throw p1
.end method

.method public declared-synchronized startRecord(DZFIIZLjava/lang/String;Ljava/lang/String;)I
    .registers 21

    monitor-enter p0

    .line 1231
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->isAudioProcessing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1232
    invoke-direct {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->isAudioStopTimeout()Z

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    if-eqz v0, :cond_10

    const/16 v0, -0x3ea

    goto :goto_12

    :cond_10
    const/16 v0, -0x3e9

    :goto_12
    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    goto :goto_65

    .line 1235
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    iget v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEncodeMode:I

    iget v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mVideoQuality:I

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/medialib/RecordInvoker;->setVideoQuality(II)I

    .line 1237
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->checkIfUseRecordAudio()Z

    move-result v10

    .line 1239
    invoke-direct {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotScreenIfUseOesTexture()V

    .line 1240
    iget-object v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v10}, Lcom/ss/android/medialib/RecordInvoker;->startRecord(DZFIILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_59

    if-eqz v10, :cond_59

    .line 1245
    iget-boolean v4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mKaraokeEnable:Z

    if-nez v4, :cond_59

    .line 1246
    iget-boolean v4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-eqz v4, :cond_54

    .line 1247
    iget-object v4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mRecordAudioStartRet:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecordBufferProcessor:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    iget v6, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeSampleRate:I

    iget v7, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioEncodeChannels:I

    invoke-virtual {v5, v6, v7, p1, p2}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->start(IID)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    goto :goto_59

    .line 1249
    :cond_54
    iget-object v4, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    invoke-virtual {v4, p1, p2, v1}, Lorg/libsdl/app/BufferedAudioRecorder;->startRecording(DZ)V

    :cond_59
    :goto_59
    const/4 v2, 0x0

    if-lez v0, :cond_5d

    goto :goto_5e

    :cond_5d
    move v1, v2

    .line 1253
    :goto_5e
    iput-boolean v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mNotRecordAudio:Z
    :try_end_60
    .catchall {:try_start_16 .. :try_end_60} :catchall_14

    if-ltz v0, :cond_63

    move v0, v2

    .line 1256
    :cond_63
    monitor-exit p0

    return v0

    :goto_65
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_14

    throw v0
.end method

.method public declared-synchronized startRecord(DZFZ)I
    .registers 15

    monitor-enter p0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v8, p5

    .line 1166
    :try_start_8
    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->startRecord(DZFIIZ)I

    move-result p0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit v1

    return p0

    :catchall_e
    move-exception v0

    move-object p0, v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_e

    throw p0
.end method

.method public startRender()I
    .registers 1

    .line 3696
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->startRender()I

    move-result p0

    return p0
.end method

.method public stopAudioRecorder()V
    .registers 2

    .line 1744
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez v0, :cond_c

    .line 1745
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz p0, :cond_b

    .line 1746
    invoke-virtual {p0}, Lorg/libsdl/app/BufferedAudioRecorder;->stopRecording()Z

    :cond_b
    return-void

    .line 1749
    :cond_c
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecordBufferProcessor:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    invoke-virtual {p0}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->stop()I

    return-void
.end method

.method public stopAudioRecording()V
    .registers 2

    .line 1664
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz v0, :cond_12

    .line 1665
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/RecordInvoker;->markPlayDone()I

    .line 1666
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecording:Z

    if-eqz v0, :cond_12

    .line 1667
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    invoke-virtual {p0}, Lorg/libsdl/app/BufferedAudioRecorder;->stopRecording()Z

    :cond_12
    return-void
.end method

.method public stopPCMCallback(Z)V
    .registers 3

    .line 741
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez v0, :cond_b

    .line 742
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz p0, :cond_b

    .line 743
    invoke-virtual {p0, p1}, Lorg/libsdl/app/BufferedAudioRecorder;->stopPCMCallback(Z)V

    :cond_b
    return-void
.end method

.method public stopPlay()V
    .registers 2

    const/4 v0, 0x1

    .line 1646
    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->stopPlay(Z)V

    return-void
.end method

.method public stopPlay(Z)V
    .registers 3

    .line 1650
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-nez v0, :cond_b

    .line 1651
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz v0, :cond_b

    .line 1653
    invoke-virtual {v0}, Lorg/libsdl/app/BufferedAudioRecorder;->stopRecording()Z

    .line 1656
    :cond_b
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0}, Lcom/ss/android/medialib/RecordInvoker;->stopPlay()I

    .line 1657
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->waitUtilAudioProcessDone()V

    if-eqz p1, :cond_18

    .line 1659
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->releaseEncoder()V

    :cond_18
    return-void
.end method

.method public stopPrePlay()I
    .registers 1

    .line 1331
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->stopPrePlay()I

    move-result p0

    return p0
.end method

.method public declared-synchronized stopRecord(Z)I
    .registers 6

    monitor-enter p0

    .line 1302
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableCachedAudio:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1303
    iput-boolean v1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mStopCache:Z

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_4c

    .line 1306
    :cond_b
    :goto_b
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsStopRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_9

    const/4 v2, -0x1

    if-eqz v0, :cond_16

    monitor-exit p0

    return v2

    .line 1307
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsStopRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 1308
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/RecordInvoker;->stopRecord(Z)I

    move-result p1

    .line 1309
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-eqz v0, :cond_37

    .line 1310
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecordBufferProcessor:Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;

    if-eqz v0, :cond_42

    iget-boolean v3, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mNotRecordAudio:Z

    if-nez v3, :cond_42

    .line 1311
    invoke-virtual {v0}, Lcom/ss/android/medialib/audio/AudioRecordBufferProcessor;->stop()I

    .line 1312
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mRecordAudioStartRet:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    goto :goto_42

    .line 1315
    :cond_37
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz v0, :cond_42

    iget-boolean v2, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mNotRecordAudio:Z

    if-nez v2, :cond_42

    .line 1316
    invoke-virtual {v0}, Lorg/libsdl/app/BufferedAudioRecorder;->stopFeeding()Z

    .line 1320
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mIsStopRecording:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 1322
    invoke-static {v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_9

    .line 1323
    monitor-exit p0

    return p1

    :goto_4c
    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_9

    throw p1
.end method

.method public declared-synchronized stopRecord()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1294
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->stopRecord(Z)I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1295
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z
    .registers 3

    .line 3625
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z

    move-result p0

    return p0
.end method

.method public swapMainAndPipRenderTarget(Z)Z
    .registers 2

    .line 3758
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->swapMainAndPipRenderTarget(Z)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized tryRestore(ILjava/lang/String;)I
    .registers 4

    monitor-enter p0

    .line 1026
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->clearEnv()V

    .line 1027
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->tryRestore(ILjava/lang/String;)I

    move-result p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public turnToOffScreenRender()I
    .registers 1

    .line 3724
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->turnToOffScreenRender()I

    move-result p0

    return p0
.end method

.method public unBindEffectAudioProcessor()I
    .registers 2

    .line 3360
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/ss/android/medialib/RecordInvoker;->bindEffectAudioProcessor(IIZ)I

    move-result p0

    return p0
.end method

.method public unInitBeautyPlay()V
    .registers 1

    .line 983
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->uninitBeautyPlay()I

    return-void
.end method

.method public unRegisterEffectAlgorithmCallback()V
    .registers 1

    .line 3165
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->unRegisterEffectAlgorithmCallback()V

    return-void
.end method

.method public unRegisterFaceResultCallback()V
    .registers 1

    .line 3157
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->unRegisterFaceResultCallback()V

    return-void
.end method

.method public unRegisterHandDetectCallback()V
    .registers 2

    .line 3228
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/ss/android/medialib/RecordInvoker;->registerHandDetectCallback([ILcom/ss/android/medialib/RecordInvoker$OnHandDetectCallback;)V

    return-void
.end method

.method public unRegisterSceneDetectCallback()V
    .registers 2

    .line 3260
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/RecordInvoker;->registerSceneDetectCallback(Lcom/ss/android/medialib/RecordInvoker$OnSceneDetectCallback;)V

    return-void
.end method

.method public unRegisterSkeletonDetectCallback()V
    .registers 2

    .line 3236
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/RecordInvoker;->registerSkeletonDetectCallback(Lcom/ss/android/medialib/RecordInvoker$OnSkeletonDetectCallback;)V

    return-void
.end method

.method public unRegisterSmartBeautyCallback()V
    .registers 2

    .line 3244
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/RecordInvoker;->registerSmartBeautyCallback(Lcom/ss/android/medialib/RecordInvoker$OnSmartBeautyCallback;)V

    return-void
.end method

.method public unregBachAlgorithmCallback()V
    .registers 1

    .line 3875
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->unregBachAlgorithmCallback()V

    return-void
.end method

.method public updateAlgorithmRuntimeParam(IF)V
    .registers 3

    .line 1966
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->updateAlgorithmRuntimeParam(IF)V

    return-void
.end method

.method public updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 4

    .line 3449
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I
    .registers 5

    .line 3453
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I

    move-result p0

    return p0
.end method

.method public updateReactionCameraPos(IIII)[I
    .registers 5

    .line 860
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->updateReactionCameraPos(IIII)[I

    move-result-object p0

    return-object p0
.end method

.method public updateReactionCameraPosWithRotation(IIIIF)[I
    .registers 6

    .line 915
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->updateReactionCameraPosWithRotation(IIIIF)[I

    move-result-object p0

    return-object p0
.end method

.method public updateRotation(FFF)V
    .registers 4

    .line 1074
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->updateRotation(FFF)V

    return-void
.end method

.method public updateRotation(IZ)V
    .registers 4

    .line 1053
    iget v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOrientaion:I

    add-int/2addr p1, v0

    rem-int/lit16 p1, p1, 0x168

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->updateRotation(IZZ)V

    return-void
.end method

.method public updateRotation(IZZ)V
    .registers 5

    .line 1057
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    iget p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mOrientaion:I

    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->updateRotation(IZZ)V

    return-void
.end method

.method public useAudioGraphOutput(ZZZZ)V
    .registers 5

    .line 3670
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->useAudioGraphOutput(ZZZZ)I

    return-void
.end method

.method public useLargeMattingModel(Z)V
    .registers 2

    .line 2887
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mfbInvoker:Lcom/ss/android/medialib/RecordInvoker;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->useLargeMattingModel(Z)V

    return-void
.end method

.method public waitUtilAudioProcessDone()V
    .registers 2

    .line 1472
    iget-boolean v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mEnableMicRefactor:Z

    if-eqz v0, :cond_5

    goto :goto_14

    .line 1475
    :cond_5
    iget-object v0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->isAudioProcessing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1476
    iget-object p0, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mAudioRecorder:Lorg/libsdl/app/BufferedAudioRecorder;

    invoke-virtual {p0}, Lorg/libsdl/app/BufferedAudioRecorder;->waitUtilAudioProcessDone()V

    :cond_14
    :goto_14
    return-void
.end method

.method public willHardEncode(Z)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 2

    .line 296
    iput-boolean p1, p0, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->mWillHardEncode:Z

    return-object p0
.end method
