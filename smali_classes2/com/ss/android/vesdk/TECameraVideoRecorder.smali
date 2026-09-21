.class public Lcom/ss/android/vesdk/TECameraVideoRecorder;
.super Lcom/ss/android/vesdk/TERecorderBase;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/render/VESurfaceCallback;
.implements Lcom/ss/android/medialib/listener/NativeInitListener;
.implements Lcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;
.implements Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;
.implements Lcom/ss/android/medialib/listener/SlamDetectListener;
.implements Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;
.implements Lorg/libsdl/app/AudioRecorderInterfaceExt;


# static fields
.field private static final RECT_PREVENT_TEXTURE_RENDER:I = -0x3e8

.field public static final SHOT_SCREEN_NOT_READY:I = -0x186a2

.field private static final TAG:Ljava/lang/String; = "TECameraVideoRecorder"

.field private static final VEAUDIO_CAPTURE_IDLE:I = 0x0

.field private static final VEAUDIO_CAPTURE_INITED:I = 0x2

.field private static final VEAUDIO_CAPTURE_INITING:I = 0x1

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final DEFAULT_PREVIEW_SIZE:Lcom/ss/android/vesdk/VESize;

.field private final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private final MIC_RELEASE_END:I

.field private final MIC_RELEASE_START:I

.field private cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

.field private isAudioRecordClosed:Z

.field private isVideoRecordClosed:Z

.field private landMarkFrame:Lcom/ss/android/vesdk/LandMarkFrame;

.field private mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

.field private mAudioGraphMockBgmTrackIndex:I

.field private mAudioGraphTrackIndex:I

.field private mAudioLengthOpt:Z

.field private mBackupBgmPath:Ljava/lang/String;

.field private mBackupBgmType:I

.field private mBackupTrimIn:J

.field private mBackupTrimOut:J

.field private mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

.field private mCameraKitStateCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;

.field private mCanRetrySetDisplaySettings:Z

.field private volatile mCanSetBgm:Z

.field mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

.field private mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

.field private mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/vesdk/ConcurrentList<",
            "Lcom/ss/android/vesdk/frame/TECapturePipeline;",
            ">;"
        }
    .end annotation
.end field

.field private mChannels:I

.field private mConditionRenderExit:Landroid/os/ConditionVariable;

.field private mCurRecordStatus:I

.field private mDestroyed:Z

.field final mDurings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/medialib/model/TimeSpeedModel;",
            ">;"
        }
    .end annotation
.end field

.field mEffect:Lcom/ss/android/vesdk/effect/IEffect;

.field private mEnableLoudness:Z

.field private mEnableRefactor:Z

.field private mEnableStopPreviewAsyncOpt:Z

.field private mFaceChanged:Z

.field private mFaceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceResultCallback:Lcom/ss/android/medialib/RecordInvoker$FaceResultCallback;

.field private mFacing:I

.field private mFocusFaceDetectCount:I

.field private mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

.field private mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;

.field private mFrameSize:Lcom/ss/android/vesdk/VESize;

.field mHasFirstFrameCaptured:Z

.field private mInfoMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

.field private volatile mInitedAudioCapture:I

.field private mIsARCoreSupported:Z

.field private mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

.field private mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

.field private mPreventTextureRender:Z

.field private mPreviewInitStartTime:J

.field private mPreviewSize:Lcom/ss/android/vesdk/VESize;

.field private mRecordDirPath:Ljava/lang/String;

.field private mRecordInAsyncMode:Z

.field private mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

.field mRecorderErrorCallback:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder$ErrorCallback;

.field private mRecordingMode:Lcom/ss/android/vesdk/VERecordMode;

.field private mRecordingSegmentTime:J

.field private mRenderSize:Lcom/ss/android/vesdk/VESize;

.field private mRestoreLock:Ljava/lang/Object;

.field private mRotation:I

.field private mSampleRate:I

.field private mSpeed:F

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceDestroyed:Z

.field private mTargetLoudness:I

.field private mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

.field private mTotalRecordingTime:J

.field private mUseAudioGraph:Z

.field private mUseFaceDetectFocus:Z

.field private mUseMultiPreviewRadio:Z

.field private mUseMusic:Z

.field private mUsePreSurfaceCreated:Z

.field private mVEAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

.field private mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

.field private mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;

.field private mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

.field private mVeDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

.field private resetModel:Z

.field private sensorInfo:Lcom/ss/android/vesdk/VESensorInfoHolder;

.field private teAudioCallback:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;


# direct methods
.method public static synthetic $r8$lambda$VP63ZhwfUbg24kLKo6HW5zDNe4s(Lcom/ss/android/vesdk/VEGetFrameSettings;D)V
    .registers 11

    .line 4561
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object v0

    if-eqz v0, :cond_29

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_20

    .line 4564
    new-instance v1, Lcom/ss/android/ttve/model/VEFrame;

    double-to-long v5, p1

    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_Count:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/ss/android/ttve/model/VEFrame;-><init>(IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)V

    .line 4565
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v1, p1}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult(Lcom/ss/android/ttve/model/VEFrame;I)V

    return-void

    .line 4567
    :cond_20
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameCallback()Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VEGetFrameSettings$IGetFrameCallback;->onResult(Lcom/ss/android/ttve/model/VEFrame;I)V

    :cond_29
    return-void
.end method

.method public static synthetic $r8$lambda$XSpg5ervixD1xca4_xUnYqtHrgw(Lcom/ss/android/vesdk/TECameraVideoRecorder;II)V
    .registers 6

    .line 1859
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    const/4 v1, 0x2

    .line 1859
    const-string v2, "TECameraVideoRecorder"

    if-eq v0, v1, :cond_1e

    .line 1860
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pausePlayTrack in state:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1863
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pausePlayTrack trackIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trackType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->stopPrePlay()I

    const/4 v0, 0x1

    .line 1865
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanSetBgm:Z

    .line 1866
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_TRACK_PLAY_PAUSED:I

    int-to-float p2, p2

    const-string v1, ""

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->onAccurateInfoExt(IIFLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XVKkS6RBMq8MQFgnWfae6_Tvh9c(Lcom/ss/android/vesdk/TECameraVideoRecorder;IIZ)V
    .registers 7

    .line 1843
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    const/4 v1, 0x2

    .line 1843
    const-string v2, "TECameraVideoRecorder"

    if-eq v0, v1, :cond_1e

    .line 1844
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startPlayTrack in state:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1847
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPlayTrack trackIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trackType "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " loop "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1848
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->checkChangeAudioRecord(I)V

    .line 1849
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I

    move-result v1

    invoke-virtual {p2, v0, v1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changeAudioRecord(Landroid/content/Context;ILorg/libsdl/app/AudioRecorderInterface;)I

    const/4 p2, 0x0

    .line 1850
    iput-boolean p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanSetBgm:Z

    .line 1851
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p3, p2, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->startPrePlay(ZIZ)I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/render/VERenderView;)V
    .registers 9

    .line 305
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/TERecorderBase;-><init>(Landroid/content/Context;Lcom/ss/android/vesdk/runtime/VERecorderResManager;Lcom/ss/android/vesdk/render/VERenderView;)V

    .line 147
    new-instance p2, Lcom/ss/android/vesdk/VESize;

    const/16 p3, 0x500

    const/16 v0, 0x2d0

    invoke-direct {p2, p3, v0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->DEFAULT_PREVIEW_SIZE:Lcom/ss/android/vesdk/VESize;

    const/4 p3, 0x1

    .line 148
    iput p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->MIC_RELEASE_START:I

    const/4 v0, 0x2

    .line 149
    iput v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->MIC_RELEASE_END:I

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDurings:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 162
    iput v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSpeed:F

    const-wide/16 v0, 0x0

    .line 163
    iput-wide v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J

    const-wide/16 v2, -0x1

    .line 165
    iput-wide v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordingSegmentTime:J

    .line 168
    new-instance v2, Lcom/ss/android/vesdk/VESize;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;

    .line 169
    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    const/4 p2, -0x1

    .line 171
    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRotation:I

    .line 180
    new-instance v2, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v2, v3, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    .line 181
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseMultiPreviewRadio:Z

    .line 183
    iput v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFacing:I

    .line 186
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanRetrySetDisplaySettings:Z

    const/4 v2, 0x0

    .line 187
    iput-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVeDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    .line 189
    iput-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    .line 191
    iput v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    .line 192
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUsePreSurfaceCreated:Z

    .line 194
    new-instance v4, Lcom/ss/android/vesdk/TextureHolder;

    invoke-direct {v4}, Lcom/ss/android/vesdk/TextureHolder;-><init>()V

    iput-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    .line 196
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iput-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 198
    new-instance v4, Lcom/ss/android/vesdk/ConcurrentList;

    invoke-direct {v4}, Lcom/ss/android/vesdk/ConcurrentList;-><init>()V

    iput-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    .line 201
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRestoreLock:Ljava/lang/Object;

    .line 205
    iput-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    const/4 v4, 0x3

    .line 206
    iput v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceDetectCount:I

    .line 207
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseFaceDetectFocus:Z

    .line 209
    new-instance v4, Landroid/os/ConditionVariable;

    invoke-direct {v4}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mConditionRenderExit:Landroid/os/ConditionVariable;

    .line 210
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isVideoRecordClosed:Z

    .line 211
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isAudioRecordClosed:Z

    .line 212
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordInAsyncMode:Z

    .line 213
    iput-boolean p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanSetBgm:Z

    .line 215
    new-instance p3, Lcom/ss/android/vesdk/FrameIntervalCount;

    invoke-direct {p3}, Lcom/ss/android/vesdk/FrameIntervalCount;-><init>()V

    iput-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;

    .line 217
    iput-wide v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewInitStartTime:J

    .line 218
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDestroyed:Z

    .line 220
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableStopPreviewAsyncOpt:Z

    .line 221
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableRefactor:Z

    .line 223
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mHasFirstFrameCaptured:Z

    .line 226
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mIsARCoreSupported:Z

    .line 228
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioLengthOpt:Z

    .line 229
    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphMockBgmTrackIndex:I

    .line 230
    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphTrackIndex:I

    .line 231
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseAudioGraph:Z

    .line 233
    new-instance p3, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;

    invoke-direct {p3, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$1;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    iput-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->teAudioCallback:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    .line 275
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->resetModel:Z

    .line 280
    iput-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableLoudness:Z

    const/16 p3, -0x10

    .line 281
    iput p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTargetLoudness:I

    .line 283
    iput-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 284
    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSampleRate:I

    .line 285
    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mChannels:I

    .line 287
    new-instance p2, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    invoke-direct {p2}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->build()Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    .line 289
    iput v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInitedAudioCapture:I

    .line 295
    sget-object p2, Lcom/ss/android/vesdk/VERecordMode;->DEFAULT:Lcom/ss/android/vesdk/VERecordMode;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordingMode:Lcom/ss/android/vesdk/VERecordMode;

    .line 2763
    new-instance p2, Lcom/ss/android/vesdk/LandMarkFrame;

    invoke-direct {p2}, Lcom/ss/android/vesdk/LandMarkFrame;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->landMarkFrame:Lcom/ss/android/vesdk/LandMarkFrame;

    .line 2764
    invoke-static {}, Lcom/ss/android/vesdk/VESensorInfoHolder;->getInstance()Lcom/ss/android/vesdk/VESensorInfoHolder;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->sensorInfo:Lcom/ss/android/vesdk/VESensorInfoHolder;

    .line 2765
    new-instance p2, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;

    invoke-direct {p2, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$36;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCaptureListener:Lcom/ss/android/vesdk/frame/TECapturePipeline$CaptureListenerWithAR;

    .line 2872
    new-instance p2, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;

    invoke-direct {p2, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$37;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    .line 306
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz p2, :cond_de

    .line 307
    invoke-virtual {p2, p0}, Lcom/ss/android/vesdk/render/VERenderView;->addSurfaceCallback(Lcom/ss/android/vesdk/render/VESurfaceCallback;)Z

    .line 310
    :cond_de
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->createInternalRecorder()Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 311
    new-instance p3, Lcom/ss/android/vesdk/TECameraVideoRecorder$2;

    invoke-direct {p3, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$2;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    invoke-virtual {p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAudioInitCallback(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioInitCallback;)V

    .line 317
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    invoke-virtual {p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V

    .line 318
    const-string p2, "iesve_use_new_record"

    const-wide/16 v0, 0x1

    invoke-static {p2, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(Ljava/lang/String;J)V

    .line 319
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p2

    const-string p3, "ve_enable_stop_preview_optimize"

    invoke-virtual {p2, p3, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableStopPreviewAsyncOpt:Z

    .line 321
    new-instance p2, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;

    iget-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-direct {p2, p3, p0}, Lcom/ss/android/vesdk/effect/VECameraVideoEffect;-><init>(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEffect:Lcom/ss/android/vesdk/effect/IEffect;

    .line 322
    new-instance p2, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    invoke-direct {p2}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;-><init>()V

    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    .line 323
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getEnableVBoost()Z

    move-result p2

    iput-boolean p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsEnableVBoost:Z

    if-eqz p2, :cond_131

    .line 325
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    new-instance p3, Lcom/ss/android/ttvecamera/systemresmanager/TEVBoostStrategy;

    invoke-direct {p3}, Lcom/ss/android/ttvecamera/systemresmanager/TEVBoostStrategy;-><init>()V

    invoke-virtual {p2, p3}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->setStrategy(Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;)V

    .line 326
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->initStrategy(Landroid/content/Context;)V

    :cond_131
    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioDataInterface:Lcom/ss/android/ttve/nativePort/TEAudioDataInterface;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z
    .registers 1

    .line 137
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseAudioGraph:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseAudioGraph:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)J
    .registers 3

    .line 137
    iget-wide v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/ss/android/vesdk/TECameraVideoRecorder;J)J
    .registers 3

    .line 137
    iput-wide p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)I
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)V
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->checkChangeAudioRecord(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I
    .registers 1

    .line 137
    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphTrackIndex:I

    return p0
.end method

.method static synthetic access$1402(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I
    .registers 2

    .line 137
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphTrackIndex:I

    return p1
.end method

.method static synthetic access$1502(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupBgmPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/ss/android/vesdk/TECameraVideoRecorder;J)J
    .registers 3

    .line 137
    iput-wide p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupTrimIn:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/ss/android/vesdk/TECameraVideoRecorder;J)J
    .registers 3

    .line 137
    iput-wide p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupTrimOut:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I
    .registers 2

    .line 137
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupBgmType:I

    return p1
.end method

.method static synthetic access$1901(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;JJI)I
    .registers 7

    .line 137
    invoke-super/range {p0 .. p6}, Lcom/ss/android/vesdk/TERecorderBase;->setRecordBGM(Ljava/lang/String;JJI)I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordDirPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I
    .registers 2

    .line 137
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInitedAudioCapture:I

    return p1
.end method

.method static synthetic access$2100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopRecordPreview()V

    return-void
.end method

.method static synthetic access$2200(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Landroid/os/ConditionVariable;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mConditionRenderExit:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/ss/android/vesdk/TECameraVideoRecorder;ZZ)V
    .registers 3

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->checkMockAudioTrack(ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->releaseInteralRecorder()V

    return-void
.end method

.method static synthetic access$2500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z
    .registers 1

    .line 137
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableRefactor:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isKaraokeRecording()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)V
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->createAudioCaptureSettings(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;)Z
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->initAudioCaptureIfNeed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2902(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/bytedance/bpea/basics/Cert;)Lcom/bytedance/bpea/basics/Cert;
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecordMode;)Lcom/ss/android/vesdk/VERecordMode;
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordingMode:Lcom/ss/android/vesdk/VERecordMode;

    return-object p1
.end method

.method static synthetic access$302(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I
    .registers 2

    .line 137
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSampleRate:I

    return p1
.end method

.method static synthetic access$3100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isKaraoke()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I
    .registers 1

    .line 137
    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphMockBgmTrackIndex:I

    return p0
.end method

.method static synthetic access$3300(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z
    .registers 1

    .line 137
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseFaceDetectFocus:Z

    return p0
.end method

.method static synthetic access$3402(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseFaceDetectFocus:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I
    .registers 1

    .line 137
    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceDetectCount:I

    return p0
.end method

.method static synthetic access$3510(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I
    .registers 3

    .line 137
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceDetectCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceDetectCount:I

    return v0
.end method

.method static synthetic access$3600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEFocusSettings;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/TextureHolder;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTextureHolder:Lcom/ss/android/vesdk/TextureHolder;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I
    .registers 1

    .line 137
    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFacing:I

    return p0
.end method

.method static synthetic access$3902(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I
    .registers 2

    .line 137
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFacing:I

    return p1
.end method

.method static synthetic access$4000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I
    .registers 1

    .line 137
    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRotation:I

    return p0
.end method

.method static synthetic access$4002(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I
    .registers 2

    .line 137
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRotation:I

    return p1
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/TECameraVideoRecorder;I)I
    .registers 2

    .line 137
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mChannels:I

    return p1
.end method

.method static synthetic access$4100()Ljava/lang/Object;
    .registers 1

    .line 137
    sget-object v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z
    .registers 1

    .line 137
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceChanged:Z

    return p0
.end method

.method static synthetic access$4202(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceChanged:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESensorInfoHolder;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->sensorInfo:Lcom/ss/android/vesdk/VESensorInfoHolder;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/LandMarkFrame;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->landMarkFrame:Lcom/ss/android/vesdk/LandMarkFrame;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/FrameIntervalCount;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/frame/TECapturePipeline;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    return-object p0
.end method

.method static synthetic access$4602(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/frame/TECapturePipeline;)Lcom/ss/android/vesdk/frame/TECapturePipeline;
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipeline:Lcom/ss/android/vesdk/frame/TECapturePipeline;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/ConcurrentList;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    return-object p0
.end method

.method static synthetic access$4702(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/ConcurrentList;)Lcom/ss/android/vesdk/ConcurrentList;
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;)Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->prepareMediaRecorderForPreview()V

    return-void
.end method

.method static synthetic access$500(Lcom/ss/android/vesdk/TECameraVideoRecorder;)I
    .registers 1

    .line 137
    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    return p0
.end method

.method static synthetic access$5000(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z
    .registers 1

    .line 137
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreventTextureRender:Z

    return p0
.end method

.method static synthetic access$5202(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreventTextureRender:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEDisplaySettings;)Lcom/ss/android/vesdk/VEDisplaySettings;
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVeDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Ljava/util/List;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 3

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->condDumpBmp4Debug(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/ttvecamera/TECameraFrame;Ljava/lang/String;)V
    .registers 3

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->condDumpImg4Debug(Lcom/ss/android/ttvecamera/TECameraFrame;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/ss/android/vesdk/TECameraVideoRecorder;II)Lcom/ss/android/vesdk/VESize;
    .registers 3

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->calculateCaptureRenderSize(II)Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$5800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Lcom/ss/android/vesdk/VEPreviewSettings;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecordMode;)I
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setRecordMode(Lcom/ss/android/vesdk/VERecordMode;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/view/Surface;)I
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->startRecordPreview(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Z
    .registers 1

    .line 137
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanSetBgm:Z

    return p0
.end method

.method static synthetic access$802(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)Z
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanSetBgm:Z

    return p1
.end method

.method static synthetic access$901(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;JJI)I
    .registers 7

    .line 137
    invoke-super/range {p0 .. p6}, Lcom/ss/android/vesdk/TERecorderBase;->setRecordBGM(Ljava/lang/String;JJI)I

    move-result p0

    return p0
.end method

.method private calculateCaptureRenderSize(II)Lcom/ss/android/vesdk/VESize;
    .registers 9

    .line 4392
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 4393
    iget p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    sget-object p2, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_1_1:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eq p1, p2, :cond_72

    iget p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    sget-object p2, Lcom/ss/android/vesdk/VEPreviewRadio;->RADIO_ROUND:Lcom/ss/android/vesdk/VEPreviewRadio;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_1a

    goto :goto_72

    .line 4397
    :cond_1a
    new-instance p1, Lcom/ss/android/vesdk/VESize;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 4398
    iget-boolean p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseMultiPreviewRadio:Z

    if-eqz p2, :cond_37

    .line 4399
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz p2, :cond_47

    .line 4400
    invoke-virtual {p2}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result p2

    iput p2, p1, Lcom/ss/android/vesdk/VESize;->width:I

    .line 4401
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result p2

    iput p2, p1, Lcom/ss/android/vesdk/VESize;->height:I

    goto :goto_47

    .line 4404
    :cond_37
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVeDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    if-eqz p2, :cond_47

    .line 4405
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEDisplaySettings;->getLayoutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object p2

    .line 4406
    iget v1, p2, Lcom/ss/android/vesdk/VESize;->width:I

    iput v1, p1, Lcom/ss/android/vesdk/VESize;->width:I

    .line 4407
    iget p2, p2, Lcom/ss/android/vesdk/VESize;->height:I

    iput p2, p1, Lcom/ss/android/vesdk/VESize;->height:I

    .line 4411
    :cond_47
    :goto_47
    iget p2, p1, Lcom/ss/android/vesdk/VESize;->width:I

    if-eqz p2, :cond_76

    iget p1, p1, Lcom/ss/android/vesdk/VESize;->height:I

    if-eqz p1, :cond_76

    .line 4412
    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    mul-int v2, p2, v1

    iget v3, v0, Lcom/ss/android/vesdk/VESize;->height:I

    mul-int v4, p1, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-ge v2, v4, :cond_64

    mul-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, v5

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 4413
    iput p1, v0, Lcom/ss/android/vesdk/VESize;->height:I

    goto :goto_76

    :cond_64
    mul-int/2addr v1, p2

    mul-int v2, p1, v3

    if-le v1, v2, :cond_76

    mul-int/2addr v3, p1

    int-to-float p1, v3

    mul-float/2addr p1, v5

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 4415
    iput p1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    goto :goto_76

    .line 4394
    :cond_72
    :goto_72
    iget p1, v0, Lcom/ss/android/vesdk/VESize;->height:I

    iput p1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 4421
    :cond_76
    :goto_76
    iget p1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEPreviewSettings;->getCaptureRenderMaxWidth()I

    move-result p2

    if-lt p1, p2, :cond_9c

    .line 4422
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->getCaptureRenderFinalWidth()I

    move-result p1

    iget p2, v0, Lcom/ss/android/vesdk/VESize;->height:I

    mul-int/2addr p1, p2

    int-to-double p1, p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v1

    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-double v1, v1

    div-double/2addr p1, v1

    double-to-int p1, p1

    iput p1, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 4423
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->getCaptureRenderFinalWidth()I

    move-result p0

    iput p0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    :cond_9c
    return-object v0
.end method

.method private checkChangeAudioRecord(I)V
    .registers 4

    .line 824
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isRefactorAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-nez v0, :cond_31

    .line 825
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->checkAudioNeedRelease(I)Z

    move-result v0

    .line 826
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v1, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->checkAudioNeedInit(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 828
    const-string p1, "checkChangeAudioRecord"

    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->initAudioCaptureIfNeed(Ljava/lang/String;)Z

    return-void

    :cond_1e
    if-eqz v0, :cond_31

    .line 831
    const-string p1, "TECameraVideoRecorder"

    const-string v0, "mVEAudioCapture release: checkChangeAudioRecord"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEAudioCapture;->release(Lcom/bytedance/bpea/basics/Cert;)V

    const/4 p1, 0x0

    .line 833
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInitedAudioCapture:I

    :cond_31
    return-void
.end method

.method private checkMockAudioTrack(ZZ)V
    .registers 11

    .line 1203
    const-string v0, "TECameraVideoRecorder"

    const/4 v1, -0x1

    if-nez p1, :cond_9

    iget p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphMockBgmTrackIndex:I

    if-ne p1, v1, :cond_f

    :cond_9
    iget p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphMockBgmTrackIndex:I

    if-eq p1, v1, :cond_1f

    if-eqz p2, :cond_1f

    .line 1205
    :cond_f
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 p2, 0x1

    iget v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphMockBgmTrackIndex:I

    invoke-virtual {p1, p2, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->removeTrack(II)I

    .line 1206
    const-string p1, "checkMockAudioTrack remove empty track"

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iput v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphMockBgmTrackIndex:I

    return-void

    :cond_1f
    if-nez p2, :cond_8c

    if-ne p1, v1, :cond_8c

    .line 1212
    new-instance p1, Lcom/ss/android/ttve/model/VETrackParams$Builder;

    invoke-direct {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;-><init>()V

    .line 1213
    const-string p2, "empty_path"

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 1214
    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const v1, 0x7fffffff

    .line 1215
    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 1216
    invoke-virtual {p1, v1, v2}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;

    move-result-object p1

    .line 1217
    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams$Builder;->build()Lcom/ss/android/ttve/model/VETrackParams;

    move-result-object p1

    .line 1218
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams;->getPaths()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimIns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {p1}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimOuts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v6, p1

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->addTrack(ILjava/lang/String;JJ)I

    move-result p1

    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphMockBgmTrackIndex:I

    .line 1219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkMockAudioTrack add empty track, track index:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioGraphMockBgmTrackIndex:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    return-void
.end method

.method private closeCamera(Z)V
    .registers 4

    .line 2745
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCameraClose(Z)V

    .line 2746
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_d

    .line 2747
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->close(Z)I

    :cond_d
    return-void
.end method

.method private condDumpBmp4Debug(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6

    .line 5340
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDebugSettings;->isNeedDumpCapture()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 5341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEDebugSettings;->getCapDumpDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5342
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Start to dump bitmap to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TECameraVideoRecorder"

    invoke-static {v0, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5343
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1, p0, p2}, Lcom/ss/android/medialib/common/ImageUtils;->saveBitmapWithPath(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    :cond_66
    return-void
.end method

.method private condDumpImg4Debug(Lcom/ss/android/ttvecamera/TECameraFrame;Ljava/lang/String;)V
    .registers 4

    .line 5348
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDebugSettings;->isNeedDumpCapture()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEDebugSettings;->getCapDumpDir()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5350
    invoke-virtual {p1, p0}, Lcom/ss/android/ttvecamera/TECameraFrame;->dumpImageToPath(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method private createAudioCaptureSettings(Z)V
    .registers 5

    .line 4061
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_sys_karaoke"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4062
    new-instance v1, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;-><init>()V

    .line 4063
    invoke-virtual {v1, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setAudioDataStore(I)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object v1

    .line 4064
    invoke-virtual {v1, p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->setAudioCaptureLowLatency(Z)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object p1

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnableEarBack:Z

    if-eqz v0, :cond_23

    const/4 v2, 0x1

    .line 4065
    :cond_23
    invoke-virtual {p1, v2}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->enableSysKaraoke(Z)Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;

    move-result-object p1

    .line 4066
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEAudioCaptureSettings$Builder;->build()Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    return-void
.end method

.method private enableDuetGlFinish()V
    .registers 4

    .line 2115
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "enable_duet_gl_finish"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableDuetGlFinish(Z)I

    return-void
.end method

.method private enableRecordMaxDuration()V
    .registers 4

    .line 2111
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "video_duration_opt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableRecordMaxDuration(Z)I

    return-void
.end method

.method private getAudioLengthOpt()Z
    .registers 4

    .line 5205
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_enable_optimize_audio_delay"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    .line 5207
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_20

    .line 5208
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_21

    :cond_20
    move p0, v0

    .line 5210
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio length opt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TECameraVideoRecorder"

    invoke-static {v2, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3b

    return v1

    :cond_3b
    return v0
.end method

.method private getAudioRefactor()Z
    .registers 4

    .line 5195
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "ve_enable_refactor_audio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5197
    iget-boolean p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    .line 5200
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio refactor: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getAudioType(Z)I
    .registers 5

    .line 2127
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isAudioRecordEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 2131
    :cond_c
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    const/4 v2, 0x5

    if-eq v0, v1, :cond_2b

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->REACTION:Lcom/ss/android/vesdk/VERecordMode;

    if-eq v0, v1, :cond_2b

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->CUSTOM_VIDEO_BG:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v1, :cond_1c

    goto :goto_2b

    .line 2136
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mBgmPath:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    if-eqz p1, :cond_29

    return v2

    :cond_29
    const/4 p0, 0x4

    return p0

    :cond_2b
    :goto_2b
    return v2
.end method

.method private getSegmentFrameTime()J
    .registers 6

    .line 2350
    sget-object v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2351
    :try_start_3
    iget-wide v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordingSegmentTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_f

    .line 2352
    monitor-exit v0

    return-wide v3

    :catchall_d
    move-exception p0

    goto :goto_1c

    .line 2354
    :cond_f
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getEndFrameTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordingSegmentTime:J

    .line 2355
    monitor-exit v0

    return-wide v1

    .line 2356
    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_d

    throw p0
.end method

.method private initAudioCaptureIfNeed(Ljava/lang/String;)Z
    .registers 4

    .line 4049
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInitedAudioCapture:I

    if-nez v0, :cond_33

    .line 4050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVEAudioCapture init "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TECameraVideoRecorder"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4051
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInitedAudioCapture:I

    .line 4052
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->teAudioCallback:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEAudioCapture;->removeCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)Z

    .line 4053
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->teAudioCallback:Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEAudioCapture;->addCaptureListener(Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)Z

    .line 4054
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEAudioCaptureSettings:Lcom/ss/android/vesdk/VEAudioCaptureSettings;

    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/VEAudioCapture;->init(Lcom/ss/android/vesdk/VEAudioCaptureSettings;)I

    return p1

    :cond_33
    const/4 p0, 0x0

    return p0
.end method

.method private initInternalRecorder()I
    .registers 15

    .line 2038
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    const-string v1, "TECameraVideoRecorder"

    if-eqz v0, :cond_28

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initInternalRecorder called in a invalid state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "should be : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0

    .line 2043
    :cond_28
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    if-eqz v0, :cond_41

    .line 2044
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getSampleRate()I

    move-result v0

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getChannelCount()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getBps()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAudioEncodeConfig(III)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 2046
    :cond_41
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setNativeLibraryDir(Landroid/content/Context;)V

    .line 2047
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v7, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2048
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v6, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 2049
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mBgmPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v13, 0x1

    xor-int/lit8 v9, v0, 0x1

    .line 2053
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    iget v2, v0, Lcom/ss/android/vesdk/VESize;->width:I

    if-eqz v2, :cond_6c

    iget v2, v0, Lcom/ss/android/vesdk/VESize;->height:I

    if-eqz v2, :cond_6c

    goto :goto_a3

    .line 2057
    :cond_6c
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;->getDisplaySettings()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 2058
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDisplaySettings;->getDisplayRatioMode()Lcom/ss/android/vesdk/VEPreviewRadio;

    move-result-object v2

    if-eqz v2, :cond_8b

    .line 2059
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 2061
    iget v2, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 2062
    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2063
    new-instance v3, Lcom/ss/android/vesdk/VESize;

    invoke-direct {v3, v2, v0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    move-object v0, v3

    goto :goto_8c

    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    if-nez v0, :cond_a3

    .line 2068
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEPreviewSettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->height:I

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-direct {v0, v2, v3}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 2072
    :cond_a3
    :goto_a3
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v3, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v4, v0, Lcom/ss/android/vesdk/VESize;->height:I

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordDirPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/ss/android/vesdk/TERecorderBase;->mDetectModelsDir:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCreateEffectUseAmazing:Z

    iget-boolean v11, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mIsARCoreSupported:Z

    iget-boolean v12, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsSupportStyleFeature:Z

    invoke-virtual/range {v2 .. v12}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initBeautyPlay(IILjava/lang/String;IILjava/lang/String;IZZZ)I

    move-result v2

    .line 2073
    iget-boolean v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsSupportStyleFeature:Z

    if-eqz v3, :cond_c2

    .line 2074
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v3, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->configStyleResourceFinder(Landroid/content/res/AssetManager;)V

    .line 2076
    :cond_c2
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-boolean v4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnableAEC:Z

    iget-object v5, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAECModelPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEnableAEC(ZLjava/lang/String;)I

    move-result v3

    .line 2077
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-boolean v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableLoudness:Z

    iget v6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTargetLoudness:I

    invoke-virtual {v4, v5, v6}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setLoudness(ZI)I

    move-result v4

    .line 2078
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setCodecType()V

    .line 2079
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->enableRecordMaxDuration()V

    .line 2080
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->enableDuetGlFinish()V

    .line 2081
    iput-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    if-eqz v3, :cond_f7

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEnableAEC failed "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f7
    if-eqz v4, :cond_10d

    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLoudness failed "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10d
    if-nez v2, :cond_112

    .line 2089
    invoke-direct {p0, v13}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->updateRecordStatus(I)V

    :cond_112
    return v2
.end method

.method private isKaraoke()Z
    .registers 2

    .line 4045
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v0, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method private isKaraokeRecording()Z
    .registers 2

    .line 4041
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordingMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v0, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method private isRefactorAudioCapture()Z
    .registers 2

    .line 4037
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableRefactor:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isKaraokeRecording()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method private isRenderReady()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private onAccurateInfoExt(IIFLjava/lang/String;)V
    .registers 5

    .line 3213
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInfoMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

    if-eqz p0, :cond_7

    .line 3215
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method private openCamera()V
    .registers 3

    .line 2731
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCameraClose(Z)V

    .line 2732
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_d

    .line 2733
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->open()I

    :cond_d
    return-void
.end method

.method private prepareMediaRecorderForPreview()V
    .registers 6

    .line 5126
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->height:I

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 5127
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v2

    iget v2, v2, Lcom/ss/android/vesdk/VESize;->width:I

    .line 5128
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getFps()I

    move-result v3

    if-lez v3, :cond_21

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getFps()I

    move-result v3

    goto :goto_23

    :cond_21
    const/16 v3, 0x1e

    :goto_23
    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 5129
    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBps()I

    move-result v4

    .line 5126
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->setRecorderSetting(IIII)V

    .line 5130
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mResManager:Lcom/ss/android/vesdk/runtime/VERecorderResManager;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getTempVideoFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->setFileName(Ljava/lang/String;)V

    .line 5131
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->prepare()V

    return-void
.end method

.method private releaseInteralRecorder()V
    .registers 2

    .line 2119
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 2120
    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->updateRecordStatus(I)V

    .line 2121
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->unInitBeautyPlay()V

    :cond_d
    return-void
.end method

.method private resetFrameParams()V
    .registers 2

    const/4 v0, -0x1

    .line 2142
    iput v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRotation:I

    const/4 v0, 0x0

    .line 2143
    iput v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFacing:I

    .line 2144
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameSize:Lcom/ss/android/vesdk/VESize;

    iput v0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2145
    iput v0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    return-void
.end method

.method private resetModel()V
    .registers 6

    .line 2344
    iget-wide v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->voiceHandler:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 2345
    invoke-static {v0, v1}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->resetModel(J)V

    .line 2346
    iput-wide v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->voiceHandler:J

    :cond_d
    return-void
.end method

.method private setAudioRecordStateCallack(Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;)V
    .registers 3

    .line 1151
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$14;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$14;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;)V

    .line 1161
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAudioRecordStateCallack(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioRecordStateCallack;)V

    return-void
.end method

.method private setCodecType()V
    .registers 5

    .line 2095
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getEncodeStandard()I

    .line 2096
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "enable_record_mpeg4"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2097
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "TECameraVideoRecorder"

    if-eqz v0, :cond_24

    .line 2098
    sget-object v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;->ENCODE_STANDARD_MPEG4:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_STANDARD;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 2099
    const-string v2, "setCodecType MPEG4"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 2101
    :cond_24
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v3, "ve_record_codec_type"

    invoke-virtual {v0, v3, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v0

    .line 2103
    :goto_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCodecType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCodecType(I)I

    move-result p0

    if-eqz p0, :cond_5e

    .line 2106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCodecType failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    return-void
.end method

.method private setRecordBGM(Ljava/lang/String;JJIZ)I
    .registers 8

    move p7, p6

    move-wide p5, p4

    move-wide p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 796
    new-instance p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;

    invoke-direct/range {p0 .. p7}, Lcom/ss/android/vesdk/TECameraVideoRecorder$9;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;JJI)V

    .line 818
    invoke-virtual {p1, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private setRecordMode(Lcom/ss/android/vesdk/VERecordMode;)I
    .registers 2

    .line 1634
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    .line 1635
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setRecordMode(I)I

    move-result p0

    return p0
.end method

.method private declared-synchronized startRecordPreview(Landroid/view/Surface;)I
    .registers 15

    monitor-enter p0

    .line 2149
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewInitStartTime:J

    .line 2151
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    instance-of v2, v0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v2, :cond_1e

    .line 2152
    check-cast v0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const-string v2, "You can replace the Res Manager here."

    const/16 v3, 0x3fc

    invoke-interface {v0, v3, v1, v2}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    goto :goto_1e

    :catchall_1a
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2e9

    .line 2155
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEffectAudioManagerCallback:Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;

    if-eqz v0, :cond_28

    .line 2156
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setEffectAudioManagerCallback(Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;)Z

    const/4 v0, 0x0

    .line 2157
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEffectAudioManagerCallback:Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;

    .line 2160
    :cond_28
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    if-nez v0, :cond_56

    .line 2161
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->releaseInteralRecorder()V

    .line 2162
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->initInternalRecorder()I

    move-result v0

    if-eqz v0, :cond_4f

    .line 2164
    const-string p1, "TECameraVideoRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeInitBeautyPlay error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_1a

    .line 2165
    monitor-exit p0

    const/16 p0, -0x6c

    return p0

    .line 2170
    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEPreviewRadioListener:Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;

    if-eqz v0, :cond_56

    .line 2171
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setPreviewRadioListener(Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;)V

    .line 2175
    :cond_56
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_80

    .line 2176
    const-string v0, "TECameraVideoRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordPreview statue error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_7c

    .line 2178
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeSurface(Landroid/view/Surface;)I

    .line 2179
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSurface:Landroid/view/Surface;
    :try_end_7c
    .catchall {:try_start_4f .. :try_end_7c} :catchall_1a

    .line 2181
    :cond_7c
    monitor-exit p0

    const/16 p0, -0x69

    return p0

    .line 2184
    :cond_80
    :try_start_80
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSurface:Landroid/view/Surface;

    .line 2185
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->resetFrameParams()V

    .line 2187
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mStickerRequestCallback:Lcom/ss/android/medialib/presenter/IStickerRequestCallback;

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V

    .line 2188
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseMultiPreviewRadio:Z

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setUseMultiPreviewRatio(Z)V

    .line 2189
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseMultiPreviewRadio:Z

    if-eqz v0, :cond_9c

    .line 2190
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changePreviewRadioMode(I)V

    .line 2192
    :cond_9c
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPaddingBottomInRadio34:F

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->chooseAreaFromRatio34(F)V

    .line 2193
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mViewportPaddingBottomInRadio34:F

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setPaddingBottomInRatio34(F)V

    .line 2194
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-boolean v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnablePBO:Z

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enablePBO(Z)V

    .line 2195
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    .line 2196
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result v3

    if-eqz v3, :cond_dc

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v0, v3}, Lcom/ss/android/vesdk/VESize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_dc

    .line 2197
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    iget v5, v4, Lcom/ss/android/vesdk/VESize;->width:I

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v3, v5, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changeOutputVideoSize(II)V

    .line 2198
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    iget v4, v3, Lcom/ss/android/vesdk/VESize;->width:I

    iput v4, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2199
    iget v3, v3, Lcom/ss/android/vesdk/VESize;->height:I

    iput v3, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 2202
    :cond_dc
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v3, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v3, :cond_11c

    .line 2203
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 2204
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getDuetVideoPath()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 2205
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getDuetAudioPath()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 2206
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getXInPercent()F

    move-result v7

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 2207
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getYInPercent()F

    move-result v8

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 2208
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getAlpha()F

    move-result v9

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 2209
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getIsFitMode()Z

    move-result v10

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 2210
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getEnableV2()Z

    move-result v11

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 2211
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getPlayMode()Lcom/ss/android/vesdk/VEDuetSettings$kPlayMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    .line 2203
    invoke-virtual/range {v4 .. v12}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initDuet(Ljava/lang/String;Ljava/lang/String;FFFZZI)V

    goto :goto_150

    .line 2212
    :cond_11c
    sget-object v3, Lcom/ss/android/vesdk/VERecordMode;->REACTION:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v3, :cond_134

    .line 2213
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    .line 2214
    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEReactSettings;->getReactVideoPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    .line 2215
    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEReactSettings;->getReactAudioPath()Ljava/lang/String;

    move-result-object v5

    .line 2213
    invoke-virtual {v0, v3, v4, v5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initReaction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_150

    .line 2217
    :cond_134
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mBgmPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicPath(Ljava/lang/String;)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v0

    iget v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mBgmType:I

    if-ne v3, v2, :cond_142

    move v3, v2

    goto :goto_143

    :cond_142
    move v3, v1

    :goto_143
    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAudioLoop(Z)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    move-result-object v4

    iget-wide v5, p0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimIn:J

    iget-wide v7, p0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimOut:J

    const-wide/16 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicTime(JJJ)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 2219
    :goto_150
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEffectBuildChainType(I)V

    .line 2220
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->isAsyncDetection()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setDetectionMode(Z)V

    .line 2221
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setNativeInitListener(Lcom/ss/android/medialib/listener/NativeInitListener;)V

    .line 2222
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setRunningErrorCallback(Lcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;)V

    .line 2223
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->isOptFirstFrame()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCameraFirstFrameOptimize(Z)V

    .line 2224
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEGLImageEnable()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSharedTextureStatus(Z)Z

    .line 2225
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-boolean v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mForceFirstFrameHasEffect:Z

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->forceFirstFrameHasEffect(Z)V

    .line 2226
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->addSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V

    .line 2227
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->is3bufferEnable()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enable3buffer(Z)V

    .line 2228
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->isPreloadEffectResEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enablePreloadEffectRes(Z)V

    .line 2229
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->getEffectAlgorithmRequirement()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEffectAlgorithmRequirement(J)V

    .line 2230
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEffectRTEnable()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableEffectRT(Z)V

    .line 2231
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->isMakeUpBackgroundEnable()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableMakeUpBackground(Z)V

    .line 2232
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseMultiPreviewRadio:Z

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableClearColorAfterRender(Z)V

    .line 2233
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->getCaptureRenderMaxWidth()I

    move-result v3

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEPreviewSettings;->getCaptureRenderFinalWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCaptureRenderWidth(II)V

    .line 2234
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->getRecordContentType()I

    move-result v3

    sget-object v4, Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;->RecordOriginContent:Lcom/ss/android/vesdk/VEPreviewSettings$VERecordContentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1ed

    move v3, v2

    goto :goto_1ee

    :cond_1ed
    move v3, v1

    :goto_1ee
    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setRecordContentType(Z)V

    .line 2235
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEnableTitanAutoTestLog()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableAutoTestLog(Z)V

    .line 2236
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isSwitchEffectInGLTask()Z

    move-result v0

    if-eqz v0, :cond_209

    .line 2237
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSwitchEffectInGLTask(Z)V

    .line 2239
    :cond_209
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseMultiPreviewRadio:Z

    if-nez v0, :cond_21b

    .line 2240
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVeDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    if-eqz v0, :cond_212

    goto :goto_218

    :cond_212
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;->getDisplaySettings()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v0

    :goto_218
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I

    :cond_21b
    if-eqz p1, :cond_226

    .line 2243
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->startPlay(Landroid/view/Surface;Ljava/lang/String;)I

    move-result p1

    goto :goto_23f

    .line 2245
    :cond_226
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    const/4 v0, -0x1

    if-eqz p1, :cond_230

    invoke-virtual {p1}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result p1

    goto :goto_231

    :cond_230
    move p1, v0

    .line 2246
    :goto_231
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz v3, :cond_239

    invoke-virtual {v3}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result v0

    .line 2247
    :cond_239
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v3, p1, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->startPlay(II)I

    move-result p1

    :goto_23f
    if-eqz p1, :cond_257

    .line 2250
    const-string v0, "TECameraVideoRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeStartPlay error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    :cond_257
    const-string v0, "te_record_start_preview_ret"

    int-to-long v3, p1

    invoke-static {v1, v0, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 2255
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderPreviewListener:Lcom/ss/android/vesdk/VEListener$VERecorderPreviewListener;

    if-eqz v0, :cond_275

    .line 2256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeStartPlay error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lcom/ss/android/vesdk/VEListener$VERecorderPreviewListener;->onPreviewResult(ILjava/lang/String;)V

    :cond_275
    const/4 v0, 0x2

    .line 2259
    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->updateRecordStatus(I)V

    .line 2261
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isKaraokeRecording()Z

    move-result v0

    if-eqz v0, :cond_285

    .line 2262
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAudioRefactor(Z)V

    goto :goto_297

    .line 2264
    :cond_285
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-boolean v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableRefactor:Z

    invoke-virtual {v0, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAudioRefactor(Z)V

    .line 2265
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I

    move-result v1

    invoke-virtual {v0, v2, v1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initRecord(Landroid/content/Context;ILorg/libsdl/app/AudioRecorderInterface;)I

    .line 2267
    :goto_297
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_29a
    .catchall {:try_start_80 .. :try_end_29a} :catchall_1a

    .line 2268
    :try_start_29a
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDurings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d5

    .line 2269
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDurings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordDirPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->tryRestore(ILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2cc

    .line 2271
    const-string v2, "TECameraVideoRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryRestore ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d5

    :catchall_2c9
    move-exception v0

    move-object p1, v0

    goto :goto_2e7

    .line 2273
    :cond_2cc
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDurings:Ljava/util/List;

    invoke-static {v0}, Lcom/ss/android/medialib/model/TimeSpeedModel;->calculateRealTime(Ljava/util/List;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J

    .line 2276
    :cond_2d5
    :goto_2d5
    monitor-exit v1
    :try_end_2d6
    .catchall {:try_start_29a .. :try_end_2d6} :catchall_2c9

    .line 2278
    :try_start_2d6
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isAudioPreStartEnable()Z

    move-result v0

    if-eqz v0, :cond_2e5

    .line 2279
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSpeed:F

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->preStartAudioRecording(F)V
    :try_end_2e5
    .catchall {:try_start_2d6 .. :try_end_2e5} :catchall_1a

    .line 2282
    :cond_2e5
    monitor-exit p0

    return p1

    .line 2276
    :goto_2e7
    :try_start_2e7
    monitor-exit v1
    :try_end_2e8
    .catchall {:try_start_2e7 .. :try_end_2e8} :catchall_2c9

    :try_start_2e8
    throw p1

    :goto_2e9
    monitor-exit p0
    :try_end_2ea
    .catchall {:try_start_2e8 .. :try_end_2ea} :catchall_1a

    throw p1
.end method

.method private declared-synchronized stopRecordPreview()V
    .registers 9

    monitor-enter p0

    .line 2286
    :try_start_1
    const-string v0, "TECameraVideoRecorder"

    const-string v1, "stopRecordPreview enter"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2290
    iget v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_2f

    .line 2291
    const-string v0, "TECameraVideoRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecordPreview status error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 2292
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    goto/16 :goto_e2

    :cond_2f
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5a

    .line 2295
    :try_start_33
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEPreviewSettings;->checkStatusWhenStopPreview()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2297
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->stopAudioRecorder()V

    .line 2298
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v2, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableAudioRecorder(Z)V

    .line 2299
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopRecord()I

    move-result v2

    .line 2300
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    if-eqz v3, :cond_5a

    instance-of v5, v3, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v5, :cond_5a

    .line 2301
    check-cast v3, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const-string v5, "stopRecord in stopPreview!!"

    const/16 v6, 0x3fe

    invoke-interface {v3, v6, v2, v5}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    .line 2306
    :cond_5a
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    const/16 v3, 0x424

    const/4 v5, 0x1

    if-eqz v2, :cond_6c

    instance-of v6, v2, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v6, :cond_6c

    .line 2308
    check-cast v2, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const-string v6, "calling mic release func"

    invoke-interface {v2, v3, v5, v6}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    .line 2310
    :cond_6c
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v2, v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->stopPlay(Z)V

    .line 2311
    invoke-direct {p0, v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->updateRecordStatus(I)V

    .line 2313
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isRefactorAudioCapture()Z

    move-result v2

    if-eqz v2, :cond_8e

    iget-boolean v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-nez v2, :cond_8e

    .line 2314
    const-string v2, "TECameraVideoRecorder"

    const-string v6, "mVEAudioCapture release: stopRecordPreview"

    invoke-static {v2, v6}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object v6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v2, v6}, Lcom/ss/android/vesdk/VEAudioCapture;->release(Lcom/bytedance/bpea/basics/Cert;)V

    .line 2316
    iput v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInitedAudioCapture:I

    .line 2318
    :cond_8e
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->finishWithoutNative()V

    .line 2319
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    if-eqz v2, :cond_a3

    instance-of v6, v2, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v6, :cond_a3

    .line 2321
    check-cast v2, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const-string v6, "mic released func"

    const/4 v7, 0x2

    invoke-interface {v2, v3, v7, v6}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    .line 2323
    :cond_a3
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setNativeInitListener(Lcom/ss/android/medialib/listener/NativeInitListener;)V

    .line 2324
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setRunningErrorCallback(Lcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;)V

    .line 2325
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v2, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->removeSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V

    .line 2326
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    .line 2327
    iput-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    .line 2328
    iput-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;

    .line 2330
    iget-boolean v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseMultiPreviewRadio:Z

    if-eqz v2, :cond_c4

    .line 2331
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->releaseInteralRecorder()V

    goto :goto_c7

    .line 2333
    :cond_c4
    invoke-direct {p0, v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->updateRecordStatus(I)V

    .line 2335
    :goto_c7
    const-string v2, "te_record_preview_destroy_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v4, v2, v6, v7}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 2336
    invoke-static {v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    .line 2337
    iput-boolean v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->resetModel:Z

    .line 2338
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->resetModel()V

    .line 2340
    const-string v0, "TECameraVideoRecorder"

    const-string v1, "stopRecordPreview exit"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_33 .. :try_end_e0} :catchall_2c

    .line 2341
    monitor-exit p0

    return-void

    :goto_e2
    :try_start_e2
    monitor-exit p0
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_2c

    throw v0
.end method

.method private updateRecordStatus(I)V
    .registers 4

    .line 5382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update cur record status from ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5383
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    return-void
.end method

.method private uploadSysBestCodec()V
    .registers 4

    .line 331
    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sys_best_codec"

    invoke-virtual {p0, v2, v1}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_31

    const/4 p0, 0x1

    .line 334
    invoke-static {p0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 335
    iget p0, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_25

    move p0, v0

    goto :goto_26

    :cond_25
    const/4 p0, 0x2

    .line 338
    :goto_26
    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    :cond_31
    const-string v0, "te_record_sys_best_codec"

    int-to-long v1, p0

    const/4 p0, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public OnFrameAvailable(Lcom/ss/android/medialib/model/PreviewFrame;)V
    .registers 11

    .line 3221
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mOnFrameAvailableListenerExt:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;

    if-eqz p0, :cond_41

    .line 3224
    iget v0, p1, Lcom/ss/android/medialib/model/PreviewFrame;->format:I

    sget-object v8, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_OpenGL_RGBA8:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 3225
    iget-object v1, p1, Lcom/ss/android/medialib/model/PreviewFrame;->context:Landroid/opengl/EGLContext;

    iget v2, p1, Lcom/ss/android/medialib/model/PreviewFrame;->texID:I

    iget v3, p1, Lcom/ss/android/medialib/model/PreviewFrame;->width:I

    iget v4, p1, Lcom/ss/android/medialib/model/PreviewFrame;->height:I

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/ss/android/medialib/model/PreviewFrame;->timeStamp:J

    invoke-static/range {v1 .. v8}, Lcom/ss/android/ttve/model/VEFrame;->createTextureFrame(Landroid/opengl/EGLContext;IIIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    goto :goto_37

    .line 3227
    :cond_1e
    iget v0, p1, Lcom/ss/android/medialib/model/PreviewFrame;->format:I

    sget-object v7, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_36

    .line 3228
    iget-object v1, p1, Lcom/ss/android/medialib/model/PreviewFrame;->buffer:Ljava/nio/ByteBuffer;

    iget v2, p1, Lcom/ss/android/medialib/model/PreviewFrame;->width:I

    iget v3, p1, Lcom/ss/android/medialib/model/PreviewFrame;->height:I

    const/4 v4, 0x0

    iget-wide v5, p1, Lcom/ss/android/medialib/model/PreviewFrame;->timeStamp:J

    invoke-static/range {v1 .. v7}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object v0

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    if-eqz v0, :cond_3e

    .line 3232
    iget-boolean p1, p1, Lcom/ss/android/medialib/model/PreviewFrame;->fromFrontCamera:Z

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/VEFrame;->setFromFrontCamera(Z)V

    .line 3236
    :cond_3e
    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;->OnFrameAvailable(Lcom/ss/android/ttve/model/VEFrame;)V

    :cond_41
    return-void
.end method

.method public OnPreviewDataCallback(Ljava/nio/ByteBuffer;IIIJ)V
    .registers 14

    .line 5420
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewDataCallbackListener:Lcom/ss/android/vesdk/VERecorder$OnPreviewDataCallbackListener;

    if-eqz p0, :cond_2e

    .line 5425
    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_YUV420P:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p4, v0, :cond_16

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move-wide v4, p5

    .line 5426
    invoke-static/range {v0 .. v6}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p1

    goto :goto_29

    :cond_16
    move-object v0, p1

    move v1, p2

    move v2, p3

    move-wide v4, p5

    .line 5427
    sget-object v6, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->TEPixFmt_NV12:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-ne p4, p1, :cond_28

    const/4 v3, 0x0

    .line 5428
    invoke-static/range {v0 .. v6}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    if-eqz p1, :cond_2e

    .line 5432
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VERecorder$OnPreviewDataCallbackListener;->onPreviewDataCallback(Lcom/ss/android/ttve/model/VEFrame;)V

    :cond_2e
    return-void
.end method

.method public addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 3924
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    return-void
.end method

.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 5263
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addPCMData([BIJ)I
    .registers 11

    .line 4926
    const-string p3, "addPCMData..."

    const-string p4, "TECameraVideoRecorder"

    invoke-static {p4, p3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4927
    iget p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSampleRate:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_72

    .line 4928
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVolumeDetect:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVeAudioRecordVolumeCallback:Lcom/ss/android/vesdk/VEListener$VEAudioRecordVolumeCallback;

    if-eqz v0, :cond_24

    .line 4931
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mChannels:I

    invoke-static {p1, p3, v0, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getAudioVolume([BIII)D

    move-result-wide v2

    .line 4932
    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVeAudioRecordVolumeCallback:Lcom/ss/android/vesdk/VEListener$VEAudioRecordVolumeCallback;

    invoke-interface {p3, v2, v3}, Lcom/ss/android/vesdk/VEListener$VEAudioRecordVolumeCallback;->onVolumeGet(D)V

    .line 4934
    :cond_24
    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    if-eqz p3, :cond_72

    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVeVoiceActivityDetectionCallback:Lcom/ss/android/vesdk/VEListener$VEVoiceActivityDetectionCallback;

    if-eqz p3, :cond_72

    .line 4935
    invoke-interface {p3}, Lcom/ss/android/vesdk/VEListener$VEVoiceActivityDetectionCallback;->modePath()Ljava/lang/String;

    move-result-object p3

    .line 4936
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 4937
    const-string p3, "modePath is empty"

    invoke-static {p4, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4938
    iget-object p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVeVoiceActivityDetectionCallback:Lcom/ss/android/vesdk/VEListener$VEVoiceActivityDetectionCallback;

    const-wide/high16 v2, -0x3ff8000000000000L    # -3.0

    invoke-interface {p3, v2, v3}, Lcom/ss/android/vesdk/VEListener$VEVoiceActivityDetectionCallback;->onVoiceActivity(D)V

    goto :goto_72

    .line 4940
    :cond_43
    iget-wide v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->voiceHandler:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_58

    .line 4941
    const-string v0, "load model"

    invoke-static {p4, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4942
    iget p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSampleRate:I

    invoke-static {p4, p3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->loadModel(ILjava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->voiceHandler:J

    .line 4944
    :cond_58
    iget-wide p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->voiceHandler:J

    cmp-long v0, p3, v4

    if-eqz v0, :cond_69

    .line 4945
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mChannels:I

    invoke-static {p1, p3, p4, v0, p2}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->voiceActivityDetection([BJII)D

    move-result-wide p3

    .line 4947
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVeVoiceActivityDetectionCallback:Lcom/ss/android/vesdk/VEListener$VEVoiceActivityDetectionCallback;

    invoke-interface {v0, p3, p4}, Lcom/ss/android/vesdk/VEListener$VEVoiceActivityDetectionCallback;->onVoiceActivity(D)V

    .line 4950
    :cond_69
    iget-boolean p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->resetModel:Z

    if-eqz p3, :cond_72

    .line 4951
    iput-boolean v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->resetModel:Z

    .line 4952
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->resetModel()V

    .line 4958
    :cond_72
    :goto_72
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;

    if-eqz p0, :cond_7d

    .line 4959
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;->onPCMDataAvailable([BI)V

    :cond_7d
    return v1
.end method

.method public addPipRenderTarget(Landroid/view/Surface;IILandroid/graphics/Bitmap;Z)Z
    .registers 6

    .line 5243
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->addPipRenderTarget(Landroid/view/Surface;IILandroid/graphics/Bitmap;Z)Z

    move-result p0

    return p0
.end method

.method public addSticker(Landroid/graphics/Bitmap;II)V
    .registers 4

    .line 3646
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSticker(Landroid/graphics/Bitmap;II)I

    return-void
.end method

.method public addTrack(ILcom/ss/android/ttve/model/VETrackParams;)I
    .registers 14

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTrack trimIn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimIns()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " trimOut "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimOuts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isKaraoke()Z

    move-result v0

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseAudioGraph:Z

    if-eqz v0, :cond_3b

    :cond_39
    move-object v3, p0

    goto :goto_6c

    .line 1826
    :cond_3b
    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VETrackParams;->getPaths()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimIns()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimOuts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v7, p1

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setRecordBGM(Ljava/lang/String;JJIZ)I

    move-result p0

    return p0

    .line 1824
    :goto_6c
    iget-object v3, v3, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VETrackParams;->getPaths()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimIns()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v6, p0

    invoke-virtual {p2}, Lcom/ss/android/ttve/model/VETrackParams;->getTrimOuts()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v8, p0

    move v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->addTrack(ILjava/lang/String;JJ)I

    move-result p0

    return p0
.end method

.method public afterSurfaceDestroyed()V
    .registers 1

    return-void
.end method

.method public animateImageToPreview(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 4843
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->animateImageToPreview(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public animateImagesToPreview(Ljava/util/List;Ljava/util/List;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/android/ttve/model/VEFrame;",
            ">;)I"
        }
    .end annotation

    const/16 v0, -0x64

    if-eqz p1, :cond_65

    .line 4848
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_65

    .line 4852
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 4853
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 p1, 0x0

    if-nez p2, :cond_19

    move v2, p1

    goto :goto_1d

    .line 4855
    :cond_19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 4856
    :goto_1d
    new-array v3, v2, [Ljava/nio/ByteBuffer;

    .line 4857
    new-array v4, v2, [I

    .line 4858
    new-array v5, v2, [I

    :goto_23
    if-ge p1, v2, :cond_5e

    .line 4860
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ss/android/ttve/model/VEFrame;

    .line 4861
    const-string v7, "TECameraVideoRecorder"

    if-nez v6, :cond_35

    .line 4862
    const-string p0, "frame nullptr"

    invoke-static {v7, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 4866
    :cond_35
    invoke-virtual {v6}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v8

    instance-of v8, v8, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    if-nez v8, :cond_43

    .line 4867
    const-string p0, "Only support ByteBufferFrame"

    invoke-static {v7, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 4871
    :cond_43
    invoke-virtual {v6}, Lcom/ss/android/ttve/model/VEFrame;->getFrame()Lcom/ss/android/ttve/model/VEFrame$FrameBase;

    move-result-object v7

    check-cast v7, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;

    invoke-virtual {v7}, Lcom/ss/android/ttve/model/VEFrame$ByteBufferFrame;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v3, p1

    .line 4872
    invoke-virtual {v6}, Lcom/ss/android/ttve/model/VEFrame;->getWidth()I

    move-result v7

    aput v7, v4, p1

    .line 4873
    invoke-virtual {v6}, Lcom/ss/android/ttve/model/VEFrame;->getHeight()I

    move-result v6

    aput v6, v5, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 4876
    :cond_5e
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->animateImagesToPreview([Ljava/lang/String;[Ljava/nio/ByteBuffer;[I[I)I

    move-result p0

    return p0

    :cond_65
    :goto_65
    return v0
.end method

.method public appendComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 4804
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->appendComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public attachCameraCapture(Lcom/ss/android/vesdk/camera/ICameraCapture;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p1, :cond_a

    .line 459
    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    :cond_a
    return-void
.end method

.method public capture(IIIZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 19

    .line 4286
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz v0, :cond_50

    .line 4290
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 4291
    const-string v0, "facing"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 4292
    const-string v2, "support_light_soft"

    invoke-virtual {v4, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4293
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    invoke-interface {v1, v4}, Lcom/ss/android/vesdk/camera/ICameraCapture;->queryFeatures(Landroid/os/Bundle;)V

    .line 4294
    invoke-virtual {v4, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 4295
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;->FACING_FRONT:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v3, v1, :cond_31

    .line 4296
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 4298
    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;->CAMERA_FLASH_TORCH:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->switchFlashMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;)V

    goto :goto_3c

    .line 4299
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne v3, v0, :cond_3c

    if-eqz p6, :cond_3c

    .line 4300
    invoke-interface/range {p6 .. p6}, Lcom/ss/android/vesdk/VERecorder$ILightSoftCallback;->increaseLight()V

    .line 4303
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    new-instance v1, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;

    move-object v2, p0

    move v7, p1

    move v8, p2

    move v9, p3

    move v6, p4

    move/from16 v10, p5

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v10}, Lcom/ss/android/vesdk/TECameraVideoRecorder$59;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;ILandroid/os/Bundle;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;ZIIIZ)V

    invoke-interface {v0, p1, p2, v1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->takePicture(IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I

    return-void

    .line 4287
    :cond_50
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No Camera capture to capture"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public capture(IZZLcom/ss/android/vesdk/VERecorder$ILightSoftCallback;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 14

    .line 4430
    iget-object p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p4, :cond_31

    .line 4434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 4435
    iget-object p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;

    move-object v1, p0

    move v4, p1

    move v3, p2

    move v7, p3

    move-object v2, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/vesdk/TECameraVideoRecorder$60;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;ZIJZ)V

    invoke-interface {p4, v0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->takePicture(Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I

    .line 4541
    iget-object p0, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->getPictureSize()Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 4543
    iget p1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v1, p1, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->calculateCaptureRenderSize(II)Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    if-eqz v2, :cond_30

    .line 4545
    iget p1, p0, Lcom/ss/android/vesdk/VESize;->height:I

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-interface {v2, p1, p0}, Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;->onShutter(II)V

    :cond_30
    return-void

    .line 4431
    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No Camera capture to capture"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public captureNightEnhance(Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;)V
    .registers 13

    .line 4579
    new-instance v0, Lcom/ss/android/ttvecamera/model/BurstRequest;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/model/BurstRequest;-><init>()V

    .line 4580
    iget v1, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->burstType:I

    iput v1, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->burstType:I

    .line 4581
    iget-object v1, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->aeExposureValues:Ljava/util/List;

    iput-object v1, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->aeExposureValues:Ljava/util/List;

    .line 4582
    iget v2, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->sourceWidth:I

    iput v2, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->imageWidth:I

    .line 4583
    iget v2, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->sourceHeight:I

    iput v2, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->imageHeight:I

    .line 4584
    iget v2, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->frameInterval:I

    iput v2, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->frameInterval:I

    .line 4585
    iget-boolean v2, p1, Lcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;->canStopRepeating:Z

    iput-boolean v2, v0, Lcom/ss/android/ttvecamera/model/BurstRequest;->canStopRepeating:Z

    .line 4586
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 4587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 4589
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    new-instance v3, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/ss/android/vesdk/TECameraVideoRecorder$61;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;ILcom/ss/android/vesdk/VECaptureRequest$NightEnhanceConfig;Lcom/ss/android/vesdk/VERecorder$IBitmapCaptureCallback;J)V

    invoke-interface {v1, v3, v0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->captureBurst(Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;Lcom/ss/android/ttvecamera/model/BurstRequest;)I

    return-void
.end method

.method public changeCamera()V
    .registers 2

    .line 2519
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_8

    .line 2520
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->switchCamera()I

    return-void

    .line 2522
    :cond_8
    const-string p0, "TECameraVideoRecorder"

    const-string v0, "No Camera capture to changeCamera"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)V
    .registers 3

    .line 2528
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_8

    .line 2529
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->switchCamera(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;)I

    return-void

    .line 2531
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Camera capture to changeCamera("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraVideoRecorder"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeDuetVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 490
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changeDuetVideo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changePreviewSize(Lcom/ss/android/vesdk/VESize;)Z
    .registers 8

    .line 1993
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    const/4 v1, 0x0

    const-string v2, "TECameraVideoRecorder"

    if-nez v0, :cond_d

    .line 1994
    const-string p0, "change preview size failed..."

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_d
    if-nez p1, :cond_15

    .line 1999
    const-string p0, "change preview size failed...size is invalid"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2007
    :cond_15
    iget v1, p1, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2008
    iget v3, p1, Lcom/ss/android/vesdk/VESize;->height:I

    .line 2009
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    iget v5, v4, Lcom/ss/android/vesdk/VESize;->width:I

    if-ne v5, v3, :cond_39

    iget v5, v4, Lcom/ss/android/vesdk/VESize;->height:I

    if-ne v5, v1, :cond_39

    .line 2010
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "change preview size...same size: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 2014
    :cond_39
    iput v3, v4, Lcom/ss/android/vesdk/VESize;->width:I

    .line 2015
    iput v1, v4, Lcom/ss/android/vesdk/VESize;->height:I

    .line 2017
    invoke-interface {v0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->getCameraState()I

    move-result v0

    .line 2018
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    invoke-interface {v1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->isCameraSwitchState()Z

    move-result v1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_54

    if-eqz v1, :cond_4d

    goto :goto_54

    .line 2029
    :cond_4d
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->changePreviewSize(Lcom/ss/android/vesdk/VESize;)Z

    move-result p0

    goto :goto_76

    .line 2021
    :cond_54
    :goto_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change preview failed, cameraState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isCameraSwitchState: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setPreviewSize(Lcom/ss/android/vesdk/VESize;)Z

    move-result p0

    .line 2032
    :goto_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change preview size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public changeRecordMode(Lcom/ss/android/vesdk/VERecordMode;)V
    .registers 8

    .line 1640
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, p1, :cond_5

    return-void

    .line 1641
    :cond_5
    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE:Lcom/ss/android/vesdk/VERecordMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_12

    sget-object v4, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    if-ne p1, v4, :cond_10

    goto :goto_12

    :cond_10
    move v4, v3

    goto :goto_13

    :cond_12
    :goto_12
    move v4, v2

    :goto_13
    if-eqz v4, :cond_1d

    .line 1643
    const-string p0, "TECameraVideoRecorder"

    const-string p1, "Not support karaoke, should open DISABLE_KARAOKE Config"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1647
    :cond_1d
    sget-object v5, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    if-ne p1, v5, :cond_22

    goto :goto_23

    :cond_22
    move v2, v3

    :goto_23
    if-eq v0, v1, :cond_45

    if-eq v0, v5, :cond_45

    if-eq p1, v1, :cond_45

    if-ne p1, v5, :cond_2c

    goto :goto_45

    .line 1668
    :cond_2c
    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v1, :cond_3c

    .line 1669
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setRecordMode(Lcom/ss/android/vesdk/VERecordMode;)I

    .line 1670
    new-instance p1, Lcom/ss/android/vesdk/TECameraVideoRecorder$27;

    invoke-direct {p1, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$27;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void

    .line 1680
    :cond_3c
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$28;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$28;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecordMode;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void

    .line 1654
    :cond_45
    :goto_45
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setRecordMode(Lcom/ss/android/vesdk/VERecordMode;)I

    .line 1655
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;

    invoke-direct {v0, p0, v4, v2, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$26;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;ZZLcom/ss/android/vesdk/VERecordMode;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public changeRecorderState(I)V
    .registers 3

    if-eqz p1, :cond_1e

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    return-void

    .line 5118
    :cond_c
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->resume()Z

    return-void

    .line 5115
    :cond_12
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->pause()Z

    return-void

    .line 5112
    :cond_18
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->stopRecord()V

    return-void

    .line 5106
    :cond_1e
    sget-object p1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5107
    :try_start_21
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRotation:I

    .line 5108
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2a

    .line 5109
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->startRecord(I)V

    return-void

    :catchall_2a
    move-exception p0

    .line 5108
    :try_start_2b
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public changeResManager(Lcom/ss/android/vesdk/runtime/VERecorderResManager;)I
    .registers 7

    .line 431
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    const-string v1, "TECameraVideoRecorder"

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    if-eq v0, v2, :cond_11

    .line 432
    const-string p0, "Invoking the wrong timing!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0

    .line 435
    :cond_11
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->changeResManager(Lcom/ss/android/vesdk/runtime/VERecorderResManager;)I

    .line 436
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDurings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/16 v3, 0x0

    .line 437
    iput-wide v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ss/android/vesdk/runtime/VERecorderResManager;->getSegmentDirPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordDirPath:Ljava/lang/String;

    .line 439
    iget p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    if-ne p1, v2, :cond_58

    .line 440
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->releaseInteralRecorder()V

    .line 441
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->initInternalRecorder()I

    move-result p0

    if-eqz p0, :cond_58

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativeInitBeautyPlay error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    :cond_58
    const/4 p0, 0x0

    return p0
.end method

.method public changeSurface(Landroid/view/Surface;)I
    .registers 3

    .line 985
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changeSurface(Landroid/view/Surface;)I

    move-result p1

    .line 986
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setModeChangeState(I)V

    return p1
.end method

.method public changeVideoOutputSize(II)V
    .registers 4

    .line 1020
    invoke-super {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->changeVideoOutputSize(II)V

    .line 1021
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1022
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changeOutputVideoSize(II)V

    :cond_10
    return-void
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 3

    .line 4829
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 4

    .line 4834
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public chooseAreaFromRatio34(F)V
    .registers 2

    .line 1028
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->chooseAreaFromRatio34(F)V

    .line 1029
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->chooseAreaFromRatio34(F)V

    return-void
.end method

.method public chooseSlamFace(I)V
    .registers 2

    .line 3911
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->chooseSlamFace(I)V

    return-void
.end method

.method public declared-synchronized clearAllFrags()V
    .registers 2

    monitor-enter p0

    .line 1371
    :try_start_1
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$19;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$19;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    .line 1385
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1386
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public clearDisplayColor(IIII)V
    .registers 6

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    int-to-float p4, p4

    div-float/2addr p4, v0

    .line 1988
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->clearDisplayColor(FFFF)V

    return-void
.end method

.method public clearLandMarkDetectListener()V
    .registers 1

    .line 3940
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->clearLandMarkDetectListener()V

    return-void
.end method

.method public clearSticker()V
    .registers 1

    .line 3651
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->removeSticker()I

    return-void
.end method

.method public closeWavFile(Z)I
    .registers 4

    .line 4966
    const-string v0, "TECameraVideoRecorder"

    const-string v1, "closeWavFile..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4967
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;

    if-eqz v0, :cond_e

    .line 4968
    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;->onStopRecord(Z)V

    :cond_e
    const/4 p1, 0x1

    .line 4970
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isAudioRecordClosed:Z

    .line 4971
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isVideoRecordClosed:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    .line 4972
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    if-eqz p0, :cond_27

    instance-of p1, p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz p1, :cond_27

    .line 4973
    check-cast p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const/16 p1, 0x3fd

    const-string v1, "Update segmentation time."

    invoke-interface {p0, p1, v0, v1}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    :cond_27
    return v0
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 13

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1496
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I
    .registers 15

    .line 1502
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 1503
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopRecord()I

    .line 1506
    :cond_8
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    if-nez v0, :cond_f

    const/16 p0, -0x69

    return p0

    .line 1509
    :cond_f
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isOptRemuxWithCopy()Z

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public concatAsync(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEListener$VECallListener;I)V
    .registers 17

    .line 1514
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v2, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/vesdk/TECameraVideoRecorder$22;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteLastFrag()V
    .registers 2

    const/4 v0, 0x0

    .line 1366
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->deleteLastFrag(Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    return-void
.end method

.method public deleteLastFrag(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    .line 1338
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$18;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$18;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    .line 1361
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public detachCameraCapture()Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 3

    .line 465
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    const/4 v1, 0x0

    .line 466
    iput-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    return-object v0
.end method

.method public disableRender(Z)V
    .registers 2

    .line 3480
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->disableRender(Z)V

    return-void
.end method

.method public enableAudio(Z)V
    .registers 3

    .line 1737
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$30;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$30;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)V

    .line 1744
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableAudioPlayerFromVE(Z)V
    .registers 2

    .line 1754
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableAudioPlayerFromVE(I)V

    return-void
.end method

.method public enableAudioRecorder(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 1564
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->enableAudioRecorder(ZLcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public enableAudioRecorder(ZLcom/bytedance/bpea/basics/Cert;)V
    .registers 5

    .line 1533
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableRefactor:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-nez v0, :cond_26

    if-eqz p1, :cond_17

    .line 1535
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isKaraoke()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->createAudioCaptureSettings(Z)V

    .line 1536
    const-string v0, "enableAudioRecorder"

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->initAudioCaptureIfNeed(Ljava/lang/String;)Z

    goto :goto_26

    .line 1538
    :cond_17
    const-string v0, "TECameraVideoRecorder"

    const-string v1, "mVEAudioCapture release: enableAudioRecorder"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-virtual {v0, p2}, Lcom/ss/android/vesdk/VEAudioCapture;->release(Lcom/bytedance/bpea/basics/Cert;)V

    const/4 v0, 0x0

    .line 1540
    iput v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInitedAudioCapture:I

    .line 1544
    :cond_26
    :goto_26
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder$23;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;ZLcom/bytedance/bpea/basics/Cert;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableDuetMicRecord(Z)V
    .registers 2

    .line 518
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableDuetMicRecord(Z)V

    return-void
.end method

.method public enableEffect(Z)V
    .registers 2

    .line 3475
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableEffect(Z)V

    return-void
.end method

.method public enableFaceBeautifyDetect(I)V
    .registers 2

    .line 3346
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableFaceBeautifyDetect(I)V

    return-void
.end method

.method public enableFaceExtInfo(I)V
    .registers 2

    .line 3559
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableFaceExtInfo(I)V

    return-void
.end method

.method public enableGetPropTrack(Z)V
    .registers 2

    .line 4014
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableGetPropTrack(Z)V

    return-void
.end method

.method public enableLensProcess(IZ)V
    .registers 3

    .line 5239
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableLensProcess(IZ)V

    return-void
.end method

.method public enablePictureTestMode(ZZ)V
    .registers 5

    .line 3570
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enablePictureTestMode(ZZ)V

    .line 3571
    iget p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFacing:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_c

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    if-eqz p1, :cond_19

    .line 3573
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    if-eqz v1, :cond_15

    const/16 v0, 0xb4

    :cond_15
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->updateRotation(IZ)V

    return-void

    .line 3575
    :cond_19
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRotation:I

    invoke-virtual {p1, p0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->updateRotation(IZ)V

    return-void
.end method

.method public enableRecordBGMToMp4(Z)V
    .registers 2

    .line 1050
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableRecordBGMToMp4(Z)V

    return-void
.end method

.method public enableRecordFlip(Z)V
    .registers 2

    .line 1749
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableRecordFlip(I)V

    return-void
.end method

.method public enableRecordingMp4(Z)V
    .registers 2

    .line 1060
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableRecordingMp4(Z)V

    return-void
.end method

.method public enableScan(ZJ)V
    .registers 4

    .line 5023
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableScan(ZJ)V

    return-void
.end method

.method public enableSceneRecognition(Z)V
    .registers 2

    .line 3331
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableSceneRecognition(Z)V

    return-void
.end method

.method public enableSkeletonDetect(Z)V
    .registers 2

    .line 3336
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableSkeletonDetect(Z)V

    return-void
.end method

.method public enableSmartBeauty(Z)V
    .registers 2

    .line 3341
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableSmartBeauty(Z)V

    return-void
.end method

.method public enableStickerRecognition(Z)V
    .registers 2

    .line 3351
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableStickerRecognition(Z)V

    return-void
.end method

.method public enableTimestampCallback(Z)V
    .registers 2

    .line 1780
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableTimestampCallback(Z)V

    return-void
.end method

.method public enableWaterMark(Z)V
    .registers 2

    .line 3564
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->enableWaterMark(Z)V

    .line 3565
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableWaterMark(Z)V

    return-void
.end method

.method public executeSafeSubmit(Ljava/lang/Runnable;)V
    .registers 5

    .line 2361
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDestroyed:Z

    const-string v1, "TECameraVideoRecorder"

    if-eqz v0, :cond_c

    .line 2362
    const-string p0, "Recorder is destroyed, ignore subsequent tasks"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2367
    :cond_c
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordInAsyncMode:Z

    if-nez v0, :cond_14

    .line 2368
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2372
    :cond_14
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2373
    const-string p0, "executeSafeSubmit EXECUTOR isShutdown"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2378
    :cond_25
    :try_start_25
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_25 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p0

    .line 2380
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RejectedExecutionException happened to executeSafeSubmit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public fetchDistortionInfo(Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;)Z
    .registers 4

    .line 5268
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    new-instance v1, Lcom/ss/android/vesdk/TECameraVideoRecorder$69;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$69;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VEDistortionInfoCallback;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->fetchDistortionInfo(Lcom/ss/android/medialib/listener/DistortionInfoCallback;)Z

    move-result p0

    return p0
.end method

.method getAECSuggestVolume()[F
    .registers 1

    .line 1456
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    if-nez p0, :cond_b

    const/4 p0, 0x2

    .line 1457
    new-array p0, p0, [F

    fill-array-data p0, :array_10

    return-object p0

    .line 1459
    :cond_b
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getAECSuggestVolume()[F

    move-result-object p0

    return-object p0

    :array_10
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;
    .registers 3

    .line 2663
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_20

    .line 2664
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 2666
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;-><init>()V

    .line 2667
    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    iput v1, v0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->exposure:I

    .line 2668
    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->step:F

    iput v1, v0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->step:F

    .line 2669
    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->max:I

    iput v1, v0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->max:I

    .line 2670
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->min:I

    iput p0, v0, Lcom/ss/android/ttvecamera/TECameraBase$ExposureCompensationInfo;->min:I

    return-object v0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;
    .registers 2

    .line 2537
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_9

    .line 2538
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->getCameraFacing()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FACING_ID;

    move-result-object p0

    return-object p0

    .line 2540
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No Camera capture to getCameraFacing"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCameraFps()F
    .registers 1

    .line 2760
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getCameraFrameRate()F

    move-result p0

    return p0
.end method

.method public getComposerNodePaths()Ljava/lang/String;
    .registers 1

    .line 4824
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getComposerNodePaths()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComposerNodeValue(Ljava/lang/String;Ljava/lang/String;)F
    .registers 3

    .line 4819
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getComposerNodeValue(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getCurrentCameraCapture()Lcom/ss/android/vesdk/camera/ICameraCapture;
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    return-object p0
.end method

.method public getDuetAudioPath()Ljava/lang/String;
    .registers 2

    .line 2473
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isDuetMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2474
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEDuetSettings;->getDuetAudioPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEffect()Lcom/ss/android/vesdk/effect/IEffect;
    .registers 1

    .line 301
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEffect:Lcom/ss/android/vesdk/effect/IEffect;

    return-object p0
.end method

.method public getEffectHandler()J
    .registers 3

    .line 4004
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getEffectHandler()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndFrameTime()J
    .registers 5

    .line 1313
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getSegmentFrameTime()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSpeed:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    iget-wide v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;
    .registers 1

    .line 5028
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;

    move-result-object p0

    return-object p0
.end method

.method public getFilterIntensity(Ljava/lang/String;)F
    .registers 2

    .line 3326
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getFilterIntensity(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getFrameByConfig(Lcom/ss/android/vesdk/VERecorder$FrameConfig;)Lcom/ss/android/ttve/model/VEFrame;
    .registers 12

    .line 2394
    iget v0, p1, Lcom/ss/android/vesdk/VERecorder$FrameConfig;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_28

    .line 2395
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object p1, p1, Lcom/ss/android/vesdk/VERecorder$FrameConfig;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getFrameByKey(Ljava/lang/String;)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object p0

    if-nez p0, :cond_11

    return-object v2

    .line 2396
    :cond_11
    iget-object v3, p0, Lcom/ss/android/medialib/camera/ImageFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    iget v5, p0, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    iget v6, p0, Lcom/ss/android/medialib/camera/ImageFrame;->rotate:I

    invoke-static {}, Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;->values()[Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    move-result-object p1

    iget p0, p0, Lcom/ss/android/medialib/camera/ImageFrame;->format:I

    aget-object v9, p1, p0

    const-wide/16 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/ss/android/ttve/model/VEFrame;->createByteBufferFrame(Ljava/nio/ByteBuffer;IIIJLcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;)Lcom/ss/android/ttve/model/VEFrame;

    move-result-object p0

    return-object p0

    :cond_28
    return-object v2
.end method

.method public getInternalRecorder()Lcom/ss/android/medialib/presenter/MediaRecordPresenter;
    .registers 1

    .line 724
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    return-object p0
.end method

.method public getLastPerformanceData()Lcom/ss/android/vesdk/model/VERecordPerformanceData;
    .registers 4

    .line 5393
    new-instance v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;

    invoke-direct {v0}, Lcom/ss/android/vesdk/model/VERecordPerformanceData;-><init>()V

    .line 5394
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getLastRecordFps()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2a

    .line 5396
    iput v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->fps:F

    .line 5397
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getLastRecordLagCount()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->lagCount:I

    .line 5398
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getLastRecordLagMaxDuration()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->lagMaxDuration:J

    .line 5399
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getLastRecordLagTotalDuration()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->lagTotalDuration:J

    .line 5402
    :cond_2a
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v2, "startRecordBeforeInit"

    invoke-virtual {v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->startRecordBeforeInit:J

    .line 5403
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v2, "startRecordInit"

    invoke-virtual {v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->startRecordInit:J

    .line 5404
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v2, "startRecordAfterInit"

    invoke-virtual {v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->startRecordAfterInit:J

    .line 5406
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v2, "stopRecordThreadExit"

    invoke-virtual {v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->stopRecordThreadExit:J

    .line 5407
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v2, "stopRecordUninit"

    invoke-virtual {v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->stopRecordUninit:J

    .line 5408
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v2, "stopRecordAfterUninit"

    invoke-virtual {v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->stopRecordAfterUninit:J

    .line 5410
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v2, "concatInit"

    invoke-virtual {v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->concatInit:J

    .line 5411
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v2, "concatPreProcess"

    invoke-virtual {v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->concatPreProcess:J

    .line 5412
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v2, "concatWriteFile"

    invoke-virtual {v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->concatWriteFile:J

    .line 5413
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v1, "concatAfterWriteFile"

    invoke-virtual {p0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->concatAfterWriteFile:J

    return-object v0
.end method

.method public getLastRecordFrameNum()I
    .registers 1

    .line 1333
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getLastRecordFrameNum()I

    move-result p0

    return p0
.end method

.method public getMapBuffer()Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;
    .registers 1

    .line 4009
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getMapBuffer()Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMaxZoom()F
    .registers 2

    .line 2692
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported now."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMicState()I
    .registers 2

    .line 596
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isRefactorAudioCapture()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 597
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEAudioCapture;->getMicState()I

    move-result p0

    return p0

    .line 599
    :cond_d
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getMicState()I

    move-result p0

    return p0
.end method

.method public getPerfStageCostByKey(Ljava/lang/String;)J
    .registers 2

    .line 5454
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPerfStageCostByKey(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPreviewFrame(Lcom/ss/android/vesdk/VEGetFrameSettings;)I
    .registers 10

    .line 4553
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getGetFrameType()Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;->NO_FRAME_MODE:Lcom/ss/android/vesdk/VEGetFrameSettings$VEGetFrameType;

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_9
    move v4, v0

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :goto_d
    if-eqz v4, :cond_2f

    .line 4556
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    iget v2, p0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 4557
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object p0

    iget v3, p0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 4559
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getFrameInterval()I

    move-result v5

    .line 4560
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEGetFrameSettings;->getFileCacheDir()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda0;-><init>(Lcom/ss/android/vesdk/VEGetFrameSettings;)V

    .line 4556
    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getSequencePreviewFrame(IIZILjava/lang/String;Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;)I

    move-result p0

    return p0

    .line 4572
    :cond_2f
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getSequencePreviewFrame(IIZILjava/lang/String;Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;)I

    move-result p0

    return p0
.end method

.method public getPreviewRenderRect()[I
    .registers 1

    .line 5318
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getPreviewRenderRect()[I

    move-result-object p0

    return-object p0
.end method

.method public getReactAudioPath()Ljava/lang/String;
    .registers 2

    .line 2481
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isReactMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2482
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEReactSettings;->getReactAudioPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getReactRegionInRecordVideoPixel()[I
    .registers 3

    .line 547
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getReactionCameraPosInRecordPixel()[I

    move-result-object p0

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getReactRegionInRecordVideoPixel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getReactRegionInViewPixel()[I
    .registers 3

    .line 540
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getReactionCameraPosInViewPixel()[I

    move-result-object p0

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getReactRegionInViewPixel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getReactionPosMarginInViewPixel()[I
    .registers 3

    .line 533
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getReactionPosMarginInViewPixel()[I

    move-result-object p0

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getReactionPosMarginInViewPixel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getReactionWindowRotation()F
    .registers 3

    .line 575
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getReactionCamRotation()F

    move-result p0

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getReactionWindowRotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getRecordStatus()I
    .registers 1

    .line 729
    iget p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    return p0
.end method

.method public getRecordedVideoPaths()[Ljava/lang/String;
    .registers 1

    .line 1055
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getRecordedVideoPaths()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceMultiViewTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 4885
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getResourceMultiViewTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSegmentAudioPlayBackTimestamp()J
    .registers 3

    .line 1328
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getSegmentAudioPlayBackTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentAudioUS()J
    .registers 3

    .line 1323
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getLastAudioLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegmentFrameTimeUS()J
    .registers 3

    .line 1318
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getEndFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSlamFaceCount()I
    .registers 1

    .line 3916
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getSlamFaceCount()I

    move-result p0

    return p0
.end method

.method public getSmallWindowSnapshot(IILcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;)Z
    .registers 7

    const/4 v0, 0x1

    if-nez p3, :cond_4

    return v0

    .line 5284
    :cond_4
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->isSmallWinCameraRender()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 5287
    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 5288
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    new-instance v1, Lcom/ss/android/vesdk/TECameraVideoRecorder$70;

    invoke-direct {v1, p0, p3}, Lcom/ss/android/vesdk/TECameraVideoRecorder$70;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotScreen([IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;Z)I

    return v0

    .line 5300
    :cond_1c
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5301
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    new-instance v2, Lcom/ss/android/vesdk/TECameraVideoRecorder$71;

    invoke-direct {v2, p0, p3, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$71;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VESmallWindowSnapshotListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getSmallWindowSnapshot(IILandroid/graphics/Bitmap;Lcom/ss/android/medialib/listener/SmallWindowSnapshotListener;)Z

    move-result p0

    return p0
.end method

.method public getStyleAudioProxy()Ljava/lang/Object;
    .registers 1

    .line 5258
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getStyleAudioProxy()Lcom/ss/android/medialib/style/IStyleAudioProxyInterface;

    move-result-object p0

    return-object p0
.end method

.method public getStyleProxy()Ljava/lang/Object;
    .registers 1

    .line 5253
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getStyleProxy()Lcom/ss/android/medialib/style/IStyleProxyInterface;

    move-result-object p0

    return-object p0
.end method

.method public getVideoController()Lcom/ss/android/medialib/presenter/ITEVideoController;
    .registers 1

    .line 5053
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getVideoController()Lcom/ss/android/medialib/presenter/VEVideoController;

    move-result-object p0

    return-object p0
.end method

.method public handleEffectAudio(ZJ)V
    .registers 4

    .line 3950
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->handleEffectAudio(ZJ)V

    return-void
.end method

.method public handleEffectAudioPlay(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 3966
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->bindEffectAudioProcessor(Landroid/content/Context;)I

    return-void

    .line 3968
    :cond_a
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->unBindEffectAudioProcessor()I

    return-void
.end method

.method public init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15

    .line 356
    new-instance v1, Lcom/ss/android/vesdk/VECameraCapture;

    invoke-direct {v1}, Lcom/ss/android/vesdk/VECameraCapture;-><init>()V

    .line 357
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VECameraCapture;->setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V

    .line 358
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraZoomListener:Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VECameraCapture;->setZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V

    .line 359
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->init(Landroid/content/Context;Lcom/ss/android/vesdk/VECameraSettings;)I

    move-result v0

    if-eqz v0, :cond_1f

    .line 361
    const-string p0, "TECameraVideoRecorder"

    const-string p1, "VECameraCapture init failed"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 364
    :cond_1f
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    .line 365
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Lcom/ss/android/vesdk/VECameraCapture;->isARCoreSupported(Landroid/content/Context;Lcom/ss/android/vesdk/VECameraSettings;)Z

    move-result v7

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->init(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 10

    move-object v0, p1

    .line 418
    new-instance p1, Lcom/ss/android/vesdk/VECameraCapture;

    invoke-direct {p1}, Lcom/ss/android/vesdk/VECameraCapture;-><init>()V

    .line 419
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraStateListener:Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;

    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VECameraCapture;->setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V

    .line 420
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraZoomListener:Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;

    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/VECameraCapture;->setZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V

    .line 421
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Lcom/ss/android/vesdk/VECameraCapture;->init(Landroid/content/Context;Lcom/ss/android/vesdk/VECameraSettings;)I

    move-result v1

    if-eqz v1, :cond_20

    .line 423
    const-string p0, "TECameraVideoRecorder"

    const-string p1, "VECameraCapture init failed"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 426
    :cond_20
    iput-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz p7, :cond_2e

    .line 427
    iget-object p7, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p7, v0}, Lcom/ss/android/vesdk/VECameraCapture;->isARCoreSupported(Landroid/content/Context;Lcom/ss/android/vesdk/VECameraSettings;)Z

    move-result p7

    if-eqz p7, :cond_2e

    const/4 p7, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p7, 0x0

    :goto_2f
    invoke-virtual/range {p0 .. p7}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->init(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    .line 348
    new-instance v0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->build()Lcom/ss/android/vesdk/VEPreviewSettings;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    .line 349
    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->init(Lcom/ss/android/vesdk/VECameraSettings;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public init(Lcom/ss/android/vesdk/camera/ICameraCapture;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEPreviewSettings;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 9

    .line 372
    const-string v0, "TECameraVideoRecorder-init"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->attachCameraCapture(Lcom/ss/android/vesdk/camera/ICameraCapture;)V

    .line 374
    iput-boolean p7, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mIsARCoreSupported:Z

    .line 375
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsARCoreSupported = "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mIsARCoreSupported:Z

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    const-string v0, "TECameraVideoRecorder"

    invoke-static {v0, p7}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p7, 0x0

    if-nez p1, :cond_27

    move-object p1, p7

    goto :goto_2b

    .line 376
    :cond_27
    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getCameraSettings()Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object p1

    :goto_2b
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-eqz p1, :cond_48

    .line 377
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getOutputMode()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    move-result-object p1

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE_FRAME:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    if-ne p1, v0, :cond_48

    .line 379
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object p1

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE1:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    if-eq p1, v0, :cond_48

    .line 380
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;->SURFACE:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VECameraSettings;->setOutPutMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_OUTPUT_MODE;)V

    .line 383
    :cond_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordDirPath:Ljava/lang/String;

    .line 384
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 385
    iput-object p3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    .line 386
    iput-object p4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    .line 387
    iput-object p6, p0, Lcom/ss/android/vesdk/TERecorderBase;->mDetectModelsDir:Ljava/lang/String;

    .line 388
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioRefactor()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableRefactor:Z

    .line 389
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioLengthOpt()Z

    move-result p1

    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioLengthOpt:Z

    .line 390
    iget-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-eqz p1, :cond_7f

    .line 391
    sget-object p1, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->INSTANCE:Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioEncodeSettings:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    invoke-virtual {p1, p2}, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->setAudioEncodeSettings(Lcom/ss/android/vesdk/VEAudioEncodeSettings;)V

    .line 392
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1, p2, p7}, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->setAudioBufferConsumer(Lcom/ss/android/medialib/presenter/MediaRecordPresenter;Lcom/ss/android/vesdk/audio/VEAudioCaptureListener;)V

    .line 394
    :cond_7f
    new-instance p1, Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-direct {p1}, Lcom/ss/android/vesdk/VEAudioCapture;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    .line 395
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->initInternalRecorder()I

    move-result p1

    .line 408
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    const-wide/16 p2, -0x1

    .line 409
    iput-wide p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->voiceHandler:J

    .line 410
    const-string p0, "te_titan_engine"

    const-wide/16 p2, 0x0

    const/4 p4, 0x0

    invoke-static {p4, p0, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return p1
.end method

.method public initAudioConfig(IIIII)I
    .registers 6

    const/4 p0, 0x0

    return p0
.end method

.method public initDuet(Lcom/ss/android/vesdk/VEDuetSettings;)V
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 476
    iget p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    if-nez p1, :cond_b

    .line 477
    sget-object p1, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    return-void

    .line 479
    :cond_b
    sget-object p1, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeRecordMode(Lcom/ss/android/vesdk/VERecordMode;)V

    return-void
.end method

.method public initFaceBeautifyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;)V
    .registers 4

    .line 3636
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-boolean v0, p1, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->algoDebug:Z

    iget-boolean v1, p1, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->alogDespeckle:Z

    iget-boolean p1, p1, Lcom/ss/android/vesdk/algorithm/VEFaceBeautifyDetectExtParam;->algoDespeckleReserve:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initFaceBeautifyDetectExtParam(ZZZ)V

    return-void
.end method

.method public initFaceBeautyDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceBeautyDetectExtParam;)V
    .registers 2

    .line 3631
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/algorithm/VEFaceBeautyDetectExtParam;->isUseV3Model()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initFaceBeautyDetectExtParam(Z)V

    return-void
.end method

.method public initFaceDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;)V
    .registers 4

    .line 3621
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->getDectectIntervalTime()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->isImageMode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->isUseFastModel()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initFaceDetectExtParam(IZZ)V

    return-void
.end method

.method public initHDRNetDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;)V
    .registers 3

    .line 3641
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;->isUseExternalModel()Z

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;->getModelPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initHDRNetDetectExtParam(ZLjava/lang/String;)V

    return-void
.end method

.method public initHandDetectExtParam(Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;)V
    .registers 4

    .line 3626
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;->getHandLowPowerMode()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;->getMode()Lcom/ss/android/vesdk/algorithm/VEHandModelType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/vesdk/algorithm/VEHandModelType;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/algorithm/VEHandDetectExtParam;->getHandDetectMaxNum()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->initHandDetectExtParam(III)V

    return-void
.end method

.method public initWavFile(IID)I
    .registers 5

    .line 4915
    const-string p3, "TECameraVideoRecorder"

    const-string p4, "initWavFile..."

    invoke-static {p3, p4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4916
    iput p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSampleRate:I

    .line 4917
    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mChannels:I

    .line 4918
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;

    if-eqz p0, :cond_13

    const/4 p3, 0x2

    .line 4919
    invoke-interface {p0, p3, p1, p2}, Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;->onStartRecord(III)V

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public isDuetMode()Z
    .registers 3

    .line 1389
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->DUET:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    if-eqz v0, :cond_1a

    .line 1390
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEDuetSettings;->getDuetVideoPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEDuetSettings:Lcom/ss/android/vesdk/VEDuetSettings;

    .line 1391
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEDuetSettings;->getDuetAudioPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z
    .registers 2

    .line 5038
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z

    move-result p0

    return p0
.end method

.method public isReactMode()Z
    .registers 3

    .line 1395
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->REACTION:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    if-eqz v0, :cond_1a

    .line 1396
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEReactSettings;->getReactAudioPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    .line 1397
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEReactSettings;->getReactVideoPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportWideAngle(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public lackPermission()V
    .registers 3

    .line 4981
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 4982
    const-string v1, "lackPermission"

    invoke-interface {p0, v0, v1}, Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;->audioRecorderOpenFailed(ILjava/lang/String;)V

    :cond_a
    return-void
.end method

.method public onAccurateInfo(ID)V
    .registers 5

    packed-switch p1, :pswitch_data_2a

    goto :goto_f

    .line 3199
    :pswitch_4
    iput-wide p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->renderFrameTime:D

    goto :goto_f

    .line 3202
    :pswitch_7
    iput-wide p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->renderEffectTime:D

    goto :goto_f

    .line 3196
    :pswitch_a
    iput-wide p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordPreviewFpsEnd:D

    goto :goto_f

    .line 3193
    :pswitch_d
    iput-wide p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordPreviewFpsStart:D

    .line 3205
    :goto_f
    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_RECORDING_CLIP_TIMESTAMP:I

    if-eq p1, v0, :cond_21

    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_RECORDING_AUDIO_PLAY_BACK_TIMESTAMP:I

    if-eq p1, v0, :cond_21

    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_RECORD_INFO_NO_SPACE_LEFT_ON_DEVICE:I

    if-eq p1, v0, :cond_21

    sget v0, Lcom/ss/android/vesdk/VEInfo;->TE_INFO_TRACK_PLAY_EOF:I

    if-ne p1, v0, :cond_20

    goto :goto_21

    :cond_20
    return-void

    :cond_21
    :goto_21
    double-to-float p2, p2

    .line 3207
    const-string p3, ""

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->onAccurateInfoExt(IIFLjava/lang/String;)V

    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x430
        :pswitch_d
        :pswitch_a
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 4

    .line 1402
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    .line 1406
    :cond_5
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    if-eqz v0, :cond_c

    .line 1407
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEAudioCapture;->clean()V

    .line 1410
    :cond_c
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1411
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSurfaceDestroyed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 1412
    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    .line 1414
    :cond_19
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz v0, :cond_20

    .line 1415
    invoke-virtual {v0, p0}, Lcom/ss/android/vesdk/render/VERenderView;->removeSurfaceCallback(Lcom/ss/android/vesdk/render/VESurfaceCallback;)Z

    .line 1418
    :cond_20
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz v0, :cond_27

    .line 1419
    invoke-interface {v0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->destroy()V

    .line 1422
    :cond_27
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAudioInitCallback(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$AudioInitCallback;)V

    .line 1423
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFaceDetectListener(Lcom/ss/android/medialib/listener/FaceDetectListener;)V

    .line 1424
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->onDestroy()V

    .line 1425
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceListeners:Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 1426
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1429
    :cond_3d
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$20;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$20;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    .line 1439
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_52

    .line 1441
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1443
    :cond_52
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->onDestroy()V

    const/4 v0, 0x0

    .line 1444
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    const/4 v2, 0x1

    .line 1445
    iput-boolean v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDestroyed:Z

    .line 1446
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    .line 1448
    iput-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceResultCallback:Lcom/ss/android/medialib/RecordInvoker$FaceResultCallback;

    .line 1449
    iput-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEPreviewRadioListener:Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;

    .line 1450
    iput-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEffectAudioManagerCallback:Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;

    .line 1451
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return-void
.end method

.method public onError(I)V
    .registers 4

    .line 3112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "running error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x25a

    if-ne p1, v0, :cond_1b

    goto :goto_21

    :cond_1b
    const/16 v0, -0x259

    if-ne p1, v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 3120
    :goto_21
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    instance-of p1, p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz p1, :cond_2e

    .line 3121
    check-cast p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const-string p1, ""

    invoke-interface {p0, v0, p1}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onError(ILjava/lang/String;)V

    :cond_2e
    return-void
.end method

.method public onInfo(II)V
    .registers 7

    const/16 v0, 0x41b

    .line 3127
    const-string v1, "onInfo: "

    const-string v2, "TECameraVideoRecorder"

    if-eq p1, v0, :cond_8d

    const/16 v0, 0x41c

    if-eq p1, v0, :cond_6d

    const/16 v0, 0x42e

    if-eq p1, v0, :cond_62

    const/high16 v0, 0x447a0000    # 1000.0f

    packed-switch p1, :pswitch_data_e8

    goto/16 :goto_ac

    :pswitch_17
    int-to-float v3, p2

    div-float/2addr v3, v0

    .line 3161
    iput v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordWriteFps:F

    goto/16 :goto_ac

    .line 3158
    :pswitch_1d
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordCount:I

    goto/16 :goto_ac

    :pswitch_21
    if-eqz p2, :cond_ac

    int-to-float v3, p2

    div-float/2addr v0, v3

    .line 3154
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewRenderFps:F

    goto/16 :goto_ac

    .line 3150
    :pswitch_29
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagTotalDuration:I

    goto/16 :goto_ac

    .line 3147
    :pswitch_2d
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagMaxDuration:I

    goto/16 :goto_ac

    .line 3144
    :pswitch_31
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewLagCount:I

    goto/16 :goto_ac

    .line 3141
    :pswitch_35
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagTotalDuration:I

    goto/16 :goto_ac

    :pswitch_39
    if-eqz p2, :cond_3f

    int-to-float v3, p2

    div-float/2addr v0, v3

    .line 3136
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordRenderFps:F

    .line 3138
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; TET_RECORD_RENDER_FPS:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordRenderFps:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    .line 3132
    :pswitch_5c
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagMaxDuration:I

    goto :goto_ac

    .line 3129
    :pswitch_5f
    iput p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordLagCount:I

    goto :goto_ac

    .line 3172
    :cond_62
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mConditionRenderExit:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 3173
    const-string v0, "turn to off-screen render"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    :cond_6d
    int-to-float v0, p2

    .line 3168
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordRenderDropFps:F

    .line 3169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; INFO_RECORD_RENDER_DROP_FPS:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->recordRenderDropFps:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    :cond_8d
    int-to-float v0, p2

    .line 3164
    iput v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewDropFps:F

    .line 3165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; INFO_PREVIEW_DROP_FPS:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->previewDropFps:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3176
    :cond_ac
    :goto_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x406

    if-ne p1, v0, :cond_cd

    .line 3179
    const-string v0, "shotScreen..."

    goto :goto_dc

    :cond_cd
    const/16 v0, 0x41a

    if-ne p1, v0, :cond_da

    .line 3181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_dc

    .line 3180
    :cond_da
    const-string v0, ""

    .line 3184
    :goto_dc
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    instance-of v1, p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v1, :cond_e7

    .line 3185
    check-cast p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    invoke-interface {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    :cond_e7
    return-void

    :pswitch_data_e8
    .packed-switch 0x410
        :pswitch_5f
        :pswitch_5c
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_21
        :pswitch_1d
        :pswitch_17
    .end packed-switch
.end method

.method public onNativeInitCallBack(I)V
    .registers 12

    .line 3024
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewInitStartTime:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-string v3, "te_record_preview_init_time"

    invoke-static {v2, v3, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 3026
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isReactMode()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 3027
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 3028
    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v1

    iget v1, v1, Lcom/ss/android/vesdk/VESize;->height:I

    .line 3029
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEReactSettings;->getReactionPosMargin()[F

    move-result-object v3

    .line 3030
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    aget v5, v3, v2

    int-to-float v1, v1

    mul-float/2addr v5, v1

    float-to-int v5, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    mul-float/2addr v6, v1

    float-to-int v6, v6

    const/4 v7, 0x2

    aget v8, v3, v7

    int-to-float v0, v0

    mul-float/2addr v8, v0

    float-to-int v8, v8

    const/4 v9, 0x3

    aget v3, v3, v9

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v4, v5, v6, v8, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setReactionPosMargin(IIII)V

    .line 3034
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v3, v7, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setReactionBorderParam(II)V

    .line 3035
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEReactSettings:Lcom/ss/android/vesdk/VEReactSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEReactSettings;->getReactionInitalRegion()[F

    move-result-object v3

    .line 3036
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    aget v5, v3, v7

    mul-float/2addr v5, v0

    float-to-int v0, v5

    aget v3, v3, v9

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v4, v2, v2, v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->updateReactionCameraPos(IIII)[I

    :cond_5b
    if-nez p1, :cond_1bc

    .line 3041
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isEffectInternalSettingDisabled()Z

    move-result v0

    if-nez v0, :cond_1a0

    .line 3042
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/BeautyBean;->getType()I

    move-result v0

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

    invoke-virtual {v1}, Lcom/ss/android/ttve/model/BeautyBean;->getResPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setBeautyFace(ILjava/lang/String;)I

    .line 3043
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/BeautyBean;->getSmoothIntensity()F

    move-result v0

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

    invoke-virtual {v1}, Lcom/ss/android/ttve/model/BeautyBean;->getBrightenIntensity()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setBeautyFaceIntensity(FF)I

    .line 3044
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->ismUseEffectV3()Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 3045
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getRightResPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 3046
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getRightResPath()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getPosition()F

    move-result v6

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getIntensity()F

    move-result v7

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getRightIntensity()F

    move-result v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)V

    goto/16 :goto_13f

    :cond_c7
    move-object v3, p0

    .line 3047
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13f

    .line 3048
    iget-object p0, v3, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v1}, Lcom/ss/android/ttve/model/FilterBean;->getIntensity()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFilterNew(Ljava/lang/String;F)V

    goto :goto_13f

    :cond_e6
    move-object v3, p0

    .line 3051
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_115

    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/FilterBean;->getRightResPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_115

    .line 3052
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getRightResPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v1}, Lcom/ss/android/ttve/model/FilterBean;->getPosition()F

    move-result v1

    invoke-virtual {v3, p0, v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFilter(Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_13f

    .line 3053
    :cond_115
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13f

    .line 3054
    iget-object p0, v3, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getLeftResPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFilter(Ljava/lang/String;)V

    .line 3055
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/FilterBean;->useFilterResIntensity()Z

    move-result p0

    if-nez p0, :cond_13f

    .line 3056
    iget-object p0, v3, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FilterBean;->getIntensity()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFilterIntensity(F)I

    .line 3060
    :cond_13f
    :goto_13f
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->getResPath()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->getEyeIntensity()F

    move-result v0

    iget-object v1, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v1}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->getCheekIntensity()F

    move-result v1

    invoke-virtual {v3, p0, v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFaceReshape(Ljava/lang/String;FF)I

    .line 3061
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->getResPath()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->getIntensityDict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setReshapeParam(Ljava/lang/String;Ljava/util/Map;)I

    .line 3062
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/FaceMakeupBean;->getResPath()Ljava/lang/String;

    move-result-object p0

    iget-object v0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {v0}, Lcom/ss/android/ttve/model/FaceMakeupBean;->getLipStickIntensity()F

    move-result v0

    iget-object v1, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {v1}, Lcom/ss/android/ttve/model/FaceMakeupBean;->getBlusherIntensity()F

    move-result v1

    invoke-virtual {v3, p0, v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFaceMakeUp(Ljava/lang/String;FF)I

    .line 3063
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/FaceMakeupBean;->getResPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19a

    .line 3064
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/FaceMakeupBean;->getNasolabialIntensity()F

    move-result p0

    const/16 v0, 0x13

    invoke-virtual {v3, v0, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setBeautyIntensity(IF)I

    .line 3065
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {p0}, Lcom/ss/android/ttve/model/FaceMakeupBean;->getPouchIntensity()F

    move-result p0

    const/16 v0, 0x14

    invoke-virtual {v3, v0, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setBeautyIntensity(IF)I

    .line 3067
    :cond_19a
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCurEffectRequest:Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;

    invoke-virtual {v3, p0}, Lcom/ss/android/vesdk/TERecorderBase;->switchEffect(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I

    goto :goto_1a1

    :cond_1a0
    move-object v3, p0

    .line 3069
    :goto_1a1
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mOnFrameAvailableListenerExt:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;

    if-nez p0, :cond_1ac

    .line 3070
    iget-object p0, v3, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setOnFrameAvailableListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;)V

    goto :goto_1c4

    .line 3072
    :cond_1ac
    invoke-interface {p0}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;->config()Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;

    move-result-object p0

    .line 3074
    iget-object v0, v3, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {v0, v3, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setOnFrameAvailableListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;I)V

    goto :goto_1c4

    :cond_1bc
    move-object v3, p0

    .line 3077
    const-string p0, "TECameraVideoRecorder"

    const-string v0, "Create native GL env failed"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    :goto_1c4
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    if-eqz p0, :cond_1dc

    .line 3081
    const-string v0, "onNativeInitCallBack"

    invoke-interface {p0, p1, v0}, Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;->onNativeInit(ILjava/lang/String;)V

    .line 3082
    iget-object p0, v3, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    instance-of v0, p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v0, :cond_1dc

    .line 3083
    check-cast p0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const/16 v0, 0x3ea

    const-string v1, "Init onNativeInitCallBack"

    invoke-interface {p0, v0, p1, v1}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    .line 3088
    :cond_1dc
    const-string p0, "te_record_preview_init_ret"

    int-to-long v0, p1

    invoke-static {v2, p0, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 3089
    iget-object p0, v3, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object p1, v3, Lcom/ss/android/vesdk/TERecorderBase;->mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V

    return-void
.end method

.method public onNativeInitHardEncoderRetCallback(II)V
    .registers 8

    .line 3094
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_22

    if-nez p1, :cond_a

    move v2, v1

    goto :goto_b

    :cond_a
    move v2, v0

    .line 3097
    :goto_b
    invoke-interface {p2, v2}, Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;->onHardEncoderInit(Z)V

    .line 3098
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    instance-of v3, p2, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v3, :cond_22

    .line 3099
    check-cast p2, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v2, :cond_1a

    move v2, v1

    goto :goto_1b

    :cond_1a
    const/4 v2, -0x1

    .line 3100
    :goto_1b
    const-string v3, "Init HardEncode"

    const/16 v4, 0x3eb

    .line 3099
    invoke-interface {p2, v4, v2, v3}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    .line 3104
    :cond_22
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHwEnc()Z

    move-result p0

    if-eqz p0, :cond_36

    if-ne p1, v1, :cond_2f

    const-wide/16 p0, -0x1

    goto :goto_31

    :cond_2f
    const-wide/16 p0, 0x0

    .line 3105
    :goto_31
    const-string p2, "te_record_hard_encode_init_ret"

    invoke-static {v0, p2, p0, p1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    :cond_36
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 5328
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    if-eqz p0, :cond_7

    .line 5329
    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->onPause()V

    :cond_7
    return-void
.end method

.method public onProcessData([BIJ)I
    .registers 5

    const/4 p0, 0x0

    return p0
.end method

.method public onSlam(Z)V
    .registers 3

    .line 4895
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVESlamDetectListeners:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object p0

    .line 4896
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;

    if-eqz v0, :cond_a

    .line 4898
    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/VERecorder$VESlamDetectListener;->onSlam(Z)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public pauseEffectAudio(Z)V
    .registers 2

    .line 3945
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->pauseEffectAudio(Z)V

    return-void
.end method

.method public pauseMediaRecord()V
    .registers 2

    const/4 v0, 0x2

    .line 5184
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeRecorderState(I)V

    return-void
.end method

.method public pausePlayTrack(II)I
    .registers 4

    .line 1858
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda2;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;II)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public pausePrePlay()I
    .registers 1

    .line 1913
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->pausePrePlay()I

    move-result p0

    return p0
.end method

.method public pauseRender()I
    .registers 1

    .line 5088
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->pauseRender()I

    move-result p0

    return p0
.end method

.method public pauseRenderAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    .line 5060
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$65;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$65;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public posInReactionRegion(II)Z
    .registers 3

    .line 590
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->posInReactionRegion(II)Z

    move-result p0

    .line 591
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "posInReactionRegion "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TECameraVideoRecorder"

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public preSurfaceCreated()V
    .registers 3

    .line 673
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    .line 674
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUsePreSurfaceCreated:Z

    .line 675
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordInAsyncMode:Z

    .line 676
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$6;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$6;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    .line 684
    :cond_1f
    const-string v0, "TECameraVideoRecorder"

    const-string v1, "preSurfaceCreated"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->openCamera()V

    return-void
.end method

.method public preventTextureRender(Z)V
    .registers 2

    .line 2497
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreventTextureRender:Z

    return-void
.end method

.method public previewDuetVideo()Z
    .registers 1

    .line 485
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->previewDuetVideo()Z

    move-result p0

    return p0
.end method

.method public processTouchEvent(FF)I
    .registers 3

    .line 3804
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->processTouchEvent(FF)I

    move-result p0

    return p0
.end method

.method public processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z
    .registers 3

    .line 5033
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z

    move-result p0

    return p0
.end method

.method public queryShaderStep()F
    .registers 1

    .line 2705
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_9

    .line 2706
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->queryShaderZoomAbility()F

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public queryZoomAbility()I
    .registers 1

    .line 2697
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_9

    .line 2698
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->queryZoomAbility()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public recordStatus(Z)V
    .registers 2

    .line 5011
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;

    if-eqz p0, :cond_7

    .line 5012
    invoke-interface {p0}, Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;->onAudioRecordError()V

    :cond_7
    return-void
.end method

.method public recoverCherEffect(Lcom/ss/android/vesdk/VECherEffectParam;)V
    .registers 4

    .line 3746
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECherEffectParam;->getMatrix()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECherEffectParam;->getDuration()[D

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VECherEffectParam;->getSegUseCher()[Z

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->recoverCherEffect([Ljava/lang/String;[D[Z)V

    return-void
.end method

.method public regEffectAlgorithmCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V
    .registers 3

    .line 3596
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regEffectAlgorithmCallback(Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V

    .line 3598
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$39;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$39;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VEEffectAlgorithmCallback;)V

    .line 3609
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->registerEffectAlgorithmCallback(Lcom/ss/android/medialib/RecordInvoker$EffectAlgorithmCallback;)V

    return-void
.end method

.method public regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
    .registers 3

    .line 3513
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    .line 3514
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceListeners:Ljava/util/List;

    if-nez v0, :cond_e

    .line 3515
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceListeners:Ljava/util/List;

    .line 3517
    :cond_e
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3519
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceResultCallback:Lcom/ss/android/medialib/RecordInvoker$FaceResultCallback;

    if-nez p1, :cond_1e

    .line 3520
    new-instance p1, Lcom/ss/android/vesdk/TECameraVideoRecorder$38;

    invoke-direct {p1, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$38;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceResultCallback:Lcom/ss/android/medialib/RecordInvoker$FaceResultCallback;

    .line 3530
    :cond_1e
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceResultCallback:Lcom/ss/android/medialib/RecordInvoker$FaceResultCallback;

    invoke-virtual {p1, v0, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->registerFaceResultCallback(ZLcom/ss/android/medialib/RecordInvoker$FaceResultCallback;)V

    return-void
.end method

.method public regHandDetectCallback([ILcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;)V
    .registers 4

    .line 3704
    invoke-super {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->regHandDetectCallback([ILcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;)V

    .line 3705
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$43;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder$43;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VEHandDetectCallback;)V

    .line 3711
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->registerHandDetectCallback([ILcom/ss/android/medialib/RecordInvoker$OnHandDetectCallback;)V

    return-void
.end method

.method public regSceneDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;)V
    .registers 3

    .line 3716
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regSceneDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;)V

    .line 3717
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$44;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$44;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VESceneDetectCallback;)V

    .line 3723
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->registerSceneDetectCallback(Lcom/ss/android/medialib/RecordInvoker$OnSceneDetectCallback;)V

    return-void
.end method

.method public regSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V
    .registers 3

    .line 3668
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regSkeletonDetectCallback(Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V

    .line 3669
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$41;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$41;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VESkeletonDetectCallback;)V

    .line 3675
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->registerSkeletonDetectCallback(Lcom/ss/android/medialib/RecordInvoker$OnSkeletonDetectCallback;)V

    return-void
.end method

.method public regSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V
    .registers 3

    .line 3686
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->regSmartBeautyCallback(Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V

    .line 3687
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$42;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$42;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VESmartBeautyCallback;)V

    .line 3693
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->registerSmartBeautyCallback(Lcom/ss/android/medialib/RecordInvoker$OnSmartBeautyCallback;)V

    return-void
.end method

.method public registerCherEffectParamCallback(Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;)V
    .registers 3

    .line 3734
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->registerCherEffectParamCallback(Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;)V

    .line 3735
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$45;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$45;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VECherEffectParamCallback;)V

    .line 3741
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->registerCherEffectParamCallback(Lcom/ss/android/medialib/RecordInvoker$OnCherEffectParmaCallback;)V

    return-void
.end method

.method public releaseGPUResources()V
    .registers 1

    .line 896
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->releaseGPUResources()V

    return-void
.end method

.method public releaseGPUResourcesAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    .line 901
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$12;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$12;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reloadComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 4799
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->reloadComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 4809
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->removeComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
    .registers 5

    .line 3542
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->removeFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    .line 3543
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceListeners:Ljava/util/List;

    if-eqz v0, :cond_30

    .line 3544
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3545
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3546
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    .line 3547
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3548
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 3551
    :cond_23
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 3552
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->unRegisterFaceResultCallback()V

    :cond_30
    return-void
.end method

.method public removeLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 2

    .line 3932
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->removeLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V

    return-void
.end method

.method public removeTrack(II)I
    .registers 11

    .line 1832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTrack trackIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trackType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isKaraoke()Z

    move-result v0

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseAudioGraph:Z

    if-eqz v0, :cond_2a

    :cond_28
    move-object v1, p0

    goto :goto_38

    .line 1836
    :cond_2a
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupBgmPath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupTrimIn:J

    iget-wide v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupTrimOut:J

    iget v7, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mBackupBgmType:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setRecordBGM(Ljava/lang/String;JJI)I

    move-result p0

    return p0

    .line 1834
    :goto_38
    iget-object p0, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->removeTrack(II)I

    move-result p0

    return p0
.end method

.method public renderFrame(Landroid/graphics/Bitmap;IIZLcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V
    .registers 9

    move-object v0, p1

    .line 4720
    new-instance p1, Lcom/ss/android/medialib/camera/ImageFrame;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>(Landroid/graphics/Bitmap;I)V

    .line 4721
    invoke-virtual {p1, p2}, Lcom/ss/android/medialib/camera/ImageFrame;->setWidth(I)V

    .line 4722
    invoke-virtual {p1, p3}, Lcom/ss/android/medialib/camera/ImageFrame;->setHeight(I)V

    if-eqz p4, :cond_22

    .line 4726
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->calculateCaptureRenderSize(II)Lcom/ss/android/vesdk/VESize;

    move-result-object p2

    .line 4727
    iget p3, p2, Lcom/ss/android/vesdk/VESize;->height:I

    .line 4728
    iget p2, p2, Lcom/ss/android/vesdk/VESize;->width:I

    move v2, p3

    move p3, p2

    move p2, v2

    :cond_22
    if-eqz p5, :cond_2b

    .line 4732
    new-instance p4, Lcom/ss/android/vesdk/TECameraVideoRecorder$64;

    invoke-direct {p4, p0, p5}, Lcom/ss/android/vesdk/TECameraVideoRecorder$64;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V

    :goto_29
    move-object p5, p4

    goto :goto_2d

    :cond_2b
    const/4 p4, 0x0

    goto :goto_29

    .line 4744
    :goto_2d
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 p4, 0x0

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IIILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;)V

    return-void
.end method

.method public renderFrame(Lcom/ss/android/ttve/model/VEFrame;IILcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V
    .registers 11

    .line 4671
    invoke-static {p1}, Lcom/ss/android/vesdk/utils/TEFrameUtils;->VEFrame2ImageFrame(Lcom/ss/android/ttve/model/VEFrame;)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object v1

    .line 4672
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    new-instance v5, Lcom/ss/android/vesdk/TECameraVideoRecorder$62;

    invoke-direct {v5, p0, p4}, Lcom/ss/android/vesdk/TECameraVideoRecorder$62;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VEFrameRenderCallback;)V

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IIILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;)V

    return-void
.end method

.method public renderFrame(Ljava/lang/String;)V
    .registers 9

    .line 4693
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4694
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4695
    new-instance v2, Lcom/ss/android/medialib/camera/ImageFrame;

    const/4 v1, 0x2

    invoke-direct {v2, p1, v1}, Lcom/ss/android/medialib/camera/ImageFrame;-><init>(Landroid/graphics/Bitmap;I)V

    .line 4696
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v1}, Lcom/ss/android/medialib/camera/ImageFrame;->setHeight(I)V

    .line 4697
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v2, v0}, Lcom/ss/android/medialib/camera/ImageFrame;->setWidth(I)V

    .line 4699
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v2}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v4

    new-instance v6, Lcom/ss/android/vesdk/TECameraVideoRecorder$63;

    invoke-direct {v6, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$63;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IIILcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallbackV2;)V

    return-void
.end method

.method public replaceComposerNodes([Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 5

    .line 4814
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->replaceComposerNodes([Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public resumeMediaRecord()V
    .registers 2

    const/4 v0, 0x3

    .line 5191
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeRecorderState(I)V

    return-void
.end method

.method public rotateReactionWindow(F)F
    .registers 3

    .line 568
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->rotateReactionWindow(F)F

    move-result p0

    .line 569
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rotateReactionWindow "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TECameraVideoRecorder"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public runTask(Ljava/lang/Runnable;)V
    .registers 3

    .line 1883
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$31;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$31;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scaleReactionWindow(F)[I
    .registers 3

    .line 561
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->scaleReactionWindow(F)[I

    move-result-object p0

    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scaleReactionWindow "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TECameraVideoRecorder"

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public seekTrack(IIJ)I
    .registers 7

    .line 1873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTrack trackIndex "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " trackType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timeInMS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->seekTrack(IIJ)I

    move-result p0

    return p0
.end method

.method public sendEffectMsg(IJJLjava/lang/String;)V
    .registers 7

    .line 3757
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual/range {p0 .. p6}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->sendEffectMsg(IJJLjava/lang/String;)V

    return-void
.end method

.method public setAlgorithmChangeMsgEnable(IZ)V
    .registers 3

    .line 3989
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAlgorithmChangeMsg(IZ)V

    return-void
.end method

.method public setAlgorithmPreConfig(II)I
    .registers 3

    .line 4789
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAlgorithmPreConfig(II)I

    move-result p0

    return p0
.end method

.method public setAudioDevice(Z)V
    .registers 2

    .line 1197
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setAudioDevice(Z)V

    .line 1198
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setAudioDevice(Z)I

    return-void
.end method

.method public setBeautyFace(ILjava/lang/String;)I
    .registers 4

    .line 3356
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/BeautyBean;->setType(I)V

    .line 3357
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/BeautyBean;->setResPath(Ljava/lang/String;)V

    .line 3359
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setBeautyFace(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setBeautyFaceIntensity(FF)I
    .registers 4

    .line 3365
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/BeautyBean;->setSmoothIntensity(F)V

    .line 3366
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/BeautyBean;->setbrightenIntensity(F)V

    .line 3368
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setBeautyFace(FF)V

    const/4 p0, 0x0

    return p0
.end method

.method public setBeautyIntensity(IF)I
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_34

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_28

    packed-switch p1, :pswitch_data_46

    goto :goto_3f

    .line 3460
    :pswitch_10
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FaceMakeupBean;->setPouchIntensity(F)V

    goto :goto_3f

    .line 3457
    :pswitch_16
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FaceMakeupBean;->setNasolabialIntensity(F)V

    goto :goto_3f

    .line 3454
    :pswitch_1c
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FaceMakeupBean;->setBlusherIntensity(F)V

    goto :goto_3f

    .line 3451
    :pswitch_22
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FaceMakeupBean;->setLipStickIntensity(F)V

    goto :goto_3f

    .line 3448
    :cond_28
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->setCheekIntensity(F)V

    goto :goto_3f

    .line 3445
    :cond_2e
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->setEyeIntensity(F)V

    goto :goto_3f

    .line 3442
    :cond_34
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/BeautyBean;->setSmoothIntensity(F)V

    goto :goto_3f

    .line 3439
    :cond_3a
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurBeauty:Lcom/ss/android/ttve/model/BeautyBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/BeautyBean;->setbrightenIntensity(F)V

    .line 3464
    :goto_3f
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setBeautyIntensity(IF)I

    const/4 p0, 0x0

    return p0

    :pswitch_data_46
    .packed-switch 0x11
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method public setBgmMute(Z)V
    .registers 2

    .line 3999
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setBgmMute(Z)V

    return-void
.end method

.method public setCameraClose(Z)V
    .registers 2

    .line 4910
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCameraClose(Z)V

    return-void
.end method

.method public setCameraFirstFrameOptimize(Z)V
    .registers 2

    .line 3485
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCameraFirstFrameOptimize(Z)V

    return-void
.end method

.method public setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V
    .registers 2

    .line 2435
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V

    .line 2436
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_a

    .line 2437
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;)V

    :cond_a
    return-void
.end method

.method public setCameraZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V
    .registers 2

    .line 2411
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setCameraZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V

    .line 2412
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_a

    .line 2413
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setZoomListener(Lcom/ss/android/vesdk/VERecorder$VECameraZoomListener;)V

    :cond_a
    return-void
.end method

.method public setCaptureMirror(I)V
    .registers 2

    .line 4754
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCaptureMirror(I)V

    return-void
.end method

.method public setCaptureMirror(Z)V
    .registers 2

    .line 4749
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCaptureMirror(Z)V

    return-void
.end method

.method public setCaptureResize(Z[I[I)V
    .registers 4

    .line 4759
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCaptureResize(Z[I[I)V

    return-void
.end method

.method public setClientState(I)V
    .registers 2

    .line 4905
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setClientState(I)V

    return-void
.end method

.method public setCommonCallback(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 2

    return-void
.end method

.method public setComposerMode(II)I
    .registers 3

    .line 4794
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setComposerMode(II)I

    move-result p0

    return p0
.end method

.method public setComposerNodes([Ljava/lang/String;I)I
    .registers 3

    .line 4774
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setComposerNodes([Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setComposerResourcePath(Ljava/lang/String;)I
    .registers 2

    .line 4769
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setComposerResourcePath(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V
    .registers 2

    .line 5459
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

    .line 5460
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V

    return-void
.end method

.method public setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomVideoBg, key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Gif path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$5;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomVideoBg: videoPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", audioPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVERecordMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v1, Lcom/ss/android/vesdk/VERecordMode;->CUSTOM_VIDEO_BG:Lcom/ss/android/vesdk/VERecordMode;

    if-eq v0, v1, :cond_35

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    .line 629
    :cond_35
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/ss/android/vesdk/TECameraVideoRecorder$4;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDLEEnable(Z)V
    .registers 2

    .line 4026
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setDLEEnable(Z)V

    return-void
.end method

.method public setDebugSettings(Lcom/ss/android/vesdk/VEDebugSettings;)V
    .registers 2

    .line 5335
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEDebugSettings:Lcom/ss/android/vesdk/VEDebugSettings;

    .line 5336
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setDebugSettings(Lcom/ss/android/vesdk/VEDebugSettings;)V

    return-void
.end method

.method public setDetectInterval(I)V
    .registers 2

    .line 4881
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setDetectInterval(I)V

    return-void
.end method

.method public setDetectListener(Lcom/ss/android/vesdk/VERecorder$DetectListener;I)V
    .registers 4

    .line 3767
    invoke-super {p0, p1, p2}, Lcom/ss/android/vesdk/TERecorderBase;->setDetectListener(Lcom/ss/android/vesdk/VERecorder$DetectListener;I)V

    .line 3768
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$46;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$46;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$DetectListener;)V

    invoke-virtual {p2, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFaceDetectListener(Lcom/ss/android/medialib/listener/FaceDetectListener;)V

    return-void
.end method

.method public setDetectionMode(Z)V
    .registers 2

    .line 3253
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setDetectionMode(Z)V

    return-void
.end method

.method public setDeviceRotation(I)V
    .registers 2

    .line 1814
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setDeviceRotation(I)V

    .line 1815
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_a

    .line 1816
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setDeviceRotation(I)V

    :cond_a
    return-void
.end method

.method public setDeviceRotation([F)V
    .registers 2

    .line 3780
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setDeviceRotation([F)V

    return-void
.end method

.method public setDeviceRotation([FD)V
    .registers 4

    .line 3784
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setDeviceRotation([FD)V

    return-void
.end method

.method public setDisplaySettings(Lcom/ss/android/vesdk/VEDisplaySettings;)I
    .registers 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1946
    iput-boolean v1, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseMultiPreviewRadio:Z

    if-eqz p1, :cond_a

    const/16 v19, 0x1

    goto :goto_c

    :cond_a
    move/from16 v19, v1

    :goto_c
    if-nez p1, :cond_22

    .line 1949
    new-instance v3, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    invoke-direct {v3}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;-><init>()V

    iget-object v4, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEPreviewSettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEDisplaySettings$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEDisplaySettings$Builder;->build()Lcom/ss/android/vesdk/VEDisplaySettings;

    move-result-object v3

    goto :goto_24

    :cond_22
    move-object/from16 v3, p1

    .line 1951
    :goto_24
    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRenderSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    .line 1952
    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEDisplaySettings;->getLayoutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v5

    .line 1953
    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEDisplaySettings;->getCamOutSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v6

    .line 1955
    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEDisplaySettings;->getDisplayRatioMode()Lcom/ss/android/vesdk/VEPreviewRadio;

    move-result-object v7

    if-eqz v7, :cond_66

    .line 1957
    iget-boolean v8, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanRetrySetDisplaySettings:Z

    if-nez v8, :cond_4c

    iget-object v8, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVeDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    if-eqz v8, :cond_4c

    invoke-virtual {v8, v3}, Lcom/ss/android/vesdk/VEDisplaySettings;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    .line 1958
    const-string v0, "TECameraVideoRecorder"

    const-string v2, "set same display settings..."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1962
    :cond_4c
    iput-boolean v1, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanRetrySetDisplaySettings:Z

    .line 1963
    iput-object v3, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVeDisplaySettings:Lcom/ss/android/vesdk/VEDisplaySettings;

    .line 1964
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    iput v8, v0, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    .line 1965
    invoke-virtual {v4}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result v8

    if-eqz v8, :cond_66

    .line 1966
    iget v8, v4, Lcom/ss/android/vesdk/VESize;->height:I

    .line 1967
    iget v9, v4, Lcom/ss/android/vesdk/VESize;->width:I

    .line 1968
    iget-object v10, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    iput v8, v10, Lcom/ss/android/vesdk/VESize;->width:I

    .line 1969
    iput v9, v10, Lcom/ss/android/vesdk/VESize;->height:I

    :cond_66
    move-object v8, v3

    .line 1973
    iget-object v3, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v8}, Lcom/ss/android/vesdk/VEDisplaySettings;->getFitMode()Lcom/ss/android/vesdk/VEDisplaySettings$VEDisplayFitMode;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    invoke-virtual {v8}, Lcom/ss/android/vesdk/VEDisplaySettings;->getBackgroundColor()J

    move-result-wide v10

    move-object v12, v7

    invoke-virtual {v8}, Lcom/ss/android/vesdk/VEDisplaySettings;->getDisplayRatio()F

    move-result v7

    move-object v13, v8

    invoke-virtual {v13}, Lcom/ss/android/vesdk/VEDisplaySettings;->getRotation()I

    move-result v8

    if-nez v4, :cond_83

    move v14, v1

    goto :goto_85

    .line 1974
    :cond_83
    iget v14, v4, Lcom/ss/android/vesdk/VESize;->width:I

    :goto_85
    if-nez v4, :cond_88

    goto :goto_8a

    :cond_88
    iget v1, v4, Lcom/ss/android/vesdk/VESize;->height:I

    :goto_8a
    invoke-virtual {v13}, Lcom/ss/android/vesdk/VEDisplaySettings;->getDisplayEffect()Lcom/ss/android/vesdk/VEDisplaySettings$VEDisPlayEffect;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    move-object v15, v12

    invoke-virtual {v13}, Lcom/ss/android/vesdk/VEDisplaySettings;->getEffectIntensity()F

    move-result v12

    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Lcom/ss/android/vesdk/VEDisplaySettings;->getTranslateX()I

    move-result v13

    invoke-virtual/range {v16 .. v16}, Lcom/ss/android/vesdk/VEDisplaySettings;->getTranslateY()I

    move-result v16

    move-object/from16 v17, v15

    iget v15, v5, Lcom/ss/android/vesdk/VESize;->width:I

    iget v5, v5, Lcom/ss/android/vesdk/VESize;->height:I

    iget v2, v6, Lcom/ss/android/vesdk/VESize;->width:I

    iget v6, v6, Lcom/ss/android/vesdk/VESize;->height:I

    move/from16 p1, v1

    if-eqz v17, :cond_c5

    .line 1975
    iget v1, v0, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    :goto_b1
    move/from16 v20, v1

    move/from16 v17, v2

    move/from16 v18, v6

    move-wide/from16 v21, v10

    move/from16 v10, p1

    move v11, v4

    move v4, v9

    move v9, v14

    move/from16 v14, v16

    move/from16 v16, v5

    move-wide/from16 v5, v21

    goto :goto_c7

    :cond_c5
    const/4 v1, -0x1

    goto :goto_b1

    .line 1973
    :goto_c7
    invoke-virtual/range {v3 .. v20}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setDisplaySettings(IJFIIIIFIIIIIIZI)I

    move-result v1

    if-eqz v1, :cond_d0

    const/4 v2, 0x1

    .line 1977
    iput-boolean v2, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCanRetrySetDisplaySettings:Z

    :cond_d0
    return v1
.end method

.method public setDropFrame(I)V
    .registers 2

    .line 1804
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setDropFrames(I)V

    return-void
.end method

.method public setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V
    .registers 2

    .line 1759
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEffectAudioManagerCallback(Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;)Z
    .registers 5

    .line 5356
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEffectAudioManagerCallback:Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;

    .line 5357
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/ss/android/vesdk/TECameraVideoRecorder$72;

    invoke-direct {v2, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$72;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$AudioManagerCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEffectAudioManagerCallback(Landroid/content/Context;Lcom/ss/android/medialib/listener/AudioManagerCallback;)Z

    move-result p0

    return p0
.end method

.method public setEffectBgmEnable(Z)V
    .registers 2

    .line 3258
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableEffectBGM(Z)V

    return-void
.end method

.method public setEffectMaxMemoryCache(I)I
    .registers 2

    .line 4890
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEffectMaxMemoryCache(I)I

    move-result p0

    return p0
.end method

.method public setEffectMessageListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .registers 2

    .line 3762
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEffectMessageListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    return-void
.end method

.method public setEffectSlamEnable(Z)V
    .registers 2

    .line 3794
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableSlam(Z)V

    return-void
.end method

.method setEnableAEC(ZLjava/lang/String;)I
    .registers 3

    .line 1465
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnableAEC:Z

    .line 1466
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAECModelPath:Ljava/lang/String;

    .line 1467
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEnableAEC(ZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setEnableDuetV2(Z)V
    .registers 2

    .line 5048
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setEnableDuetV2(Z)V

    return-void
.end method

.method public setEnableEarBack(Z)I
    .registers 3

    .line 1479
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableRefactor:Z

    if-eqz v0, :cond_6

    .line 1480
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mEnableEarBack:Z

    .line 1482
    :cond_6
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$21;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$21;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setEnableLoudness(ZI)I
    .registers 3

    .line 1472
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableLoudness:Z

    .line 1473
    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTargetLoudness:I

    .line 1474
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setLoudness(ZI)I

    move-result p0

    return p0
.end method

.method public setExposureCompensation(I)V
    .registers 2

    .line 2679
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_7

    .line 2680
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setExposureCompensation(I)V

    :cond_7
    return-void
.end method

.method public setExternalFaceMakeupOpacity(Ljava/lang/String;FF)V
    .registers 4

    .line 4019
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setExternalFaceMakeupOpacity(Ljava/lang/String;FF)V

    return-void
.end method

.method public setFaceMakeUp(Ljava/lang/String;)I
    .registers 3

    .line 3429
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/FaceMakeupBean;->setResPath(Ljava/lang/String;)V

    .line 3431
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-static {p1}, Lcom/ss/android/vesdk/utils/VETextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFaceMakeUp(Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setFaceMakeUp(Ljava/lang/String;FF)I
    .registers 5

    .line 3418
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/FaceMakeupBean;->setResPath(Ljava/lang/String;)V

    .line 3419
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FaceMakeupBean;->setLipStickIntensity(F)V

    .line 3420
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurMakeup:Lcom/ss/android/ttve/model/FaceMakeupBean;

    invoke-virtual {v0, p3}, Lcom/ss/android/ttve/model/FaceMakeupBean;->setBlusherIntensity(F)V

    .line 3422
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-static {p1}, Lcom/ss/android/vesdk/utils/VETextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFaceMakeUp(Ljava/lang/String;FF)I

    const/4 p0, 0x0

    return p0
.end method

.method public setFaceReshape(Ljava/lang/String;FF)I
    .registers 5

    .line 3374
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->setResPath(Ljava/lang/String;)V

    .line 3375
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->setEyeIntensity(F)V

    .line 3376
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0, p3}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->setCheekIntensity(F)V

    .line 3378
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-static {p1}, Lcom/ss/android/vesdk/utils/VETextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setReshape(Ljava/lang/String;FF)I

    const/4 p0, 0x0

    return p0
.end method

.method public setFilter(Ljava/lang/String;FZ)I
    .registers 6

    .line 3283
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/FilterBean;->setLeftResPath(Ljava/lang/String;)V

    .line 3284
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FilterBean;->setIntensity(F)V

    .line 3285
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FilterBean;->setRightIntensity(F)V

    .line 3286
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p3}, Lcom/ss/android/ttve/model/FilterBean;->setUseFilterResIntensity(Z)V

    .line 3287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 3288
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFilter(Ljava/lang/String;)V

    return v1

    .line 3292
    :cond_23
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFilter(Ljava/lang/String;)V

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_3a

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_3a

    if-nez p3, :cond_3a

    .line 3294
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFilterIntensity(F)I

    :cond_3a
    return v1
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 6

    .line 3301
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/FilterBean;->setLeftResPath(Ljava/lang/String;)V

    .line 3302
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FilterBean;->setRightResPath(Ljava/lang/String;)V

    .line 3303
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p3}, Lcom/ss/android/ttve/model/FilterBean;->setPosition(F)V

    .line 3304
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/FilterBean;->setUseFilterResIntensity(Z)V

    .line 3306
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-static {p1}, Lcom/ss/android/vesdk/utils/VETextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3307
    invoke-static {p2}, Lcom/ss/android/vesdk/utils/VETextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3306
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFilter(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public setFilterNew(Ljava/lang/String;F)I
    .registers 6

    .line 3263
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/FilterBean;->setLeftResPath(Ljava/lang/String;)V

    .line 3264
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/FilterBean;->setRightResPath(Ljava/lang/String;)V

    .line 3265
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FilterBean;->setIntensity(F)V

    .line 3266
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FilterBean;->setRightIntensity(F)V

    .line 3267
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/FilterBean;->setUseFilterResIntensity(Z)V

    .line 3268
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/model/FilterBean;->setPosition(F)V

    .line 3269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 3270
    const-string p1, ""

    .line 3272
    :cond_29
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFilterNew(Ljava/lang/String;F)V

    return v1
.end method

.method public setFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)V
    .registers 8

    .line 3312
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/FilterBean;->setLeftResPath(Ljava/lang/String;)V

    .line 3313
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/FilterBean;->setRightResPath(Ljava/lang/String;)V

    .line 3314
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p3}, Lcom/ss/android/ttve/model/FilterBean;->setPosition(F)V

    .line 3315
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p4}, Lcom/ss/android/ttve/model/FilterBean;->setIntensity(F)V

    .line 3316
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, p5}, Lcom/ss/android/ttve/model/FilterBean;->setRightIntensity(F)V

    .line 3317
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/FilterBean;->setUseFilterResIntensity(Z)V

    .line 3318
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurFilter:Lcom/ss/android/ttve/model/FilterBean;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/model/FilterBean;->setmUseEffectV3(Z)V

    .line 3320
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-static {p1}, Lcom/ss/android/vesdk/utils/VETextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3321
    invoke-static {p2}, Lcom/ss/android/vesdk/utils/VETextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3320
    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)V

    return-void
.end method

.method public setFocus(FF)V
    .registers 6

    .line 2546
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/ss/android/vesdk/render/VERenderView;->getWidth()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 2547
    :goto_b
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Lcom/ss/android/vesdk/render/VERenderView;->getHeight()I

    move-result v1

    .line 2548
    :cond_13
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFocus(FFII)V

    return-void
.end method

.method public setFocus(FFII)V
    .registers 11

    .line 2643
    new-instance v0, Lcom/ss/android/vesdk/VEFocusSettings$Builder;

    float-to-int v1, p1

    float-to-int v2, p2

    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    .line 2646
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v5, p1, Landroid/util/DisplayMetrics;->density:F

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/VEFocusSettings$Builder;-><init>(IIIIF)V

    .line 2647
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEFocusSettings$Builder;->build()Lcom/ss/android/vesdk/VEFocusSettings;

    move-result-object p1

    .line 2648
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V

    return-void
.end method

.method public setFocus(Lcom/ss/android/vesdk/VEFocusSettings;)V
    .registers 2

    .line 2653
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_8

    .line 2654
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->focusAtPoint(Lcom/ss/android/vesdk/VEFocusSettings;)I

    return-void

    .line 2656
    :cond_8
    const-string p0, "TECameraVideoRecorder"

    const-string p1, "no Camera capture to setFocus"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFocusWithFaceDetect()V
    .registers 3

    const/4 v0, 0x3

    .line 2554
    filled-new-array {v0}, [I

    move-result-object v0

    .line 2555
    new-instance v1, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;

    invoke-direct {v1, p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$34;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;[I)V

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    return-void
.end method

.method public setFocusWithFaceDetect(Lcom/ss/android/vesdk/VEFocusSettings;)V
    .registers 3

    const/4 v0, 0x1

    .line 2590
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseFaceDetectFocus:Z

    const/4 v0, 0x3

    .line 2591
    iput v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceDetectCount:I

    .line 2592
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEFocusSetting:Lcom/ss/android/vesdk/VEFocusSettings;

    .line 2593
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    if-nez p1, :cond_16

    .line 2594
    new-instance p1, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;

    invoke-direct {p1, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$35;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFocusFaceInfoCallback:Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    .line 2637
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V

    :cond_16
    return-void
.end method

.method public setForceAlgorithmEnableCount(I)V
    .registers 2

    .line 5378
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setForceAlgorithmEnableCount(I)V

    return-void
.end method

.method public setForceAlgorithmExecuteCount(I)V
    .registers 2

    .line 3974
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setForceAlgorithmExecuteCount(I)V

    return-void
.end method

.method public setHandDetectLowpowerEnable(Z)V
    .registers 2

    .line 3984
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setHandDetectLowpower(Z)I

    return-void
.end method

.method public setImageExposure(F)V
    .registers 2

    .line 4764
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setImageExposure(F)V

    return-void
.end method

.method public setLargeMattingModelEnable(Z)V
    .registers 2

    .line 3979
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->useLargeMattingModel(Z)V

    return-void
.end method

.method public setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V
    .registers 4

    .line 5217
    iput-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderLensCallback:Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

    .line 5218
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$68;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder$68;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V

    .line 5232
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;)V

    return-void
.end method

.method public setMaleMakeupState(Z)I
    .registers 2

    .line 1040
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMaleMakeupState(Z)I

    move-result p0

    return p0
.end method

.method public setMockPreviewSettings(Landroid/graphics/Bitmap;II)V
    .registers 4

    .line 4715
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMockPreviewSettings(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public setMusicNodes(Ljava/lang/String;)V
    .registers 2

    .line 3994
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicNodes(Ljava/lang/String;)I

    return-void
.end method

.method public setOnFrameAvailableListenerExt(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V
    .registers 3

    .line 1764
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setOnFrameAvailableListenerExt(Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;)V

    if-nez p1, :cond_c

    .line 1767
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setOnFrameAvailableListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;)V

    return-void

    .line 1769
    :cond_c
    invoke-interface {p1}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;->config()Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;

    move-result-object v0

    if-nez v0, :cond_18

    .line 1770
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setOnFrameAvailableListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;)V

    return-void

    .line 1772
    :cond_18
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 1773
    invoke-interface {p1}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;->config()Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;

    move-result-object p1

    iget-object p1, p1, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;->format:Lcom/ss/android/ttve/model/VEFrame$ETEPixelFormat;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 1772
    invoke-virtual {v0, p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setOnFrameAvailableListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnFrameAvailableListener;I)V

    return-void
.end method

.method public setOnInfoListener(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 2

    .line 1785
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mInfoMsgListener:Lcom/ss/android/vesdk/VECommonCallback;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 1786
    :goto_7
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->enableTimestampCallback(Z)V

    return-void
.end method

.method public setOnPreviewDataCallbackListener(Lcom/ss/android/vesdk/VERecorder$OnPreviewDataCallbackListener;)V
    .registers 2

    .line 5439
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setOnPreviewDataCallbackListener(Lcom/ss/android/vesdk/VERecorder$OnPreviewDataCallbackListener;)V

    if-eqz p1, :cond_b

    .line 5442
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setOnPreviewDataCallbackListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;)V

    return-void

    .line 5444
    :cond_b
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setOnPreviewDataCallbackListener(Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPreviewDataCallbackListener;)V

    return-void
.end method

.method public setPaddingBottomInRatio34(F)V
    .registers 2

    .line 1034
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setPaddingBottomInRatio34(F)V

    .line 1035
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setPaddingBottomInRatio34(F)V

    return-void
.end method

.method public setPerfTimingByKey(Ljava/lang/String;J)V
    .registers 4

    .line 5449
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setPerfTimingByKey(Ljava/lang/String;J)V

    return-void
.end method

.method public setPreSavePcmSize(I)V
    .registers 2

    .line 2388
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setPreSaveSize(I)V

    return-void
.end method

.method public setPreviewDuetVideoPaused(Z)V
    .registers 2

    .line 495
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setPreviewDuetVideoPaused(Z)V

    return-void
.end method

.method public setPreviewRadioListener(Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;)V
    .registers 3

    .line 3656
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setPreviewRadioListener(Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;)V

    .line 3657
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$40;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$40;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VEPreviewRadioListener;)V

    .line 3663
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setPreviewRadioListener(Lcom/ss/android/medialib/RecordInvoker$OnPreviewRadioListener;)V

    return-void
.end method

.method public setPreviewRatio(IFLcom/ss/android/vesdk/VESize;Lcom/ss/android/vesdk/VESize;)V
    .registers 7

    .line 992
    iput p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mPreviewRadioMode:I

    const/4 v0, 0x1

    .line 993
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseMultiPreviewRadio:Z

    .line 994
    invoke-virtual {p4}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 995
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRenderSize:Lcom/ss/android/vesdk/VESize;

    iget v1, p4, Lcom/ss/android/vesdk/VESize;->height:I

    iput v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 996
    iget p4, p4, Lcom/ss/android/vesdk/VESize;->width:I

    iput p4, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 998
    :cond_15
    iget-object p4, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCameraSettings:Lcom/ss/android/vesdk/VECameraSettings;

    if-nez p4, :cond_1a

    goto :goto_66

    :cond_1a
    const/4 p4, 0x0

    cmpg-float p4, p2, p4

    if-gtz p4, :cond_55

    .line 1003
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p2, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changePreviewRadioMode(I)V

    .line 1004
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VESize;->isValid()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 1005
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    iget p2, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p1, p2, p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changeOutputVideoSize(II)V

    return-void

    .line 1007
    :cond_38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mVideoOutputSize is not valid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVideoOutputSize:Lcom/ss/android/vesdk/VESize;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VESize;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraVideoRecorder"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1011
    :cond_55
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/ConcurrentList;->clear()V

    .line 1012
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    check-cast p1, Lcom/ss/android/vesdk/VECameraCapture;

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/vesdk/VECameraCapture;->setPreviewRatio(FLcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 1014
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mPreviewSize:Lcom/ss/android/vesdk/VESize;

    :cond_66
    :goto_66
    return-void
.end method

.method public setPreviewRotation(I)V
    .registers 2

    .line 1809
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setPreviewRotation(I)V

    return-void
.end method

.method public setReactPosMarginInVideoRecordPixel(IIII)V
    .registers 5

    .line 528
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setReactionPosMargin(IIII)V

    return-void
.end method

.method public setReactionBorderParam(II)V
    .registers 3

    .line 523
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setReactionBorderParam(II)V

    return-void
.end method

.method public setReactionMaskImagePath(Ljava/lang/String;Z)Z
    .registers 3

    .line 583
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setReactionMaskImage(Ljava/lang/String;Z)Z

    move-result p0

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setReactionMaskImagePath "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TECameraVideoRecorder"

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public setRecordBGM(Ljava/lang/String;JJI)I
    .registers 15

    .line 734
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/vesdk/TECameraVideoRecorder$8;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/lang/String;JJI)V

    .line 786
    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setRecordMaxDuration(J)V
    .registers 3

    .line 2403
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setRecordMaxDuration(J)I

    return-void
.end method

.method public setRecordPrepareTime(J)I
    .registers 3

    .line 1878
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setRecordPrepareTime(J)I

    move-result p0

    return p0
.end method

.method public setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3960
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3955
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReshapeIntensity(IF)I
    .registers 4

    .line 3385
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->setReshapeIntensity(IF)V

    .line 3387
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setIntensityByType(IF)I

    const/4 p0, 0x0

    return p0
.end method

.method public setReshapeIntensityDict(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    .line 3401
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->setIntensityDict(Ljava/util/Map;)V

    .line 3403
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setReshapeIntensityDict(Ljava/util/Map;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setReshapeParam(Ljava/lang/String;Ljava/util/Map;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)I"
        }
    .end annotation

    .line 3409
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->setResPath(Ljava/lang/String;)V

    .line 3410
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->setIntensityDict(Ljava/util/Map;)V

    .line 3412
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setReshapeParam(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setReshapeResource(Ljava/lang/String;)I
    .registers 3

    .line 3393
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurReShape:Lcom/ss/android/ttve/model/ReshapeFaceBean;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/model/ReshapeFaceBean;->setResPath(Ljava/lang/String;)V

    .line 3395
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setReshapeResource(Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setSATZoomListener(Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;)V
    .registers 2

    .line 2427
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setSATZoomListener(Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;)V

    .line 2428
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_a

    .line 2429
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setSATZoomListener(Lcom/ss/android/vesdk/VERecorder$VESATZoomListener;)V

    :cond_a
    return-void
.end method

.method public setSafeArea(I[Lcom/ss/android/vesdk/VESafeAreaParams;)I
    .registers 3

    .line 5322
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSafeArea(I[Lcom/ss/android/vesdk/VESafeAreaParams;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setScanArea(FFFF)V
    .registers 5

    .line 5018
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setScanArea(FFFF)V

    return-void
.end method

.method public setShaderZoomListener(Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;)V
    .registers 2

    .line 2419
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setShaderZoomListener(Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;)V

    .line 2420
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_a

    .line 2421
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->setShaderZoomListener(Lcom/ss/android/vesdk/VERecorder$VEShaderZoomListener;)V

    :cond_a
    return-void
.end method

.method public setSharedTextureStatus(Z)Z
    .registers 2

    .line 3470
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSharedTextureStatus(Z)Z

    move-result p0

    return p0
.end method

.method public setSkinTone(Ljava/lang/String;)I
    .registers 2

    .line 3503
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-static {p1}, Lcom/ss/android/vesdk/utils/VETextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSkinTone(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setSkinToneIntensity(F)I
    .registers 2

    .line 3508
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSkinToneIntensity(F)I

    move-result p0

    return p0
.end method

.method public setSlamFace(Landroid/graphics/Bitmap;)I
    .registers 2

    .line 3906
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSlamFace(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)V
    .registers 2

    .line 3498
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mStickerRequestCallback:Lcom/ss/android/medialib/presenter/IStickerRequestCallback;

    return-void
.end method

.method public setSwapDuetRegion(Z)V
    .registers 2

    .line 508
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSwapDuetRegion(Z)V

    return-void
.end method

.method public setSwapReactionRegion(Z)V
    .registers 2

    .line 513
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setSwapReactionRegion(Z)V

    return-void
.end method

.method public setUseMultiPreviewRatio(Z)V
    .registers 2

    .line 5387
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseMultiPreviewRadio:Z

    .line 5388
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setUseMultiPreviewRatio(Z)V

    return-void
.end method

.method public setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I
    .registers 2

    .line 4838
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0
.end method

.method public setVideoBgSpeed(D)V
    .registers 4

    .line 605
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder$3;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;D)V

    .line 618
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setVideoEncodeRotation(I)V
    .registers 2

    .line 1045
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setVideoEncodeRotation(I)V

    return-void
.end method

.method public setVolume(Lcom/ss/android/vesdk/VEVolumeParam;)V
    .registers 5

    .line 1795
    iget v0, p1, Lcom/ss/android/vesdk/VEVolumeParam;->bgmPlayVolume:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_f

    .line 1796
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v2, p1, Lcom/ss/android/vesdk/VEVolumeParam;->trackIndex:I

    invoke-virtual {v1, v0, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicVolume(FI)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 1799
    :cond_f
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-boolean p1, p1, Lcom/ss/android/vesdk/VEVolumeParam;->enhanceSysPlayVolume:Z

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enhanceSysVolume(Z)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    return-void
.end method

.method public setWaterMark(Lcom/ss/android/vesdk/VEWatermarkParam;)V
    .registers 13

    .line 3581
    invoke-super {p0, p1}, Lcom/ss/android/vesdk/TERecorderBase;->setWaterMark(Lcom/ss/android/vesdk/VEWatermarkParam;)V

    .line 3582
    iget-object v1, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->waterMarkBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_21

    .line 3583
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->images:[Ljava/lang/String;

    iget v4, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->width:I

    iget v5, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->height:I

    iget v6, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->xOffset:I

    iget v7, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->yOffset:I

    iget-object p0, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    iget v9, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->interval:I

    iget v10, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    invoke-virtual/range {v2 .. v10}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setWaterMark([Ljava/lang/String;IIIIIII)V

    return-void

    .line 3585
    :cond_21
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v2, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->width:I

    iget v3, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->height:I

    iget v4, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->xOffset:I

    iget v5, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->yOffset:I

    iget-object p0, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    iget v7, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->interval:I

    iget v8, p1, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setWaterMark(Landroid/graphics/Bitmap;IIIIIII)V

    return-void
.end method

.method public shotScreen(IIZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;ZLcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;Z)I
    .registers 11

    .line 4177
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz v0, :cond_38

    .line 4181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-object v2, p4

    .line 4182
    new-instance p4, Lcom/ss/android/vesdk/TECameraVideoRecorder$54;

    invoke-direct {p4, p0, v0, v1, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder$54;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;JLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V

    if-eqz p3, :cond_1b

    if-eqz p5, :cond_1b

    if-eqz p6, :cond_1b

    .line 4198
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$55;

    invoke-direct {v0, p0, p6}, Lcom/ss/android/vesdk/TECameraVideoRecorder$55;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;)V

    :goto_19
    move-object p6, v0

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    :goto_1d
    if-eqz p3, :cond_24

    if-eqz p5, :cond_24

    const/4 p5, 0x1

    :goto_22
    move-object v0, p0

    goto :goto_26

    :cond_24
    const/4 p5, 0x0

    goto :goto_22

    .line 4208
    :goto_26
    iget-object p0, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v0, v0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isSyncCapture()Z

    move-result v0

    filled-new-array {p1, p2}, [I

    move-result-object p2

    move p1, v0

    invoke-virtual/range {p0 .. p7}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotHDScreen(Z[IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;ZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;Z)I

    move-result p0

    return p0

    .line 4178
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No Camera capture to capture"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shotScreen(IIZZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)I
    .registers 12

    .line 4152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4153
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;

    move-object v1, p0

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder$53;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;JZLcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;)V

    .line 4171
    iget-object p0, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    filled-new-array {p1, p2}, [I

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotScreen([IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;Z)I

    move-result p0

    return p0
.end method

.method public shotScreen(Lcom/ss/android/vesdk/VEShotScreenSettings;)I
    .registers 15

    .line 4213
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mHasFirstFrameCaptured:Z

    const-string v1, "TECameraVideoRecorder"

    if-nez v0, :cond_1c

    .line 4214
    const-string p0, "mHasFirstFrameCaptured is false"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4215
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getScreenCallback()Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    move-result-object p0

    const v0, -0x186a2

    if-eqz p0, :cond_1b

    .line 4216
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getScreenCallback()Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;->onShotScreen(I)V

    :cond_1b
    return v0

    .line 4221
    :cond_1c
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getTargetResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 4223
    const-string p0, "size is null, can not shotscreen"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    .line 4227
    :cond_2a
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getBitmapCallback()Lcom/ss/android/vesdk/VERecorder$IBitmapShotScreenCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b6

    .line 4228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 4229
    new-instance v8, Lcom/ss/android/vesdk/TECameraVideoRecorder$56;

    invoke-direct {v8, p0, v3, v4, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$56;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;JLcom/ss/android/vesdk/VEShotScreenSettings;)V

    .line 4244
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getFrameCallback()Lcom/ss/android/vesdk/VERecorder$IVEFrameShotScreenCallback;

    move-result-object v1

    if-eqz v1, :cond_9f

    .line 4247
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedEffect()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedOriginPic()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 4248
    new-instance v1, Lcom/ss/android/vesdk/TECameraVideoRecorder$57;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$57;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEShotScreenSettings;)V

    :goto_51
    move-object v9, v1

    goto :goto_55

    :cond_53
    const/4 v1, 0x0

    goto :goto_51

    .line 4257
    :goto_55
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedEffect()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedOriginPic()Z

    move-result v1

    if-eqz v1, :cond_62

    const/4 v2, 0x1

    :cond_62
    move v10, v2

    .line 4258
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedTwoFrame()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 4259
    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget p0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    filled-new-array {p0, v0}, [I

    move-result-object v6

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedEffect()Z

    move-result v7

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedDelay()Z

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotScreen([IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;Lcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;Z)I

    move-result p0

    return p0

    .line 4261
    :cond_80
    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEPreviewSettings;->isSyncCapture()Z

    move-result v6

    iget p0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    filled-new-array {p0, v0}, [I

    move-result-object v7

    move-object v11, v9

    move-object v9, v8

    .line 4262
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedEffect()Z

    move-result v8

    .line 4264
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isEnableUpscaleShot()Z

    move-result v12

    .line 4261
    invoke-virtual/range {v5 .. v12}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotHDScreen(Z[IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;ZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnVEFrameCallback;Z)I

    move-result p0

    return p0

    .line 4267
    :cond_9f
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedEffect()Z

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedDelay()Z

    move-result p1

    invoke-virtual {p0, v0, v1, v8, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotScreen([IZLcom/ss/android/medialib/presenter/MediaRecordPresenter$OnPictureCallback;Z)I

    move-result p0

    return p0

    .line 4269
    :cond_b6
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e0

    .line 4270
    new-instance v8, Lcom/ss/android/vesdk/TECameraVideoRecorder$58;

    invoke-direct {v8, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$58;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEShotScreenSettings;)V

    .line 4278
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getFileName()Ljava/lang/String;

    move-result-object v4

    iget p0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    filled-new-array {p0, v0}, [I

    move-result-object v5

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedEffect()Z

    move-result v6

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v7

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEShotScreenSettings;->isNeedDelay()Z

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotScreen(Ljava/lang/String;[IZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I

    move-result p0

    return p0

    :cond_e0
    return v2
.end method

.method public shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)I
    .registers 9

    .line 4079
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mHasFirstFrameCaptured:Z

    if-nez v0, :cond_12

    .line 4080
    const-string p0, "TECameraVideoRecorder"

    const-string p1, "mHasFirstFrameCaptured is false"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a2

    .line 4081
    invoke-interface {p7, p0}, Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;->onShotScreen(I)V

    return p0

    :cond_12
    move v0, p4

    move p4, p5

    move-object p5, p6

    .line 4085
    new-instance p6, Lcom/ss/android/vesdk/TECameraVideoRecorder$50;

    invoke-direct {p6, p0, p7, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$50;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;Z)V

    .line 4094
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    filled-new-array {p2, p3}, [I

    move-result-object p3

    const/4 p7, 0x0

    move-object p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p7}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->shotScreen(Ljava/lang/String;[IZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I

    move-result p0

    return p0
.end method

.method public shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;Z)I
    .registers 9

    .line 4073
    invoke-virtual/range {p0 .. p7}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->shotScreen(Ljava/lang/String;IIZZLandroid/graphics/Bitmap$CompressFormat;Lcom/ss/android/vesdk/VERecorder$IShotScreenCallback;)I

    move-result p0

    return p0
.end method

.method public shouldFrameRendered()Z
    .registers 2

    .line 3243
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mOnFrameAvailableListenerExt:Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;

    if-eqz p0, :cond_14

    .line 3245
    invoke-interface {p0}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;->config()Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3246
    invoke-interface {p0}, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt;->config()Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;

    move-result-object p0

    iget-boolean p0, p0, Lcom/ss/android/vesdk/VERecorder$OnFrameAvailableListenerExt$Config;->shouldFrameRendered:Z

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public slamDeviceConfig(ZZZZ)I
    .registers 5

    .line 3799
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamDeviceConfig(ZZZZ)I

    move-result p0

    return p0
.end method

.method public slamGetTextBitmap(Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)I
    .registers 4

    .line 3892
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    new-instance v1, Lcom/ss/android/vesdk/TECameraVideoRecorder$49;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$49;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$OnARTextBitmapCallback;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamGetTextBitmap(Lcom/ss/android/medialib/RecordInvoker$OnARTextBitmapCallback;)I

    const/4 p0, 0x0

    return p0
.end method

.method public slamGetTextLimitCount(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I
    .registers 4

    .line 3869
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    new-instance v1, Lcom/ss/android/vesdk/TECameraVideoRecorder$47;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$47;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamGetTextLimitCount(Lcom/ss/android/medialib/RecordInvoker$OnARTextCountCallback;)I

    move-result p0

    return p0
.end method

.method public slamGetTextParagraphContent(Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)I
    .registers 4

    .line 3881
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    new-instance v1, Lcom/ss/android/vesdk/TECameraVideoRecorder$48;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$48;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$OnARTextCallback;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamGetTextParagraphContent(Lcom/ss/android/medialib/RecordInvoker$OnARTextContentCallback;)I

    move-result p0

    return p0
.end method

.method public slamNotifyHideKeyBoard(Z)I
    .registers 2

    .line 3859
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamNotifyHideKeyBoard(Z)I

    move-result p0

    return p0
.end method

.method public slamProcessDoubleClickEvent(FF)I
    .registers 3

    .line 3849
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamProcessDoubleClickEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestAcc(DDDD)I
    .registers 9

    .line 3809
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamProcessIngestAcc(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGra(DDDD)I
    .registers 9

    .line 3819
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamProcessIngestGra(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGyr(DDDD)I
    .registers 9

    .line 3814
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual/range {p0 .. p8}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamProcessIngestGyr(DDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestOri([DD)I
    .registers 4

    .line 3824
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamProcessIngestOri([DD)I

    move-result p0

    return p0
.end method

.method public slamProcessPanEvent(FFFFF)I
    .registers 6

    .line 3834
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamProcessPanEvent(FFFFF)I

    move-result p0

    return p0
.end method

.method public slamProcessRotationEvent(FF)I
    .registers 3

    .line 3844
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamProcessRotationEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessScaleEvent(FF)I
    .registers 3

    .line 3839
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamProcessScaleEvent(FF)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEventByType(IFFI)I
    .registers 5

    .line 3829
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamProcessTouchEventByType(IFFI)I

    move-result p0

    return p0
.end method

.method public slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I
    .registers 5

    .line 3854
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public slamSetLanguage(Ljava/lang/String;)I
    .registers 2

    .line 3864
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->slamSetLanguage(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public startAudioRecorder()V
    .registers 2

    const/4 v0, 0x0

    .line 1600
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->startAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public startAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 4

    .line 1569
    const-string v0, "mVEAudioCapture startAudioRecorder"

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableRefactor:Z

    if-eqz v0, :cond_30

    .line 1571
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-eqz v0, :cond_10

    return-void

    .line 1574
    :cond_10
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->audioNeedStart()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1575
    const-string p0, "mVEAudioCapture audioNeedStart: false"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1578
    :cond_1e
    const-string v0, "startAudioRecorder"

    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->initAudioCaptureIfNeed(Ljava/lang/String;)Z

    .line 1579
    const-string v0, "mVEAudioCapture start: startAudioRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 1581
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEAudioCapture;->start(Lcom/bytedance/bpea/basics/Cert;)I

    return-void

    .line 1584
    :cond_30
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$24;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$24;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/bytedance/bpea/basics/Cert;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startCameraPreview()V
    .registers 2

    .line 2443
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz v0, :cond_a

    .line 2444
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-interface {v0, p0}, Lcom/ss/android/vesdk/camera/ICameraPreview;->start(Lcom/ss/android/vesdk/ConcurrentList;)I

    return-void

    .line 2446
    :cond_a
    const-string p0, "TECameraVideoRecorder"

    const-string v0, "No Camera capture to startCameraPreview"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startCameraPreview(Lcom/ss/android/vesdk/camera/ICameraPreview;)V
    .registers 6

    if-eqz p1, :cond_43

    .line 2454
    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getPreviewSize()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    .line 2456
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/vesdk/frame/TECapturePipeline;

    .line 2457
    invoke-virtual {v2}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->isPreview()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    if-eqz v0, :cond_3e

    if-eqz v2, :cond_3e

    .line 2463
    invoke-virtual {v2}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 2464
    invoke-virtual {v2}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    iget v3, v0, Lcom/ss/android/vesdk/VESize;->width:I

    iput v3, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    .line 2465
    invoke-virtual {v2}, Lcom/ss/android/vesdk/frame/TECapturePipeline;->getSize()Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object v1

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    iput v0, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    .line 2467
    :cond_3e
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCapturePipelines:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-interface {p1, p0}, Lcom/ss/android/vesdk/camera/ICameraPreview;->start(Lcom/ss/android/vesdk/ConcurrentList;)I

    :cond_43
    return-void
.end method

.method public startMediaRecord(Ljava/lang/String;Lcom/ss/android/vesdk/camera/ICameraCapture;)V
    .registers 5

    .line 5137
    invoke-interface {p2}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getCameraSettings()Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object v0

    .line 5138
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mMediaRecorder:Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;

    invoke-virtual {v1, p1}, Lcom/ss/android/ttvecamera/mediarecorder/TEMediaRecorder;->setFileName(Ljava/lang/String;)V

    .line 5139
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object p1

    sget-object v0, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_CamKit:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_16

    .line 5140
    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeRecorderState(I)V

    return-void

    .line 5143
    :cond_16
    iget-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraKitStateCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;

    if-nez p1, :cond_21

    .line 5144
    new-instance p1, Lcom/ss/android/vesdk/TECameraVideoRecorder$67;

    invoke-direct {p1, p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder$67;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraKitStateCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;

    .line 5166
    :cond_21
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraKitStateCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;

    invoke-interface {p2, v1, p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->changeRecorderState(ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)V

    return-void
.end method

.method public startMicError()V
    .registers 5

    .line 4997
    const-string v0, "te_record_audio_mic_start_ret"

    const-wide/16 v1, 0x425

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 4998
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    if-eqz v0, :cond_20

    .line 4999
    instance-of v1, v0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v1, :cond_20

    .line 5001
    check-cast v0, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const/16 v1, 0x425

    const-string v2, "start audio record error."

    invoke-interface {v0, v1, v3, v2}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    .line 5003
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAudioRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;

    if-eqz p0, :cond_20

    .line 5004
    invoke-interface {p0, v1, v2}, Lcom/ss/android/vesdk/VEListener$VEAudioRecorderStateListener;->audioRecorderOpenFailed(ILjava/lang/String;)V

    :cond_20
    return-void
.end method

.method public startPlayTrack(IIZ)I
    .registers 5

    .line 1842
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ss/android/vesdk/TECameraVideoRecorder$$ExternalSyntheticLambda1;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;IIZ)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public startPrePlay(Lcom/ss/android/vesdk/model/VEPrePlayParams;)I
    .registers 3

    .line 1895
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$32;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/model/VEPrePlayParams;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public startPreview(Landroid/view/Surface;)V
    .registers 3

    .line 869
    const-string v0, "startPreview"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 870
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordInAsyncMode:Z

    .line 871
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mHasFirstFrameCaptured:Z

    .line 872
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->openCamera()V

    .line 873
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->startRecordPreview(Landroid/view/Surface;)I

    .line 874
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return-void
.end method

.method public startPreviewAsync(Landroid/view/Surface;Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 4

    .line 879
    const-string v0, "startPreviewAsync"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 880
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordInAsyncMode:Z

    .line 881
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder$11;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/view/Surface;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    .line 890
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->openCamera()V

    .line 891
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    return-void
.end method

.method public declared-synchronized startRecord(F)I
    .registers 26

    move-object/from16 v1, p0

    move/from16 v0, p1

    monitor-enter p0

    .line 1069
    :try_start_5
    const-string v2, "startRecordTiming1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setPerfTimingByKey(Ljava/lang/String;J)V

    .line 1070
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2b

    if-nez v2, :cond_16

    .line 1071
    monitor-exit p0

    const/16 v0, -0x6c

    return v0

    .line 1074
    :cond_16
    :try_start_16
    iget v2, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v4, :cond_63

    .line 1075
    iget-object v6, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordingMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v7, Lcom/ss/android/vesdk/VERecordMode;->KARAOKE_PURE_AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    const/4 v8, 0x4

    if-eq v6, v7, :cond_2e

    iget-object v6, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    sget-object v7, Lcom/ss/android/vesdk/VERecordMode;->AUDIO:Lcom/ss/android/vesdk/VERecordMode;

    if-ne v6, v7, :cond_30

    goto :goto_2e

    :catchall_2b
    move-exception v0

    goto/16 :goto_211

    :cond_2e
    :goto_2e
    if-eq v2, v5, :cond_5f

    .line 1076
    :cond_30
    const-string v0, "TECameraVideoRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeStartRecord called in a invalid state: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "should be : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    iget v0, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I
    :try_end_52
    .catchall {:try_start_16 .. :try_end_52} :catchall_2b

    if-eq v0, v3, :cond_5b

    if-ne v0, v8, :cond_57

    goto :goto_5b

    .line 1081
    :cond_57
    monitor-exit p0

    const/16 v0, -0x69

    return v0

    .line 1079
    :cond_5b
    :goto_5b
    monitor-exit p0

    const/16 v0, -0x73

    return v0

    .line 1083
    :cond_5f
    :try_start_5f
    invoke-direct {v1, v8}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->updateRecordStatus(I)V

    goto :goto_66

    .line 1086
    :cond_63
    invoke-direct {v1, v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->updateRecordStatus(I)V

    .line 1088
    :goto_66
    const-string v2, "startRecord"

    invoke-static {v2}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 1089
    iget-boolean v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-eqz v2, :cond_78

    iget-boolean v2, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioLengthOpt:Z

    if-eqz v2, :cond_78

    .line 1090
    sget-object v2, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->INSTANCE:Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->startFeedPCM()V

    .line 1092
    :cond_78
    invoke-direct {v1, v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->checkChangeAudioRecord(I)V

    .line 1093
    iget-object v2, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, v1, Lcom/ss/android/vesdk/TERecorderBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->getAudioType(Z)I

    move-result v6

    invoke-virtual {v2, v3, v6, v1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->changeAudioRecord(Landroid/content/Context;ILorg/libsdl/app/AudioRecorderInterface;)I

    .line 1094
    iput v0, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSpeed:F

    .line 1095
    iget-object v2, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-wide v6, v1, Lcom/ss/android/vesdk/TERecorderBase;->mTrimIn:J

    iget-wide v8, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setMusicTime(JJ)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 1096
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBitrateMode()Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    move-result-object v2

    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_CRF:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    if-ne v2, v3, :cond_b5

    .line 1097
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwCRF()I

    move-result v2

    .line 1098
    iget-object v6, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v7, 0xc

    if-lt v2, v7, :cond_b0

    goto :goto_b1

    :cond_b0
    move v2, v7

    :goto_b1
    invoke-virtual {v6, v3, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setVideoQuality(II)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    goto :goto_c6

    .line 1100
    :cond_b5
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwQP()I

    move-result v2

    .line 1101
    iget-object v3, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    sget-object v6, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;->ENCODE_BITRATE_QP:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v3, v6, v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setVideoQuality(II)Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    .line 1104
    :goto_c6
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBps()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x4a800000    # 4194304.0f

    div-float v10, v2, v3

    .line 1106
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getEncodeProfile()I

    move-result v2

    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_MAIN:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_e4

    :goto_e2
    move v12, v4

    goto :goto_f6

    .line 1108
    :cond_e4
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getEncodeProfile()I

    move-result v2

    sget-object v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_HIGH:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_f5

    const/16 v4, 0x8

    goto :goto_e2

    :cond_f5
    move v12, v5

    .line 1111
    :goto_f6
    iget-object v2, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-boolean v3, v1, Lcom/ss/android/vesdk/TERecorderBase;->mEnableWaterMark:Z

    invoke-virtual {v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->enableWaterMark(Z)V

    .line 1112
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVEWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

    if-eqz v2, :cond_152

    .line 1113
    iget-object v14, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->waterMarkBitmap:Landroid/graphics/Bitmap;

    if-nez v14, :cond_12f

    .line 1114
    iget-object v15, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->images:[Ljava/lang/String;

    iget v4, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->width:I

    iget v6, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->height:I

    iget v7, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->xOffset:I

    iget v8, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->yOffset:I

    iget-object v2, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVEWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

    iget v9, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->interval:I

    iget v2, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    move/from16 v23, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v22, v9

    invoke-virtual/range {v15 .. v23}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setWaterMark([Ljava/lang/String;IIIIIII)V

    goto :goto_152

    .line 1116
    :cond_12f
    iget-object v13, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget v15, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->width:I

    iget v3, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->height:I

    iget v4, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->xOffset:I

    iget v6, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->yOffset:I

    iget-object v2, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->position:Lcom/ss/android/vesdk/VEWaterMarkPosition;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVEWatermarkParam:Lcom/ss/android/vesdk/VEWatermarkParam;

    iget v7, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->interval:I

    iget v2, v2, Lcom/ss/android/vesdk/VEWatermarkParam;->rotation:I

    move/from16 v21, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v6

    move/from16 v20, v7

    invoke-virtual/range {v13 .. v21}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setWaterMark(Landroid/graphics/Bitmap;IIIIIII)V

    .line 1119
    :cond_152
    :goto_152
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioRecordStateCallback:Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;

    invoke-direct {v1, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setAudioRecordStateCallack(Lcom/ss/android/vesdk/VEListener$VEAudioRecordStateCallback;)V

    .line 1120
    invoke-direct {v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isRefactorAudioCapture()Z

    move-result v2

    if-eqz v2, :cond_17c

    iget-boolean v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-nez v2, :cond_17c

    iget-object v2, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->checkIfUseRecordAudio()Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 1121
    const-string v2, "startRecord"

    invoke-direct {v1, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->initAudioCaptureIfNeed(Ljava/lang/String;)Z

    .line 1122
    const-string v2, "TECameraVideoRecorder"

    const-string v3, "mVEAudioCapture start: startRecord"

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object v2, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    iget-object v3, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v2, v3}, Lcom/ss/android/vesdk/VEAudioCapture;->start(Lcom/bytedance/bpea/basics/Cert;)I

    .line 1126
    :cond_17c
    iget-object v2, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getFrameRate()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setVideoFrameRate(I)V

    .line 1127
    iget-object v2, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object v3, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getIFrameInterval()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setVideoIFrameInterval(I)V

    .line 1128
    iget-object v6, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    float-to-double v7, v0

    iget-object v0, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHwEnc()Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    iget-object v0, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    .line 1129
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getDescription()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/ss/android/vesdk/TERecorderBase;->mVideoEncodeSettings:Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getComment()Ljava/lang/String;

    move-result-object v15

    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 1128
    invoke-virtual/range {v6 .. v15}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->startRecord(DZFIIZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c7

    .line 1131
    const-string v2, "TECameraVideoRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeStartRecord error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    :cond_1c7
    const-string v2, "te_titan_engine"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v5, v2, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1135
    const-string v2, "te_record_start_record_ret"

    int-to-long v6, v0

    invoke-static {v5, v2, v6, v7}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1137
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TESystemUtils;->getOutputAudioDeviceType()I

    move-result v2

    .line 1138
    const-string v6, "te_record_audio_device"

    int-to-long v7, v2

    invoke-static {v5, v6, v7, v8}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1139
    const-string v5, "TECameraVideoRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "output audio device: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const-string v2, "te_record_audio_device"

    invoke-static {v2, v7, v8}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;J)V

    .line 1142
    sget-object v2, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1fd
    .catchall {:try_start_5f .. :try_end_1fd} :catchall_2b

    .line 1143
    :try_start_1fd
    iput-wide v3, v1, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordingSegmentTime:J

    .line 1144
    monitor-exit v2
    :try_end_200
    .catchall {:try_start_1fd .. :try_end_200} :catchall_20e

    .line 1145
    :try_start_200
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    .line 1146
    const-string v2, "startRecordTiming4"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setPerfTimingByKey(Ljava/lang/String;J)V
    :try_end_20c
    .catchall {:try_start_200 .. :try_end_20c} :catchall_2b

    .line 1147
    monitor-exit p0

    return v0

    :catchall_20e
    move-exception v0

    .line 1144
    :try_start_20f
    monitor-exit v2
    :try_end_210
    .catchall {:try_start_20f .. :try_end_210} :catchall_20e

    :try_start_210
    throw v0

    :goto_211
    monitor-exit p0
    :try_end_212
    .catchall {:try_start_210 .. :try_end_212} :catchall_2b

    throw v0
.end method

.method public startRecord(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 4

    .line 1064
    invoke-virtual {p0, p3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->startRecord(F)I

    move-result p0

    return p0
.end method

.method public startRecordAsync(FLcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 4

    .line 1166
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder$15;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;FLcom/ss/android/vesdk/VEListener$VECallListener;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startRender()I
    .registers 1

    .line 5093
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->startRender()I

    move-result p0

    return p0
.end method

.method public startRenderAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    .line 5074
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$66;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$66;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startShaderZoom(F)V
    .registers 2

    .line 2720
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setScale(F)V

    return-void
.end method

.method public startZoom(F)V
    .registers 2

    .line 2713
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_7

    .line 2714
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->startZoom(F)I

    :cond_7
    return-void
.end method

.method public stopAudioRecorder()V
    .registers 2

    const/4 v0, 0x0

    .line 1630
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public stopAudioRecorder(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 4

    .line 1604
    const-string v0, "mVEAudioCapture stopAudioRecorder"

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableRefactor:Z

    if-eqz v0, :cond_1e

    .line 1606
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-eqz v0, :cond_10

    return-void

    .line 1609
    :cond_10
    const-string v0, "mVEAudioCapture stop: stopAudioRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVEAudioCapture:Lcom/ss/android/vesdk/VEAudioCapture;

    invoke-virtual {v0, p1}, Lcom/ss/android/vesdk/VEAudioCapture;->stop(Lcom/bytedance/bpea/basics/Cert;)I

    const/4 p1, 0x0

    .line 1611
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->cachedPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    return-void

    .line 1613
    :cond_1e
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$25;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$25;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/bytedance/bpea/basics/Cert;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopCameraPreview()V
    .registers 2

    .line 2488
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_8

    .line 2489
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->stopPreview()I

    return-void

    .line 2491
    :cond_8
    const-string p0, "TECameraVideoRecorder"

    const-string v0, "No Camera capture to stopCameraPreview"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopMediaRecord(Lcom/ss/android/vesdk/camera/ICameraCapture;)V
    .registers 5

    .line 5172
    invoke-interface {p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->getCameraSettings()Lcom/ss/android/vesdk/VECameraSettings;

    move-result-object v0

    .line 5173
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VECameraSettings;->getCameraType()Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;->TYPE_CamKit:Lcom/ss/android/vesdk/VECameraSettings$CAMERA_TYPE;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_11

    .line 5174
    invoke-virtual {p0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->changeRecorderState(I)V

    return-void

    .line 5177
    :cond_11
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraKitStateCallback:Lcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;

    invoke-interface {p1, v2, p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->changeRecorderState(ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)V

    return-void
.end method

.method public stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;)I
    .registers 3

    const/4 v0, 0x0

    .line 1941
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;Lcom/ss/android/vesdk/model/VEPrePlayStopParams;)I

    move-result p0

    return p0
.end method

.method public stopPrePlay(Lcom/ss/android/vesdk/VEListener$VECallListener;Lcom/ss/android/vesdk/model/VEPrePlayStopParams;)I
    .registers 3

    .line 1918
    new-instance p2, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;

    invoke-direct {p2, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$33;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public stopPreview()V
    .registers 2

    const/4 v0, 0x0

    .line 918
    invoke-direct {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->closeCamera(Z)V

    .line 919
    invoke-direct {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopRecordPreview()V

    return-void
.end method

.method public stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    const/4 v0, 0x0

    .line 929
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;Z)V

    return-void
.end method

.method public stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;Z)V
    .registers 9

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPreviewAsync: listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    const/4 v0, 0x0

    .line 942
    invoke-virtual {p0, v0, v0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-direct {p0, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->closeCamera(Z)V

    .line 944
    iget-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mVEPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEPreviewSettings;->isBlockRenderExit()Z

    move-result p2

    if-eqz p2, :cond_2e

    const/4 p2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p2, 0x0

    :goto_2f
    if-eqz p2, :cond_36

    .line 946
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mConditionRenderExit:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 948
    :cond_36
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mEnableStopPreviewAsyncOpt:Z

    .line 949
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop preview async opt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5d

    if-eqz p2, :cond_5d

    .line 952
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->turnToOffScreenRender()I

    move-result v4

    if-eqz v4, :cond_5d

    .line 955
    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mConditionRenderExit:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->open()V

    .line 960
    :cond_5d
    new-instance v4, Lcom/ss/android/vesdk/TECameraVideoRecorder$13;

    invoke-direct {v4, p0, p1, v0, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder$13;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;ZZ)V

    invoke-virtual {p0, v4}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_6e

    .line 976
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mConditionRenderExit:Landroid/os/ConditionVariable;

    const-wide/16 p1, 0x7d0

    invoke-virtual {p0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 978
    :cond_6e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    long-to-double p0, p0

    .line 979
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopPreviewAsync cost "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-double/2addr p0, v2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string p0, "add log for TC"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized stopRecord()I
    .registers 10

    monitor-enter p0

    .line 1227
    :try_start_1
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v2, 0x4

    if-eq v0, v2, :cond_28

    .line 1228
    const-string v0, "TECameraVideoRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeStopRecord called in a invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_25

    .line 1229
    monitor-exit p0

    const/16 p0, -0x69

    return p0

    :catchall_25
    move-exception v0

    goto/16 :goto_14d

    .line 1232
    :cond_28
    :try_start_28
    const-string v0, "stopRecordTiming1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setPerfTimingByKey(Ljava/lang/String;J)V

    .line 1235
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TERecorderBase;->mAttachAudioFromOther:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mAudioLengthOpt:Z

    if-eqz v0, :cond_3e

    .line 1236
    sget-object v0, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->INSTANCE:Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/audio/VEAudioCaptureHolder;->stopFeedPCM()V

    .line 1239
    :cond_3e
    const-string v0, "stopRecord"

    invoke-static {v0}, Lcom/ss/android/vesdk/VETraceUtils;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1240
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isVideoRecordClosed:Z

    .line 1241
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isAudioRecordClosed:Z

    .line 1242
    iget-boolean v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mIsEnableVBoost:Z

    if-eqz v2, :cond_6e

    .line 1243
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    new-instance v3, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;

    sget-object v4, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->BOOST_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/TERecorderBase;->getVBoostTimeout()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;-><init>(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;I)V

    invoke-virtual {v2, v3}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->startAction(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;)V

    .line 1244
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->stopRecord()V

    .line 1245
    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    new-instance v3, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;

    sget-object v4, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->RESTORE_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    invoke-direct {v3, v4}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;-><init>(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;)V

    invoke-virtual {v2, v3}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->startAction(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;)V

    goto :goto_73

    .line 1247
    :cond_6e
    iget-object v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->stopRecord()V

    :goto_73
    const/4 v2, 0x1

    .line 1249
    iput-boolean v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isVideoRecordClosed:Z

    .line 1251
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->waitUtilAudioProcessDone()V

    .line 1253
    iget-boolean v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->isAudioRecordClosed:Z

    if-eqz v3, :cond_90

    .line 1254
    iget-object v3, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRecorderStateListener:Lcom/ss/android/vesdk/VEListener$VERecorderStateListener;

    if-eqz v3, :cond_90

    instance-of v4, v3, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    if-eqz v4, :cond_90

    .line 1255
    check-cast v3, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;

    const-string v4, "Update segmentation time."

    const/16 v5, 0x3fd

    invoke-interface {v3, v5, v0, v4}, Lcom/ss/android/vesdk/VEListener$VERecorderStateExtListener;->onInfo(IILjava/lang/String;)V

    .line 1258
    :cond_90
    iget-object v3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->getEndFrameTime()J

    move-result-wide v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    float-to-long v3, v3

    .line 1260
    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDurings:Ljava/util/List;

    new-instance v6, Lcom/ss/android/medialib/model/TimeSpeedModel;

    iget v7, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSpeed:F

    float-to-double v7, v7

    invoke-direct {v6, v3, v4, v7, v8}, Lcom/ss/android/medialib/model/TimeSpeedModel;-><init>(JD)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    sget-object v5, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_ab
    .catchall {:try_start_28 .. :try_end_ab} :catchall_25

    const-wide/16 v6, -0x1

    .line 1262
    :try_start_ad
    iput-wide v6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordingSegmentTime:J

    .line 1263
    iget-wide v6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J

    long-to-float v6, v6

    long-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v3

    iget v7, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSpeed:F

    div-float/2addr v4, v7

    add-float/2addr v6, v4

    float-to-long v6, v6

    iput-wide v6, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J

    .line 1264
    monitor-exit v5
    :try_end_be
    .catchall {:try_start_ad .. :try_end_be} :catchall_14a

    .line 1266
    :try_start_be
    iget v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCurRecordStatus:I

    if-ne v4, v1, :cond_c7

    const/4 v1, 0x2

    .line 1267
    invoke-direct {p0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->updateRecordStatus(I)V

    goto :goto_ca

    .line 1269
    :cond_c7
    invoke-direct {p0, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->updateRecordStatus(I)V

    .line 1271
    :goto_ca
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/FrameIntervalCount;->valid()Z

    move-result v1

    if-eqz v1, :cond_125

    .line 1272
    const-string v1, "te_record_camera_sensor_interval_variance"

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/FrameIntervalCount;->getVariance()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    .line 1273
    const-string v1, "te_record_camera_sensor_interval_mean"

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/FrameIntervalCount;->getMean()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    .line 1274
    const-string v1, "te_record_camera_sensor_interval_range"

    iget-object v4, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/FrameIntervalCount;->getRange()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V
    :try_end_f3
    .catchall {:try_start_be .. :try_end_f3} :catchall_25

    .line 1276
    :try_start_f3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1277
    const-string v4, "variance"

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/FrameIntervalCount;->getVariance()D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1278
    const-string v4, "mean"

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/FrameIntervalCount;->getMean()D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1279
    const-string v4, "range"

    iget-object v5, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;

    invoke-virtual {v5}, Lcom/ss/android/vesdk/FrameIntervalCount;->getRange()D

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1280
    const-string v4, "vesdk_event_camera_sensor_frame_interval"

    const-string v5, "performance"

    invoke-static {v4, v1, v5, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZZ)V
    :try_end_120
    .catch Lorg/json/JSONException; {:try_start_f3 .. :try_end_120} :catch_121
    .catchall {:try_start_f3 .. :try_end_120} :catchall_25

    goto :goto_125

    :catch_121
    move-exception v1

    .line 1282
    :try_start_122
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1285
    :cond_125
    :goto_125
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFrameInterval:Lcom/ss/android/vesdk/FrameIntervalCount;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/FrameIntervalCount;->clearTimeStamps()V

    .line 1286
    invoke-static {}, Lcom/ss/android/vesdk/VETraceUtils;->endSection()V

    .line 1287
    iput-boolean v2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->resetModel:Z

    .line 1288
    const-string v1, "te_record_mode"

    iget-object v2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mVERecordMode:Lcom/ss/android/vesdk/VERecordMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v1, v4, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1289
    const-string v0, "stopRecordTiming4"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setPerfTimingByKey(Ljava/lang/String;J)V

    .line 1290
    iget v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSpeed:F
    :try_end_146
    .catchall {:try_start_122 .. :try_end_146} :catchall_25

    div-float/2addr v3, v0

    float-to-int v0, v3

    monitor-exit p0

    return v0

    :catchall_14a
    move-exception v0

    .line 1264
    :try_start_14b
    monitor-exit v5
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14a

    :try_start_14c
    throw v0

    :goto_14d
    monitor-exit p0
    :try_end_14e
    .catchall {:try_start_14c .. :try_end_14e} :catchall_25

    throw v0
.end method

.method public stopRecord(Z)I
    .registers 3

    .line 1307
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {v0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->stopPCMCallback(Z)V

    .line 1308
    invoke-virtual {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopRecord()I

    move-result p0

    return p0
.end method

.method public stopRecordAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 3

    .line 1295
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$17;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$17;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopZoom()V
    .registers 1

    .line 2725
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_7

    .line 2726
    invoke-interface {p0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->stopZoom()I

    :cond_7
    return-void
.end method

.method public surfaceChanged(Landroid/view/Surface;III)V
    .registers 5

    .line 699
    iget-object p2, p0, Lcom/ss/android/vesdk/TERecorderBase;->mRenderView:Lcom/ss/android/vesdk/render/VERenderView;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/ss/android/vesdk/render/VERenderView;->isSurfaceChanged()Z

    move-result p2

    if-nez p2, :cond_e

    :cond_a
    iget-boolean p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUsePreSurfaceCreated:Z

    if-eqz p2, :cond_19

    .line 700
    :cond_e
    new-instance p2, Lcom/ss/android/vesdk/TECameraVideoRecorder$7;

    invoke-direct {p2, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$7;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/view/Surface;)V

    invoke-virtual {p0, p2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 706
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUsePreSurfaceCreated:Z

    :cond_19
    return-void
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .registers 3

    .line 690
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    .line 691
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSurfaceDestroyed:Z

    .line 692
    iget-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUsePreSurfaceCreated:Z

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 693
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->startPreviewAsync(Landroid/view/Surface;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    :cond_d
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .registers 2

    const/4 p1, 0x0

    .line 712
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->stopPreviewAsync(Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    const/4 p1, 0x1

    .line 713
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mSurfaceDestroyed:Z

    const/4 p1, 0x0

    .line 714
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUsePreSurfaceCreated:Z

    return-void
.end method

.method public suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z
    .registers 3

    .line 5043
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z

    move-result p0

    return p0
.end method

.method public swapMainAndPipRenderTarget(Z)Z
    .registers 2

    .line 5248
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->swapMainAndPipRenderTarget(Z)Z

    move-result p0

    return p0
.end method

.method public switchCameraMode(I)I
    .registers 2

    .line 2738
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_9

    .line 2739
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->switchCameraMode(I)I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method protected switchEffectInternal(Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)I
    .registers 12

    if-nez p1, :cond_5

    const/16 p0, -0x64

    return p0

    .line 3491
    :cond_5
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorderBase;->mCurEffectRequest:Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;

    .line 3492
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    iget-object p0, p1, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->effectFilterType:Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam$EffectFilterType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v2, p1, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->effectPath:Ljava/lang/String;

    iget v3, p1, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->stickerId:I

    iget v4, p1, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->reqId:I

    iget-object v5, p1, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->stickerTag:Ljava/lang/String;

    iget-object v6, p1, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->composerTags:[Ljava/lang/String;

    iget-object v7, p1, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->composerValues:[F

    iget-boolean v8, p1, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->needReload:Z

    iget-boolean v9, p1, Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;->isSyncLoadResource:Z

    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->setStickerPathWithTag(ILjava/lang/String;IILjava/lang/String;[Ljava/lang/String;[FZZ)I

    const/4 p0, 0x0

    return p0
.end method

.method public switchFlashMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;)V
    .registers 2

    .line 2510
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_8

    .line 2511
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->switchFlashMode(Lcom/ss/android/vesdk/VECameraSettings$CAMERA_FLASH_MODE;)I

    return-void

    .line 2513
    :cond_8
    const-string p0, "TECameraVideoRecorder"

    const-string p1, "No Camera capture to switchFlashMode"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public switchTorch(Z)V
    .registers 2

    .line 2501
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_8

    .line 2502
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraCapture;->switchTorch(Z)I

    return-void

    .line 2504
    :cond_8
    const-string p0, "TECameraVideoRecorder"

    const-string p1, "No Camera capture to switchTorch"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tryRestore(Ljava/util/List;Ljava/lang/String;II)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VETimeSpeedModel;",
            ">;",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    .line 840
    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v1

    int-to-long v4, p3

    .line 841
    :try_start_4
    iget-wide v6, p0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimOut:J

    move-object v2, p0

    move-object v3, p2

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setRecordBGM(Ljava/lang/String;JJI)I

    .line 842
    iget-object p0, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDurings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 843
    iget-object p0, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDurings:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 844
    iget-object p0, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mDurings:Ljava/util/List;

    invoke-static {p0}, Lcom/ss/android/medialib/model/TimeSpeedModel;->calculateRealTime(Ljava/util/List;)I

    move-result p0

    int-to-long p2, p0

    iput-wide p2, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mTotalRecordingTime:J

    .line 845
    iget-object p0, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, v2, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordDirPath:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->tryRestore(ILjava/lang/String;)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_2d
    move-exception v0

    move-object p0, v0

    .line 846
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2d

    throw p0
.end method

.method public tryRestoreAsync(Ljava/util/List;Ljava/lang/String;IILcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VETimeSpeedModel;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/ss/android/vesdk/VEListener$VECallListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 851
    iput-boolean v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordInAsyncMode:Z

    .line 852
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$10;

    invoke-direct {v0, p0, p1, p5}, Lcom/ss/android/vesdk/TECameraVideoRecorder$10;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Ljava/util/List;Lcom/ss/android/vesdk/VEListener$VECallListener;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    int-to-long v3, p3

    .line 864
    iget-wide v5, p0, Lcom/ss/android/vesdk/TERecorderBase;->mTrimOut:J

    move-object v1, p0

    move-object v2, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->setRecordBGM(Ljava/lang/String;JJI)I

    return-void
.end method

.method public unRegFaceInfoCallback()V
    .registers 2

    .line 3535
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unRegFaceInfoCallback()V

    .line 3536
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3537
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->unRegisterFaceResultCallback()V

    return-void
.end method

.method public unRegHandDetectCallback()V
    .registers 1

    .line 3751
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unRegHandDetectCallback()V

    .line 3752
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->unRegisterHandDetectCallback()V

    return-void
.end method

.method public unRegSkeletonDetectCallback()V
    .registers 1

    .line 3680
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unRegSkeletonDetectCallback()V

    .line 3681
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->unRegisterSkeletonDetectCallback()V

    return-void
.end method

.method public unRegSmartBeautyCallback()V
    .registers 1

    .line 3698
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unRegSmartBeautyCallback()V

    .line 3699
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->unRegisterSmartBeautyCallback()V

    return-void
.end method

.method public unregEffectAlgorithmCallback()V
    .registers 1

    .line 3615
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unregEffectAlgorithmCallback()V

    .line 3616
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->unRegisterEffectAlgorithmCallback()V

    return-void
.end method

.method public unregSceneDetectCallback()V
    .registers 1

    .line 3728
    invoke-super {p0}, Lcom/ss/android/vesdk/TERecorderBase;->unregSceneDetectCallback()V

    .line 3729
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->unRegisterSceneDetectCallback()V

    return-void
.end method

.method public updateAlgorithmRuntimeParam(IF)V
    .registers 3

    .line 3591
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->updateAlgorithmRuntimeParam(IF)V

    return-void
.end method

.method public updateCameraOrientation()V
    .registers 3

    .line 2753
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mCameraCapture:Lcom/ss/android/vesdk/camera/ICameraCapture;

    if-eqz p0, :cond_d

    .line 2754
    new-instance v0, Lcom/ss/android/vesdk/VECameraSettings$Operation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VECameraSettings$Operation;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/camera/ICameraCapture;->process(Lcom/ss/android/vesdk/VECameraSettings$Operation;)V

    :cond_d
    return-void
.end method

.method public updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 4

    .line 4779
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I
    .registers 5

    .line 4784
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I

    move-result p0

    return p0
.end method

.method public updateReactionRegion(IIIIF)[I
    .registers 6

    .line 554
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->updateReactionCameraPosWithRotation(IIIIF)[I

    move-result-object p0

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateReactionRegion "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TECameraVideoRecorder"

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public updateRotation(FFF)V
    .registers 4

    .line 3789
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mRecordPresenter:Lcom/ss/android/medialib/presenter/MediaRecordPresenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/MediaRecordPresenter;->updateRotation(FFF)V

    return-void
.end method

.method public useAudioGraphOutput(ZZZZ)V
    .registers 13

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useAudioGraphOutput : useGraph "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " useOutPut "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " useBgm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " useMicin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TECameraVideoRecorder"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    new-instance v2, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;

    move-object v3, p0

    move v5, p1

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/ss/android/vesdk/TECameraVideoRecorder$16;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;ZZZZ)V

    invoke-virtual {v3, v2}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public useMusic(Z)V
    .registers 3

    .line 1724
    iput-boolean p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder;->mUseMusic:Z

    .line 1725
    new-instance v0, Lcom/ss/android/vesdk/TECameraVideoRecorder$29;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/TECameraVideoRecorder$29;-><init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Z)V

    .line 1732
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->executeSafeSubmit(Ljava/lang/Runnable;)V

    return-void
.end method
