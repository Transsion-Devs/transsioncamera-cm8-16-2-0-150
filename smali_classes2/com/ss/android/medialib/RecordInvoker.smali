.class public Lcom/ss/android/medialib/RecordInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bef/effectsdk/message/MessageCenter$Listener;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/RecordInvoker$OnPreviewDataCallback;,
        Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;,
        Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;,
        Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;,
        Lcom/ss/android/medialib/RecordInvoker$OnARTextBitmapCallback;,
        Lcom/ss/android/medialib/RecordInvoker$OnARTextContentCallback;,
        Lcom/ss/android/medialib/RecordInvoker$OnARTextCountCallback;,
        Lcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;,
        Lcom/ss/android/medialib/RecordInvoker$OnFrameCallback;,
        Lcom/ss/android/medialib/RecordInvoker$OnCherEffectParmaCallback;,
        Lcom/ss/android/medialib/RecordInvoker$OnPreviewRadioListener;,
        Lcom/ss/android/medialib/RecordInvoker$OnSmartBeautyCallback;,
        Lcom/ss/android/medialib/RecordInvoker$OnSkeletonDetectCallback;,
        Lcom/ss/android/medialib/RecordInvoker$OnHandDetectCallback;,
        Lcom/ss/android/medialib/RecordInvoker$OnSceneDetectCallback;,
        Lcom/ss/android/medialib/RecordInvoker$EffectAlgorithmCallback;,
        Lcom/ss/android/medialib/RecordInvoker$FaceResultCallback;,
        Lcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;,
        Lcom/ss/android/medialib/RecordInvoker$OnPictureCallback;,
        Lcom/ss/android/medialib/RecordInvoker$RecordStopCallback;
    }
.end annotation


# static fields
.field public static final INVALID_ENV:I = -0x186a1

.field public static final INVALID_HANDLE:I = -0x186a0

.field private static final TAG:Ljava/lang/String; = "RecordInvoker"

.field private static final TE_CAMERA_BACK_TO_FRONT_COST_TIME:Ljava/lang/String; = "te_preview_first_frame_on_screen_b2f"

.field private static final TE_CAMERA_FRONT_TO_BACK_COST_TIME:Ljava/lang/String; = "te_preview_first_frame_on_screen_f2b"

.field private static mRecordStopCallback:Lcom/ss/android/medialib/RecordInvoker$RecordStopCallback;

.field private static sDuetCompleteRunable:Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

.field private static sNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static sSlamDetectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/medialib/listener/SlamDetectListener;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

.field private mAVCEncoderInterface:Lcom/ss/android/medialib/AVCEncoderInterface;

.field private mDuetCompleteRunable:Ljava/lang/Runnable;

.field private mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

.field private mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

.field private mGetTimestampCallback:Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;

.field private mHandler:J

.field private mIsDuringScreenshot:Z

.field private mIsRenderReady:Z

.field private mLandmarkDetectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VELandMarkDetectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

.field private mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

.field private mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

.field private mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

.field private mSlamDetectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/medialib/listener/SlamDetectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStyleAudioProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;

.field private mStyleProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;

.field private mTextureTimeListener:Lcom/ss/android/medialib/listener/TextureTimeListener;

.field onDuetProcessListener:Lcom/ss/android/medialib/presenter/VEVideoController$OnDuetProcessListener;

.field onVideoEOFListener:Lcom/ss/android/medialib/presenter/VEVideoController$VEOnVideoEOFListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 125
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TENativeLibsLoader;->loadRecorder()V

    .line 878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/medialib/RecordInvoker;->sSlamDetectListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 1301
    sput-object v0, Lcom/ss/android/medialib/RecordInvoker;->sDuetCompleteRunable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsDuringScreenshot:Z

    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    .line 99
    iput-object v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

    .line 100
    iput-object v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mGetTimestampCallback:Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;

    const-wide/16 v2, 0x0

    .line 107
    iput-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    .line 115
    iput-boolean v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsRenderReady:Z

    .line 117
    iput-object v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mStyleProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;

    .line 118
    iput-object v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mStyleAudioProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;

    .line 885
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mLandmarkDetectListeners:Ljava/util/List;

    .line 914
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mSlamDetectListeners:Ljava/util/List;

    .line 2889
    new-instance v0, Lcom/ss/android/medialib/RecordInvoker$1;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/RecordInvoker$1;-><init>(Lcom/ss/android/medialib/RecordInvoker;)V

    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoderInterface:Lcom/ss/android/medialib/AVCEncoderInterface;

    .line 121
    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/RecordInvoker;)J
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/ss/android/medialib/RecordInvoker;JI)I
    .registers 4

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetColorFormat(JI)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/ss/android/medialib/RecordInvoker;JJ)V
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->nativeRemoveAllStyleAudioTrack(JJ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ss/android/medialib/RecordInvoker;JJI)D
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetStyleAudioTrackDuration(JJI)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1200(Lcom/ss/android/medialib/RecordInvoker;JJZ)V
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeMakeCurrentStyleAudioEngineEnable(JJZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ss/android/medialib/RecordInvoker;JJLjava/lang/String;)V
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeRestoreStyleContext(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ss/android/medialib/RecordInvoker;JJ)V
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->nativeReleaseStyleAudioEngine(JJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/ss/android/medialib/RecordInvoker;JJI)V
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeOperateStyleAudio(JJI)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ss/android/medialib/RecordInvoker;JJZ)V
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeStyleEnableBGM(JJZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ss/android/medialib/RecordInvoker;JJZ)V
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeStyleEnableAudioEncode(JJZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/ss/android/medialib/RecordInvoker;JJZI)V
    .registers 7

    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->nativeStyleSetMute(JJZI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/ss/android/medialib/RecordInvoker;JJDI)V
    .registers 8

    .line 93
    invoke-direct/range {p0 .. p7}, Lcom/ss/android/medialib/RecordInvoker;->nativeStyleSetVolume(JJDI)V

    return-void
.end method

.method static synthetic access$200(Lcom/ss/android/medialib/RecordInvoker;)Lcom/ss/android/medialib/AVCEncoder;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ss/android/medialib/RecordInvoker;JJII)V
    .registers 7

    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetStyleAudioLoopCount(JJII)V

    return-void
.end method

.method static synthetic access$202(Lcom/ss/android/medialib/RecordInvoker;Lcom/ss/android/medialib/AVCEncoder;)Lcom/ss/android/medialib/AVCEncoder;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/ss/android/medialib/RecordInvoker;JIIILcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 7

    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->nativeAllocateStyleEngine(JIIILcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2200(Lcom/ss/android/medialib/RecordInvoker;JJZLcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 7

    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->nativeReleaseStyleEngine(JJZLcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2300(Lcom/ss/android/medialib/RecordInvoker;JJLcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeAllocateStyleManager(JJLcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2400(Lcom/ss/android/medialib/RecordInvoker;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 13

    .line 93
    invoke-direct/range {p0 .. p12}, Lcom/ss/android/medialib/RecordInvoker;->nativeOperateStyleManager(JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2500(Lcom/ss/android/medialib/RecordInvoker;JJJILjava/lang/String;ZZLcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 12

    .line 93
    invoke-direct/range {p0 .. p11}, Lcom/ss/android/medialib/RecordInvoker;->nativeOperateFeature(JJJILjava/lang/String;ZZLcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2600(Lcom/ss/android/medialib/RecordInvoker;JJ[J[I[Ljava/lang/String;ZZ)[Ljava/lang/String;
    .registers 10

    .line 93
    invoke-direct/range {p0 .. p9}, Lcom/ss/android/medialib/RecordInvoker;->nativeOperateFeatureGroup(JJ[J[I[Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/ss/android/medialib/RecordInvoker;JJZLcom/ss/android/medialib/style/StyleActionListener;)J
    .registers 7

    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->nativeReleaseStyleManager(JJZLcom/ss/android/medialib/style/StyleActionListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$2800(Lcom/ss/android/medialib/RecordInvoker;JJ)[J
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetFeatures(JJ)[J

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ss/android/medialib/RecordInvoker;JJZ)J
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeStyleRenderEnable(JJZ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(Lcom/ss/android/medialib/RecordInvoker;JLjava/nio/ByteBuffer;III)I
    .registers 7

    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->nativeWriteFile(JLjava/nio/ByteBuffer;III)I

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/ss/android/medialib/RecordInvoker;JJ)J
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->flushData(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$3100(Lcom/ss/android/medialib/RecordInvoker;JJLcom/ss/android/medialib/style/StylePathConvertCallback;)J
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->registerStylePathsConverter(JJLcom/ss/android/medialib/style/StylePathConvertCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$3200(Lcom/ss/android/medialib/RecordInvoker;JJ)Ljava/lang/String;
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetStyleRenderRect(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ss/android/medialib/RecordInvoker;JJJIZ)Ljava/lang/String;
    .registers 9

    .line 93
    invoke-direct/range {p0 .. p8}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetFeatureParam(JJJIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/ss/android/medialib/RecordInvoker;JJJI)F
    .registers 8

    .line 93
    invoke-direct/range {p0 .. p7}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetFeatureRotation(JJJI)F

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/ss/android/medialib/RecordInvoker;JJJLandroid/graphics/Bitmap;Lcom/ss/android/medialib/style/StyleActionListener;)I
    .registers 9

    .line 93
    invoke-direct/range {p0 .. p8}, Lcom/ss/android/medialib/RecordInvoker;->nativeDrawStyleToBitmap(JJJLandroid/graphics/Bitmap;Lcom/ss/android/medialib/style/StyleActionListener;)I

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/ss/android/medialib/RecordInvoker;JJFFFF)I
    .registers 9

    .line 93
    invoke-direct/range {p0 .. p8}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetStylePictureOffset(JJFFFF)I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/ss/android/medialib/RecordInvoker;JJJ)J
    .registers 7

    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/ss/android/medialib/RecordInvoker;->nativeStyleMusicSeek(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$3800(Lcom/ss/android/medialib/RecordInvoker;JJZ)I
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetEventEnable(JJZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/ss/android/medialib/RecordInvoker;JJ)I
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->nativeRefreshEvent(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ss/android/medialib/RecordInvoker;JLjava/nio/ByteBuffer;IJJIZ)I
    .registers 11

    .line 93
    invoke-direct/range {p0 .. p10}, Lcom/ss/android/medialib/RecordInvoker;->nativeWriteFile2(JLjava/nio/ByteBuffer;IJJIZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/ss/android/medialib/RecordInvoker;JJLjava/lang/String;)J
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetEvents(JJLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$4100(Lcom/ss/android/medialib/RecordInvoker;JJLjava/lang/String;)J
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeUpdateEvents(JJLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$4200(Lcom/ss/android/medialib/RecordInvoker;JJ)Ljava/lang/String;
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetEvents(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lcom/ss/android/medialib/RecordInvoker;JJ)Ljava/lang/String;
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetStickerVersion(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/android/medialib/RecordInvoker;J)V
    .registers 3

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeOnSwapGlBuffers(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/ss/android/medialib/RecordInvoker;JLjava/nio/ByteBuffer;I)I
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetCodecConfig(JLjava/nio/ByteBuffer;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/ss/android/medialib/RecordInvoker;JII)J
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitStyleAudioEngine(JII)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$800(Lcom/ss/android/medialib/RecordInvoker;JJILjava/lang/String;Z)V
    .registers 8

    .line 93
    invoke-direct/range {p0 .. p7}, Lcom/ss/android/medialib/RecordInvoker;->nativeAddStyleAudioTrack(JJILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/ss/android/medialib/RecordInvoker;JJI)V
    .registers 6

    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/ss/android/medialib/RecordInvoker;->nativeRemoveStyleAudioTrack(JJI)V

    return-void
.end method

.method public static declared-synchronized addSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    .registers 3

    const-class v0, Lcom/ss/android/medialib/RecordInvoker;

    monitor-enter v0

    if-eqz p0, :cond_e

    .line 881
    :try_start_5
    sget-object v1, Lcom/ss/android/medialib/RecordInvoker;->sSlamDetectListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw p0

    .line 883
    :cond_e
    :goto_e
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized clearSlamDetectListener()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/ss/android/medialib/RecordInvoker;

    monitor-enter v0

    .line 905
    :try_start_3
    sget-object v1, Lcom/ss/android/medialib/RecordInvoker;->sSlamDetectListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 906
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v1
.end method

.method private native flushData(JJ)J
.end method

.method public static getNativeInitListener()Lcom/ss/android/medialib/listener/NativeInitListener;
    .registers 1

    .line 937
    sget-object v0, Lcom/ss/android/medialib/RecordInvoker;->sNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    return-object v0
.end method

.method private getOptFirstFrameBypassEffectFrameCnt()I
    .registers 3

    .line 1783
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object p0

    const-string v0, "ve_opt_first_frame_bypass_effect_frame_cnt"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object p0

    const/4 v0, 0x3

    if-eqz p0, :cond_2c

    .line 1784
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2c

    .line 1785
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_2c

    const/16 v1, 0x64

    if-ge p0, v1, :cond_2c

    move v0, p0

    .line 1792
    :cond_2c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOptFirstFrameBypassEffectFrameCnt: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RecordInvoker"

    invoke-static {v1, p0}, Lcom/ss/android/medialib/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isRenderReady()Z
    .registers 1

    .line 1463
    iget-boolean p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsRenderReady:Z

    return p0
.end method

.method private native nativeAddMetadata(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeAddPCMData(J[BIJ)I
.end method

.method private native nativeAddPipRenderTargetSurface(JLandroid/view/Surface;IILandroid/graphics/Bitmap;Z)I
.end method

.method private native nativeAddStyleAudioTrack(JJILjava/lang/String;Z)V
.end method

.method private native nativeAddTrack(JILjava/lang/String;JJ)I
.end method

.method private native nativeAllocateStyleEngine(JIIILcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method private native nativeAllocateStyleManager(JJLcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method private native nativeAnimateImagesToPreview(J[Ljava/lang/String;[Ljava/nio/ByteBuffer;[I[I)I
.end method

.method private native nativeBindEffectAudioProcessor(JIIZ)I
.end method

.method private native nativeCancelAll(J)V
.end method

.method private native nativeChangeDuetVideo(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeChangeMusicPath(JLjava/lang/String;)I
.end method

.method private native nativeChangeOutputVideoSize(JII)V
.end method

.method private native nativeChangePreviewRadioMode(JI)V
.end method

.method private native nativeChangeRecordMode(JI)V
.end method

.method private native nativeChangeSurface(JLandroid/view/Surface;)I
.end method

.method private native nativeCheckComposerNodeExclusion(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
.end method

.method private native nativeChooseAreaFromRatio34(JF)V
.end method

.method private native nativeChooseSlamFace(JI)V
.end method

.method private native nativeClearFragFile(J)I
.end method

.method private native nativeCloseWavFile(JZ)I
.end method

.method private native nativeConcat(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I
.end method

.method private native nativeConfigStyleResourceFinder(JLandroid/content/res/AssetManager;)J
.end method

.method private native nativeCreate()J
.end method

.method private native nativeDeleteLastFrag(J)I
.end method

.method private native nativeDisableRender(JZ)V
.end method

.method private native nativeDrawStyleToBitmap(JJJLandroid/graphics/Bitmap;Lcom/ss/android/medialib/style/StyleActionListener;)I
.end method

.method private native nativeEnableAbandonFirstFrame(JZ)V
.end method

.method private native nativeEnableAudio(JI)I
.end method

.method private native nativeEnableAudioAlgorithmParam(JZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeEnableAudioLoudnessBalanceFilter(JZD)V
.end method

.method private native nativeEnableAudioPlayerFromVE(JI)I
.end method

.method private native nativeEnableAutoTestLog(JZ)I
.end method

.method private native nativeEnableBachAlgorithm(JZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeEnableEffect(JZ)V
.end method

.method private native nativeEnableEffectBGM(JZ)V
.end method

.method private native nativeEnableFaceBeautifyDetect(JI)V
.end method

.method private native nativeEnableFaceExtInfo(I)V
.end method

.method private native nativeEnableLandMark(JZ)V
.end method

.method private native nativeEnableLensProcess(JIZ)V
.end method

.method private native nativeEnablePBO(Z)V
.end method

.method private native nativeEnablePictureTestMode(JZZ)V
.end method

.method private native nativeEnablePreloadEffectResource(JZ)V
.end method

.method private native nativeEnableRecordBGMToMp4(JZ)V
.end method

.method private native nativeEnableRecordFlip(JI)I
.end method

.method private native nativeEnableRecordingMp4(JZ)V
.end method

.method private native nativeEnableScan(JZJ)V
.end method

.method private native nativeEnableSceneRecognition(JZ)V
.end method

.method private native nativeEnableShotScreenUseOesTexture(JZ)V
.end method

.method private native nativeEnableSkeletonDetect(JZ)V
.end method

.method private native nativeEnableSmartBeauty(JZ)V
.end method

.method private native nativeEnableStickerRecognition(JZ)V
.end method

.method private native nativeEnableTimestampCallback(JZ)I
.end method

.method private native nativeEnableUse16BitAlign(JZ)V
.end method

.method private native nativeEnableWaterMark(JZ)V
.end method

.method private native nativeExpandPreviewAndRecordInterval(JZ)I
.end method

.method private native nativeFetchDistortionInfo(JLcom/ss/android/medialib/listener/DistortionInfoCallback;)I
.end method

.method private native nativeGetAudioEndTime(J)J
.end method

.method private native nativeGetEndFrameTime(J)J
.end method

.method private native nativeGetEnigmaResult(J)Lcom/ss/android/medialib/model/EnigmaResult;
.end method

.method private native nativeGetEvents(JJ)Ljava/lang/String;
.end method

.method private native nativeGetFeatureParam(JJJIZ)Ljava/lang/String;
.end method

.method private native nativeGetFeatureRotation(JJJI)F
.end method

.method private native nativeGetFeatures(JJ)[J
.end method

.method private native nativeGetFilterIntensity(JLjava/lang/String;)F
.end method

.method private native nativeGetFragVideoPaths(J)[Ljava/lang/String;
.end method

.method private native nativeGetLastAudioLength(J)J
.end method

.method private native nativeGetLastRecordFps(J)F
.end method

.method private native nativeGetLastRecordFrameNum(J)I
.end method

.method private native nativeGetLastRecordLagCount(J)I
.end method

.method private native nativeGetLastRecordLagMaxDuration(J)J
.end method

.method private native nativeGetLastRecordLagTotalDuration(J)J
.end method

.method private native nativeGetPerfStageCostByKey(JLjava/lang/String;)J
.end method

.method private native nativeGetPreviewRenderRect(J[I)I
.end method

.method private native nativeGetReactionCamRotation(J)F
.end method

.method private native nativeGetReactionCameraPosInRecordPixel(J)[I
.end method

.method private native nativeGetReactionCameraPosInViewPixel(J)[I
.end method

.method private native nativeGetReactionPosMarginInViewPixel(J)[I
.end method

.method private native nativeGetResourceMultiViewTag(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetSequencePreviewFrame(JIIZILjava/lang/String;)V
.end method

.method private native nativeGetSlamFaceCount(J)I
.end method

.method private native nativeGetSmallWindowSnapshot(JIILandroid/graphics/Bitmap;Lcom/ss/android/medialib/listener/SmallWindowSnapshotListener;)I
.end method

.method private native nativeGetStickerVersion(JJ)Ljava/lang/String;
.end method

.method private native nativeGetStyleAudioTrackDuration(JJI)D
.end method

.method private native nativeGetStyleRenderRect(JJ)Ljava/lang/String;
.end method

.method private native nativeHandleEffectAudio(JZJ)V
.end method

.method private native nativeHideSlamKeyBoard(JZ)I
.end method

.method private native nativeInitAudioConfig(JIIIII)I
.end method

.method private native nativeInitAudioPlayer(JLjava/lang/String;IIJZZI)I
.end method

.method private native nativeInitBeautyPlay(JIILjava/lang/String;IILjava/lang/String;IZZZZ)I
.end method

.method private native nativeInitBeautyPlayOnlyPreview(JLcom/ss/android/medialib/qr/ScanSettings;)I
.end method

.method private native nativeInitDuet(JLjava/lang/String;FFFZZI)I
.end method

.method private native nativeInitFaceBeautifyDetectExtParam(JZZZ)V
.end method

.method private native nativeInitFaceBeautyDetectExtParam(JZ)V
.end method

.method private native nativeInitFaceDetectExtParam(JIZZ)V
.end method

.method private native nativeInitHDRNetDetectExtParam(JZLjava/lang/String;)V
.end method

.method private native nativeInitHandDetectExtParam(JIII)V
.end method

.method private native nativeInitImageDrawer(JI)I
.end method

.method private native nativeInitMediaCodecSurface(JLandroid/view/Surface;)I
.end method

.method private native nativeInitReaction(JLjava/lang/String;)I
.end method

.method private native nativeInitStyleAudioEngine(JII)J
.end method

.method private native nativeInitWavFile(JIID)I
.end method

.method private native nativeIsQualcomm(J)Z
.end method

.method private native nativeIsSmallWinCameraRender(J)Z
.end method

.method private native nativeIsStickerEnabled(J)Z
.end method

.method private native nativeMakeCurrentStyleAudioEngineEnable(JJZ)V
.end method

.method private native nativeMarkPlayDone(J)I
.end method

.method private native nativeOnAudioCallback(J[BI)I
.end method

.method private native nativeOnDrawFrameBuffer(J[BIIIZ)I
.end method

.method private native nativeOnDrawFrameBuffer2(JLjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIIIZ)I
.end method

.method private native nativeOnDrawFrameBuffer3(J[BIIIIZ)I
.end method

.method private native nativeOnDrawFrameBuffer4(JLjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIIIIZ)I
.end method

.method private native nativeOnFrameAvailable(JI[FZ)I
.end method

.method private native nativeOnFrameTime(JD)I
.end method

.method private native nativeOnSwapGlBuffers(J)V
.end method

.method private native nativeOperateFeature(JJJILjava/lang/String;ZZLcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method private native nativeOperateFeatureGroup(JJ[J[I[Ljava/lang/String;ZZ)[Ljava/lang/String;
.end method

.method private native nativeOperateStyleAudio(JJI)V
.end method

.method private native nativeOperateStyleManager(JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method private native nativePauseEffectAudio(JZ)I
.end method

.method private native nativePauseRender(J)I
.end method

.method private native nativePosInReactionRegion(JII)Z
.end method

.method private native nativePostDuetAction(JIJ)I
.end method

.method private native nativePreviewVideoBg(J)V
.end method

.method private native nativeProcessTouchEvent(JFF)I
.end method

.method private native nativeRecoverCherEffect(J[Ljava/lang/String;[D[Z)V
.end method

.method private native nativeRefreshEvent(JJ)I
.end method

.method private native nativeRegBachAlgorithmCallback(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VEBachAlgorithmCallback;",
            ">;)I"
        }
    .end annotation
.end method

.method private native nativeRegisterCherEffectParamCallback(JLcom/ss/android/medialib/RecordInvoker$OnCherEffectParmaCallback;)V
.end method

.method private native nativeRegisterEffectAlgorithmCallback(JLcom/ss/android/medialib/RecordInvoker$EffectAlgorithmCallback;)V
.end method

.method private native nativeRegisterFaceResultCallback(JZLcom/ss/android/medialib/RecordInvoker$FaceResultCallback;)V
.end method

.method private native nativeRegisterHandDetectCallback(J[ILcom/ss/android/medialib/RecordInvoker$OnHandDetectCallback;)V
.end method

.method private native nativeRegisterSceneDetectCallback(JLcom/ss/android/medialib/RecordInvoker$OnSceneDetectCallback;)V
.end method

.method private native nativeRegisterSkeletonDetectCallback(JLcom/ss/android/medialib/RecordInvoker$OnSkeletonDetectCallback;)V
.end method

.method private native nativeRegisterSmartBeautyCallback(JLcom/ss/android/medialib/RecordInvoker$OnSmartBeautyCallback;)V
.end method

.method private native nativeReleaseGPUResources(J)V
.end method

.method private native nativeReleaseStyleAudioEngine(JJ)V
.end method

.method private native nativeReleaseStyleEngine(JJZLcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method private native nativeReleaseStyleManager(JJZLcom/ss/android/medialib/style/StyleActionListener;)J
.end method

.method private native nativeRemoveAllStyleAudioTrack(JJ)V
.end method

.method private native nativeRemoveStyleAudioTrack(JJI)V
.end method

.method private native nativeRemoveTrack(JII)I
.end method

.method private native nativeRenderPicture(J[BIIILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;)I
.end method

.method private native nativeRenderPicture2(JLjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIIIIILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;Landroid/graphics/Bitmap;)I
.end method

.method private native nativeRenderPicture3(JLandroid/graphics/Bitmap;IILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;Landroid/graphics/Bitmap;)I
.end method

.method private native nativeRenderPictureToBitmap(J[BIIIIIILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;Landroid/graphics/Bitmap;)I
.end method

.method private native nativeResetPerfStats(J)V
.end method

.method private native nativeResetStartTime(JJJ)I
.end method

.method private native nativeRestoreStyleContext(JJLjava/lang/String;)V
.end method

.method private native nativeRotateReactionWindow(JF)F
.end method

.method private native nativeSave(J)I
.end method

.method private native nativeScaleReactionWindow(JF)[I
.end method

.method private native nativeSeekTrack(JIIJ)I
.end method

.method private native nativeSendEffectMsg(JIJJLjava/lang/String;Z)V
.end method

.method private native nativeSendEffectMsgWithData(JIJJ[B)V
.end method

.method private native nativeSetARCoreParam(JLcom/ss/android/vesdk/VEARCoreParam;)V
.end method

.method private native nativeSetAdaptiveSharpenParams(JLcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;)V
.end method

.method private native nativeSetAlgorithmChangeMsg(JIZ)V
.end method

.method private native nativeSetBGMVolume(JFI)I
.end method

.method private native nativeSetBeautyFace(JILjava/lang/String;)I
.end method

.method private native nativeSetBeautyFaceIntensity(JFF)I
.end method

.method private native nativeSetBgmMute(JZ)I
.end method

.method private native nativeSetCamPreviewSize(JII)V
.end method

.method private native nativeSetCameraClose(JZ)V
.end method

.method private native nativeSetCameraFirstFrameOptimize(JZI)V
.end method

.method private native nativeSetCodecConfig(JLjava/nio/ByteBuffer;I)I
.end method

.method private native nativeSetColorFormat(JI)I
.end method

.method private native nativeSetCustomFrameProcessor(JLcom/ss/android/vesdk/VEFrameCustomProcessor;)I
.end method

.method private native nativeSetCustomVideoBg(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJZI)V
.end method

.method private native nativeSetCustomVideoBgGif(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetDLEEnable(JZ)I
.end method

.method private native nativeSetDebugSettings(JLcom/ss/android/vesdk/VEDebugSettings;)V
.end method

.method private native nativeSetDetectInterval(JI)V
.end method

.method private native nativeSetDetectionMode(JZ)V
.end method

.method private native nativeSetDeviceRotationWithStamp(J[FD)I
.end method

.method private native nativeSetDoubleFilterNew(JLjava/lang/String;Ljava/lang/String;FFF)I
.end method

.method private native nativeSetDuetCameraPaused(JZ)V
.end method

.method private native nativeSetEffectAlgorithmRequirement(JJ)V
.end method

.method private native nativeSetEffectAudioManagerCallback(JLcom/ss/android/medialib/listener/AudioManagerCallback;)Z
.end method

.method private native nativeSetEffectBuildChainType(JI)V
.end method

.method private native nativeSetEnableDuetV2(JZ)I
.end method

.method private native nativeSetEnableEffCtrl(JZ)I
.end method

.method private native nativeSetEnigmaDetectParams(JZFFFFZIJIZZZ)V
.end method

.method private native nativeSetEventEnable(JJZ)I
.end method

.method private native nativeSetEvents(JJLjava/lang/String;)J
.end method

.method private native nativeSetFaceMakeUp(JLjava/lang/String;FF)I
.end method

.method private native nativeSetFaceMakeUp2(JLjava/lang/String;)I
.end method

.method private native nativeSetFilter(JLjava/lang/String;Ljava/lang/String;F)I
.end method

.method private native nativeSetFilterIntensity(JF)I
.end method

.method private native nativeSetFilterNew(JLjava/lang/String;F)I
.end method

.method private native nativeSetForceAlgorithmEnableCount(JI)V
.end method

.method private native nativeSetFrameCallback(JLcom/ss/android/medialib/RecordInvoker$OnFrameCallback;ZI)I
.end method

.method private native nativeSetHandDetectLowpower(JZ)I
.end method

.method private native nativeSetHardEncoderStatus(JZ)I
.end method

.method private native nativeSetInitHardEncodeRet(JI)I
.end method

.method private native nativeSetIntensityByType(JIF)I
.end method

.method private native nativeSetKaraoke(JZZ)I
.end method

.method private native nativeSetLandMarkInfo(JLcom/ss/android/vesdk/LandMarkFrame;)V
.end method

.method private native nativeSetLumaDetectParams(JLcom/ss/android/vesdk/lens/VELumaDetectParams;Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;)V
.end method

.method private native nativeSetMemoryOpt(JZ)V
.end method

.method private native nativeSetMockPreviewSettings(JLandroid/graphics/Bitmap;II)I
.end method

.method private native nativeSetModeChangeState(JI)V
.end method

.method private native nativeSetMusicNodes(JLjava/lang/String;)I
.end method

.method private native nativeSetMusicTime(JJJJ)I
.end method

.method private native nativeSetNativeLibraryDir(Ljava/lang/String;)V
.end method

.method private native nativeSetOnPreviewDataCallback(JLcom/ss/android/medialib/RecordInvoker$OnPreviewDataCallback;)V
.end method

.method private native nativeSetPaddingBottomInRatio34(JF)V
.end method

.method private native nativeSetPerfTimingByKey(JLjava/lang/String;J)V
.end method

.method private native nativeSetPlayLength(JJ)I
.end method

.method private native nativeSetPreviewSizeRatio(JFII)V
.end method

.method private native nativeSetReactionBorderParam(JII)V
.end method

.method private native nativeSetReactionMaskImage(JLjava/lang/String;Z)Z
.end method

.method private native nativeSetReactionPosMargin(JIIII)V
.end method

.method private native nativeSetRecordMode(JI)I
.end method

.method private native nativeSetRecordPrepareTime(JJ)I
.end method

.method private native nativeSetRenderCacheString(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetRenderCacheTexture(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetReshape(JLjava/lang/String;FF)I
.end method

.method private native nativeSetReshapeResource(JLjava/lang/String;)I
.end method

.method private native nativeSetRunningErrorCallback(JLcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;)I
.end method

.method private native nativeSetSafeArea(JI[Lcom/ss/android/vesdk/VESafeAreaParams;I)I
.end method

.method private native nativeSetScale(JF)V
.end method

.method private native nativeSetSharedTextureStatus(Z)Z
.end method

.method private native nativeSetSkinTone(JLjava/lang/String;)I
.end method

.method private native nativeSetSlamFace(JLandroid/graphics/Bitmap;)I
.end method

.method private native nativeSetSlamInputText(JLjava/lang/String;IILjava/lang/String;)I
.end method

.method private native nativeSetSticker(JLandroid/graphics/Bitmap;II)I
.end method

.method private native nativeSetStickerPathWithTag(JILjava/lang/String;IILjava/lang/String;[Ljava/lang/String;[FZZ)I
.end method

.method private native nativeSetStyleAudioLoopCount(JJII)V
.end method

.method private native nativeSetStylePictureOffset(JJFFFF)I
.end method

.method private native nativeSetSwapDuetRegion(JZ)I
.end method

.method private native nativeSetSwapReactionRegion(JZ)I
.end method

.method private native nativeSetTaintSceneDetectParams(JLcom/ss/android/vesdk/lens/VETaintSceneDetectParams;Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;)V
.end method

.method private native nativeSetUseMultiPreviewRatio(JZ)V
.end method

.method private native nativeSetUseMusic(JI)I
.end method

.method private native nativeSetVideoBgSpeed(JD)V
.end method

.method private native nativeSetVideoEncodeRotation(JI)V
.end method

.method private native nativeSetVideoQuality(JII)I
.end method

.method private native nativeSetWaterMark(J[Ljava/lang/String;IIIIIII)V
.end method

.method private native nativeSetWaterMark2(JLandroid/graphics/Bitmap;IIIIIII)V
.end method

.method private native nativeShotHDScreen(JLjava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;ZLcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Landroid/graphics/Bitmap;Z)I
.end method

.method private native nativeShotScreen(JLjava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;ZLcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Z)I
.end method

.method private native nativeSlamDeviceConfig(JZZZZ)I
.end method

.method private native nativeSlamGetTextBitmap(JLcom/ss/android/medialib/RecordInvoker$OnARTextBitmapCallback;)I
.end method

.method private native nativeSlamGetTextLimitCount(JLcom/ss/android/medialib/RecordInvoker$OnARTextCountCallback;)I
.end method

.method private native nativeSlamGetTextParagraphContent(JLcom/ss/android/medialib/RecordInvoker$OnARTextContentCallback;)I
.end method

.method private native nativeSlamProcessDoubleClickEvent(JFF)I
.end method

.method private native nativeSlamProcessIngestAcc(JDDDD)I
.end method

.method private native nativeSlamProcessIngestGra(JDDDD)I
.end method

.method private native nativeSlamProcessIngestGyr(JDDDD)I
.end method

.method private native nativeSlamProcessIngestOri(J[DD)I
.end method

.method private native nativeSlamProcessPanEvent(JFFFFF)I
.end method

.method private native nativeSlamProcessRotationEvent(JFF)I
.end method

.method private native nativeSlamProcessScaleEvent(JFF)I
.end method

.method private native nativeSlamProcessTouchEvent(JFF)I
.end method

.method private native nativeSlamProcessTouchEventByType(JIFFI)I
.end method

.method private native nativeSlamSetLanguge(JLjava/lang/String;)I
.end method

.method private native nativeStartPlay(JLandroid/view/Surface;IILjava/lang/String;)I
.end method

.method private native nativeStartPlay2(JIIIILjava/lang/String;)I
.end method

.method private native nativeStartPrePlay(JZIZ)I
.end method

.method private native nativeStartRecord(JDZIIILjava/lang/String;Ljava/lang/String;Z)I
.end method

.method private native nativeStartRender(J)I
.end method

.method private native nativeStopPlay(J)I
.end method

.method private native nativeStopPrePlay(J)I
.end method

.method private native nativeStopRecord(JZ)I
.end method

.method private native nativeStyleEnableAudioEncode(JJZ)V
.end method

.method private native nativeStyleEnableBGM(JJZ)V
.end method

.method private native nativeStyleMusicSeek(JJJ)J
.end method

.method private native nativeStyleRenderEnable(JJZ)J
.end method

.method private native nativeStyleSetMute(JJZI)V
.end method

.method private native nativeStyleSetVolume(JJDI)V
.end method

.method private native nativeSwapMainAndPipRenderTarget(JZ)I
.end method

.method private native nativeSwitchEffectInGLTask(JZ)I
.end method

.method private native nativeTryRestore(JILjava/lang/String;)I
.end method

.method private native nativeUnRegisterEffectAlgorithmCallback(J)V
.end method

.method private native nativeUnRegisterFaceResultCallback(J)V
.end method

.method private native nativeUninitAudioPlayer(J)I
.end method

.method private native nativeUninitBeautyPlay(J)I
.end method

.method private native nativeUnregBachAlgorithmCallback(J)I
.end method

.method private native nativeUpdateAlgorithmRuntimeParam(JIF)V
.end method

.method private native nativeUpdateEvents(JJLjava/lang/String;)J
.end method

.method private native nativeUpdateReactionBGAlpha(JF)V
.end method

.method private native nativeUpdateReactionCameraPos(JIIII)[I
.end method

.method private native nativeUpdateReactionCameraPosWithRotation(JIIIIF)[I
.end method

.method private native nativeUpdateRotation(JFFF)V
.end method

.method private native nativeUpdateRotationAndFront(JIZZ)V
.end method

.method private native nativeUseLargeMattingModel(JZ)V
.end method

.method private native nativeWriteFile(JLjava/nio/ByteBuffer;III)I
.end method

.method private native nativeWriteFile2(JLjava/nio/ByteBuffer;IJJIZ)I
.end method

.method private native natvieEnableGetPropTrack(JZ)I
.end method

.method private native natvieSetExternalFaceMakeupOpacity(JLjava/lang/String;FF)I
.end method

.method private onNativeCallback_GetHardEncoderProfile()I
    .registers 3

    .line 3821
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v0, :cond_12

    .line 3822
    const-string v0, "RecordInvoker"

    const-string v1, "GetHardEncoderProfile"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3823
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    invoke-interface {p0}, Lcom/ss/android/medialib/AVCEncoderInterface;->getProfile()I

    move-result p0

    return p0

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method private onNativeCallback_Init(I)V
    .registers 6

    const/4 v0, 0x1

    .line 3797
    const-string v1, "RecordInvoker"

    if-gez p1, :cond_1a

    .line 3798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNativeCallback_Init error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 3800
    :cond_1a
    iput-boolean v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsRenderReady:Z

    .line 3801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNativeCallback_Init success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3803
    :goto_30
    iget-object v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    if-eqz v1, :cond_37

    .line 3804
    invoke-interface {v1, p1}, Lcom/ss/android/medialib/listener/NativeInitListener;->onNativeInitCallBack(I)V

    .line 3806
    :cond_37
    sget-object v1, Lcom/ss/android/medialib/RecordInvoker;->sNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    if-eqz v1, :cond_3e

    .line 3807
    invoke-interface {v1, p1}, Lcom/ss/android/medialib/listener/NativeInitListener;->onNativeInitCallBack(I)V

    .line 3809
    :cond_3e
    iput-boolean v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsRenderReady:Z

    return-void
.end method

.method public static onNativeCallback_onMonitorLogFloat(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 3

    .line 3949
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/String;Ljava/lang/String;F)Z

    return-void
.end method

.method public static onNativeCallback_onMonitorLogInt(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    int-to-long v0, p2

    .line 3944
    invoke-static {p0, p1, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->monitorTELog(Ljava/lang/String;Ljava/lang/String;J)Z

    return-void
.end method

.method private native registerStylePathsConverter(JJLcom/ss/android/medialib/style/StylePathConvertCallback;)J
.end method

.method public static declared-synchronized removeSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/ss/android/medialib/RecordInvoker;

    monitor-enter v0

    .line 900
    :try_start_3
    sget-object v1, Lcom/ss/android/medialib/RecordInvoker;->sSlamDetectListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 901
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p0
.end method

.method private native setCaptureMirror(JZ)V
.end method

.method private native setCaptureMirror2(JI)V
.end method

.method private native setCaptureResize(JZ[I[I)V
.end method

.method public static setDuetVideoCompleteCallback(Ljava/lang/Runnable;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1305
    sput-object p0, Lcom/ss/android/medialib/RecordInvoker;->sDuetCompleteRunable:Ljava/lang/Runnable;

    return-void
.end method

.method public static setFaceDetectListener(Lcom/ss/android/medialib/listener/FaceDetectListener;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1471
    sput-object p0, Lcom/ss/android/medialib/RecordInvoker;->sFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    return-void
.end method

.method private native setImageExposure(JF)V
.end method

.method public static declared-synchronized setMessageListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/ss/android/medialib/RecordInvoker;

    monitor-enter v0

    .line 146
    :try_start_3
    sput-object p0, Lcom/ss/android/medialib/RecordInvoker;->sMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 147
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static setNativeInitListener(Lcom/ss/android/medialib/listener/NativeInitListener;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 933
    sput-object p0, Lcom/ss/android/medialib/RecordInvoker;->sNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    return-void
.end method

.method public static setRecordStopCallback(Lcom/ss/android/medialib/RecordInvoker$RecordStopCallback;)V
    .registers 1

    .line 1072
    sput-object p0, Lcom/ss/android/medialib/RecordInvoker;->mRecordStopCallback:Lcom/ss/android/medialib/RecordInvoker$RecordStopCallback;

    return-void
.end method

.method public static declared-synchronized setSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/ss/android/medialib/RecordInvoker;

    monitor-enter v0

    .line 910
    :try_start_3
    invoke-static {p0}, Lcom/ss/android/medialib/RecordInvoker;->addSlamDetectListener(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 911
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p0
.end method


# virtual methods
.method public declared-synchronized addLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 3

    monitor-enter p0

    .line 887
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mLandmarkDetectListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 888
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 4166
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 4167
    const-string p0, "RecordInvoker"

    const-string p1, "recorder add metadata failed, no env..."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 4171
    :cond_11
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeAddMetadata(JLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v3
.end method

.method public addPCMData([BIJ)I
    .registers 16

    .line 657
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    cmp-long v0, p3, v2

    if-eqz v0, :cond_37

    .line 662
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long v2, v0, p3

    .line 664
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "nativeAddPCMData: delay = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", sysTime = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "RecordInvoker"

    invoke-static {p4, p3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    move-wide v9, v2

    .line 666
    iget-wide v5, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v4 .. v10}, Lcom/ss/android/medialib/RecordInvoker;->nativeAddPCMData(J[BIJ)I

    move-result p0

    return p0
.end method

.method public addPipRenderTarget(Landroid/view/Surface;IILandroid/graphics/Bitmap;Z)Z
    .registers 15

    .line 4641
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    const/4 v8, 0x0

    if-nez v0, :cond_11

    .line 4642
    const-string p0, "ae_style"

    const-string p1, "ae_style, addPipRenderTarget failed, no proxy"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_11
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 4646
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeAddPipRenderTargetSurface(JLandroid/view/Surface;IILandroid/graphics/Bitmap;Z)I

    move-result p0

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v8
.end method

.method public declared-synchronized addSlamDetectListener2(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    .line 917
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mSlamDetectListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1

    .line 919
    :cond_c
    :goto_c
    monitor-exit p0

    return-void
.end method

.method public addTrack(ILjava/lang/String;JJ)I
    .registers 16

    .line 2245
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_12

    .line 2246
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    :cond_12
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-wide v7, p5

    .line 2250
    invoke-direct/range {v0 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->nativeAddTrack(JILjava/lang/String;JJ)I

    move-result p0

    return p0
.end method

.method public allocateFrame(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 4102
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized animateImageToPreview(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    monitor-enter p0

    .line 2653
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 2654
    :try_start_9
    const-string p1, "RecordInvoker"

    const-string p2, "Native instance handle == 0 invalid."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_15

    .line 2655
    monitor-exit p0

    const p0, -0x186a0

    return p0

    :catchall_15
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_2e

    .line 2657
    :cond_19
    :try_start_19
    invoke-static {p2}, Lcom/ss/android/medialib/common/ImageUtils;->getRotation(Ljava/lang/String;)I

    move-result v6

    .line 2658
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_2b

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    :try_start_22
    invoke-virtual/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeAnimateImageToPreview(JLjava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_28

    monitor-exit v1

    return p0

    :catchall_28
    move-exception v0

    :goto_29
    move-object p1, v0

    goto :goto_2e

    :catchall_2b
    move-exception v0

    move-object v1, p0

    goto :goto_29

    :goto_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_28

    throw p1
.end method

.method public declared-synchronized animateImagesToPreview([Ljava/lang/String;[Ljava/nio/ByteBuffer;[I[I)I
    .registers 13

    monitor-enter p0

    .line 2662
    :try_start_1
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_19

    .line 2663
    :try_start_9
    const-string p1, "RecordInvoker"

    const-string p2, "Native instance handle == 0 invalid."

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_15

    .line 2664
    monitor-exit p0

    const p0, -0x186a0

    return p0

    :catchall_15
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_2a

    :cond_19
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 2666
    :try_start_1e
    invoke-direct/range {v1 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeAnimateImagesToPreview(J[Ljava/lang/String;[Ljava/nio/ByteBuffer;[I[I)I

    move-result p0
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_24

    monitor-exit v1

    return p0

    :catchall_24
    move-exception v0

    :goto_25
    move-object p1, v0

    goto :goto_2a

    :catchall_27
    move-exception v0

    move-object v1, p0

    goto :goto_25

    :goto_2a
    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_24

    throw p1
.end method

.method public appendComposerNodes([Ljava/lang/String;I)I
    .registers 7

    .line 2597
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2598
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2601
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeAppendComposerNodes(J[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public attachExtFrameData(Ljava/lang/Object;)V
    .registers 6

    .line 3061
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 3062
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3065
    :cond_10
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeAttachExtFrameData(JLjava/lang/Object;)V

    return-void
.end method

.method public bindEffectAudioProcessor(IIZ)I
    .registers 10

    .line 2506
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_13

    .line 2507
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_13
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 2510
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeBindEffectAudioProcessor(JIIZ)I

    move-result p0

    return p0
.end method

.method public cancelAll()V
    .registers 5

    .line 813
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 816
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeCancelAll(J)V

    return-void
.end method

.method public changeDuetVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 1281
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1284
    :cond_9
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeChangeDuetVideo(JLjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized changeMusicPath(Ljava/lang/String;)I
    .registers 6

    monitor-enter p0

    .line 498
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    .line 499
    monitor-exit p0

    const p0, -0x186a0

    return p0

    .line 501
    :cond_e
    :try_start_e
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeChangeMusicPath(JLjava/lang/String;)I

    move-result p1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_14

    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public changeOutputVideoSize(II)V
    .registers 7

    .line 820
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 823
    :cond_9
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeChangeOutputVideoSize(JII)V

    return-void
.end method

.method public declared-synchronized changePreviewRadioMode(I)V
    .registers 6

    monitor-enter p0

    .line 435
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 436
    monitor-exit p0

    return-void

    .line 438
    :cond_b
    :try_start_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeChangePreviewRadioMode(JI)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 439
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public changeRecordMode(I)V
    .registers 6

    .line 1243
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1246
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeChangeRecordMode(JI)V

    return-void
.end method

.method public declared-synchronized changeSurface(Landroid/view/Surface;)I
    .registers 6

    monitor-enter p0

    .line 427
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    .line 428
    monitor-exit p0

    const p0, -0x186a0

    return p0

    .line 431
    :cond_e
    :try_start_e
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeChangeSurface(JLandroid/view/Surface;)I

    move-result p1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_14

    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 9

    .line 2637
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_16

    .line 2638
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 2639
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    :cond_16
    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 2641
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeCheckComposerNodeExclusion(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 10

    .line 2645
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_16

    .line 2646
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 2647
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0

    :cond_16
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2649
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeCheckComposerNodeExclusion(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public chooseAreaFromRatio34(F)V
    .registers 6

    .line 827
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 830
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeChooseAreaFromRatio34(JF)V

    return-void
.end method

.method public chooseSlamFace(I)V
    .registers 6

    .line 2303
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2304
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2307
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeChooseSlamFace(JI)V

    return-void
.end method

.method public clearDisplayColor(FFFF)V
    .registers 12

    .line 1086
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 1087
    const-string p0, "RecordInvoker"

    const-string p1, "clearDisplayColor failed, no native layer"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1090
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeClearDisplayColor(JFFFF)V

    return-void
.end method

.method public clearFragFile()I
    .registers 5

    .line 760
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 763
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeClearFragFile(J)I

    move-result p0

    return p0
.end method

.method public declared-synchronized clearLandMarkDetectListener()V
    .registers 2

    monitor-enter p0

    .line 895
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mLandmarkDetectListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 896
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

.method public declared-synchronized clearSlamDetectListener2()V
    .registers 2

    monitor-enter p0

    .line 926
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mSlamDetectListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 927
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

.method public closeWavFile(Z)I
    .registers 6

    .line 671
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 674
    :cond_c
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeCloseWavFile(JZ)I

    move-result p1

    .line 676
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->save()I

    return p1
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I
    .registers 19

    .line 630
    monitor-enter p0

    .line 631
    :try_start_1
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_11

    const p1, -0x186a0

    .line 632
    monitor-exit p0

    return p1

    :catchall_e
    move-exception v0

    move-object p1, v0

    goto :goto_22

    .line 634
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_e

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 635
    invoke-direct/range {v1 .. v10}, Lcom/ss/android/medialib/RecordInvoker;->nativeConcat(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I

    move-result p0

    return p0

    .line 634
    :goto_22
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_e

    throw p1
.end method

.method public concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15

    .line 623
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .line 626
    invoke-direct/range {v0 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->nativeConcat(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)I

    move-result p0

    return p0
.end method

.method public configStyleResourceFinder(Landroid/content/res/AssetManager;)I
    .registers 6

    .line 187
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 191
    :cond_c
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeConfigStyleResourceFinder(JLandroid/content/res/AssetManager;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public createEncoder()V
    .registers 2

    .line 2863
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    if-nez v0, :cond_b

    .line 2864
    new-instance v0, Lcom/ss/android/medialib/AVCEncoder;

    invoke-direct {v0}, Lcom/ss/android/medialib/AVCEncoder;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    .line 2866
    :cond_b
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoder;->createEncoder()I

    return-void
.end method

.method public deleteLastFrag()I
    .registers 5

    .line 753
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 756
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeDeleteLastFrag(J)I

    move-result p0

    return p0
.end method

.method public destroyMessageCenter()V
    .registers 1

    .line 137
    invoke-static {p0}, Lcom/bef/effectsdk/message/MessageCenter;->removeListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    return-void
.end method

.method public disableRender(Z)V
    .registers 6

    .line 2193
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2194
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2197
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeDisableRender(JZ)V

    return-void
.end method

.method public enable3buffer(Z)V
    .registers 6

    .line 1002
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1005
    :cond_9
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnable3buffer(JZ)V

    return-void
.end method

.method public enableAbandonFirstFrame(Z)V
    .registers 6

    .line 2229
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2230
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2233
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableAbandonFirstFrame(JZ)V

    return-void
.end method

.method public declared-synchronized enableAudio(I)V
    .registers 6

    monitor-enter p0

    .line 378
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 379
    monitor-exit p0

    return-void

    .line 381
    :cond_b
    :try_start_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableAudio(JI)I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 382
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public enableAudioAlgorithmParam(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 3110
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 3111
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3114
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableAudioAlgorithmParam(JZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableAudioLoudnessBalanceFilter(ZD)V
    .registers 10

    .line 3118
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 3119
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    .line 3122
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableAudioLoudnessBalanceFilter(JZD)V

    return-void
.end method

.method public declared-synchronized enableAudioPlayerFromVE(I)V
    .registers 6

    monitor-enter p0

    .line 392
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 393
    monitor-exit p0

    return-void

    .line 395
    :cond_b
    :try_start_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableAudioPlayerFromVE(JI)I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 396
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public declared-synchronized enableAutoTestLog(Z)V
    .registers 6

    monitor-enter p0

    .line 406
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 407
    monitor-exit p0

    return-void

    .line 409
    :cond_b
    :try_start_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableAutoTestLog(JZ)I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 410
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public enableBachAlgorithm(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 3135
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 3136
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3139
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableBachAlgorithm(JZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableClearColorAfterRender(Z)V
    .registers 6

    .line 1023
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1026
    :cond_9
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableClearColorAfterRender(JZ)V

    return-void
.end method

.method public enableDuetGlFinish(Z)I
    .registers 6

    .line 2805
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2806
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2810
    :cond_13
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableDuetGlFinish(JZ)I

    move-result p0

    return p0
.end method

.method public enableEffect(Z)V
    .registers 6

    .line 2180
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2181
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2184
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableEffect(JZ)V

    return-void
.end method

.method public enableEffectBGM(Z)V
    .registers 6

    .line 2166
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2167
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2171
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableEffectBGM(JZ)V

    return-void
.end method

.method public enableEffectRT(Z)V
    .registers 6

    .line 1009
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1012
    :cond_9
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableEffectRT(JZ)V

    return-void
.end method

.method public enableFaceBeautifyDetect(I)V
    .registers 4

    .line 1579
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableFaceBeautifyDetect(JI)V

    return-void
.end method

.method public enableFaceExtInfo(I)V
    .registers 2

    .line 1875
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableFaceExtInfo(I)V

    return-void
.end method

.method public enableGetPropTrack(Z)I
    .registers 6

    .line 2835
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2836
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2840
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->natvieEnableGetPropTrack(JZ)I

    move-result p0

    return p0
.end method

.method public enableLandMark(Z)V
    .registers 6

    .line 2421
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2422
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2425
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableLandMark(JZ)V

    return-void
.end method

.method public enableLensProcess(IZ)V
    .registers 7

    .line 3089
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 3090
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3093
    :cond_10
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableLensProcess(JIZ)V

    return-void
.end method

.method public enableMakeUpBackground(Z)V
    .registers 6

    .line 1016
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1019
    :cond_9
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableMakeUpBackground(JZ)V

    return-void
.end method

.method public enablePBO(Z)V
    .registers 6

    .line 1718
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 1719
    const-string v0, "RecordInvoker"

    const-string v1, "invalid handle"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    :cond_f
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnablePBO(Z)V

    return-void
.end method

.method public enablePictureTestModel(ZZ)V
    .registers 7

    .line 1733
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 1734
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1737
    :cond_10
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnablePictureTestMode(JZZ)V

    return-void
.end method

.method public enablePreloadEffectRes(Z)V
    .registers 4

    .line 1583
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnablePreloadEffectResource(JZ)V

    return-void
.end method

.method public enableRecordBGMToMp4(Z)V
    .registers 6

    .line 1774
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 1775
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1778
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableRecordBGMToMp4(JZ)V

    return-void
.end method

.method public declared-synchronized enableRecordFlip(I)V
    .registers 6

    monitor-enter p0

    .line 385
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 386
    monitor-exit p0

    return-void

    .line 388
    :cond_b
    :try_start_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableRecordFlip(JI)I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 389
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public enableRecordMaxDuration(Z)I
    .registers 6

    .line 2786
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2787
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2790
    :cond_13
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableRecordMaxDuration(JZ)I

    move-result p0

    return p0
.end method

.method public enableRecordingMp4(Z)V
    .registers 6

    .line 253
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 256
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableRecordingMp4(JZ)V

    return-void
.end method

.method public enableScan(ZJ)V
    .registers 10

    .line 2405
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 2406
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    .line 2409
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableScan(JZJ)V

    return-void
.end method

.method public enableSceneRecognition(Z)V
    .registers 4

    .line 1563
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableSceneRecognition(JZ)V

    return-void
.end method

.method public enableShotScreenUseOesTexture(Z)V
    .registers 6

    .line 260
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 263
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableShotScreenUseOesTexture(JZ)V

    return-void
.end method

.method public enableSkeletonDetect(Z)V
    .registers 4

    .line 1571
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableSkeletonDetect(JZ)V

    return-void
.end method

.method public enableSmartBeauty(Z)V
    .registers 4

    .line 1575
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableSmartBeauty(JZ)V

    return-void
.end method

.method public enableStickerRecognition(Z)V
    .registers 4

    .line 1567
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableStickerRecognition(JZ)V

    return-void
.end method

.method public declared-synchronized enableTimestampCallback(Z)V
    .registers 6

    monitor-enter p0

    .line 399
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 400
    monitor-exit p0

    return-void

    .line 402
    :cond_b
    :try_start_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableTimestampCallback(JZ)I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 403
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public enableWaterMark(Z)V
    .registers 6

    .line 1725
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 1726
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1729
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeEnableWaterMark(JZ)V

    return-void
.end method

.method public fetchDistortionInfo(Lcom/ss/android/medialib/listener/DistortionInfoCallback;)Z
    .registers 6

    .line 4612
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return v3

    .line 4615
    :cond_a
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeFetchDistortionInfo(JLcom/ss/android/medialib/listener/DistortionInfoCallback;)I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v3
.end method

.method public forceFirstFrameHasEffect(Z)V
    .registers 6

    .line 995
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 998
    :cond_9
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeForceFirstFrameHasEffect(JZ)V

    return-void
.end method

.method public getAECSuggestVolume()[F
    .registers 5

    .line 2697
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x2

    if-nez v2, :cond_16

    .line 2698
    const-string p0, "RecordInvoker"

    const-string v0, "Native instance handle == 0 invalid."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    new-array p0, v3, [F

    fill-array-data p0, :array_26

    return-object p0

    .line 2701
    :cond_16
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetAECSuggestVolume(J)[F

    move-result-object p0

    if-nez p0, :cond_25

    .line 2703
    new-array p0, v3, [F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p0, v0

    const/4 v0, 0x1

    aput v1, p0, v0

    :cond_25
    return-object p0

    :array_26
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getAudioEndTime()J
    .registers 5

    .line 512
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const-wide/32 v0, -0x186a0

    return-wide v0

    .line 515
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetAudioEndTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getComposerNodePaths()Ljava/lang/String;
    .registers 5

    .line 2629
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 2630
    const-string p0, "RecordInvoker"

    const-string v0, "Native instance handle == 0 invalid."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    const-string p0, ""

    return-object p0

    .line 2633
    :cond_12
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetComposerNodePaths(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getComposerNodeValue(Ljava/lang/String;Ljava/lang/String;)F
    .registers 7

    .line 2621
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2622
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x383cb000    # -100000.0f

    return p0

    .line 2625
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetComposerNodeValue(JLjava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getEffectHandler()J
    .registers 5

    .line 2795
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2796
    const-string p0, "RecordInvoker"

    const-string v0, "Native instance handle == 0 invalid."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v0, -0x186a0

    return-wide v0

    .line 2800
    :cond_13
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetEffectHandler(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndFrameTime()J
    .registers 5

    .line 681
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const-wide/32 v0, -0x186a0

    return-wide v0

    .line 684
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetEndFrameTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnigmaResult()Lcom/ss/android/medialib/model/EnigmaResult;
    .registers 5

    .line 2397
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 2398
    const-string p0, "RecordInvoker"

    const-string v0, "invalid handle"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2401
    :cond_11
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetEnigmaResult(J)Lcom/ss/android/medialib/model/EnigmaResult;

    move-result-object p0

    return-object p0
.end method

.method public getFilterIntensity(Ljava/lang/String;)F
    .registers 6

    .line 1556
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x383cb000    # -100000.0f

    return p0

    .line 1559
    :cond_c
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetFilterIntensity(JLjava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getFrameByKey(Ljava/lang/String;)Lcom/ss/android/medialib/camera/ImageFrame;
    .registers 6

    .line 2766
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetFrameByKey(JLjava/lang/String;)Lcom/ss/android/medialib/camera/ImageFrame;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()J
    .registers 3

    .line 129
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    return-wide v0
.end method

.method public getLastAudioLength()J
    .registers 5

    .line 688
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const-wide/32 v0, -0x186a0

    return-wide v0

    .line 691
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetLastAudioLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRecordFps()F
    .registers 5

    .line 703
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 707
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetLastRecordFps(J)F

    move-result p0

    return p0
.end method

.method public getLastRecordFrameNum()I
    .registers 5

    .line 695
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 698
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetLastRecordFrameNum(J)I

    move-result p0

    return p0
.end method

.method public getLastRecordLagCount()I
    .registers 5

    .line 711
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 715
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetLastRecordLagCount(J)I

    move-result p0

    return p0
.end method

.method public getLastRecordLagMaxDuration()J
    .registers 5

    .line 719
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 723
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetLastRecordLagMaxDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRecordLagTotalDuration()J
    .registers 5

    .line 727
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    .line 731
    :cond_b
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetLastRecordLagTotalDuration(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMapBuffer()Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;
    .registers 5

    .line 2825
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 2826
    const-string p0, "RecordInvoker"

    const-string v0, "Native instance handle == 0 invalid."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2830
    :cond_11
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetMapBuffer(J)Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPerfStageCostByKey(Ljava/lang/String;)J
    .registers 6

    .line 744
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 745
    const-string p0, "RecordInvoker"

    const-string p1, "getPerfStageCostByKey failed"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0

    .line 749
    :cond_12
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetPerfStageCostByKey(JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getPreviewRenderRect()[I
    .registers 5

    .line 4154
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return-object v3

    :cond_a
    const/4 v2, 0x4

    .line 4159
    new-array v2, v2, [I

    .line 4160
    invoke-direct {p0, v0, v1, v2}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetPreviewRenderRect(J[I)I

    move-result p0

    if-nez p0, :cond_14

    return-object v2

    :cond_14
    return-object v3
.end method

.method public getReactionCamRotation()F
    .registers 5

    .line 1351
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x383cb000    # -100000.0f

    return p0

    .line 1354
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetReactionCamRotation(J)F

    move-result p0

    return p0
.end method

.method public getReactionCameraPosInRecordPixel()[I
    .registers 5

    .line 1365
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1368
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetReactionCameraPosInRecordPixel(J)[I

    move-result-object p0

    return-object p0
.end method

.method public getReactionCameraPosInViewPixel()[I
    .registers 5

    .line 1358
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1361
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetReactionCameraPosInViewPixel(J)[I

    move-result-object p0

    return-object p0
.end method

.method public getReactionPosMarginInViewPixel()[I
    .registers 5

    .line 1372
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1375
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetReactionPosMarginInViewPixel(J)[I

    move-result-object p0

    return-object p0
.end method

.method public getRecordedVideoPaths()[Ljava/lang/String;
    .registers 5

    .line 267
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 270
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetFragVideoPaths(J)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceMultiViewTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 2124
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 2125
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2128
    :cond_11
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetResourceMultiViewTag(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSequencePreviewFrame(IIZILjava/lang/String;Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;)I
    .registers 15

    .line 1170
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    .line 1173
    :cond_c
    iput-object p6, p0, Lcom/ss/android/medialib/RecordInvoker;->mGetTimestampCallback:Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    .line 1174
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetSequencePreviewFrame(JIIZILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getSlamFaceCount()I
    .registers 5

    .line 2295
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2296
    const-string p0, "RecordInvoker"

    const-string v0, "invalid handle"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2299
    :cond_13
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetSlamFaceCount(J)I

    move-result p0

    return p0
.end method

.method public getSmallWindowSnapshot(IILandroid/graphics/Bitmap;Lcom/ss/android/medialib/listener/SmallWindowSnapshotListener;)Z
    .registers 13

    .line 4626
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    const/4 v7, 0x0

    if-nez v0, :cond_a

    return v7

    :cond_a
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 4629
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeGetSmallWindowSnapshot(JIILandroid/graphics/Bitmap;Lcom/ss/android/medialib/listener/SmallWindowSnapshotListener;)I

    move-result p0

    if-nez p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v7
.end method

.method public getStyleAudioProxy()Lcom/ss/android/medialib/style/IStyleAudioProxyInterface;
    .registers 1

    .line 4637
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mStyleAudioProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;

    return-object p0
.end method

.method public getStyleProxy()Lcom/ss/android/medialib/style/IStyleProxyInterface;
    .registers 1

    .line 4633
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mStyleProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;

    return-object p0
.end method

.method public getTextureDeltaTime(Z)J
    .registers 2

    .line 3983
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mTextureTimeListener:Lcom/ss/android/medialib/listener/TextureTimeListener;

    if-eqz p0, :cond_9

    .line 3984
    invoke-interface {p0, p1}, Lcom/ss/android/medialib/listener/TextureTimeListener;->getTextureDeltaTime(Z)J

    move-result-wide p0

    return-wide p0

    :cond_9
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public handleEffectAudio(ZJ)V
    .registers 11

    .line 2148
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 2149
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2153
    :cond_10
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2154
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeHandleEffectAudio(JZJ)V

    :cond_1e
    return-void
.end method

.method public initAudioConfig(IIIII)I
    .registers 14

    .line 641
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 644
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitAudioConfig(JIIIII)I

    move-result p0

    return p0
.end method

.method public initAudioPlayer(Landroid/content/Context;Ljava/lang/String;J)I
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 464
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->initAudioPlayer(Landroid/content/Context;Ljava/lang/String;JZZ)I

    move-result p0

    return p0
.end method

.method public initAudioPlayer(Landroid/content/Context;Ljava/lang/String;JZZ)I
    .registers 19

    const/4 v0, 0x0

    .line 485
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 480
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 481
    const-string v4, "android.hardware.audio.low_latency"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v0, 0x1

    .line 482
    :cond_14
    const-string v3, "RecordInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "has low latency ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_32

    .line 485
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_36

    :cond_32
    invoke-static {p1}, Lcom/ss/android/medialib/utils/Utils;->getSystemAudioInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v3

    .line 487
    :goto_36
    const-string v2, "RecordInvoker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeSampleRate ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " nativeSamleBufferSize? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v2, "SM-A710F"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 489
    monitor-enter p0

    .line 490
    :try_start_61
    iget-wide v4, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_70

    const v0, -0x186a0

    .line 491
    monitor-exit p0

    return v0

    :catchall_6e
    move-exception v0

    goto :goto_96

    .line 493
    :cond_70
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v0, :cond_8e

    const/16 v0, 0x2d

    :goto_84
    move-wide v7, v4

    move v5, v2

    move-wide v2, v7

    move-object v1, p0

    move-object v4, p2

    move-wide v7, p3

    move/from16 v9, p5

    move v11, v0

    goto :goto_90

    :cond_8e
    const/4 v0, -0x1

    goto :goto_84

    :goto_90
    invoke-direct/range {v1 .. v11}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitAudioPlayer(JLjava/lang/String;IIJZZI)I

    move-result v0

    monitor-exit p0

    return v0

    .line 494
    :goto_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_61 .. :try_end_97} :catchall_6e

    throw v0
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

    .line 155
    invoke-virtual/range {v0 .. v10}, Lcom/ss/android/medialib/RecordInvoker;->initBeautyPlay(IILjava/lang/String;IILjava/lang/String;IZZZ)I

    move-result p0

    return p0
.end method

.method public initBeautyPlay(IILjava/lang/String;IILjava/lang/String;IZZZ)I
    .registers 26

    .line 159
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const/16 v0, 0x1388

    .line 160
    invoke-static {v0}, Lcom/ss/android/medialib/AVCEncoder;->setDrainWaitTimeout(I)V

    .line 161
    monitor-enter p0

    .line 162
    :try_start_c
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1b

    const v0, -0x186a0

    .line 163
    monitor-exit p0

    return v0

    :catchall_19
    move-exception v0

    goto :goto_62

    :cond_1b
    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    .line 165
    invoke-direct/range {v1 .. v14}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitBeautyPlay(JIILjava/lang/String;IILjava/lang/String;IZZZZ)I

    move-result v0

    if-nez v0, :cond_47

    .line 167
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "OPPO R7"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 168
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/ss/android/medialib/RecordInvoker;->nativeExpandPreviewAndRecordInterval(JZ)I

    :cond_47
    if-eqz p10, :cond_59

    .line 173
    iget-object v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mStyleProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;

    if-nez v2, :cond_54

    .line 174
    new-instance v2, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;

    invoke-direct {v2}, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;-><init>()V

    iput-object v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mStyleProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;

    .line 176
    :cond_54
    iget-object v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mStyleProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;

    invoke-virtual {v2, p0}, Lcom/ss/android/medialib/RecordInvoker$StyleProxyImpl;->attachNativeLayer(Lcom/ss/android/medialib/RecordInvoker;)V

    .line 178
    :cond_59
    iget-object v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mStyleAudioProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;

    if-eqz v2, :cond_60

    .line 179
    invoke-virtual {v2, p0}, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->attachNativeLayer(Lcom/ss/android/medialib/RecordInvoker;)V

    .line 182
    :cond_60
    monitor-exit p0

    return v0

    .line 183
    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_c .. :try_end_63} :catchall_19

    throw v0
.end method

.method public initBeautyPlayOnlyPreview(Lcom/ss/android/medialib/qr/ScanSettings;)I
    .registers 6

    .line 195
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const p0, -0x186a0

    return p0

    .line 199
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitBeautyPlayOnlyPreview(JLcom/ss/android/medialib/qr/ScanSettings;)I

    move-result p0

    return p0
.end method

.method public initDuet(Ljava/lang/String;FFFZZI)V
    .registers 18

    .line 1253
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 1256
    invoke-direct/range {v0 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitDuet(JLjava/lang/String;FFFZZI)I

    return-void
.end method

.method public initFaceBeautifyDetectExtParam(ZZZ)V
    .registers 10

    .line 1859
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 1860
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 1863
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitFaceBeautifyDetectExtParam(JZZZ)V

    return-void
.end method

.method public initFaceBeautyDetectExtParam(Z)V
    .registers 6

    .line 1851
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 1852
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1855
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitFaceBeautyDetectExtParam(JZ)V

    return-void
.end method

.method public initFaceDetectExtParam(IZZ)V
    .registers 10

    .line 1835
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 1836
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 1839
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitFaceDetectExtParam(JIZZ)V

    return-void
.end method

.method public initHDRNetDetectExtParam(ZLjava/lang/String;)V
    .registers 7

    .line 1867
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 1868
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1871
    :cond_10
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitHDRNetDetectExtParam(JZLjava/lang/String;)V

    return-void
.end method

.method public initHandDetectExtParam(III)V
    .registers 10

    .line 1843
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 1844
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 1847
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitHandDetectExtParam(JIII)V

    return-void
.end method

.method public initHardEncoderInAdvance()V
    .registers 2

    .line 2876
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    if-nez v0, :cond_b

    .line 2877
    new-instance v0, Lcom/ss/android/medialib/AVCEncoder;

    invoke-direct {v0}, Lcom/ss/android/medialib/AVCEncoder;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    :cond_b
    return-void
.end method

.method public initImageDrawer(I)I
    .registers 6

    .line 2498
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2499
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2502
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitImageDrawer(JI)I

    move-result p0

    return p0
.end method

.method public initMediaCodecSurface(Landroid/view/Surface;)I
    .registers 6

    .line 2882
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2883
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2886
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitMediaCodecSurface(JLandroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public initMessageCenter()V
    .registers 1

    .line 133
    invoke-static {p0}, Lcom/bef/effectsdk/message/MessageCenter;->addListener(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V

    return-void
.end method

.method public initReaction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1316
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_9

    return-void

    .line 1319
    :cond_9
    invoke-direct {p0, v0, v1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitReaction(JLjava/lang/String;)I

    return-void
.end method

.method public initWavFile(IID)I
    .registers 12

    .line 649
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    .line 652
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeInitWavFile(JIID)I

    move-result p0

    return p0
.end method

.method public isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z
    .registers 6

    .line 2679
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 2680
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2683
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ss/android/vesdk/VEGestureEvent;->ANY_SUPPORTED:Lcom/ss/android/vesdk/VEGestureEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1f

    const/4 p1, -0x1

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 2684
    :goto_23
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeIsGestureRegistered(JI)Z

    move-result p0

    return p0
.end method

.method public isSmallWinCameraRender()Z
    .registers 5

    .line 4619
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 4622
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeIsSmallWinCameraRender(J)Z

    move-result p0

    return p0
.end method

.method public isStickerEnabled()Z
    .registers 5

    .line 2347
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 2348
    const-string p0, "RecordInvoker"

    const-string v0, "invalid handle"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2351
    :cond_11
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeIsStickerEnabled(J)Z

    move-result p0

    return p0
.end method

.method public markPlayDone()I
    .registers 5

    .line 340
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 343
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeMarkPlayDone(J)I

    move-result p0

    return p0
.end method

.method public native nativeAnimateImageToPreview(JLjava/lang/String;Ljava/lang/String;I)I
.end method

.method public native nativeAppendComposerNodes(J[Ljava/lang/String;I)I
.end method

.method public native nativeAttachExtFrameData(JLjava/lang/Object;)V
.end method

.method public native nativeClearDisplayColor(JFFFF)V
.end method

.method public native nativeEnable3buffer(JZ)V
.end method

.method public native nativeEnableClearColorAfterRender(JZ)V
.end method

.method public native nativeEnableDuetGlFinish(JZ)I
.end method

.method public native nativeEnableEffectRT(JZ)V
.end method

.method public native nativeEnableMakeUpBackground(JZ)V
.end method

.method public native nativeEnableRecordMaxDuration(JZ)I
.end method

.method public native nativeForceFirstFrameHasEffect(JZ)V
.end method

.method public native nativeGetAECSuggestVolume(J)[F
.end method

.method public native nativeGetComposerNodePaths(J)Ljava/lang/String;
.end method

.method public native nativeGetComposerNodeValue(JLjava/lang/String;Ljava/lang/String;)F
.end method

.method public native nativeGetEffectHandler(J)J
.end method

.method public native nativeGetFrameByKey(JLjava/lang/String;)Lcom/ss/android/medialib/camera/ImageFrame;
.end method

.method public native nativeGetMapBuffer(J)Lcom/ss/android/vesdk/runtime/VEMapBufferInfo;
.end method

.method public native nativeIsGestureRegistered(JI)Z
.end method

.method public native nativePreviewDuetVideo(J)Z
.end method

.method public native nativeProcessTouchEvent2(JIFFFFII)Z
.end method

.method public native nativeReloadComposerNodes(J[Ljava/lang/String;I)I
.end method

.method public native nativeRemoveComposerNodes(J[Ljava/lang/String;I)I
.end method

.method public native nativeReplaceComposerNodes(J[Ljava/lang/String;I[Ljava/lang/String;I)I
.end method

.method public native nativeSetAlgorithmPreConfig(JII)I
.end method

.method public native nativeSetAudioDataInterface(JJ)I
.end method

.method public native nativeSetAudioDevice(JZ)I
.end method

.method public native nativeSetCaptureRenderWidth(JII)V
.end method

.method public native nativeSetClientState(JI)V
.end method

.method public native nativeSetCodecType(JI)I
.end method

.method public native nativeSetComposerMode(JII)I
.end method

.method public native nativeSetComposerNodes(J[Ljava/lang/String;I)I
.end method

.method public native nativeSetComposerResourcePath(JLjava/lang/String;)I
.end method

.method public native nativeSetDisplaySettings(JIJFIIIIFIIIIIIZI)I
.end method

.method public native nativeSetDropFrames(JI)V
.end method

.method public native nativeSetEffectMaxMemoryCache(JI)I
.end method

.method public native nativeSetEnableAEC(JZLjava/lang/String;)I
.end method

.method public native nativeSetEnableEarBack(JZ)I
.end method

.method public native nativeSetForceAlgorithmCnt(JI)V
.end method

.method public native nativeSetLoudness(JZI)I
.end method

.method public native nativeSetMaleMakeupState(JZ)I
.end method

.method public native nativeSetMicInputAudioDataInterface(JJ)I
.end method

.method public native nativeSetPreviewDuetVideoPaused(JZ)V
.end method

.method public native nativeSetPreviewRadioListener(JLcom/ss/android/medialib/RecordInvoker$OnPreviewRadioListener;)I
.end method

.method public native nativeSetRecordContentType(JZ)V
.end method

.method public native nativeSetRecordMaxDuration(JJ)I
.end method

.method public native nativeSetStickerRequestCallback(JLcom/ss/android/medialib/presenter/IStickerRequestCallback;)I
.end method

.method public native nativeSetVEEffectParams(JLcom/ss/android/vesdk/VEEffectParams;)I
.end method

.method public native nativeSuspendGestureRecognizer(JIZ)Z
.end method

.method public native nativeTurnToOffScreenRender(J)I
.end method

.method public native nativeUpdateComposerNode(JLjava/lang/String;Ljava/lang/String;F)I
.end method

.method public native nativeUpdateMultiComposerNodes(JI[Ljava/lang/String;[Ljava/lang/String;[F)I
.end method

.method public native nativeUseAudioGraphOutput(JZZZZ)I
.end method

.method public onAudioCallback([BI)V
    .registers 7

    .line 804
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    goto :goto_14

    .line 807
    :cond_9
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 808
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeOnAudioCallback(J[BI)I

    :cond_14
    :goto_14
    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onDrawFrame(I[FZ)I
    .registers 10

    .line 526
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .line 529
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeOnFrameAvailable(JI[FZ)I

    move-result p0

    return p0
.end method

.method public onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;IZ)I
    .registers 18

    .line 564
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    const v0, -0x186a0

    return v0

    .line 567
    :cond_c
    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 568
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v6

    move-object v0, p0

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->nativeOnDrawFrameBuffer3(J[BIIIIZ)I

    goto :goto_7f

    .line 569
    :cond_2e
    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_7f

    const/4 v1, 0x2

    .line 570
    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 571
    new-array v4, v4, [Ljava/nio/ByteBuffer;

    .line 572
    new-instance v6, Lcom/ss/android/medialib/PlanFrame;

    invoke-direct {v6, p1}, Lcom/ss/android/medialib/PlanFrame;-><init>(Lcom/ss/android/medialib/camera/ImageFrame;)V

    invoke-virtual {v6, v2, v4}, Lcom/ss/android/medialib/PlanFrame;->convert([[I[Ljava/nio/ByteBuffer;)Z

    move-result v6

    if-eqz v6, :cond_7f

    move v8, v1

    move-object v6, v2

    .line 573
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move v9, v3

    aget-object v3, v4, v5

    aget-object v5, v6, v5

    move-object v10, v4

    move-object v4, v5

    aget-object v5, v10, v9

    aget-object v9, v6, v9

    aget-object v10, v10, v8

    aget-object v8, v6, v8

    move-object v6, v9

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v9

    move-object v7, v10

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v11

    move-object v0, p0

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/ss/android/medialib/RecordInvoker;->nativeOnDrawFrameBuffer4(JLjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIIIIZ)I

    move-result v0

    return v0

    :cond_7f
    :goto_7f
    const/4 v0, -0x1

    return v0
.end method

.method public onDrawFrame(Lcom/ss/android/medialib/camera/ImageFrame;Z)I
    .registers 16

    .line 547
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    const v0, -0x186a0

    return v0

    .line 550
    :cond_c
    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 551
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v6

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeOnDrawFrameBuffer(J[BIIIZ)I

    goto :goto_79

    .line 552
    :cond_2b
    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_79

    const/4 v1, 0x2

    .line 553
    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 554
    new-array v4, v4, [Ljava/nio/ByteBuffer;

    .line 555
    new-instance v6, Lcom/ss/android/medialib/PlanFrame;

    invoke-direct {v6, p1}, Lcom/ss/android/medialib/PlanFrame;-><init>(Lcom/ss/android/medialib/camera/ImageFrame;)V

    invoke-virtual {v6, v2, v4}, Lcom/ss/android/medialib/PlanFrame;->convert([[I[Ljava/nio/ByteBuffer;)Z

    move-result v6

    if-eqz v6, :cond_79

    move v8, v1

    move-object v6, v2

    .line 556
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move v9, v3

    aget-object v3, v4, v5

    aget-object v5, v6, v5

    move-object v10, v4

    move-object v4, v5

    aget-object v5, v10, v9

    aget-object v9, v6, v9

    aget-object v10, v10, v8

    aget-object v8, v6, v8

    move-object v6, v9

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v9

    move-object v7, v10

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v11

    move-object v0, p0

    move v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/ss/android/medialib/RecordInvoker;->nativeOnDrawFrameBuffer2(JLjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIIIZ)I

    move-result v0

    return v0

    :cond_79
    :goto_79
    const/4 v0, -0x1

    return v0
.end method

.method public onDrawFrameTime(D)I
    .registers 7

    .line 581
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 584
    :cond_c
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeOnFrameTime(JD)I

    move-result p0

    return p0
.end method

.method public onDuetVideoComplete()V
    .registers 1

    .line 3933
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mDuetCompleteRunable:Ljava/lang/Runnable;

    if-eqz p0, :cond_7

    .line 3934
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 3938
    :cond_7
    sget-object p0, Lcom/ss/android/medialib/RecordInvoker;->sDuetCompleteRunable:Ljava/lang/Runnable;

    if-eqz p0, :cond_e

    .line 3939
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method

.method public onFirstFrameRenderInfo(IID)V
    .registers 8

    const/4 p0, 0x0

    if-nez p1, :cond_28

    .line 3958
    sget-wide p1, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeCameraOpenTimeStamp:J

    long-to-double p1, p1

    sub-double p1, p3, p1

    const-string v0, "te_preview_first_frame_screen_time"

    invoke-static {p0, v0, p1, p2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    .line 3959
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Camera Preview First Frame Cost: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p1, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeCameraOpenTimeStamp:J

    long-to-double p1, p1

    sub-double/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordInvoker"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    const/4 v0, 0x1

    if-ne p1, v0, :cond_47

    .line 3962
    sget-wide v1, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeSwitchCameraTimeStamp:J

    long-to-double v1, v1

    sub-double v1, p3, v1

    const-string p1, "te_preview_switch_camera_screen_time"

    invoke-static {p0, p1, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    .line 3963
    sget-wide p0, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeSwitchCameraTimeStamp:J

    long-to-double p0, p0

    sub-double/2addr p3, p0

    if-ne p2, v0, :cond_3e

    .line 3965
    const-string p0, "te_preview_first_frame_on_screen_b2f"

    goto :goto_40

    :cond_3e
    const-string p0, "te_preview_first_frame_on_screen_f2b"

    .line 3966
    :goto_40
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 3965
    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->logMonitorInfo(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_47
    return-void
.end method

.method public onMessageReceived(IIILjava/lang/String;)V
    .registers 17

    move v9, p3

    move-object/from16 v10, p4

    .line 965
    const-class v11, Lcom/ss/android/medialib/RecordInvoker;

    monitor-enter v11

    .line 966
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    if-eqz v0, :cond_10

    .line 968
    invoke-interface {v0, p1, p2, p3, v10}, Lcom/bef/effectsdk/message/MessageCenter$Listener;->onMessageReceived(IIILjava/lang/String;)V

    goto :goto_10

    :catchall_e
    move-exception v0

    goto :goto_66

    .line 972
    :cond_10
    :goto_10
    sget-object v0, Lcom/ss/android/medialib/RecordInvoker;->sMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    if-eqz v0, :cond_17

    .line 973
    invoke-interface {v0, p1, p2, p3, v10}, Lcom/bef/effectsdk/message/MessageCenter$Listener;->onMessageReceived(IIILjava/lang/String;)V

    .line 976
    :cond_17
    const-string v0, "RecordInvoker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",arg3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_e

    const/16 v0, 0x48

    if-ne p1, v0, :cond_57

    .line 980
    :try_start_39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 981
    const-string v3, "recordRate"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    move-wide v5, v3

    int-to-long v3, p2

    move-wide v7, v5

    int-to-long v5, v9

    .line 982
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->sendEffectMsg(IJJLjava/lang/String;Z)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_52} :catch_53
    .catchall {:try_start_39 .. :try_end_52} :catchall_e

    goto :goto_57

    :catch_53
    move-exception v0

    .line 984
    :try_start_54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_57
    :goto_57
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_64

    int-to-long v3, p2

    int-to-long v5, v9

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move-object v7, v10

    .line 989
    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->sendEffectMsg(IJJLjava/lang/String;Z)V

    .line 991
    :cond_64
    monitor-exit v11

    return-void

    :goto_66
    monitor-exit v11
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_e

    throw v0
.end method

.method public onNativeCall_GenerateUUID()Ljava/lang/String;
    .registers 1

    .line 4732
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onNativeCallback_InitHardEncoder(IIIIIIZI)Landroid/view/Surface;
    .registers 11

    .line 3813
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz v0, :cond_12

    .line 3814
    const-string v0, "RecordInvoker"

    const-string v1, "InitHardEncoder"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3815
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    invoke-interface/range {p0 .. p8}, Lcom/ss/android/medialib/AVCEncoderInterface;->onInitHardEncoder(IIIIIIZI)Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public onNativeCallback_InitHardEncoderRet(II)V
    .registers 6

    .line 3829
    const-string v0, "onInitHardEncoderRet"

    const-string v1, "RecordInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCPUEncode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3831
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    if-eqz p0, :cond_22

    .line 3832
    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/listener/NativeInitListener;->onNativeInitHardEncoderRetCallback(II)V

    .line 3834
    :cond_22
    sget-object p0, Lcom/ss/android/medialib/RecordInvoker;->sNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    if-eqz p0, :cond_29

    .line 3835
    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/listener/NativeInitListener;->onNativeInitHardEncoderRetCallback(II)V

    :cond_29
    return-void
.end method

.method public onNativeCallback_UninitHardEncoder()V
    .registers 3

    .line 3840
    const-string v0, " onUninitHardEncoder == enter"

    const-string v1, "RecordInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3842
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz p0, :cond_e

    .line 3843
    invoke-interface {p0}, Lcom/ss/android/medialib/AVCEncoderInterface;->onUninitHardEncoder()V

    .line 3845
    :cond_e
    const-string p0, " onUninitHardEncoder == exit"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNativeCallback_encodeData([BIZ)V
    .registers 4

    .line 3849
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    if-eqz p0, :cond_7

    .line 3850
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/medialib/AVCEncoderInterface;->onEncoderData([BIZ)V

    :cond_7
    return-void
.end method

.method public onNativeCallback_encodeTexture(IIZ)I
    .registers 5

    .line 3855
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mEncoderCaller:Lcom/ss/android/medialib/AVCEncoderInterface;

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 3856
    invoke-interface {p0, p1, p2, v0, p3}, Lcom/ss/android/medialib/AVCEncoderInterface;->onEncoderData(IIIZ)I

    move-result p0

    return p0

    :cond_a
    return v0
.end method

.method public onNativeCallback_onFaceDetect(II)V
    .registers 5

    .line 3885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeautyInvoker onFaceDetect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3886
    sget-object v0, Lcom/ss/android/medialib/RecordInvoker;->sFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    if-eqz v0, :cond_1d

    .line 3887
    invoke-interface {v0, p1, p2}, Lcom/ss/android/medialib/listener/FaceDetectListener;->onResult(II)V

    .line 3890
    :cond_1d
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    if-eqz p0, :cond_24

    .line 3891
    invoke-interface {p0, p1, p2}, Lcom/ss/android/medialib/listener/FaceDetectListener;->onResult(II)V

    :cond_24
    return-void
.end method

.method public onNativeCallback_onLandMarkDetect(Z)V
    .registers 5

    .line 3916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3918
    const-class v1, Lcom/ss/android/medialib/RecordInvoker;

    monitor-enter v1

    .line 3919
    :try_start_8
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mLandmarkDetectListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/vesdk/VELandMarkDetectListener;

    .line 3920
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_1e
    move-exception p0

    goto :goto_37

    .line 3922
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1e

    .line 3924
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :cond_26
    :goto_26
    if-ge v1, p0, :cond_36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/ss/android/vesdk/VELandMarkDetectListener;

    if-eqz v2, :cond_26

    .line 3926
    invoke-interface {v2, p1}, Lcom/ss/android/vesdk/VELandMarkDetectListener;->onLandMark(Z)V

    goto :goto_26

    :cond_36
    return-void

    .line 3922
    :goto_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_1e

    throw p0
.end method

.method public onNativeCallback_onOpenGLCreate()V
    .registers 3

    .line 3862
    const-string v0, "RecordInvoker"

    const-string v1, "onNativeCallback_onOpenGLCreate"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3863
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    if-eqz p0, :cond_e

    .line 3864
    invoke-interface {p0}, Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;->onOpenGLCreate()V

    :cond_e
    return-void
.end method

.method public onNativeCallback_onOpenGLDestroy()V
    .registers 3

    .line 3878
    const-string v0, "RecordInvoker"

    const-string v1, "onNativeCallback_onOpenGLDestroy"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3879
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    if-eqz p0, :cond_e

    .line 3880
    invoke-interface {p0}, Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;->onOpenGLDestroy()V

    :cond_e
    return-void
.end method

.method public onNativeCallback_onOpenGLRunning()I
    .registers 3

    .line 3869
    const-string v0, "RecordInvoker"

    const-string v1, "onNativeCallback_onOpenGLRunning"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3871
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    if-eqz p0, :cond_10

    .line 3872
    invoke-interface {p0}, Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;->onOpenGLRunning()I

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onNativeCallback_onShotScreen(IJ)V
    .registers 7

    monitor-enter p0

    .line 3972
    :try_start_1
    const-string v0, "RecordInvoker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNativeCallback_onShotScreen: ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeStamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3973
    iput-boolean v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsDuringScreenshot:Z

    .line 3974
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

    if-eqz v0, :cond_2c

    .line 3975
    invoke-interface {v0, p1}, Lcom/ss/android/medialib/common/Common$IShotScreenCallback;->onShotScreen(I)V

    goto :goto_2c

    :catchall_2a
    move-exception p1

    goto :goto_36

    .line 3977
    :cond_2c
    :goto_2c
    iget-object p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mGetTimestampCallback:Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;

    if-eqz p1, :cond_34

    long-to-double p2, p2

    .line 3978
    invoke-interface {p1, p2, p3}, Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;->getTimestamp(D)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_2a

    .line 3980
    :cond_34
    monitor-exit p0

    return-void

    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_2a

    throw p1
.end method

.method public onNativeCallback_onSlamDetect(Z)V
    .registers 6

    .line 3896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3898
    const-class v1, Lcom/ss/android/medialib/RecordInvoker;

    monitor-enter v1

    .line 3899
    :try_start_8
    sget-object v2, Lcom/ss/android/medialib/RecordInvoker;->sSlamDetectListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/medialib/listener/SlamDetectListener;

    .line 3900
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_1e
    move-exception p0

    goto :goto_4d

    .line 3903
    :cond_20
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mSlamDetectListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/medialib/listener/SlamDetectListener;

    .line 3904
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 3906
    :cond_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_1e

    .line 3908
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :cond_3c
    :goto_3c
    if-ge v1, p0, :cond_4c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/ss/android/medialib/listener/SlamDetectListener;

    if-eqz v2, :cond_3c

    .line 3910
    invoke-interface {v2, p1}, Lcom/ss/android/medialib/listener/SlamDetectListener;->onSlam(Z)V

    goto :goto_3c

    :cond_4c
    return-void

    .line 3906
    :goto_4d
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_1e

    throw p0
.end method

.method public onNativeDuetProcess(JZ)V
    .registers 4

    .line 4014
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->onDuetProcessListener:Lcom/ss/android/medialib/presenter/VEVideoController$OnDuetProcessListener;

    if-eqz p0, :cond_7

    .line 4015
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseDuetProcessListener;->onProcess(JZ)V

    :cond_7
    return-void
.end method

.method public onNativeRecordStop()V
    .registers 1

    .line 3990
    sget-object p0, Lcom/ss/android/medialib/RecordInvoker;->mRecordStopCallback:Lcom/ss/android/medialib/RecordInvoker$RecordStopCallback;

    if-eqz p0, :cond_7

    .line 3991
    invoke-interface {p0}, Lcom/ss/android/medialib/RecordInvoker$RecordStopCallback;->onStop()V

    :cond_7
    return-void
.end method

.method public onNativeVideoBgEOF()V
    .registers 1

    .line 3999
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->onVideoEOFListener:Lcom/ss/android/medialib/presenter/VEVideoController$VEOnVideoEOFListener;

    if-eqz p0, :cond_7

    .line 4000
    invoke-interface {p0}, Lcom/ss/android/medialib/presenter/ITEVideoController$VEOnBaseVideoEOFListener;->onEOF()V

    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 4659
    const-string v0, "RecordInvoker"

    const-string v1, "reset screenshot flag for next capture"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4660
    iput-boolean v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsDuringScreenshot:Z

    return-void
.end method

.method public pauseEffectAudio(Z)V
    .registers 6

    .line 2137
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 2138
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2142
    :cond_10
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2143
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativePauseEffectAudio(JZ)I

    :cond_1b
    return-void
.end method

.method public pauseRender()I
    .registers 5

    .line 3037
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 3038
    const-string p0, "RecordInvoker"

    const-string v0, "Native instance handle == 0 invalid."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 3041
    :cond_13
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativePauseRender(J)I

    move-result p0

    return p0
.end method

.method public posInReactionRegion(II)Z
    .registers 7

    .line 1400
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1403
    :cond_a
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativePosInReactionRegion(JII)Z

    move-result p0

    return p0
.end method

.method public postDuetAction(IJ)I
    .registers 10

    .line 1453
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativePostDuetAction(JIJ)I

    move-result p0

    return p0
.end method

.method public previewDuetVideo()Z
    .registers 5

    .line 1274
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1277
    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativePreviewDuetVideo(J)Z

    move-result p0

    return p0
.end method

.method public previewVideoBg()V
    .registers 5

    .line 1439
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1442
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativePreviewVideoBg(J)V

    return-void
.end method

.method public processTouchEvent(FF)I
    .registers 7

    .line 1983
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1984
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1988
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 1992
    :cond_1d
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeProcessTouchEvent(JFF)I

    move-result p0

    return p0
.end method

.method public processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z
    .registers 13

    .line 2670
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_11

    .line 2671
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2674
    :cond_11
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getPointerId()I

    move-result v3

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getY()F

    move-result v5

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getForce()F

    move-result v6

    .line 2675
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getMajorRadius()F

    move-result v7

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getEvent()Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    move-object v0, p0

    move v9, p2

    .line 2674
    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->nativeProcessTouchEvent2(JIFFFFII)Z

    move-result p0

    return p0
.end method

.method public recoverCherEffect([Ljava/lang/String;[D[Z)V
    .registers 10

    .line 2473
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 2474
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 2478
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeRecoverCherEffect(J[Ljava/lang/String;[D[Z)V

    return-void
.end method

.method public regBachAlgorithmCallback(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VEBachAlgorithmCallback;",
            ">;)V"
        }
    .end annotation

    .line 3143
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 3144
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3147
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeRegBachAlgorithmCallback(JLjava/util/List;)I

    return-void
.end method

.method public registerCherEffectParamCallback(Lcom/ss/android/medialib/RecordInvoker$OnCherEffectParmaCallback;)V
    .registers 6

    .line 2464
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2465
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2469
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeRegisterCherEffectParamCallback(JLcom/ss/android/medialib/RecordInvoker$OnCherEffectParmaCallback;)V

    return-void
.end method

.method public registerEffectAlgorithmCallback(Lcom/ss/android/medialib/RecordInvoker$EffectAlgorithmCallback;)V
    .registers 6

    .line 2372
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2373
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2376
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeRegisterEffectAlgorithmCallback(JLcom/ss/android/medialib/RecordInvoker$EffectAlgorithmCallback;)V

    return-void
.end method

.method public registerFaceResultCallback(ZLcom/ss/android/medialib/RecordInvoker$FaceResultCallback;)V
    .registers 7

    .line 2355
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2356
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2359
    :cond_10
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeRegisterFaceResultCallback(JZLcom/ss/android/medialib/RecordInvoker$FaceResultCallback;)V

    return-void
.end method

.method public registerHandDetectCallback([ILcom/ss/android/medialib/RecordInvoker$OnHandDetectCallback;)V
    .registers 7

    .line 2429
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2430
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2434
    :cond_10
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeRegisterHandDetectCallback(J[ILcom/ss/android/medialib/RecordInvoker$OnHandDetectCallback;)V

    return-void
.end method

.method public registerSceneDetectCallback(Lcom/ss/android/medialib/RecordInvoker$OnSceneDetectCallback;)V
    .registers 6

    .line 2438
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2439
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2443
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeRegisterSceneDetectCallback(JLcom/ss/android/medialib/RecordInvoker$OnSceneDetectCallback;)V

    return-void
.end method

.method public registerSkeletonDetectCallback(Lcom/ss/android/medialib/RecordInvoker$OnSkeletonDetectCallback;)V
    .registers 6

    .line 2448
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2449
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2452
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeRegisterSkeletonDetectCallback(JLcom/ss/android/medialib/RecordInvoker$OnSkeletonDetectCallback;)V

    return-void
.end method

.method public registerSmartBeautyCallback(Lcom/ss/android/medialib/RecordInvoker$OnSmartBeautyCallback;)V
    .registers 6

    .line 2456
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2457
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2460
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeRegisterSmartBeautyCallback(JLcom/ss/android/medialib/RecordInvoker$OnSmartBeautyCallback;)V

    return-void
.end method

.method public releaseEncoder()V
    .registers 1

    .line 2870
    iget-object p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mAVCEncoder:Lcom/ss/android/medialib/AVCEncoder;

    if-eqz p0, :cond_7

    .line 2871
    invoke-virtual {p0}, Lcom/ss/android/medialib/AVCEncoder;->releaseEncoder()V

    :cond_7
    return-void
.end method

.method public releaseGPUResources()V
    .registers 5

    .line 322
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 325
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeReleaseGPUResources(J)V

    return-void
.end method

.method public reloadComposerNodes([Ljava/lang/String;I)I
    .registers 7

    .line 2589
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2590
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2593
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeReloadComposerNodes(J[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public removeComposerNodes([Ljava/lang/String;I)I
    .registers 7

    .line 2605
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2606
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2609
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeRemoveComposerNodes(J[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public declared-synchronized removeLandMarkDetectListener(Lcom/ss/android/vesdk/VELandMarkDetectListener;)V
    .registers 3

    monitor-enter p0

    .line 891
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mLandmarkDetectListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 892
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized removeSlamDetectListener2(Lcom/ss/android/medialib/listener/SlamDetectListener;)V
    .registers 3

    monitor-enter p0

    .line 922
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mSlamDetectListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 923
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public removeTrack(II)I
    .registers 7

    .line 2254
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 2255
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 2258
    :cond_12
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeRemoveTrack(JII)I

    move-result p0

    return p0
.end method

.method public renderPicture(Lcom/ss/android/medialib/camera/ImageFrame;IILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;)I
    .registers 22

    move-object/from16 v0, p0

    .line 1199
    iget-wide v1, v0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    const v0, -0x186a0

    return v0

    .line 1202
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 1203
    iget-wide v1, v0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v4

    array-length v4, v4

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeRenderPicture(J[BIIILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;)I

    move-result v0

    return v0

    .line 1204
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_83

    const/4 v1, 0x2

    .line 1206
    new-array v2, v1, [I

    const/4 v3, 0x1

    const/4 v4, 0x3

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 1207
    new-array v4, v4, [Ljava/nio/ByteBuffer;

    .line 1208
    new-instance v6, Lcom/ss/android/medialib/PlanFrame;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Lcom/ss/android/medialib/PlanFrame;-><init>(Lcom/ss/android/medialib/camera/ImageFrame;)V

    invoke-virtual {v6, v2, v4}, Lcom/ss/android/medialib/PlanFrame;->convert([[I[Ljava/nio/ByteBuffer;)Z

    move-result v6

    if-eqz v6, :cond_81

    move-object v6, v2

    move v8, v3

    .line 1209
    iget-wide v2, v0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v9, v4

    aget-object v4, v9, v5

    aget-object v5, v6, v5

    move-object v10, v6

    aget-object v6, v9, v8

    aget-object v8, v10, v8

    aget-object v9, v9, v1

    aget-object v1, v10, v1

    invoke-virtual {v7}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v10

    .line 1210
    invoke-virtual {v7}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v12

    const/16 v16, 0x0

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-object v7, v8

    move-object v8, v9

    move-object v9, v1

    move-object v1, v0

    .line 1209
    invoke-direct/range {v1 .. v16}, Lcom/ss/android/medialib/RecordInvoker;->nativeRenderPicture2(JLjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIIIIILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    :cond_81
    const/4 v0, -0x1

    return v0

    :cond_83
    move-object/from16 v7, p1

    .line 1212
    invoke-virtual {v7}, Lcom/ss/android/medialib/camera/ImageFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_9d

    .line 1213
    iget-wide v1, v0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-virtual {v7}, Lcom/ss/android/medialib/camera/ImageFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v7, 0x0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeRenderPicture3(JLandroid/graphics/Bitmap;IILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    .line 1215
    :cond_9d
    iget-wide v1, v0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeRenderPicture(J[BIIILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;)I

    move-result v0

    return v0
.end method

.method public renderPictureToBitmap(Lcom/ss/android/medialib/camera/ImageFrame;IILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;Landroid/graphics/Bitmap;)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1222
    iget-wide v2, v0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    const v0, -0x186a0

    return v0

    .line 1226
    :cond_10
    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 1227
    iget-wide v2, v0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-wide v4, v2

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBuf()[B

    move-result-object v2

    array-length v2, v2

    move-wide v6, v4

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v5

    move-wide v7, v6

    iget v6, v1, Lcom/ss/android/medialib/camera/ImageFrame;->width:I

    move-wide v8, v7

    iget v7, v1, Lcom/ss/android/medialib/camera/ImageFrame;->height:I

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move v4, v2

    move-wide v1, v8

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v0 .. v11}, Lcom/ss/android/medialib/RecordInvoker;->nativeRenderPictureToBitmap(J[BIIIIIILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    .line 1229
    :cond_3c
    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_93

    const/4 v2, 0x2

    .line 1230
    new-array v3, v2, [I

    const/4 v4, 0x1

    const/4 v5, 0x3

    aput v5, v3, v4

    const/4 v6, 0x0

    aput v5, v3, v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 1231
    new-array v5, v5, [Ljava/nio/ByteBuffer;

    .line 1232
    new-instance v7, Lcom/ss/android/medialib/PlanFrame;

    invoke-direct {v7, v1}, Lcom/ss/android/medialib/PlanFrame;-><init>(Lcom/ss/android/medialib/camera/ImageFrame;)V

    invoke-virtual {v7, v3, v5}, Lcom/ss/android/medialib/PlanFrame;->convert([[I[Ljava/nio/ByteBuffer;)Z

    move-result v7

    if-eqz v7, :cond_ac

    move v8, v2

    move-object v7, v3

    .line 1233
    iget-wide v2, v0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move v9, v4

    aget-object v4, v5, v6

    aget-object v6, v7, v6

    move-object v10, v5

    move-object v5, v6

    aget-object v6, v10, v9

    aget-object v9, v7, v9

    aget-object v10, v10, v8

    aget-object v7, v7, v8

    move-object v8, v10

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getFormat()I

    move-result v10

    .line 1234
    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getWidth()I

    move-result v11

    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getHeight()I

    move-result v12

    move-object v1, v9

    move-object v9, v7

    move-object v7, v1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object v1, v0

    .line 1233
    invoke-direct/range {v1 .. v16}, Lcom/ss/android/medialib/RecordInvoker;->nativeRenderPicture2(JLjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[ILjava/nio/ByteBuffer;[IIIIIILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    .line 1236
    :cond_93
    invoke-virtual {v1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_ac

    .line 1237
    iget-wide v1, v0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/medialib/camera/ImageFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeRenderPicture3(JLandroid/graphics/Bitmap;IILcom/ss/android/medialib/RecordInvoker$OnPictureCallbackV2;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0

    :cond_ac
    const/4 v0, -0x1

    return v0
.end method

.method public replaceComposerNodes([Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 12

    .line 2613
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_13

    .line 2614
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_13
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    .line 2617
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeReplaceComposerNodes(J[Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public resetPerfStats()V
    .registers 5

    .line 774
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 777
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeResetPerfStats(J)V

    return-void
.end method

.method public rotateReactionWindow(F)F
    .registers 6

    .line 1344
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x383cb000    # -100000.0f

    return p0

    .line 1347
    :cond_c
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeRotateReactionWindow(JF)F

    move-result p0

    return p0
.end method

.method public save()I
    .registers 5

    .line 315
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 318
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSave(J)I

    move-result p0

    return p0
.end method

.method public scaleReactionWindow(F)[I
    .registers 6

    .line 1337
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1340
    :cond_a
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeScaleReactionWindow(JF)[I

    move-result-object p0

    return-object p0
.end method

.method public seekTrack(IIJ)I
    .registers 12

    .line 2262
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_12

    .line 2263
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    :cond_12
    move-object v0, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    .line 2266
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeSeekTrack(JIIJ)I

    move-result p0

    return p0
.end method

.method public sendEffectMsg(IJJLjava/lang/String;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 2327
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->sendEffectMsg(IJJLjava/lang/String;Z)V

    return-void
.end method

.method public sendEffectMsg(IJJLjava/lang/String;Z)V
    .registers 18

    .line 2339
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 2340
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 2343
    invoke-direct/range {v0 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->nativeSendEffectMsg(JIJJLjava/lang/String;Z)V

    return-void
.end method

.method public sendEffectMsg(IJJ[B)V
    .registers 16

    .line 2331
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 2332
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    .line 2335
    invoke-direct/range {v0 .. v8}, Lcom/ss/android/medialib/RecordInvoker;->nativeSendEffectMsgWithData(JIJJ[B)V

    return-void
.end method

.method public setARCoreParam(Lcom/ss/android/vesdk/VEARCoreParam;)V
    .registers 6

    .line 3127
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 3128
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3131
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetARCoreParam(JLcom/ss/android/vesdk/VEARCoreParam;)V

    return-void
.end method

.method public setAlgorithmChangeMsg(IZ)V
    .registers 7

    .line 2311
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2312
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2315
    :cond_10
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetAlgorithmChangeMsg(JIZ)V

    return-void
.end method

.method public setAlgorithmPreConfig(II)I
    .registers 7

    .line 2573
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2574
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2577
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetAlgorithmPreConfig(JII)I

    move-result p0

    return p0
.end method

.method public setAudioDataInterface(J)I
    .registers 7

    .line 2734
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2735
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2738
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetAudioDataInterface(JJ)I

    move-result p0

    return p0
.end method

.method public setAudioDevice(Z)I
    .registers 6

    .line 2750
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2751
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2754
    :cond_13
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetAudioDevice(JZ)I

    move-result p0

    return p0
.end method

.method public setBGMVolume(FI)I
    .registers 7

    .line 595
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 598
    :cond_c
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetBGMVolume(JFI)I

    move-result p0

    return p0
.end method

.method public setBeautyFace(ILjava/lang/String;)I
    .registers 7

    .line 1628
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 1629
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1632
    :cond_13
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetBeautyFace(JILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setBeautyFace(ILjava/lang/String;FF)V
    .registers 11

    .line 1610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeSetBeautyFace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordInvoker"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_24

    .line 1612
    const-string p0, "invalid handle"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3c

    .line 1615
    invoke-static {p2}, Lcom/ss/android/medialib/FileUtils;->checkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1616
    iget-wide p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const/4 p3, 0x0

    const-string p4, ""

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetBeautyFace(JILjava/lang/String;)I

    .line 1617
    iget-wide p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3, p3}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetBeautyFaceIntensity(JFF)I

    return-void

    .line 1619
    :cond_3c
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetBeautyFace(JILjava/lang/String;)I

    .line 1620
    iget-wide p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetBeautyFaceIntensity(JFF)I

    return-void
.end method

.method public setBeautyFaceIntensity(FF)I
    .registers 7

    .line 1644
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 1645
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1648
    :cond_13
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetBeautyFaceIntensity(JFF)I

    move-result p0

    return p0
.end method

.method public setBgmMute(Z)V
    .registers 6

    .line 3053
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 3054
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3057
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetBgmMute(JZ)I

    return-void
.end method

.method public setCamPreviewSize(II)V
    .registers 7

    .line 442
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    goto :goto_c

    .line 447
    :cond_9
    :try_start_9
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetCamPreviewSize(JII)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_c

    :catchall_c
    :goto_c
    return-void
.end method

.method public setCameraClose(Z)V
    .registers 6

    .line 420
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 423
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetCameraClose(JZ)V

    return-void
.end method

.method public setCameraFirstFrameOptimize(Z)V
    .registers 6

    .line 1797
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "RecordInvoker"

    if-nez v0, :cond_10

    .line 1798
    const-string p0, "invalid handle"

    invoke-static {v1, p0}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1802
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFirstFrameOptimize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/medialib/common/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2c

    .line 1804
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->getOptFirstFrameBypassEffectFrameCnt()I

    move-result v0

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x3

    .line 1808
    :goto_2d
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetCameraFirstFrameOptimize(JZI)V

    return-void
.end method

.method public setCaptureMirror(I)V
    .registers 4

    .line 1183
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->setCaptureMirror2(JI)V

    return-void
.end method

.method public setCaptureMirror(Z)V
    .registers 4

    .line 1179
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->setCaptureMirror(JZ)V

    return-void
.end method

.method public setCaptureRenderWidth(II)V
    .registers 7

    .line 1030
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1033
    :cond_9
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetCaptureRenderWidth(JII)V

    return-void
.end method

.method public setCaptureResize(Z[I[I)V
    .registers 10

    .line 1187
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->setCaptureResize(JZ[I[I)V

    return-void
.end method

.method public setClientState(I)V
    .registers 6

    .line 2211
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 2212
    const-string v0, "RecordInvoker"

    const-string v1, "invalid handle"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    :cond_f
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetClientState(JI)V

    return-void
.end method

.method public setCodecType(I)I
    .registers 6

    .line 2770
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2771
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2774
    :cond_13
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetCodecType(JI)I

    move-result p0

    return p0
.end method

.method public setComposerMode(II)I
    .registers 7

    .line 2581
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2582
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2585
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetComposerMode(JII)I

    move-result p0

    return p0
.end method

.method public setComposerNodes([Ljava/lang/String;I)I
    .registers 7

    .line 2549
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2550
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2553
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetComposerNodes(J[Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setComposerResourcePath(Ljava/lang/String;)I
    .registers 6

    .line 2541
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2542
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2545
    :cond_13
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetComposerResourcePath(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCustomFrameProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V
    .registers 6

    .line 868
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 874
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetCustomFrameProcessor(JLcom/ss/android/vesdk/VEFrameCustomProcessor;)I

    return-void
.end method

.method public setCustomVideoBg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V
    .registers 21

    const/4 v1, 0x0

    .line 1429
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1415
    iget-wide v3, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    return-void

    .line 1419
    :cond_e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1420
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetCustomVideoBg(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJZI)V

    return-void

    .line 1425
    :cond_24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1426
    const-string v4, "android.hardware.audio.low_latency"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v1, 0x1

    :cond_33
    if-eqz p8, :cond_3c

    .line 1429
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3a
    move v4, v1

    goto :goto_41

    :cond_3c
    invoke-static {p1}, Lcom/ss/android/medialib/utils/Utils;->getSystemAudioInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_3a

    .line 1431
    :goto_41
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v4, :cond_62

    const/16 v3, 0x2d

    :goto_57
    move-object v0, p0

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    move v11, v3

    move-object v3, p2

    goto :goto_64

    :cond_62
    const/4 v3, -0x1

    goto :goto_57

    :goto_64
    invoke-direct/range {v0 .. v11}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetCustomVideoBg(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJZI)V

    return-void
.end method

.method public setCustomVideoBg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1435
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetCustomVideoBgGif(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDLEEnable(Z)V
    .registers 6

    .line 2854
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2855
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2858
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetDLEEnable(JZ)I

    return-void
.end method

.method public setDebugSettings(Lcom/ss/android/vesdk/VEDebugSettings;)V
    .registers 6

    .line 4669
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 4670
    const-string p0, "RecordInvoker"

    const-string p1, "setDebugSettings failed, handler is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4674
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetDebugSettings(JLcom/ss/android/vesdk/VEDebugSettings;)V

    return-void
.end method

.method public setDetectInterval(I)V
    .registers 6

    .line 2116
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2117
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2120
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetDetectInterval(JI)V

    return-void
.end method

.method public setDetectionMode(Z)V
    .registers 6

    .line 207
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 210
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetDetectionMode(JZ)V

    return-void
.end method

.method public setDeviceRotation([F)V
    .registers 4

    .line 1499
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 1500
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->setDeviceRotation([FD)V

    :cond_b
    return-void
.end method

.method public setDeviceRotation([FD)V
    .registers 11

    .line 1510
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    goto :goto_17

    .line 1513
    :cond_9
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1514
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v1, p0

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetDeviceRotationWithStamp(J[FD)I

    :cond_17
    :goto_17
    return-void
.end method

.method public setDisplaySettings(IJFIIIIFIIIIIIZI)I
    .registers 39

    move-object/from16 v1, p0

    .line 1077
    iget-wide v2, v1, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_15

    .line 1078
    const-string v0, "RecordInvoker"

    const-string v1, "setDisplaySettings failed..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, -0x186a0

    return v0

    :cond_15
    move/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    .line 1082
    invoke-virtual/range {v1 .. v20}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetDisplaySettings(JIJFIIIIFIIIIIIZI)I

    move-result v0

    return v0
.end method

.method public setDropFrames(I)V
    .registers 6

    .line 2237
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2238
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2241
    :cond_10
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetDropFrames(JI)V

    return-void
.end method

.method public setDuetCameraPaused(Z)V
    .registers 6

    .line 1294
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1297
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetDuetCameraPaused(JZ)V

    return-void
.end method

.method public setDuetVideoCompleteCallback2(Ljava/lang/Runnable;)V
    .registers 2

    .line 1310
    iput-object p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mDuetCompleteRunable:Ljava/lang/Runnable;

    return-void
.end method

.method public setEffectAlgorithmRequirement(J)V
    .registers 5

    .line 1587
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetEffectAlgorithmRequirement(JJ)V

    return-void
.end method

.method public setEffectAudioManagerCallback(Lcom/ss/android/medialib/listener/AudioManagerCallback;)Z
    .registers 6

    .line 4696
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 4697
    const-string p0, "RecordInvoker"

    const-string p1, "setEffectAudioManagerCallback failed"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_11
    if-eqz p1, :cond_1e

    .line 4702
    new-instance v0, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;

    invoke-direct {v0}, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mStyleAudioProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;

    .line 4703
    invoke-virtual {v0, p0}, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->attachNativeLayer(Lcom/ss/android/medialib/RecordInvoker;)V

    goto :goto_21

    :cond_1e
    const/4 v0, 0x0

    .line 4705
    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mStyleAudioProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;

    .line 4708
    :goto_21
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetEffectAudioManagerCallback(JLcom/ss/android/medialib/listener/AudioManagerCallback;)Z

    move-result p0

    return p0
.end method

.method public setEffectBuildChainType(I)V
    .registers 6

    .line 1481
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1484
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetEffectBuildChainType(JI)V

    return-void
.end method

.method public setEffectMaxMemoryCache(I)I
    .registers 6

    .line 2203
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2204
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2207
    :cond_13
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetEffectMaxMemoryCache(JI)I

    move-result p0

    return p0
.end method

.method public setEnableAEC(ZLjava/lang/String;)I
    .registers 7

    .line 2710
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2711
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2714
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetEnableAEC(JZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setEnableDuetV2(Z)V
    .registers 6

    .line 2413
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2414
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2417
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetEnableDuetV2(JZ)I

    return-void
.end method

.method public setEnableEarBack(Z)I
    .registers 6

    .line 2726
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2727
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2730
    :cond_13
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetEnableEarBack(JZ)I

    move-result p0

    return p0
.end method

.method public setEnableEffCtrl(Z)I
    .registers 4

    .line 1457
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetEnableEffCtrl(JZ)I

    move-result p0

    return p0
.end method

.method public setEnigmaDetectParams(ZFFFFZIJIZZZ)V
    .registers 30

    move-object/from16 v0, p0

    .line 2389
    iget-wide v1, v0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_12

    .line 2390
    const-string v0, "RecordInvoker"

    const-string v1, "invalid handle"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    .line 2393
    invoke-direct/range {v0 .. v15}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetEnigmaDetectParams(JZFFFFZIJIZZZ)V

    return-void
.end method

.method public setExternalFaceMakeupOpacity(Ljava/lang/String;FF)I
    .registers 10

    .line 2844
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_13

    .line 2845
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_13
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 2849
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->natvieSetExternalFaceMakeupOpacity(JLjava/lang/String;FF)I

    move-result p0

    return p0
.end method

.method public setFaceDetectListener2(Lcom/ss/android/medialib/listener/FaceDetectListener;)V
    .registers 2

    .line 1477
    iput-object p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    return-void
.end method

.method public setFaceMakeUp(Ljava/lang/String;)I
    .registers 6

    .line 1678
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 1679
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1682
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetFaceMakeUp2(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setFaceMakeUp(Ljava/lang/String;FF)I
    .registers 10

    .line 1694
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_13

    .line 1695
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_13
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1698
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetFaceMakeUp(JLjava/lang/String;FF)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;)I
    .registers 8

    .line 1535
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    const/high16 v5, 0x3f800000    # 1.0f

    move-object v4, p1

    move-object v0, p0

    move-object v3, p1

    .line 1538
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetFilter(JLjava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 10

    .line 1542
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 1545
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetFilter(JLjava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setFilterIntensity(F)I
    .registers 6

    .line 1603
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 1606
    :cond_c
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetFilterIntensity(JF)I

    move-result p0

    return p0
.end method

.method public setFilterNew(Ljava/lang/String;F)I
    .registers 7

    .line 1528
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 1531
    :cond_c
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetFilterNew(JLjava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)I
    .registers 14

    .line 1549
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1552
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetDoubleFilterNew(JLjava/lang/String;Ljava/lang/String;FFF)I

    move-result p0

    return p0
.end method

.method public setFilterPos(F)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1595
    iget-wide p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public setForceAlgorithmCnt(I)V
    .registers 6

    .line 2532
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2533
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2537
    :cond_10
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetForceAlgorithmCnt(JI)V

    return-void
.end method

.method public setForceAlgorithmEnableCount(I)V
    .registers 6

    .line 4678
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 4679
    const-string p0, "RecordInvoker"

    const-string p1, "setForceAlgorithmEnableCount failed, handler is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4683
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetForceAlgorithmEnableCount(JI)V

    return-void
.end method

.method public setFrameCallback(Lcom/ss/android/medialib/RecordInvoker$OnFrameCallback;ZI)I
    .registers 10

    .line 848
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 853
    :try_start_10
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetFrameCallback(JLcom/ss/android/medialib/RecordInvoker$OnFrameCallback;ZI)I

    move-result p0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_15

    return p0

    :catchall_15
    const/4 p0, -0x1

    return p0
.end method

.method public setHandDetectLowpower(Z)I
    .registers 6

    .line 2319
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2320
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2323
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetHandDetectLowpower(JZ)I

    move-result p0

    return p0
.end method

.method public setHardEncoderStatus(Z)I
    .registers 6

    .line 609
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 612
    :cond_c
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetHardEncoderStatus(JZ)I

    move-result p0

    return p0
.end method

.method public setImageExposure(F)V
    .registers 4

    .line 1191
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->setImageExposure(JF)V

    return-void
.end method

.method public setInitHardEncodeRet(I)I
    .registers 6

    .line 616
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 619
    :cond_c
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetInitHardEncodeRet(JI)I

    move-result p0

    return p0
.end method

.method public setIntensityByType(IF)I
    .registers 7

    .line 1879
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 1880
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1883
    :cond_13
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetIntensityByType(JIF)I

    move-result p0

    return p0
.end method

.method public setIsDuringScreenshot(Z)V
    .registers 2

    .line 1140
    iput-boolean p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsDuringScreenshot:Z

    return-void
.end method

.method public setKaraoke(ZZ)V
    .registers 7

    .line 2279
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2280
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2283
    :cond_10
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetKaraoke(JZZ)I

    return-void
.end method

.method public setLandMarkInfo(Lcom/ss/android/vesdk/LandMarkFrame;)V
    .registers 6

    .line 1519
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    goto :goto_14

    .line 1522
    :cond_9
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1523
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetLandMarkInfo(JLcom/ss/android/vesdk/LandMarkFrame;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;)V
    .registers 7

    .line 3069
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 3070
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3073
    :cond_10
    iget v2, p1, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;->algorithmFlag:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_2b

    const/16 v3, 0x18

    if-eq v2, v3, :cond_25

    const/16 v3, 0x1b

    if-eq v2, v3, :cond_1f

    return-void

    .line 3081
    :cond_1f
    check-cast p1, Lcom/ss/android/vesdk/lens/VELumaDetectParams;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetLumaDetectParams(JLcom/ss/android/vesdk/lens/VELumaDetectParams;Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;)V

    return-void

    .line 3078
    :cond_25
    check-cast p1, Lcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetAdaptiveSharpenParams(JLcom/ss/android/vesdk/lens/VEAdaptiveSharpenParams;Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;)V

    return-void

    .line 3075
    :cond_2b
    check-cast p1, Lcom/ss/android/vesdk/lens/VETaintSceneDetectParams;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetTaintSceneDetectParams(JLcom/ss/android/vesdk/lens/VETaintSceneDetectParams;Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;)V

    return-void
.end method

.method public setLoudness(ZI)I
    .registers 7

    .line 2718
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2719
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2722
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetLoudness(JZI)I

    move-result p0

    return p0
.end method

.method public setMaleMakeupState(Z)I
    .registers 6

    .line 1044
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 1047
    :cond_c
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetMaleMakeupState(JZ)I

    move-result p0

    return p0
.end method

.method public setMemoryOpt(Z)V
    .registers 6

    .line 1812
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 1813
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1816
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetMemoryOpt(JZ)V

    return-void
.end method

.method public setMessageListenerV2(Lcom/bef/effectsdk/message/MessageCenter$Listener;)V
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    return-void
.end method

.method public setMicInputAudioDataInterface(J)I
    .registers 7

    .line 2742
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2743
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2746
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetMicInputAudioDataInterface(JJ)I

    move-result p0

    return p0
.end method

.method public setMockPreviewSettings(Landroid/graphics/Bitmap;II)V
    .registers 10

    .line 1195
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetMockPreviewSettings(JLandroid/graphics/Bitmap;II)I

    return-void
.end method

.method public declared-synchronized setModeChangeState(I)V
    .registers 6

    monitor-enter p0

    .line 413
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 414
    monitor-exit p0

    return-void

    .line 416
    :cond_b
    :try_start_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetModeChangeState(JI)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 417
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public setMusicNodes(Ljava/lang/String;)I
    .registers 6

    .line 2482
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2483
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2486
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetMusicNodes(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized setMusicTime(JJJ)I
    .registers 17

    monitor-enter p0

    .line 505
    :try_start_1
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_e

    .line 506
    monitor-exit p0

    const p0, -0x186a0

    return p0

    :cond_e
    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide v8, p5

    .line 508
    :try_start_12
    invoke-direct/range {v1 .. v9}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetMusicTime(JJJJ)I

    move-result p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_18

    monitor-exit p0

    return p1

    :catchall_18
    move-exception v0

    move-object p1, v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_18

    throw p1
.end method

.method public setNativeInitListener2(Lcom/ss/android/medialib/listener/NativeInitListener;)V
    .registers 2

    .line 942
    iput-object p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    return-void
.end method

.method public setNativeLibraryDir(Ljava/lang/String;)V
    .registers 3

    .line 1820
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1823
    :cond_7
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetNativeLibraryDir(Ljava/lang/String;)V

    return-void
.end method

.method public setOnDuetProcessListener(Lcom/ss/android/medialib/presenter/VEVideoController$OnDuetProcessListener;)V
    .registers 2

    .line 4022
    iput-object p1, p0, Lcom/ss/android/medialib/RecordInvoker;->onDuetProcessListener:Lcom/ss/android/medialib/presenter/VEVideoController$OnDuetProcessListener;

    return-void
.end method

.method public setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V
    .registers 2

    .line 1051
    iput-object p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mOpenGLCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    return-void
.end method

.method public setOnPreviewDataCallback(Lcom/ss/android/medialib/RecordInvoker$OnPreviewDataCallback;)V
    .registers 6

    .line 4716
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 4717
    const-string p0, "RecordInvoker"

    const-string p1, "setOnPreviewDataCallback failed!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4721
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetOnPreviewDataCallback(JLcom/ss/android/medialib/RecordInvoker$OnPreviewDataCallback;)V

    return-void
.end method

.method public setPaddingBottomInRatio34(F)V
    .registers 6

    .line 834
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 837
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetPaddingBottomInRatio34(JF)V

    return-void
.end method

.method public setPerfTimingByKey(Ljava/lang/String;J)V
    .registers 10

    .line 735
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 736
    const-string p0, "RecordInvoker"

    const-string p1, "setPerfTimingByKey failed"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    .line 740
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetPerfTimingByKey(JLjava/lang/String;J)V

    return-void
.end method

.method public setPlayLength(J)I
    .registers 7

    .line 781
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 784
    :cond_c
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetPlayLength(JJ)I

    move-result p0

    return p0
.end method

.method public setPreviewDuetVideoPaused(Z)V
    .registers 6

    .line 1288
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 1289
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetPreviewDuetVideoPaused(JZ)V

    :cond_b
    return-void
.end method

.method public setPreviewRadioListener(Lcom/ss/android/medialib/RecordInvoker$OnPreviewRadioListener;)V
    .registers 6

    .line 1037
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1040
    :cond_9
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetPreviewRadioListener(JLcom/ss/android/medialib/RecordInvoker$OnPreviewRadioListener;)I

    return-void
.end method

.method public setPreviewSizeRatio(FII)V
    .registers 10

    .line 519
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 522
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetPreviewSizeRatio(JFII)V

    return-void
.end method

.method public setReactionBorderParam(II)V
    .registers 7

    .line 1379
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1382
    :cond_9
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetReactionBorderParam(JII)V

    return-void
.end method

.method public setReactionMaskImage(Ljava/lang/String;Z)Z
    .registers 7

    .line 1386
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return p0

    .line 1389
    :cond_a
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetReactionMaskImage(JLjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setReactionPosMargin(IIII)V
    .registers 12

    .line 1393
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

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

    .line 1396
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetReactionPosMargin(JIIII)V

    return-void
.end method

.method public setRecordContentType(Z)V
    .registers 6

    .line 1094
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 1095
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetRecordContentType(JZ)V

    :cond_b
    return-void
.end method

.method public setRecordMaxDuration(J)I
    .registers 7

    .line 2778
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2779
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2782
    :cond_13
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetRecordMaxDuration(JJ)I

    move-result p0

    return p0
.end method

.method public setRecordMode(I)I
    .registers 6

    .line 4725
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, -0x1

    return p0

    .line 4728
    :cond_a
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetRecordMode(JI)I

    move-result p0

    return p0
.end method

.method public setRecordPrepareTime(J)I
    .registers 7

    .line 2270
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 2271
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 2274
    :cond_12
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetRecordPrepareTime(JJ)I

    move-result p0

    return p0
.end method

.method public setRenderCacheString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2523
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2524
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2528
    :cond_10
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetRenderCacheString(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2514
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2515
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2519
    :cond_10
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetRenderCacheTexture(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setReshape(Ljava/lang/String;FF)I
    .registers 10

    .line 1662
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_13

    .line 1663
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_13
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1666
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetReshape(JLjava/lang/String;FF)I

    move-result p0

    return p0
.end method

.method public setReshapeResource(Ljava/lang/String;)I
    .registers 6

    .line 1670
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 1671
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1674
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetReshapeResource(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setRunningErrorCallback(Lcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;)V
    .registers 6

    .line 861
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 864
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetRunningErrorCallback(JLcom/ss/android/medialib/RecordInvoker$OnRunningErrorCallback;)I

    return-void
.end method

.method public setSafeArea(I[Lcom/ss/android/vesdk/VESafeAreaParams;)I
    .registers 9

    .line 3099
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_13

    .line 3100
    const-string p0, "RecordInvoker"

    const-string p1, "set safearea invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_13
    if-nez p2, :cond_1e

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 3104
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetSafeArea(JI[Lcom/ss/android/vesdk/VESafeAreaParams;I)I

    move-result p0

    return p0

    :cond_1e
    move-object v0, p0

    move v3, p1

    .line 3106
    array-length v5, p2

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetSafeArea(JI[Lcom/ss/android/vesdk/VESafeAreaParams;I)I

    move-result p0

    return p0
.end method

.method public setScale(F)V
    .registers 6

    .line 540
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 543
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetScale(JF)V

    return-void
.end method

.method public setSharedTextureStatus(Z)Z
    .registers 6

    .line 1710
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 1711
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1714
    :cond_11
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetSharedTextureStatus(Z)Z

    move-result p0

    return p0
.end method

.method public setSkinTone(Ljava/lang/String;)I
    .registers 6

    .line 1702
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 1703
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1706
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetSkinTone(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setSlamFace(Landroid/graphics/Bitmap;)I
    .registers 6

    .line 2287
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2288
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2291
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetSlamFace(JLandroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public setSticker(Landroid/graphics/Bitmap;II)I
    .registers 10

    .line 841
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 844
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetSticker(JLandroid/graphics/Bitmap;II)I

    move-result p0

    return p0
.end method

.method public setStickerPathWithTag(ILjava/lang/String;IILjava/lang/String;[Ljava/lang/String;[FZZ)I
    .registers 22

    .line 1887
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1888
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1892
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 1896
    :cond_1d
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetStickerPathWithTag(JILjava/lang/String;IILjava/lang/String;[Ljava/lang/String;[FZZ)I

    move-result p0

    return p0
.end method

.method public setStickerRequestCallback(Lcom/ss/android/medialib/presenter/IStickerRequestCallback;)I
    .registers 6

    .line 950
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 953
    :cond_c
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetStickerRequestCallback(JLcom/ss/android/medialib/presenter/IStickerRequestCallback;)I

    move-result p0

    return p0
.end method

.method public setSwapDuetRegion(Z)V
    .registers 6

    .line 1260
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1263
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetSwapDuetRegion(JZ)I

    return-void
.end method

.method public setSwapReactionRegion(Z)V
    .registers 6

    .line 1267
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1270
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetSwapReactionRegion(JZ)I

    return-void
.end method

.method public setSwitchEffectInGLTask(Z)V
    .registers 6

    .line 1101
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 1102
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSwitchEffectInGLTask(JZ)I

    :cond_b
    return-void
.end method

.method public setTextureTimeListener(Lcom/ss/android/medialib/listener/TextureTimeListener;)V
    .registers 2

    .line 1059
    iput-object p1, p0, Lcom/ss/android/medialib/RecordInvoker;->mTextureTimeListener:Lcom/ss/android/medialib/listener/TextureTimeListener;

    return-void
.end method

.method public setUseMultiPreviewRatio(Z)V
    .registers 6

    .line 4687
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 4688
    const-string p0, "RecordInvoker"

    const-string p1, "setUseMultiPreviewRatio failed, handler is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4692
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetUseMultiPreviewRatio(JZ)V

    return-void
.end method

.method public declared-synchronized setUseMusic(I)V
    .registers 6

    monitor-enter p0

    .line 371
    :try_start_1
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 372
    monitor-exit p0

    return-void

    .line 374
    :cond_b
    :try_start_b
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetUseMusic(JI)I
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_10

    .line 375
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public setVEEffectParams(Lcom/ss/android/vesdk/VEEffectParams;)I
    .registers 6

    .line 2219
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2220
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2223
    :cond_13
    invoke-virtual {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetVEEffectParams(JLcom/ss/android/vesdk/VEEffectParams;)I

    move-result p0

    return p0
.end method

.method public setVEOnVideoEOFListener(Lcom/ss/android/medialib/presenter/VEVideoController$VEOnVideoEOFListener;)V
    .registers 2

    .line 4007
    iput-object p1, p0, Lcom/ss/android/medialib/RecordInvoker;->onVideoEOFListener:Lcom/ss/android/medialib/presenter/VEVideoController$VEOnVideoEOFListener;

    return-void
.end method

.method public setVideoBgSpeed(D)V
    .registers 7

    .line 1446
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1449
    :cond_9
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetVideoBgSpeed(JD)V

    return-void
.end method

.method public setVideoEncodeRotation(I)V
    .registers 6

    .line 1757
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 1758
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1761
    :cond_10
    invoke-static {p1}, Lcom/ss/android/medialib/AVCEncoder;->setRotation(I)V

    .line 1762
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetVideoEncodeRotation(JI)V

    return-void
.end method

.method public setVideoFrameRate(I)V
    .registers 2

    .line 1766
    invoke-static {p1}, Lcom/ss/android/medialib/AVCEncoder;->setFrameRate(I)V

    return-void
.end method

.method public setVideoIFrameInterval(I)V
    .registers 2

    .line 1770
    invoke-static {p1}, Lcom/ss/android/medialib/AVCEncoder;->setIFrameInterval(I)V

    return-void
.end method

.method public setVideoQuality(II)I
    .registers 7

    .line 588
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 591
    :cond_c
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetVideoQuality(JII)I

    move-result p0

    return p0
.end method

.method public setWaterMark(Landroid/graphics/Bitmap;IIIIIII)V
    .registers 20

    .line 1749
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 1750
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 1753
    invoke-direct/range {v0 .. v10}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetWaterMark2(JLandroid/graphics/Bitmap;IIIIIII)V

    return-void
.end method

.method public setWaterMark([Ljava/lang/String;IIIIIII)V
    .registers 20

    .line 1741
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 1742
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 1745
    invoke-direct/range {v0 .. v10}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetWaterMark(J[Ljava/lang/String;IIIIIII)V

    return-void
.end method

.method public declared-synchronized shotHDScreen(Ljava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;ZLcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Landroid/graphics/Bitmap;Z)I
    .registers 26

    move-object/from16 v0, p6

    monitor-enter p0

    .line 1146
    :try_start_3
    iget-boolean v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsDuringScreenshot:Z

    const/4 v2, -0x1

    if-nez v1, :cond_5c

    const/4 v1, 0x1

    .line 1147
    iput-boolean v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsDuringScreenshot:Z

    .line 1148
    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

    .line 1149
    iget-wide v4, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v0, 0x0

    cmp-long v3, v4, v0

    if-nez v3, :cond_28

    .line 1150
    const-string v0, "RecordInvoker"

    const-string v1, "shot hd screen failed, handle not ready..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 1151
    invoke-virtual {p0, v2, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->onNativeCallback_onShotScreen(IJ)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_26

    .line 1152
    monitor-exit p0

    const p0, -0x186a0

    return p0

    :catchall_26
    move-exception v0

    goto :goto_68

    :cond_28
    move-object v3, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    .line 1155
    :try_start_3b
    invoke-direct/range {v3 .. v14}, Lcom/ss/android/medialib/RecordInvoker;->nativeShotHDScreen(JLjava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;ZLcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Landroid/graphics/Bitmap;Z)I

    move-result v2

    if-eqz v2, :cond_5a

    .line 1158
    const-string v4, "RecordInvoker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shot hd screen failed, rect = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {p0, v2, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->onNativeCallback_onShotScreen(IJ)V
    :try_end_5a
    .catchall {:try_start_3b .. :try_end_5a} :catchall_26

    .line 1161
    :cond_5a
    monitor-exit p0

    return v2

    .line 1163
    :cond_5c
    :try_start_5c
    const-string v1, "RecordInvoker"

    const-string v4, "Last screenshot not complete"

    invoke-static {v1, v4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    invoke-interface {v0, v2}, Lcom/ss/android/medialib/common/Common$IShotScreenCallback;->onShotScreen(I)V
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_26

    .line 1165
    monitor-exit p0

    return v2

    :goto_68
    :try_start_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_26

    throw v0
.end method

.method public declared-synchronized shotScreen(Ljava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Lcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I
    .registers 21

    move-object/from16 v0, p7

    monitor-enter p0

    .line 1125
    :try_start_3
    iget-boolean v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsDuringScreenshot:Z

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    .line 1126
    iput-boolean v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsDuringScreenshot:Z

    .line 1127
    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

    .line 1128
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2c

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_19

    .line 1129
    monitor-exit p0

    const v0, -0x186a0

    return v0

    :cond_19
    const/4 v9, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move/from16 v11, p8

    .line 1131
    :try_start_26
    invoke-direct/range {v1 .. v11}, Lcom/ss/android/medialib/RecordInvoker;->nativeShotScreen(JLjava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;ZLcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Z)I

    move-result v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return v0

    :catchall_2c
    move-exception v0

    goto :goto_3b

    .line 1133
    :cond_2e
    :try_start_2e
    const-string v1, "RecordInvoker"

    const-string v2, "Last screenshot not complete"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 1134
    invoke-interface {v0, v1}, Lcom/ss/android/medialib/common/Common$IShotScreenCallback;->onShotScreen(I)V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_2c

    .line 1135
    monitor-exit p0

    return v1

    :goto_3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_2c

    throw v0
.end method

.method public declared-synchronized shotScreen(Ljava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Lcom/ss/android/medialib/common/Common$IShotScreenCallback;Z)I
    .registers 20

    move-object/from16 v0, p6

    monitor-enter p0

    .line 1110
    :try_start_3
    iget-boolean v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsDuringScreenshot:Z

    if-nez v2, :cond_2d

    const/4 v2, 0x1

    .line 1111
    iput-boolean v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsDuringScreenshot:Z

    .line 1112
    iput-object v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

    .line 1113
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2b

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_19

    .line 1114
    monitor-exit p0

    const v0, -0x186a0

    return v0

    :cond_19
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v11, p7

    .line 1116
    :try_start_25
    invoke-direct/range {v1 .. v11}, Lcom/ss/android/medialib/RecordInvoker;->nativeShotScreen(JLjava/lang/String;[IZILcom/ss/android/medialib/RecordInvoker$OnPictureCallback;ZLcom/ss/android/medialib/RecordInvoker$OnPictureCallback;Z)I

    move-result v0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return v0

    :catchall_2b
    move-exception v0

    goto :goto_3a

    .line 1118
    :cond_2d
    :try_start_2d
    const-string v1, "RecordInvoker"

    const-string v2, "Last screenshot not complete"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 1119
    invoke-interface {v0, v1}, Lcom/ss/android/medialib/common/Common$IShotScreenCallback;->onShotScreen(I)V
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_2b

    .line 1120
    monitor-exit p0

    return v1

    :goto_3a
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_2b

    throw v0
.end method

.method public slamDeviceConfig(ZZZZ)I
    .registers 12

    .line 1901
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1902
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1906
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 1910
    :cond_1d
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamDeviceConfig(JZZZZ)I

    move-result p0

    return p0
.end method

.method public slamGetTextBitmap(Lcom/ss/android/medialib/RecordInvoker$OnARTextBitmapCallback;)I
    .registers 6

    .line 2098
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2099
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2103
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamGetTextBitmap(JLcom/ss/android/medialib/RecordInvoker$OnARTextBitmapCallback;)I

    move-result p0

    return p0
.end method

.method public slamGetTextLimitCount(Lcom/ss/android/medialib/RecordInvoker$OnARTextCountCallback;)I
    .registers 6

    .line 2081
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2082
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2085
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamGetTextLimitCount(JLcom/ss/android/medialib/RecordInvoker$OnARTextCountCallback;)I

    move-result p0

    return p0
.end method

.method public slamGetTextParagraphContent(Lcom/ss/android/medialib/RecordInvoker$OnARTextContentCallback;)I
    .registers 6

    .line 2089
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2090
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2094
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamGetTextParagraphContent(JLcom/ss/android/medialib/RecordInvoker$OnARTextContentCallback;)I

    move-result p0

    return p0
.end method

.method public slamNotifyHideKeyBoard(Z)I
    .registers 6

    .line 2065
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2066
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2069
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeHideSlamKeyBoard(JZ)I

    move-result p0

    return p0
.end method

.method public slamProcessDoubleClickEvent(FF)I
    .registers 7

    .line 2046
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 2047
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2050
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 2053
    :cond_1d
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamProcessDoubleClickEvent(JFF)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestAcc(DDDD)I
    .registers 20

    .line 1915
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1916
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1920
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 1924
    :cond_1d
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamProcessIngestAcc(JDDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGra(DDDD)I
    .registers 20

    .line 1943
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1944
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1948
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 1952
    :cond_1d
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamProcessIngestGra(JDDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestGyr(DDDD)I
    .registers 20

    .line 1929
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1930
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1934
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 1938
    :cond_1d
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamProcessIngestGyr(JDDDD)I

    move-result p0

    return p0
.end method

.method public slamProcessIngestOri([DD)I
    .registers 10

    .line 1956
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1957
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1961
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 1965
    :cond_1d
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamProcessIngestOri(J[DD)I

    move-result p0

    return p0
.end method

.method public slamProcessPanEvent(FFFFF)I
    .registers 14

    .line 2009
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 2010
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2014
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 2018
    :cond_1d
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamProcessPanEvent(JFFFFF)I

    move-result p0

    return p0
.end method

.method public slamProcessRotationEvent(FF)I
    .registers 7

    .line 2035
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 2036
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2039
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 2042
    :cond_1d
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamProcessRotationEvent(JFF)I

    move-result p0

    return p0
.end method

.method public slamProcessScaleEvent(FF)I
    .registers 7

    .line 2022
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 2023
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2027
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 2031
    :cond_1d
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamProcessScaleEvent(JFF)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEvent(FF)I
    .registers 7

    .line 1970
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1971
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 1975
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 1979
    :cond_1d
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamProcessTouchEvent(JFF)I

    move-result p0

    return p0
.end method

.method public slamProcessTouchEventByType(IFFI)I
    .registers 12

    .line 1996
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    .line 1997
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2001
    :cond_13
    invoke-direct {p0}, Lcom/ss/android/medialib/RecordInvoker;->isRenderReady()Z

    move-result v0

    if-nez v0, :cond_1d

    const p0, -0x186a1

    return p0

    .line 2005
    :cond_1d
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamProcessTouchEventByType(JIFFI)I

    move-result p0

    return p0
.end method

.method public slamSetInputText(Ljava/lang/String;IILjava/lang/String;)I
    .registers 12

    .line 2057
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_13

    .line 2058
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_13
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 2061
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeSetSlamInputText(JLjava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public slamSetLanguge(Ljava/lang/String;)I
    .registers 6

    .line 2073
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2074
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2077
    :cond_13
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSlamSetLanguge(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public slamSetTextBitmapResult(Landroid/graphics/Bitmap;III)I
    .registers 5

    .line 2107
    iget-wide p0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-nez p0, :cond_13

    .line 2108
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public startPlay(IILjava/lang/String;II)I
    .registers 14

    .line 245
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    .line 248
    :cond_c
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->initMessageCenter()V

    .line 249
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeStartPlay2(JIIIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public startPlay(Landroid/view/Surface;Ljava/lang/String;II)I
    .registers 12

    .line 221
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    .line 225
    :cond_c
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->initMessageCenter()V

    .line 226
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeStartPlay(JLandroid/view/Surface;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public startPlay(Landroid/view/Surface;Ljava/lang/String;ZII)I
    .registers 6

    .line 237
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/ss/android/medialib/RecordInvoker;->startPlay(Landroid/view/Surface;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_b

    if-eqz p3, :cond_b

    .line 239
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->initHardEncoderInAdvance()V

    :cond_b
    return p1
.end method

.method public startPrePlay(ZIZ)I
    .registers 10

    .line 301
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 304
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeStartPrePlay(JZIZ)I

    move-result p0

    return p0
.end method

.method public startRecord(DZFIILjava/lang/String;Ljava/lang/String;Z)I
    .registers 23

    const v0, 0x3d0900

    int-to-float v0, v0

    mul-float v0, v0, p4

    float-to-int v7, v0

    .line 280
    iget-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_13

    const p0, -0x186a0

    return p0

    :cond_13
    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    .line 283
    invoke-direct/range {v1 .. v12}, Lcom/ss/android/medialib/RecordInvoker;->nativeStartRecord(JDZIIILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public startRender()I
    .registers 5

    .line 3045
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 3046
    const-string p0, "RecordInvoker"

    const-string v0, "Native instance handle == 0 invalid."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 3049
    :cond_13
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeStartRender(J)I

    move-result p0

    return p0
.end method

.method public stopPlay()I
    .registers 5

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mIsRenderReady:Z

    .line 330
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 331
    const-string p0, "RecordInvoker"

    const-string v0, "exit stopPlay due to INVALID_HANDLE."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 334
    :cond_16
    invoke-virtual {p0}, Lcom/ss/android/medialib/RecordInvoker;->destroyMessageCenter()V

    .line 335
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeStopPlay(J)I

    move-result p0

    return p0
.end method

.method public stopPrePlay()I
    .registers 5

    .line 308
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 311
    :cond_c
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeStopPrePlay(J)I

    move-result p0

    return p0
.end method

.method public stopRecord(Z)I
    .registers 6

    .line 294
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 297
    :cond_c
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeStopRecord(JZ)I

    move-result p0

    return p0
.end method

.method public suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z
    .registers 7

    .line 2688
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 2689
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2692
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/ss/android/vesdk/VEGestureEvent;->ANY_SUPPORTED:Lcom/ss/android/vesdk/VEGestureEvent;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1f

    const/4 p1, -0x1

    goto :goto_23

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 2693
    :goto_23
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeSuspendGestureRecognizer(JIZ)Z

    move-result p0

    return p0
.end method

.method public swapMainAndPipRenderTarget(Z)Z
    .registers 6

    .line 4650
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 4651
    const-string p0, "ae_style"

    const-string p1, "ae_style, swap failed, no proxy"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 4655
    :cond_11
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeSwapMainAndPipRenderTarget(JZ)I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v3
.end method

.method public tryRestore(ILjava/lang/String;)I
    .registers 7

    .line 287
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const p0, -0x186a0

    return p0

    .line 290
    :cond_c
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeTryRestore(JILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public turnToOffScreenRender()I
    .registers 5

    .line 2815
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 2816
    const-string p0, "RecordInvoker"

    const-string v0, "Native instance handle == 0 invalid."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    .line 2820
    :cond_13
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeTurnToOffScreenRender(J)I

    move-result p0

    return p0
.end method

.method public unRegisterEffectAlgorithmCallback()V
    .registers 5

    .line 2380
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2381
    const-string p0, "RecordInvoker"

    const-string v0, "invalid handle"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2385
    :cond_10
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeUnRegisterEffectAlgorithmCallback(J)V

    return-void
.end method

.method public unRegisterFaceResultCallback()V
    .registers 5

    .line 2363
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2364
    const-string p0, "RecordInvoker"

    const-string v0, "invalid handle"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2368
    :cond_10
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeUnRegisterFaceResultCallback(J)V

    return-void
.end method

.method public uninitAudioPlayer()V
    .registers 5

    .line 792
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 795
    :cond_9
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeUninitAudioPlayer(J)I

    return-void
.end method

.method public uninitBeautyPlay()I
    .registers 5

    .line 347
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    .line 350
    :cond_c
    const-string v0, "RecordInvoker"

    const-string v1, "uninitBeautyPlay..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    monitor-enter p0

    .line 352
    :try_start_14
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    .line 353
    iput-wide v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const/4 v2, 0x0

    .line 354
    iput-object v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mTextureTimeListener:Lcom/ss/android/medialib/listener/TextureTimeListener;

    .line 355
    iput-object v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mShotScreenCallback:Lcom/ss/android/medialib/common/Common$IShotScreenCallback;

    .line 356
    sput-object v2, Lcom/ss/android/medialib/RecordInvoker;->mRecordStopCallback:Lcom/ss/android/medialib/RecordInvoker$RecordStopCallback;

    .line 357
    iput-object v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mNativeInitListener:Lcom/ss/android/medialib/listener/NativeInitListener;

    .line 358
    iput-object v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mFaceDetectListener:Lcom/ss/android/medialib/listener/FaceDetectListener;

    .line 359
    iput-object v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    .line 360
    sput-object v2, Lcom/ss/android/medialib/RecordInvoker;->sMessageListener:Lcom/bef/effectsdk/message/MessageCenter$Listener;

    .line 361
    iput-object v2, p0, Lcom/ss/android/medialib/RecordInvoker;->mGetTimestampCallback:Lcom/ss/android/medialib/common/Common$IGetTimestampCallback;

    .line 362
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeUninitBeautyPlay(J)I

    move-result v0

    .line 363
    iget-object v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mStyleAudioProxyImpl:Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;

    if-eqz v1, :cond_37

    .line 364
    invoke-virtual {v1, v2}, Lcom/ss/android/medialib/RecordInvoker$StyleAudioProxyImpl;->attachNativeLayer(Lcom/ss/android/medialib/RecordInvoker;)V

    goto :goto_37

    :catchall_35
    move-exception v0

    goto :goto_39

    .line 366
    :cond_37
    :goto_37
    monitor-exit p0

    return v0

    .line 367
    :goto_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_35

    throw v0
.end method

.method public unregBachAlgorithmCallback()V
    .registers 5

    .line 3151
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 3152
    const-string p0, "RecordInvoker"

    const-string v0, "Native instance handle == 0 invalid."

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3155
    :cond_10
    invoke-direct {p0, v0, v1}, Lcom/ss/android/medialib/RecordInvoker;->nativeUnregBachAlgorithmCallback(J)I

    return-void
.end method

.method public updateAlgorithmRuntimeParam(IF)V
    .registers 7

    .line 1827
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 1828
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/medialib/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1831
    :cond_10
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ss/android/medialib/RecordInvoker;->nativeUpdateAlgorithmRuntimeParam(JIF)V

    return-void
.end method

.method public updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 10

    .line 2557
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_13

    .line 2558
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_13
    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 2561
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeUpdateComposerNode(JLjava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I
    .registers 12

    .line 2565
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_13

    .line 2566
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_13
    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2569
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeUpdateMultiComposerNodes(JI[Ljava/lang/String;[Ljava/lang/String;[F)I

    move-result p0

    return p0
.end method

.method public updateReactionBGAlpha(F)V
    .registers 6

    .line 1407
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    return-void

    .line 1410
    :cond_9
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeUpdateReactionBGAlpha(JF)V

    return-void
.end method

.method public updateReactionCameraPos(IIII)[I
    .registers 12

    .line 1330
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1333
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeUpdateReactionCameraPos(JIIII)[I

    move-result-object p0

    return-object p0
.end method

.method public updateReactionCameraPosWithRotation(IIIIF)[I
    .registers 14

    .line 1323
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 1326
    invoke-direct/range {v0 .. v7}, Lcom/ss/android/medialib/RecordInvoker;->nativeUpdateReactionCameraPosWithRotation(JIIIIF)[I

    move-result-object p0

    return-object p0
.end method

.method public updateRotation(FFF)V
    .registers 10

    .line 1488
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 1491
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeUpdateRotation(JFFF)V

    return-void
.end method

.method public updateRotation(IZZ)V
    .registers 10

    .line 533
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_9

    return-void

    :cond_9
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 536
    invoke-direct/range {v0 .. v5}, Lcom/ss/android/medialib/RecordInvoker;->nativeUpdateRotationAndFront(JIZZ)V

    return-void
.end method

.method public useAudioGraphOutput(ZZZZ)I
    .registers 12

    .line 2758
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_13

    .line 2759
    const-string p0, "RecordInvoker"

    const-string p1, "Native instance handle == 0 invalid."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x186a0

    return p0

    :cond_13
    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 2762
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeUseAudioGraphOutput(JZZZZ)I

    move-result p0

    return p0
.end method

.method public useLargeMattingModel(Z)V
    .registers 6

    .line 2490
    iget-wide v0, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 2491
    const-string p0, "RecordInvoker"

    const-string p1, "invalid handle"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2494
    :cond_10
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/android/medialib/RecordInvoker;->nativeUseLargeMattingModel(JZ)V

    return-void
.end method

.method public writeFile(Ljava/nio/ByteBuffer;III)I
    .registers 12

    .line 602
    iget-wide v1, p0, Lcom/ss/android/medialib/RecordInvoker;->mHandler:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    const p0, -0x186a0

    return p0

    :cond_c
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 605
    invoke-direct/range {v0 .. v6}, Lcom/ss/android/medialib/RecordInvoker;->nativeWriteFile(JLjava/nio/ByteBuffer;III)I

    move-result p0

    return p0
.end method
