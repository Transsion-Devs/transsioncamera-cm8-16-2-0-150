.class public Lcom/ss/android/vesdk/VEEditor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VEEditor$MVConsts;,
        Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;,
        Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;,
        Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;,
        Lcom/ss/android/vesdk/VEEditor$VEState;,
        Lcom/ss/android/vesdk/VEEditor$TIME_MODE;,
        Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;,
        Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;,
        Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;,
        Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;,
        Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;,
        Lcom/ss/android/vesdk/VEEditor$Video_Rotation;,
        Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;,
        Lcom/ss/android/vesdk/VEEditor$PREVIEW_SCALE_MODE;,
        Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;,
        Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    }
.end annotation


# static fields
.field public static final EDITORMODE_CROP:I = 0x0

.field public static final EDITORMODE_EDITOR:I = 0x1

.field public static final EDITORMODE_RECORD_EDITOR:I = 0x2

.field public static final EDITORMODE_UNKNOWN:I = -0x1

.field private static final ENGINE_PREPARE_FOR_COMPILE:I = 0x1

.field private static final ENGINE_PREPARE_FOR_COMPILE_WITHWATERMARK:I = 0x2

.field protected static final ENGINE_PREPARE_FOR_ONLYAUDIO_PLAYBACK:I = 0x4

.field protected static final ENGINE_PREPARE_FOR_PLAYBACK:I = 0x0

.field public static final IMAGE_RESIZE_ALGOR_BIBLINEAR:I = 0x0

.field public static final IMAGE_RESIZE_ALGOR_LANCZOS:I = 0xd7

.field public static final IMAGE_RESIZE_MODE_ASPECT_FILL:I = 0x1

.field public static final IMAGE_RESIZE_MODE_ASPECT_FIT:I = 0x3

.field public static final IMAGE_RESIZE_MODE_ASPECT_NONE:I = 0x0

.field public static final IMAGE_RESIZE_MODE_ASPECT_WIDTH:I = 0x2

.field public static final IMAGE_RESIZE_MODE_CENTER_ZOOM:I = 0x5

.field public static final IMAGE_RESIZE_MODE_CENTER_ZOOM_AND_ASPECTWIDTH:I = 0x7

.field public static final IMAGE_RESIZE_MODE_FREE_MODE:I = 0x4

.field public static final IMAGE_RESIZE_MODE_FREE_MODE_ROT:I = 0x6

.field public static final PAGEMODE_COMPILE_CROP:I = 0x1

.field public static final PAGEMODE_COMPILE_DOWNLOAD:I = 0x2

.field public static final PAGEMODE_COMPILE_DOWNLOAD_SHARED:I = 0x3

.field public static final PAGEMODE_COMPILE_PUBLISH:I = 0x0

.field public static final PAGEMODE_COMPILE_UNKNOWN:I = -0x1

.field public static final PAUSE_COMPILE:I = 0x1

.field public static final PAUSE_PLAYBACK:I = 0x0

.field public static final PROBE_MODE_HW:I = 0x2

.field public static final PROBE_MODE_NONE:I = 0x0

.field public static final PROBE_MODE_SW:I = 0x1

.field public static final PROBE_MODE_SW_HW:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VEEditor"

.field private static final TESeekTo_IFrame:I = 0x2

.field public static final TETrackDurationType_Fixed:I = 0x0

.field public static final TETrackDurationType_FollowMax:I = 0x1

.field public static final TETrackDurationType_FollowMin:I = 0x2

.field public static final TETrackIndex_Default:I = -0x1

.field private static final TETrackProperty_BGM:I = 0x1

.field private static final TETrackProperty_OriginalSound:I = 0x0

.field public static final TETrackType_Audio:I = 0x1

.field public static final TETrackType_GlobalEffect:I = 0x2

.field public static final TETrackType_Video:I = 0x0

.field private static genReverseCount:I = 0x0

.field private static final mCompileProbeLock:Ljava/lang/Object;

.field private static volatile mCompileProbeRunning:Z = false

.field private static mFileInfoCacheMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile mSAutoPrepare:Z = true


# instance fields
.field private volatile mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

.field private volatile mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

.field private mAutoPrepare:Z

.field private mBCompileHighQualityGif:Z

.field private mBReversePlay:Z

.field private mBackGroundColor:I

.field private mBusinessManager:Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

.field private mCancelReverse:Z

.field private mCanvasWrapFilterIndex:I

.field private volatile mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

.field private mCompileType:Ljava/lang/String;

.field private mConcatVideoErrorForInvalidCodecs:I

.field private final mConcatVideoPath:Ljava/lang/String;

.field private mCurrentBmp:Landroid/graphics/Bitmap;

.field private mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

.field private mEditorMode:I

.field private mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

.field private mEncoderListener:Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

.field private mFirstFrameDrawed:Z

.field private volatile mFirstFrameListener:Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

.field private mFirstTimeSurfaceCreate:Z

.field private mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

.field private mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

.field private mGetSeekFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

.field private mGetSeekFrameListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

.field private mInPoint:I

.field private mInitDisplayHeight:I

.field private mInitDisplayWidth:I

.field private mInitSize:Lcom/ss/android/vesdk/VESize;

.field private mInitSuccess:Z

.field private mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

.field private mKeyFrameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterTrackIndex:I

.field private mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

.field private volatile mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;

.field private mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

.field private mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

.field private mOutPoint:I

.field private mOutputFile:Ljava/lang/String;

.field private mPageMode:I

.field private mPlayFps:F

.field private mReDrawSurface:Z

.field private mReDrawSurfaceOnce:Z

.field private mRecordData:Lcom/ss/android/vesdk/VERecordData;

.field private mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

.field private mReverseDone:Z

.field private volatile mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceWidth:I

.field private mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

.field private mTeCommonErrorCallback:Lcom/ss/android/ttve/common/TECommonCallback;

.field private mTeCommonInfoCallback:Lcom/ss/android/ttve/common/TECommonCallback;

.field private final mTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;

.field private mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

.field private mUsageType:Ljava/lang/String;

.field private mUserCommonErrorCallback:Lcom/ss/android/vesdk/VECommonCallback;

.field private mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

.field private mVideoBackGroundColor:I

.field private mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

.field private mVideoGravity:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

.field private mVideoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field private volatile mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

.field private mVideoScaletype:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

.field private mWrapperAudioExtend:Lcom/ss/android/vesdk/internal/IVEAudioExtend;

.field private mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

.field private mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

.field private mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

.field private mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

.field private mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

.field private mbSeparateAV:Ljava/lang/Boolean;

.field private miCacheHitCount:I

.field private miCacheMissCount:I

.field private miFrameCount:I

.field private mkeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

.field private mlCompileStartTime:J

.field private mlCurTimeMS:J

.field private mlFirstFrameWithoutSurfaceTimeMS:J

.field private mlFirstPlayTimeMS:J

.field private mlFirstSeekTimeMS:J

.field private mlInitTimeMS:J

.field private mlLastSeekTimeMS:J

.field private mlLastTimeMS:J

.field private mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

.field private rotate:F

.field private scaleH:F

.field private scaleW:F

.field private veTimelineParams:Lcom/ss/android/vesdk/VETimelineParams;

.field private waterMarkFile:Ljava/lang/String;

.field private waterMarkHeight:D

.field private waterMarkOffsetX:D

.field private waterMarkOffsetY:D

.field private waterMarkWidth:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor;->mFileInfoCacheMap:Ljava/util/Map;

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor;->mCompileProbeLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 189
    sput-boolean v0, Lcom/ss/android/vesdk/VEEditor;->mCompileProbeRunning:Z

    .line 192
    sput v0, Lcom/ss/android/vesdk/VEEditor;->genReverseCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    .line 1469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    .line 154
    const-string v0, "mp4"

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;-><init>(Lcom/ss/android/vesdk/VEEditor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    .line 158
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    .line 159
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameListener:Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

    .line 160
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

    .line 161
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    .line 162
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    .line 163
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    .line 164
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

    .line 166
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 167
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonErrorCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 169
    new-instance v2, Lcom/ss/android/ttve/common/TETrackIndexManager;

    invoke-direct {v2}, Lcom/ss/android/ttve/common/TETrackIndexManager;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    .line 171
    new-instance v2, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    invoke-direct {v2}, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mBusinessManager:Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    const/4 v2, 0x1

    .line 173
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEEditor;->mAutoPrepare:Z

    .line 177
    const-string v3, "unknown"

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mUsageType:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mRecordData:Lcom/ss/android/vesdk/VERecordData;

    .line 181
    const-string v3, "/concatShootVideo"

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoPath:Ljava/lang/String;

    .line 184
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameMap:Ljava/util/Map;

    .line 191
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoErrorForInvalidCodecs:I

    .line 195
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

    .line 201
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$1;

    invoke-direct {v3, p0}, Lcom/ss/android/vesdk/VEEditor$1;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonInfoCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 324
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$2;

    invoke-direct {v3, p0}, Lcom/ss/android/vesdk/VEEditor$2;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonErrorCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 805
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    .line 806
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    .line 808
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayWidth:I

    .line 809
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayHeight:I

    .line 811
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 813
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 820
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I

    const-wide/16 v5, 0x0

    .line 821
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlCurTimeMS:J

    .line 822
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 823
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 824
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J

    .line 825
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstPlayTimeMS:J

    .line 826
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastSeekTimeMS:J

    .line 827
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstFrameWithoutSurfaceTimeMS:J

    .line 828
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameDrawed:Z

    .line 829
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheHitCount:I

    .line 830
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    .line 832
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInPoint:I

    .line 833
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mOutPoint:I

    .line 835
    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->ALIGN_PARENT_BOTTOM:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoGravity:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 836
    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;->CENTER:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoScaletype:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    .line 837
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 838
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReverseDone:Z

    .line 839
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mCancelReverse:Z

    .line 840
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    .line 842
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    .line 843
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlCompileStartTime:J

    .line 844
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mBReversePlay:Z

    .line 845
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z

    .line 846
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    .line 847
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderListener:Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    .line 848
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 849
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 851
    new-instance v3, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-direct {v3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;-><init>()V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    .line 854
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurface:Z

    .line 855
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstTimeSurfaceCreate:Z

    .line 856
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurfaceOnce:Z

    .line 857
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    .line 858
    iput v3, p0, Lcom/ss/android/vesdk/VEEditor;->rotate:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 859
    iput v5, p0, Lcom/ss/android/vesdk/VEEditor;->scaleW:F

    .line 860
    iput v5, p0, Lcom/ss/android/vesdk/VEEditor;->scaleH:F

    .line 863
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mPageMode:I

    .line 865
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mEditorMode:I

    const/high16 v1, -0x1000000

    .line 868
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mBackGroundColor:I

    .line 870
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoBackGroundColor:I

    .line 935
    iput v3, p0, Lcom/ss/android/vesdk/VEEditor;->mPlayFps:F

    .line 936
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$3;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$3;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 970
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$4;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$4;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 998
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$5;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$5;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    .line 1073
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$6;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$6;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    .line 1091
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$7;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$7;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 1111
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$8;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$8;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 1127
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$9;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$9;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    .line 1156
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$10;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$10;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mkeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

    .line 1470
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14c

    .line 1473
    const-string v1, "VEEditor"

    const-string v3, "VEEditor offscreen"

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEInterface;->createEngine()Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 1475
    new-instance v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    invoke-direct {v1, p1}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    .line 1476
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setOpenGLListeners(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;)V

    .line 1477
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonInfoCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setInfoListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 1478
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonErrorCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setErrorListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 1479
    const-string p1, "iesve_veeditor_offscreen"

    invoke-static {p1, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 1480
    invoke-virtual {p0, v4}, Lcom/ss/android/vesdk/VEEditor;->enableEffectAmazing(Z)I

    .line 1481
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEEditor;->createWrapperInvokers()V

    return-void

    .line 1471
    :cond_14c
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "workspace is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x64

    invoke-direct {p0, v0, p1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/SurfaceView;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1516
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;Landroid/view/SurfaceView;ZLcom/ss/android/vesdk/VEUserConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/SurfaceView;J)V
    .registers 12

    .line 1589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    .line 154
    const-string v0, "mp4"

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;-><init>(Lcom/ss/android/vesdk/VEEditor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    .line 158
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    .line 159
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameListener:Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

    .line 160
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

    .line 161
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    .line 162
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    .line 163
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    .line 164
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

    .line 166
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 167
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonErrorCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 169
    new-instance v2, Lcom/ss/android/ttve/common/TETrackIndexManager;

    invoke-direct {v2}, Lcom/ss/android/ttve/common/TETrackIndexManager;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    .line 171
    new-instance v2, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    invoke-direct {v2}, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mBusinessManager:Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    const/4 v2, 0x1

    .line 173
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEEditor;->mAutoPrepare:Z

    .line 177
    const-string v3, "unknown"

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mUsageType:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mRecordData:Lcom/ss/android/vesdk/VERecordData;

    .line 181
    const-string v3, "/concatShootVideo"

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoPath:Ljava/lang/String;

    .line 184
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameMap:Ljava/util/Map;

    .line 191
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoErrorForInvalidCodecs:I

    .line 195
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

    .line 201
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$1;

    invoke-direct {v3, p0}, Lcom/ss/android/vesdk/VEEditor$1;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonInfoCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 324
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$2;

    invoke-direct {v3, p0}, Lcom/ss/android/vesdk/VEEditor$2;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonErrorCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 805
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    .line 806
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    .line 808
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayWidth:I

    .line 809
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayHeight:I

    .line 811
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 813
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 820
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I

    const-wide/16 v5, 0x0

    .line 821
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlCurTimeMS:J

    .line 822
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 823
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 824
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J

    .line 825
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstPlayTimeMS:J

    .line 826
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastSeekTimeMS:J

    .line 827
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstFrameWithoutSurfaceTimeMS:J

    .line 828
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameDrawed:Z

    .line 829
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheHitCount:I

    .line 830
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    .line 832
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInPoint:I

    .line 833
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mOutPoint:I

    .line 835
    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->ALIGN_PARENT_BOTTOM:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoGravity:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 836
    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;->CENTER:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoScaletype:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    .line 837
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 838
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReverseDone:Z

    .line 839
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mCancelReverse:Z

    .line 840
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    .line 842
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    .line 843
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlCompileStartTime:J

    .line 844
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mBReversePlay:Z

    .line 845
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z

    .line 846
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    .line 847
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderListener:Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    .line 848
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 849
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 851
    new-instance v3, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-direct {v3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;-><init>()V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    .line 854
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurface:Z

    .line 855
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstTimeSurfaceCreate:Z

    .line 856
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurfaceOnce:Z

    .line 857
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 858
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor;->rotate:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 859
    iput v2, p0, Lcom/ss/android/vesdk/VEEditor;->scaleW:F

    .line 860
    iput v2, p0, Lcom/ss/android/vesdk/VEEditor;->scaleH:F

    .line 863
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mPageMode:I

    .line 865
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mEditorMode:I

    const/high16 v1, -0x1000000

    .line 868
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mBackGroundColor:I

    .line 870
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoBackGroundColor:I

    .line 935
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor;->mPlayFps:F

    .line 936
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$3;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$3;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 970
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$4;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$4;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 998
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$5;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$5;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    .line 1073
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$6;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$6;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    .line 1091
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$7;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$7;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 1111
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$8;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$8;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 1127
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$9;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$9;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    .line 1156
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$10;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$10;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mkeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

    .line 1590
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_161

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEEditor surfaceView with handler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    invoke-static {p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->createEngine(J)Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object p3

    iput-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 1595
    new-instance p3, Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    invoke-direct {p3, p1}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    .line 1596
    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceView:Landroid/view/SurfaceView;

    .line 1597
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1598
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setOpenGLListeners(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;)V

    .line 1599
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonInfoCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setInfoListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 1600
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonErrorCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setErrorListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 1601
    invoke-virtual {p0, v4}, Lcom/ss/android/vesdk/VEEditor;->enableEffectAmazing(Z)I

    .line 1602
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEEditor;->createWrapperInvokers()V

    return-void

    .line 1591
    :cond_161
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "workspace is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x64

    invoke-direct {p0, p2, p1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/SurfaceView;Lcom/ss/android/vesdk/VEUserConfig;)V
    .registers 5

    const/4 v0, 0x1

    .line 1529
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;Landroid/view/SurfaceView;ZLcom/ss/android/vesdk/VEUserConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/SurfaceView;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 1546
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;Landroid/view/SurfaceView;ZLcom/ss/android/vesdk/VEUserConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/SurfaceView;ZLcom/ss/android/vesdk/VEUserConfig;)V
    .registers 12

    .line 1561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    .line 154
    const-string v0, "mp4"

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;-><init>(Lcom/ss/android/vesdk/VEEditor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    .line 158
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    .line 159
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameListener:Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

    .line 160
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

    .line 161
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    .line 162
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    .line 163
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    .line 164
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

    .line 166
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 167
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonErrorCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 169
    new-instance v2, Lcom/ss/android/ttve/common/TETrackIndexManager;

    invoke-direct {v2}, Lcom/ss/android/ttve/common/TETrackIndexManager;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    .line 171
    new-instance v2, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    invoke-direct {v2}, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mBusinessManager:Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    const/4 v2, 0x1

    .line 173
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEEditor;->mAutoPrepare:Z

    .line 177
    const-string v3, "unknown"

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mUsageType:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mRecordData:Lcom/ss/android/vesdk/VERecordData;

    .line 181
    const-string v3, "/concatShootVideo"

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoPath:Ljava/lang/String;

    .line 184
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameMap:Ljava/util/Map;

    .line 191
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoErrorForInvalidCodecs:I

    .line 195
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

    .line 201
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$1;

    invoke-direct {v3, p0}, Lcom/ss/android/vesdk/VEEditor$1;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonInfoCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 324
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$2;

    invoke-direct {v3, p0}, Lcom/ss/android/vesdk/VEEditor$2;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonErrorCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 805
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    .line 806
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    .line 808
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayWidth:I

    .line 809
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayHeight:I

    .line 811
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 813
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 820
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I

    const-wide/16 v5, 0x0

    .line 821
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlCurTimeMS:J

    .line 822
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 823
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 824
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J

    .line 825
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstPlayTimeMS:J

    .line 826
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastSeekTimeMS:J

    .line 827
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstFrameWithoutSurfaceTimeMS:J

    .line 828
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameDrawed:Z

    .line 829
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheHitCount:I

    .line 830
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    .line 832
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInPoint:I

    .line 833
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mOutPoint:I

    .line 835
    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->ALIGN_PARENT_BOTTOM:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoGravity:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 836
    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;->CENTER:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoScaletype:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    .line 837
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 838
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReverseDone:Z

    .line 839
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mCancelReverse:Z

    .line 840
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    .line 842
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    .line 843
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlCompileStartTime:J

    .line 844
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mBReversePlay:Z

    .line 845
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z

    .line 846
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    .line 847
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderListener:Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    .line 848
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 849
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 851
    new-instance v3, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-direct {v3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;-><init>()V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    .line 854
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurface:Z

    .line 855
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstTimeSurfaceCreate:Z

    .line 856
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurfaceOnce:Z

    .line 857
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 858
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor;->rotate:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 859
    iput v2, p0, Lcom/ss/android/vesdk/VEEditor;->scaleW:F

    .line 860
    iput v2, p0, Lcom/ss/android/vesdk/VEEditor;->scaleH:F

    .line 863
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mPageMode:I

    .line 865
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mEditorMode:I

    const/high16 v1, -0x1000000

    .line 868
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mBackGroundColor:I

    .line 870
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoBackGroundColor:I

    .line 935
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor;->mPlayFps:F

    .line 936
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$3;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$3;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 970
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$4;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$4;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 998
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$5;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$5;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    .line 1073
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$6;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$6;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    .line 1091
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$7;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$7;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 1111
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$8;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$8;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 1127
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$9;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$9;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    .line 1156
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$10;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$10;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mkeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

    .line 1562
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_154

    .line 1565
    const-string v0, "VEEditor"

    const-string v1, "VEEditor surfaceView"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    invoke-static {p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->createEngine(Lcom/ss/android/vesdk/VEUserConfig;)Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object p4

    iput-object p4, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 1567
    new-instance p4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    invoke-direct {p4, p1}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    .line 1568
    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p3, :cond_138

    .line 1570
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1572
    :cond_138
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setOpenGLListeners(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;)V

    .line 1573
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonInfoCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setInfoListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 1574
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonErrorCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setErrorListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 1575
    invoke-virtual {p0, v4}, Lcom/ss/android/vesdk/VEEditor;->enableEffectAmazing(Z)I

    .line 1576
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEEditor;->createWrapperInvokers()V

    return-void

    .line 1563
    :cond_154
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "workspace is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x64

    invoke-direct {p0, p2, p1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/TextureView;)V
    .registers 4

    const/4 v0, 0x0

    .line 1614
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;Landroid/view/TextureView;Lcom/ss/android/vesdk/VEUserConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/TextureView;Lcom/ss/android/vesdk/VEUserConfig;)V
    .registers 11

    .line 1625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    .line 154
    const-string v0, "mp4"

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;-><init>(Lcom/ss/android/vesdk/VEEditor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    .line 158
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    .line 159
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameListener:Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

    .line 160
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

    .line 161
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    .line 162
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    .line 163
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    .line 164
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

    .line 166
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 167
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonErrorCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 169
    new-instance v2, Lcom/ss/android/ttve/common/TETrackIndexManager;

    invoke-direct {v2}, Lcom/ss/android/ttve/common/TETrackIndexManager;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    .line 171
    new-instance v2, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    invoke-direct {v2}, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mBusinessManager:Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    const/4 v2, 0x1

    .line 173
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEEditor;->mAutoPrepare:Z

    .line 177
    const-string v3, "unknown"

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mUsageType:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mRecordData:Lcom/ss/android/vesdk/VERecordData;

    .line 181
    const-string v3, "/concatShootVideo"

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoPath:Ljava/lang/String;

    .line 184
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameMap:Ljava/util/Map;

    .line 191
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoErrorForInvalidCodecs:I

    .line 195
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

    .line 201
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$1;

    invoke-direct {v3, p0}, Lcom/ss/android/vesdk/VEEditor$1;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonInfoCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 324
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$2;

    invoke-direct {v3, p0}, Lcom/ss/android/vesdk/VEEditor$2;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonErrorCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 805
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    .line 806
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    .line 808
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayWidth:I

    .line 809
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayHeight:I

    .line 811
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 813
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 820
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I

    const-wide/16 v5, 0x0

    .line 821
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlCurTimeMS:J

    .line 822
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 823
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 824
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J

    .line 825
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstPlayTimeMS:J

    .line 826
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastSeekTimeMS:J

    .line 827
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstFrameWithoutSurfaceTimeMS:J

    .line 828
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameDrawed:Z

    .line 829
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheHitCount:I

    .line 830
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    .line 832
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInPoint:I

    .line 833
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mOutPoint:I

    .line 835
    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->ALIGN_PARENT_BOTTOM:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoGravity:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 836
    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;->CENTER:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoScaletype:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    .line 837
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 838
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReverseDone:Z

    .line 839
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mCancelReverse:Z

    .line 840
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    .line 842
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    .line 843
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlCompileStartTime:J

    .line 844
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mBReversePlay:Z

    .line 845
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z

    .line 846
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    .line 847
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderListener:Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    .line 848
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 849
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 851
    new-instance v3, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-direct {v3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;-><init>()V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    .line 854
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurface:Z

    .line 855
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstTimeSurfaceCreate:Z

    .line 856
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurfaceOnce:Z

    .line 857
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 858
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor;->rotate:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 859
    iput v2, p0, Lcom/ss/android/vesdk/VEEditor;->scaleW:F

    .line 860
    iput v2, p0, Lcom/ss/android/vesdk/VEEditor;->scaleH:F

    .line 863
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mPageMode:I

    .line 865
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mEditorMode:I

    const/high16 v1, -0x1000000

    .line 868
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mBackGroundColor:I

    .line 870
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoBackGroundColor:I

    .line 935
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor;->mPlayFps:F

    .line 936
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$3;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEEditor$3;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 970
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$4;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$4;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 998
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$5;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$5;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    .line 1073
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$6;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$6;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    .line 1091
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$7;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$7;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 1111
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$8;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$8;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 1127
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$9;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$9;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    .line 1156
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$10;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$10;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mkeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

    .line 1626
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14c

    .line 1629
    const-string v1, "VEEditor"

    const-string v2, "VEEditor textureView"

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    invoke-static {p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->createEngine(Lcom/ss/android/vesdk/VEUserConfig;)Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object p3

    iput-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 1631
    new-instance p3, Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    invoke-direct {p3, p1}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    .line 1632
    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureView:Landroid/view/TextureView;

    .line 1633
    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1634
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setOpenGLListeners(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;)V

    .line 1635
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonInfoCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setInfoListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 1636
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonErrorCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setErrorListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 1637
    invoke-virtual {p0, v4}, Lcom/ss/android/vesdk/VEEditor;->enableEffectAmazing(Z)I

    .line 1638
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEEditor;->createWrapperInvokers()V

    return-void

    .line 1627
    :cond_14c
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "workspace is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x64

    invoke-direct {p0, p2, p1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ss/android/vesdk/VEUserConfig;)V
    .registers 10

    .line 1491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    .line 154
    const-string v0, "mp4"

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;-><init>(Lcom/ss/android/vesdk/VEEditor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    .line 158
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    .line 159
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameListener:Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

    .line 160
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

    .line 161
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    .line 162
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    .line 163
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    .line 164
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

    .line 166
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 167
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonErrorCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 169
    new-instance v2, Lcom/ss/android/ttve/common/TETrackIndexManager;

    invoke-direct {v2}, Lcom/ss/android/ttve/common/TETrackIndexManager;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    .line 171
    new-instance v2, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    invoke-direct {v2}, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;-><init>()V

    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mBusinessManager:Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    const/4 v2, 0x1

    .line 173
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEEditor;->mAutoPrepare:Z

    .line 177
    const-string v3, "unknown"

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mUsageType:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mRecordData:Lcom/ss/android/vesdk/VERecordData;

    .line 181
    const-string v3, "/concatShootVideo"

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoPath:Ljava/lang/String;

    .line 184
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameMap:Ljava/util/Map;

    .line 191
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoErrorForInvalidCodecs:I

    .line 195
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

    .line 201
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$1;

    invoke-direct {v3, p0}, Lcom/ss/android/vesdk/VEEditor$1;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonInfoCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 324
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$2;

    invoke-direct {v3, p0}, Lcom/ss/android/vesdk/VEEditor$2;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonErrorCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    .line 805
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    .line 806
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    .line 808
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayWidth:I

    .line 809
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayHeight:I

    .line 811
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 813
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 820
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I

    const-wide/16 v5, 0x0

    .line 821
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlCurTimeMS:J

    .line 822
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 823
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 824
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J

    .line 825
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstPlayTimeMS:J

    .line 826
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastSeekTimeMS:J

    .line 827
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstFrameWithoutSurfaceTimeMS:J

    .line 828
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameDrawed:Z

    .line 829
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheHitCount:I

    .line 830
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    .line 832
    iput v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInPoint:I

    .line 833
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mOutPoint:I

    .line 835
    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->ALIGN_PARENT_BOTTOM:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoGravity:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 836
    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;->CENTER:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoScaletype:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    .line 837
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 838
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReverseDone:Z

    .line 839
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mCancelReverse:Z

    .line 840
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    .line 842
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    .line 843
    iput-wide v5, p0, Lcom/ss/android/vesdk/VEEditor;->mlCompileStartTime:J

    .line 844
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mBReversePlay:Z

    .line 845
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z

    .line 846
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    .line 847
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderListener:Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    .line 848
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 849
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 851
    new-instance v3, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-direct {v3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;-><init>()V

    iput-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    .line 854
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurface:Z

    .line 855
    iput-boolean v2, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstTimeSurfaceCreate:Z

    .line 856
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurfaceOnce:Z

    .line 857
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    .line 858
    iput v3, p0, Lcom/ss/android/vesdk/VEEditor;->rotate:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 859
    iput v5, p0, Lcom/ss/android/vesdk/VEEditor;->scaleW:F

    .line 860
    iput v5, p0, Lcom/ss/android/vesdk/VEEditor;->scaleH:F

    .line 863
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mPageMode:I

    .line 865
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mEditorMode:I

    const/high16 v1, -0x1000000

    .line 868
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mBackGroundColor:I

    .line 870
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoBackGroundColor:I

    .line 935
    iput v3, p0, Lcom/ss/android/vesdk/VEEditor;->mPlayFps:F

    .line 936
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$3;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$3;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 970
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$4;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$4;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 998
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$5;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$5;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    .line 1073
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$6;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$6;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    .line 1091
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$7;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$7;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 1111
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$8;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$8;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    .line 1127
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$9;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$9;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    .line 1156
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$10;

    invoke-direct {v1, p0}, Lcom/ss/android/vesdk/VEEditor$10;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mkeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

    .line 1492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14c

    .line 1495
    const-string v1, "VEEditor"

    const-string v3, "VEEditor offscreen"

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    invoke-static {p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->createEngine(Lcom/ss/android/vesdk/VEUserConfig;)Lcom/ss/android/ttve/nativePort/TEInterface;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 1497
    new-instance p2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    invoke-direct {p2, p1}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    .line 1498
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mOpenGLCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setOpenGLListeners(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;)V

    .line 1499
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonInfoCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setInfoListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 1500
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mTeCommonErrorCallback:Lcom/ss/android/ttve/common/TECommonCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setErrorListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 1501
    const-string p1, "iesve_veeditor_offscreen"

    invoke-static {p1, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 1502
    invoke-virtual {p0, v4}, Lcom/ss/android/vesdk/VEEditor;->enableEffectAmazing(Z)I

    .line 1503
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEEditor;->createWrapperInvokers()V

    return-void

    .line 1493
    :cond_14c
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "workspace is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x64

    invoke-direct {p0, p2, p1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private _compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;)Z
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 6858
    monitor-enter p0

    .line 6859
    :try_start_7
    iget-boolean v3, v1, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    if-eqz v3, :cond_561

    .line 6862
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_55f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto/16 :goto_55f

    .line 6866
    :cond_20
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v3

    const-string v7, "ve_titan_release_block_time"

    invoke-virtual {v3, v7, v4}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;I)I

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_2f

    move v3, v7

    goto :goto_30

    :cond_2f
    move v3, v4

    :goto_30
    if-nez v3, :cond_45

    .line 6868
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableRemuxVideoForShoot()Z

    move-result v8

    if-eqz v8, :cond_45

    .line 6870
    invoke-direct {v1, v2}, Lcom/ss/android/vesdk/VEEditor;->concatShootVideo(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v8

    if-nez v8, :cond_45

    .line 6871
    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->setEnableRemuxVideoForShoot(Z)V

    goto :goto_45

    :catchall_42
    move-exception v0

    goto/16 :goto_56b

    .line 6875
    :cond_45
    :goto_45
    const-string v8, "VEEditor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_compile outFilePath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6876
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getEnableRemuxVideoRes()I

    move-result v8

    const/4 v9, -0x1

    if-eq v9, v8, :cond_a7

    .line 6878
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v8

    const-string v10, "remux_video_res"

    invoke-virtual {v8, v10}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v8

    if-eqz v8, :cond_a0

    .line 6879
    invoke-virtual {v8}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a0

    invoke-virtual {v8}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Ljava/lang/Integer;

    if-eqz v10, :cond_a0

    .line 6880
    invoke-virtual {v8}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 6881
    invoke-virtual {v2, v8}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->setEnableRemuxVideoRes(I)V

    .line 6882
    const-string v10, "VESDK"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remuxVideoRes = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a7

    .line 6884
    :cond_a0
    const-string v8, "VESDK"

    const-string v10, "No remux video resolution config"

    invoke-static {v8, v10}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    :goto_a7
    if-eqz v3, :cond_b8

    .line 6889
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableRemuxVideoForShoot()Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 6891
    invoke-direct {v1, v2}, Lcom/ss/android/vesdk/VEEditor;->concatShootVideo(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 6892
    invoke-virtual {v2, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->setEnableRemuxVideoForShoot(Z)V

    .line 6898
    :cond_b8
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->genEditorStatus()V

    .line 6901
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/vesdk/runtime/VERuntime;->getNativeContext()J

    move-result-wide v10

    .line 6902
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    move-result-object v3

    invoke-virtual {v3, v2, v10, v11}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->setVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;J)I

    .line 6905
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->updateVideoEncodeSettings()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object v2

    .line 6906
    const-string v3, "VEEditor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VideoEncodeSettings = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6909
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    const/4 v8, 0x0

    if-eqz v3, :cond_124

    .line 6910
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->getEnableRemuxErrorCode()I

    move-result v3

    .line 6911
    const-string v10, "VEEditor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "report remux error code = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6912
    iget v10, v1, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoErrorForInvalidCodecs:I

    if-eq v10, v9, :cond_116

    move v3, v10

    .line 6915
    :cond_116
    const-string v9, "not_edit_is_reencode"

    int-to-long v10, v3

    invoke-static {v9, v10, v11}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;J)V

    .line 6916
    iget-object v9, v1, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    const/16 v10, 0x1022

    const/4 v11, 0x0

    invoke-interface {v9, v10, v3, v11, v8}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    .line 6920
    :cond_124
    iput-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    .line 6921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/ss/android/vesdk/VEEditor;->mlCompileStartTime:J

    .line 6923
    iget-boolean v3, v1, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurface:Z

    if-eqz v3, :cond_15e

    .line 6924
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->getCurrDisplayImage()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_15e

    .line 6926
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 6927
    iget v3, v1, Lcom/ss/android/vesdk/VEEditor;->rotate:F

    invoke-virtual {v14, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 6928
    iget v3, v1, Lcom/ss/android/vesdk/VEEditor;->scaleW:F

    iget v9, v1, Lcom/ss/android/vesdk/VEEditor;->scaleH:F

    invoke-virtual {v14, v3, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 6929
    iget-object v9, v1, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 6933
    :cond_15e
    const-string v3, "VEEditor"

    const-string v9, "compile..."

    invoke-static {v3, v9}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6934
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 6935
    sget-object v3, Lcom/ss/android/vesdk/VEEditor$15;->$SwitchMap$com$ss$android$vesdk$VEVideoEncodeSettings$COMPILE_TYPE:[I

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getCompileType()Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v3, v3, v9

    const/4 v9, 0x2

    if-eq v3, v7, :cond_2a8

    if-eq v3, v9, :cond_29e

    const/4 v10, 0x3

    const-wide/16 v11, -0x1

    const/4 v13, 0x4

    if-eq v3, v10, :cond_1f9

    if-eq v3, v13, :cond_18e

    .line 6996
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileType(I)V

    .line 6997
    const-string v3, "mp4"

    iput-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    goto/16 :goto_2b1

    .line 6971
    :cond_18e
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    if-eqz v0, :cond_1a0

    iget-boolean v0, v0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsRunning:Z

    if-eqz v0, :cond_1a0

    .line 6972
    const-string v0, "te_composition_gif_ret"

    invoke-static {v13, v0, v11, v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 6974
    invoke-static {v13}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    .line 6975
    monitor-exit p0

    return v4

    .line 6978
    :cond_1a0
    iput-boolean v7, v1, Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z

    .line 6979
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileType(I)V

    .line 6980
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    if-nez v0, :cond_1b4

    .line 6981
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    .line 6983
    :cond_1b4
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".data"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6985
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getFps()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setFps(I)V

    .line 6986
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    invoke-virtual {v3, v7}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setTransparentMode(Z)V

    .line 6987
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    invoke-virtual {v3, v0}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setInputFile(Ljava/lang/String;)V

    .line 6988
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    iget-object v10, v1, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setOutputFile(Ljava/lang/String;)V

    .line 6990
    const-string v3, "transparent_gif"

    iput-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    .line 6991
    const-string v3, "te_composition_gif_ret"

    invoke-static {v13, v3, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 6993
    invoke-static {v13}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    goto/16 :goto_2b1

    .line 6945
    :cond_1f9
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    if-eqz v0, :cond_20b

    iget-boolean v0, v0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->mIsRunning:Z

    if-eqz v0, :cond_20b

    .line 6946
    const-string v0, "te_composition_gif_ret"

    invoke-static {v13, v0, v11, v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 6948
    invoke-static {v13}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    .line 6949
    monitor-exit p0

    return v4

    .line 6951
    :cond_20b
    iput-boolean v7, v1, Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z

    .line 6952
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v13}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileType(I)V

    .line 6953
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    if-nez v0, :cond_21d

    .line 6954
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    invoke-direct {v0, v1}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    .line 6956
    :cond_21d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/io/File;

    iget-object v10, v1, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "gif.mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6957
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    invoke-virtual {v3, v0}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setInputFile(Ljava/lang/String;)V

    .line 6958
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    iget-object v10, v1, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setOutputFile(Ljava/lang/String;)V

    .line 6959
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    iget-object v10, v1, Lcom/ss/android/vesdk/VEEditor;->waterMarkFile:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setWaterMarkFile(Ljava/lang/String;)V

    .line 6960
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    iget-wide v10, v1, Lcom/ss/android/vesdk/VEEditor;->waterMarkWidth:D

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v12

    iget v12, v12, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-double v14, v12

    mul-double/2addr v10, v14

    double-to-int v10, v10

    invoke-virtual {v3, v10}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setWaterMarkWidth(I)V

    .line 6961
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    iget-wide v10, v1, Lcom/ss/android/vesdk/VEEditor;->waterMarkHeight:D

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v12

    iget v12, v12, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-double v14, v12

    mul-double/2addr v10, v14

    double-to-int v10, v10

    invoke-virtual {v3, v10}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setWaterMarkHeight(I)V

    .line 6962
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    iget-wide v10, v1, Lcom/ss/android/vesdk/VEEditor;->waterMarkOffsetX:D

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v12

    iget v12, v12, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-double v14, v12

    mul-double/2addr v10, v14

    double-to-int v10, v10

    invoke-virtual {v3, v10}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setWaterMarkOffsetX(I)V

    .line 6963
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    iget-wide v10, v1, Lcom/ss/android/vesdk/VEEditor;->waterMarkOffsetY:D

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v12

    iget v12, v12, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-double v14, v12

    mul-double/2addr v10, v14

    double-to-int v10, v10

    invoke-virtual {v3, v10}, Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;->setWaterMarkOffsetY(I)V

    .line 6965
    const-string v3, "high_gif"

    iput-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    .line 6966
    const-string v3, "te_composition_gif_ret"

    invoke-static {v13, v3, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 6968
    invoke-static {v13}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    goto :goto_2b1

    .line 6941
    :cond_29e
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileType(I)V

    .line 6942
    const-string v3, "gif"

    iput-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    goto :goto_2b1

    .line 6937
    :cond_2a8
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileType(I)V

    .line 6938
    const-string v3, "mp4"

    iput-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    .line 7001
    :goto_2b1
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getFps()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileFps(I)V

    .line 7002
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getPublishFps()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompilePublishFps(I)V

    .line 7003
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getMVStillFramesPublishFps()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileMVStillFramesPublishFps(I)V

    .line 7004
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getMVStillFramesWatermarkFps()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileMVStillFramesWatermarkFps(I)V

    .line 7007
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move-object/from16 v10, p2

    invoke-virtual {v3, v0, v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEngineCompilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 7010
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeMode()I

    move-result v3

    .line 7011
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeX()F

    move-result v10

    .line 7012
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeY()F

    move-result v11

    .line 7010
    invoke-virtual {v0, v3, v10, v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->setResizer(IFF)V

    .line 7013
    const-string v0, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "compile... resizeMode:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeMode()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", resetX:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7014
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeX()F

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", resetY:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeY()F

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7013
    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7017
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoBackGroundColor:I

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setVideoBackGroundColor(I)V

    .line 7020
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getRotate()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setUsrRotate(I)V

    .line 7023
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSpeed()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setSpeedRatio(F)V

    .line 7025
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableRemuxVideo()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableRemuxVideo(Z)V

    .line 7027
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableInterLeave()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableInterLeave(Z)V

    .line 7028
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableAvInterLeave()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableAvInterLeave(Z)V

    .line 7030
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isCompileSoftInfo()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileSoftInfo(Z)V

    .line 7032
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v3, "vboost_compile"

    invoke-virtual {v0, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_385

    .line 7033
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_385

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_385

    .line 7034
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 7035
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableCompileVboost(Z)V

    .line 7038
    :cond_385
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v3, "ve_compile_report"

    invoke-virtual {v0, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_3ac

    .line 7039
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3ac

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3ac

    .line 7040
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7041
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileReportState(I)I

    .line 7044
    :cond_3ac
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v3, "ve_enable_editor_compile_gl_context_reuse"

    invoke-virtual {v0, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_3d3

    .line 7045
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3d3

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_3d3

    .line 7046
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 7047
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileGLContextReuse(Z)I

    .line 7050
    :cond_3d3
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getSampleRate()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getChannelCount()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getBps()I

    move-result v11

    invoke-virtual {v0, v3, v10, v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->setAudioCompileSetting(III)V

    .line 7053
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mEncoderListener:Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    if-eqz v0, :cond_3f5

    .line 7054
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEncoderParallel(Z)V

    .line 7055
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mEncoderDataCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setEncoderDataListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;)V

    goto :goto_3ff

    .line 7057
    :cond_3f5
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEncoderParallel(Z)V

    .line 7058
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v8}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setEncoderDataListener(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IEncoderDataCallback;)V

    .line 7062
    :goto_3ff
    invoke-direct {v1}, Lcom/ss/android/vesdk/VEEditor;->addCopyright()V

    .line 7065
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v8

    iget v8, v8, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v3, v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->setWidthHeight(II)V

    .line 7066
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkParam()Lcom/ss/android/vesdk/VEWatermarkParam;

    move-result-object v0

    if-eqz v0, :cond_456

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    if-lez v0, :cond_456

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    if-gtz v0, :cond_42a

    goto :goto_456

    .line 7073
    :cond_42a
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkParam()Lcom/ss/android/vesdk/VEWatermarkParam;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->needExtFile:Z

    if-eqz v0, :cond_444

    .line 7075
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v8

    iget v8, v8, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v3, v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->setWatermarkWidthHeight(II)V

    goto :goto_487

    .line 7078
    :cond_444
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v8

    iget v8, v8, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v3, v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->setWidthHeight(II)V

    goto :goto_487

    .line 7068
    :cond_456
    :goto_456
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v3

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object v8

    iget v8, v8, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v0, v3, v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->setWatermarkWidthHeight(II)V

    .line 7071
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isReEncodeOpt()Z

    move-result v3

    if-eqz v3, :cond_483

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isSupportHwEnc()Z

    move-result v3

    if-eqz v3, :cond_483

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableRemuxVideo()Z

    move-result v3

    if-nez v3, :cond_483

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableHwBufferEncode()Z

    move-result v3

    if-nez v3, :cond_483

    move v3, v7

    goto :goto_484

    :cond_483
    move v3, v4

    :goto_484
    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableReEncodeOpt(Z)V

    .line 7082
    :goto_487
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getKeyFramePoints()[I

    move-result-object v0

    if-eqz v0, :cond_496

    .line 7083
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getKeyFramePoints()[I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setKeyFramePoints([I)V

    .line 7089
    :cond_496
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getWatermarkParam()Lcom/ss/android/vesdk/VEWatermarkParam;

    move-result-object v0

    if-eqz v0, :cond_4b2

    .line 7090
    iget-boolean v3, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->needExtFile:Z

    if-eqz v3, :cond_4b2

    .line 7091
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileWatermark(Lcom/ss/android/vesdk/VEWatermarkParam;)V

    .line 7092
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result v3

    if-eqz v3, :cond_4f0

    .line 7094
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->onMonitorError()V

    .line 7096
    monitor-exit p0

    return v4

    :cond_4b2
    if-eqz v0, :cond_4c7

    .line 7100
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEWatermarkParam;->getEntities()[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    move-result-object v3

    array-length v3, v3

    if-eqz v3, :cond_4c7

    .line 7101
    iput-boolean v4, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->needExtFile:Z

    .line 7102
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileWatermark(Lcom/ss/android/vesdk/VEWatermarkParam;)V

    .line 7103
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableRemuxVideo(Z)V

    .line 7105
    :cond_4c7
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result v3

    if-eqz v3, :cond_4f0

    const/16 v8, -0xdc

    if-ne v8, v3, :cond_4e9

    .line 7108
    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isReEncodeOpt()Z

    move-result v8

    if-eqz v8, :cond_4e9

    .line 7109
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->releaseEngine()I

    .line 7110
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableReEncodeOpt(Z)V

    .line 7111
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result v3

    :cond_4e9
    if-eqz v3, :cond_4f0

    .line 7115
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->onMonitorError()V

    .line 7117
    monitor-exit p0

    return v4

    :cond_4f0
    if-eqz v0, :cond_518

    .line 7122
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEWatermarkParam;->getEntities()[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    move-result-object v3

    if-eqz v3, :cond_50b

    .line 7123
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEWatermarkParam;->getEntities()[Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;

    move-result-object v4

    iget-object v0, v0, Lcom/ss/android/vesdk/VEWatermarkParam;->mask:Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;

    invoke-virtual {v3, v4, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setWaterMark([Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkEntity;Lcom/ss/android/vesdk/VEWatermarkParam$VEWatermarkMask;)V

    .line 7126
    const-string v0, "te_composition_watermark_add"

    const-wide/16 v3, 0x1

    invoke-static {v7, v0, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    goto :goto_51d

    .line 7128
    :cond_50b
    const-string v0, "VEEditor"

    const-string v3, "watermarkParam.images is null!!!"

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7129
    const-string v0, "te_composition_watermark_add"

    invoke-static {v7, v0, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    goto :goto_51d

    .line 7133
    :cond_518
    const-string v0, "te_composition_watermark_add"

    invoke-static {v7, v0, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 7135
    :goto_51d
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

    invoke-virtual {v0, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)I

    .line 7138
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->start()I

    .line 7139
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 7140
    const-string v3, "iesve_veeditor_composition_start_file"

    iget-object v4, v1, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 7141
    const-string v3, "iesve_veeditor_composition_start"

    invoke-static {v3, v7, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V
    :try_end_53a
    .catchall {:try_start_7 .. :try_end_53a} :catchall_42

    .line 7143
    :try_start_53a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7144
    const-string v3, "videoSettings"

    invoke-virtual {v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7145
    const-string v2, "audioSettings"

    invoke-virtual/range {p4 .. p4}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7146
    const-string v2, "vesdk_event_editor_compile"

    const-string v3, "behavior"

    invoke-static {v2, v0, v3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_558
    .catch Lorg/json/JSONException; {:try_start_53a .. :try_end_558} :catch_559
    .catchall {:try_start_53a .. :try_end_558} :catchall_42

    goto :goto_55d

    :catch_559
    move-exception v0

    .line 7148
    :try_start_55a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7151
    :goto_55d
    monitor-exit p0

    return v7

    .line 6863
    :cond_55f
    :goto_55f
    monitor-exit p0

    return v4

    .line 6860
    :cond_561
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v2, "Make sure the initialization is successful before coding!!!"

    const/16 v3, -0x69

    invoke-direct {v0, v3, v2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 7152
    :goto_56b
    monitor-exit p0
    :try_end_56c
    .catchall {:try_start_55a .. :try_end_56c} :catchall_42

    throw v0
.end method

.method private _compileOnlyAudio(Ljava/lang/String;Lcom/ss/android/vesdk/VEAudioEncodeSettings;)Z
    .registers 7

    .line 7156
    monitor-enter p0

    .line 7157
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    if-eqz v0, :cond_72

    .line 7160
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_6f

    .line 7163
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlCompileStartTime:J

    .line 7165
    const-string v0, "VEEditor"

    const-string v1, "_compileOnlyAudio..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7166
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 7168
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileType(I)V

    .line 7171
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEngineCompilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 7173
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableRemuxVideo(Z)V

    .line 7175
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getSampleRate()I

    move-result v1

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getChannelCount()I

    move-result v2

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->getBps()I

    move-result p2

    invoke-virtual {p1, v1, v2, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setAudioCompileSetting(III)V

    .line 7178
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEEditor;->addCopyright()V

    .line 7180
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    .line 7181
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->start()I

    .line 7182
    monitor-exit p0

    return v0

    :catchall_6d
    move-exception p1

    goto :goto_7c

    :cond_6f
    :goto_6f
    const/4 p1, 0x0

    .line 7161
    monitor-exit p0

    return p1

    .line 7158
    :cond_72
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    const-string p2, "Make sure the initialization is successful before coding!!!"

    const/16 v0, -0x69

    invoke-direct {p1, v0, p2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 7183
    :goto_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_1 .. :try_end_7d} :catchall_6d

    throw p1
.end method

.method private static _compileProbe(Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;IILcom/ss/android/vesdk/VEListener$VECompileProbeCallback;Lcom/ss/android/vesdk/VEListener$VECompileProbeCallback2;)I
    .registers 41

    move-object/from16 v0, p1

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    .line 6548
    new-instance v3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    move-object/from16 v4, p8

    .line 6549
    invoke-virtual {v3, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setExternalSettings(Ljava/lang/String;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object v3

    .line 6551
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v4

    const-string v5, "use_byte264"

    invoke-virtual {v4, v5}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v4

    .line 6552
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v5

    const-string v6, "compile_probe_use_byte264"

    invoke-virtual {v5, v6}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v5

    .line 6553
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v6

    const-string v7, "compile_probe_crf"

    invoke-virtual {v6, v7}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v6

    if-eqz v6, :cond_58

    .line 6555
    invoke-virtual {v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_58

    invoke-virtual {v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_58

    .line 6556
    invoke-virtual {v6}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_58

    .line 6558
    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoCompileEncodeSetting()Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iput v6, v7, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mCrf:I

    :cond_58
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_70

    .line 6563
    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_70

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_70

    move v8, v6

    goto :goto_71

    :cond_70
    move v8, v7

    :goto_71
    if-eqz v5, :cond_86

    .line 6566
    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_86

    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_86

    move v8, v7

    .line 6569
    :cond_86
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KEY_USE_BYTE264= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "KEY_COMPILE_PROBE_USE_BYTE264= "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6570
    invoke-virtual {v5}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "tempValue= "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6569
    const-string v5, "VEEditor"

    invoke-static {v5, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x64

    const/4 v9, 0x0

    if-eqz v2, :cond_cf

    .line 6575
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$13;

    invoke-direct {v1, v2, v3, v8}, Lcom/ss/android/vesdk/VEEditor$13;-><init>(Lcom/ss/android/vesdk/VEListener$VECompileProbeCallback2;Lcom/ss/android/vesdk/VEVideoEncodeSettings;I)V

    move-object/from16 v26, v1

    move-object/from16 v25, v9

    goto :goto_da

    :cond_cf
    if-eqz v1, :cond_1a7

    .line 6604
    new-instance v2, Lcom/ss/android/vesdk/VEEditor$14;

    invoke-direct {v2, v1, v8, v3}, Lcom/ss/android/vesdk/VEEditor$14;-><init>(Lcom/ss/android/vesdk/VEListener$VECompileProbeCallback;ILcom/ss/android/vesdk/VEVideoEncodeSettings;)V

    move-object/from16 v25, v2

    move-object/from16 v26, v9

    .line 6623
    :goto_da
    invoke-virtual {v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoCompileEncodeSetting()Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;

    move-result-object v1

    .line 6625
    iget-boolean v2, v1, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->useHWEncoder:Z

    if-eqz v2, :cond_ec

    move/from16 v2, p9

    if-ne v2, v6, :cond_ee

    .line 6626
    const-string v0, "compile use hard encode, not soft encode"

    invoke-static {v5, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_ec
    move/from16 v2, p9

    :cond_ee
    if-eqz v0, :cond_1a2

    .line 6630
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f8

    goto/16 :goto_1a2

    .line 6635
    :cond_f8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6636
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v6, -0x1

    if-eqz v4, :cond_18d

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_10c

    goto/16 :goto_18d

    .line 6641
    :cond_10c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/probe/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6642
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6643
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_134

    .line 6644
    invoke-static {v0}, Lcom/ss/android/vesdk/VEFileUtils;->mkdir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_134

    .line 6645
    const-string v0, "create probeDir failed"

    invoke-static {v5, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 6650
    :cond_134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "compile_probe"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 6652
    iget-object v0, v1, Lcom/ss/android/vesdk/settings/VEVideoCompileEncodeSettings;->mSWEncodeSetting:Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;

    iget v1, v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mPreset:I

    iget v3, v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mCrf:I

    iget v4, v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mGop:I

    iget-wide v8, v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mMaxRate:J

    iget-wide v12, v0, Lcom/ss/android/vesdk/settings/VEVideoSWEncodeSettings;->mQPOffset:D

    move-object/from16 v10, p0

    move-wide/from16 v14, p4

    move-wide/from16 v16, p6

    move/from16 v18, v1

    move/from16 v27, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-wide/from16 v21, v8

    move-wide/from16 v23, v12

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-static/range {v10 .. v27}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeCompileProbe(Ljava/lang/String;Ljava/lang/String;IIJJIIIJDLcom/ss/android/ttve/nativePort/TEVideoUtils$CompileProbeListener;Lcom/ss/android/ttve/nativePort/TEVideoUtils$CompileProbeListener2;I)I

    .line 6657
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6658
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18c

    .line 6659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6660
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_18c
    return v7

    .line 6637
    :cond_18d
    :goto_18d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savepath is not exist, savepath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 6631
    :cond_1a2
    :goto_1a2
    const-string v0, "savepath is null or savepath is empty"

    invoke-static {v5, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a7
    return v4
.end method

.method private _concatShootVideo(Ljava/lang/String;[Ljava/lang/String;[J)Z
    .registers 8

    .line 6832
    monitor-enter p0

    .line 6833
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    if-eqz v0, :cond_5f

    .line 6837
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 6838
    monitor-exit p0

    return v1

    :catchall_14
    move-exception p1

    goto :goto_69

    .line 6841
    :cond_16
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "video_duration_opt"

    invoke-virtual {v0, v2}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 6842
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3b

    .line 6843
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3c

    :cond_3b
    move v0, v1

    .line 6846
    :goto_3c
    iget-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->concatShootVideo(Ljava/lang/String;[Ljava/lang/String;[JZ)I

    move-result p1

    if-eqz p1, :cond_5c

    .line 6848
    const-string p2, "VEEditor"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "concatShootVideo failed = ret: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6849
    monitor-exit p0

    return v1

    .line 6852
    :cond_5c
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 6834
    :cond_5f
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    const-string p2, "Make sure the initialization is successful before coding!!!"

    const/16 p3, -0x69

    invoke-direct {p1, p3, p2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 6852
    :goto_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_14

    throw p1
.end method

.method static synthetic access$000(Lcom/ss/android/vesdk/VEEditor;)Z
    .registers 1

    .line 140
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z

    return p0
.end method

.method static synthetic access$002(Lcom/ss/android/vesdk/VEEditor;Z)Z
    .registers 2

    .line 140
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor;->mBCompileHighQualityGif:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/ss/android/vesdk/VEEditor;F)F
    .registers 2

    .line 140
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->mPlayFps:F

    return p1
.end method

.method static synthetic access$1100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VECommonCallback;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonErrorCallback:Lcom/ss/android/vesdk/VECommonCallback;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/VEListener$VEGetImageListener;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/ss/android/vesdk/VEEditor;)Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/ss/android/vesdk/VEEditor;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/ss/android/vesdk/VEEditor;)Landroid/view/Surface;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/ss/android/vesdk/VEEditor;Landroid/view/Surface;)Landroid/view/Surface;
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/ss/android/vesdk/VEEditor;I)I
    .registers 2

    .line 140
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1802(Lcom/ss/android/vesdk/VEEditor;I)I
    .registers 2

    .line 140
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1900(Lcom/ss/android/vesdk/VEEditor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mp4ToGIFConverter:Lcom/ss/android/vesdk/VEEditor$Mp4ToHighQualityGIFConverter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ss/android/vesdk/VEEditor;)Z
    .registers 1

    .line 140
    iget-boolean p0, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameDrawed:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/ss/android/vesdk/VEEditor;Z)Z
    .registers 2

    .line 140
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameDrawed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/ss/android/vesdk/VEEditor;)J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstPlayTimeMS:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/ss/android/vesdk/VEEditor;)J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/ss/android/vesdk/VEEditor;)J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/ss/android/vesdk/VEEditor;)Ljava/lang/String;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mUsageType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameListener:Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ss/android/vesdk/VEEditor;)I
    .registers 1

    .line 140
    iget p0, p0, Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I

    return p0
.end method

.method static synthetic access$2602(Lcom/ss/android/vesdk/VEEditor;I)I
    .registers 2

    .line 140
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I

    return p1
.end method

.method static synthetic access$2604(Lcom/ss/android/vesdk/VEEditor;)I
    .registers 2

    .line 140
    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I

    return v0
.end method

.method static synthetic access$2700(Lcom/ss/android/vesdk/VEEditor;)J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlCurTimeMS:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/ss/android/vesdk/VEEditor;J)J
    .registers 3

    .line 140
    iput-wide p1, p0, Lcom/ss/android/vesdk/VEEditor;->mlCurTimeMS:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/ss/android/vesdk/VEEditor;)J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/ss/android/vesdk/VEEditor;J)J
    .registers 3

    .line 140
    iput-wide p1, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    return-wide p1
.end method

.method static synthetic access$2900(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEncoderListener;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderListener:Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/vesdk/VEEditor;I)V
    .registers 2

    .line 140
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->onMonitorCompile(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEGetImageListener;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEMattingListener;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/ss/android/vesdk/VEEditor;)Ljava/util/Map;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ss/android/vesdk/VEEditor;)J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastSeekTimeMS:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    return-object p0
.end method

.method static synthetic access$702(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    return-object p1
.end method

.method static synthetic access$800(Lcom/ss/android/vesdk/VEEditor;)Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ss/android/vesdk/VEEditor;)J
    .registers 3

    .line 140
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstFrameWithoutSurfaceTimeMS:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/ss/android/vesdk/VEEditor;J)J
    .registers 3

    .line 140
    iput-wide p1, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstFrameWithoutSurfaceTimeMS:J

    return-wide p1
.end method

.method private addCopyright()V
    .registers 4

    .line 7210
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 7211
    invoke-static {v0}, Lcom/ss/android/vesdk/utils/DigestUtils;->generateMd5Checkcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7212
    const-string v1, "VEEditor"

    const-string v2, "addCopyright... "

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7213
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const-string v1, "copyright"

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->addMetaData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addFileInfoCache(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 7752
    monitor-enter p0

    .line 7753
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7754
    const-string p1, ""

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    goto :goto_45

    .line 7756
    :cond_d
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFileInfoCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 7757
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_41

    .line 7761
    :cond_1e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7762
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_31

    .line 7765
    const-string p1, ""

    monitor-exit p0

    return-object p1

    .line 7767
    :cond_31
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7768
    sget-object v1, Lcom/ss/android/vesdk/VEEditor;->mFileInfoCacheMap:Ljava/util/Map;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7770
    monitor-exit p0

    return-object v0

    .line 7758
    :cond_41
    :goto_41
    const-string p1, ""

    monitor-exit p0

    return-object p1

    .line 7771
    :goto_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_b

    throw p1
.end method

.method private addSticker(Landroid/graphics/Bitmap;Lcom/ss/android/vesdk/VESize;II)I
    .registers 5

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method private addWaterMark([Landroid/graphics/Bitmap;ILcom/ss/android/vesdk/VESize;II)I
    .registers 6

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public static audioExtend(Ljava/lang/String;FFF)Ljava/lang/String;
    .registers 5

    .line 4443
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 4447
    :cond_8
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->audioExtend(Ljava/lang/String;FFF)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private calSeekToleranceBySpeed(FF)I
    .registers 9

    const/4 p0, 0x0

    cmpl-float v0, p2, p0

    const/16 v1, 0xa

    if-eqz v0, :cond_45

    cmpl-float v0, p1, p0

    if-nez v0, :cond_c

    goto :goto_45

    :cond_c
    cmpg-float p0, p2, p0

    if-gez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    .line 5618
    :goto_13
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 5619
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v2, p2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, v2, v4

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v0, :cond_32

    div-float/2addr p1, p2

    int-to-float p0, v1

    mul-float/2addr p1, p0

    div-float/2addr p1, v2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_31

    float-to-int p0, p1

    return p0

    :cond_31
    return v1

    :cond_32
    if-eqz p0, :cond_35

    const/4 v1, 0x5

    :cond_35
    const/high16 p0, 0x447a0000    # 1000.0f

    int-to-float p2, v1

    div-float/2addr p0, p2

    mul-float/2addr p0, p1

    div-float/2addr p0, v2

    const/16 p1, 0x64

    int-to-float p2, p1

    cmpl-float p2, p0, p2

    if-lez p2, :cond_44

    float-to-int p0, p0

    return p0

    :cond_44
    return p1

    :cond_45
    :goto_45
    return v1
.end method

.method public static cancelCompileProbe()V
    .registers 0

    .line 6672
    invoke-static {}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->nativeCancelCompileProbe()V

    return-void
.end method

.method private clearNativeFromInvokers()V
    .registers 3

    .line 1658
    const-string v0, "VEEditor"

    const-string v1, "clearNativeFromInvokers... "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-eqz v0, :cond_e

    .line 1660
    invoke-interface {v0}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->clearNativeFromMV()V

    .line 1662
    :cond_e
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    if-eqz v0, :cond_15

    .line 1663
    invoke-interface {v0}, Lcom/ss/android/vesdk/internal/IVEBingo;->clearNativeFromBingo()V

    .line 1665
    :cond_15
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-eqz v0, :cond_1c

    .line 1666
    invoke-interface {v0}, Lcom/ss/android/vesdk/internal/IVESticker;->clearNativeFromSticker()V

    .line 1668
    :cond_1c
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    if-eqz p0, :cond_23

    .line 1669
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEFilter;->clearNativeFromFilter()V

    :cond_23
    return-void
.end method

.method public static compileProbe(Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;IILcom/ss/android/vesdk/VEListener$VECompileProbeCallback2;)I
    .registers 25

    .line 6520
    sget-object v1, Lcom/ss/android/vesdk/VEEditor;->mCompileProbeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6521
    :try_start_3
    sget-boolean v0, Lcom/ss/android/vesdk/VEEditor;->mCompileProbeRunning:Z

    if-eqz v0, :cond_d

    const/4 p0, -0x2

    .line 6522
    monitor-exit v1

    return p0

    :catchall_a
    move-exception v0

    move-object p0, v0

    goto :goto_37

    :cond_d
    const/4 v0, 0x1

    .line 6525
    sput-boolean v0, Lcom/ss/android/vesdk/VEEditor;->mCompileProbeRunning:Z

    .line 6526
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_a

    if-nez p9, :cond_1d

    .line 6529
    const-string p0, "VEEditor"

    const-string p1, "compile use not hard encode, not soft encode"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0

    :cond_1d
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v12, p11

    .line 6533
    invoke-static/range {v0 .. v12}, Lcom/ss/android/vesdk/VEEditor;->_compileProbe(Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;IILcom/ss/android/vesdk/VEListener$VECompileProbeCallback;Lcom/ss/android/vesdk/VEListener$VECompileProbeCallback2;)I

    move-result p0

    const/4 p1, 0x0

    .line 6535
    sput-boolean p1, Lcom/ss/android/vesdk/VEEditor;->mCompileProbeRunning:Z

    return p0

    .line 6526
    :goto_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_a

    throw p0
.end method

.method public static compileProbe(Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;Lcom/ss/android/vesdk/VEListener$VECompileProbeCallback;)I
    .registers 25

    .line 6483
    sget-object v1, Lcom/ss/android/vesdk/VEEditor;->mCompileProbeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6484
    :try_start_3
    sget-boolean v0, Lcom/ss/android/vesdk/VEEditor;->mCompileProbeRunning:Z

    if-eqz v0, :cond_d

    const/4 p0, -0x2

    .line 6485
    monitor-exit v1

    return p0

    :catchall_a
    move-exception v0

    move-object p0, v0

    goto :goto_2b

    :cond_d
    const/4 v0, 0x1

    .line 6488
    sput-boolean v0, Lcom/ss/android/vesdk/VEEditor;->mCompileProbeRunning:Z

    .line 6489
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_a

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-object/from16 v13, p9

    .line 6491
    invoke-static/range {v2 .. v14}, Lcom/ss/android/vesdk/VEEditor;->_compileProbe(Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;IILcom/ss/android/vesdk/VEListener$VECompileProbeCallback;Lcom/ss/android/vesdk/VEListener$VECompileProbeCallback2;)I

    move-result p0

    const/4 v0, 0x0

    .line 6493
    sput-boolean v0, Lcom/ss/android/vesdk/VEEditor;->mCompileProbeRunning:Z

    return p0

    .line 6489
    :goto_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_a

    throw p0
.end method

.method private concatShootVideo(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z
    .registers 12

    .line 6768
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mRecordData:Lcom/ss/android/vesdk/VERecordData;

    const-string v1, "VEEditor"

    const/4 v2, 0x0

    if-eqz v0, :cond_105

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    if-nez v0, :cond_d

    goto/16 :goto_105

    .line 6773
    :cond_d
    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->getWorkspace()Ljava/lang/String;

    move-result-object v0

    .line 6774
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 6775
    const-string p0, "workSpace is empty "

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 6779
    :cond_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/concatShootVideo"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatVideoPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6782
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mRecordData:Lcom/ss/android/vesdk/VERecordData;

    invoke-virtual {v3}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_104

    .line 6783
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_104

    .line 6785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listRecordSegmentData size() = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6787
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 6788
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [J

    move v7, v2

    .line 6790
    :goto_7d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_94

    .line 6791
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    .line 6792
    iget-object v9, v8, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideo:Ljava/lang/String;

    aput-object v9, v4, v7

    .line 6793
    iget-wide v8, v8, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoLength:J

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7d

    .line 6796
    :cond_94
    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->isEnableRemuxVideo(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    move-result v3

    if-eqz v3, :cond_104

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->isEnableRemuxVideoForShoot()Z

    move-result p1

    if-eqz p1, :cond_104

    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mRecordData:Lcom/ss/android/vesdk/VERecordData;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VERecordData;->isSegmentOriginLenth()Z

    move-result p1

    if-eqz p1, :cond_104

    .line 6797
    invoke-static {v4}, Lcom/ss/android/vesdk/VEConcatHelper;->isCodecsValid([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b8

    .line 6798
    const-string p1, "isCodecsValid false "

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x401

    .line 6799
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->mConcatVideoErrorForInvalidCodecs:I

    return v2

    .line 6803
    :cond_b8
    invoke-direct {p0, v0, v4, v6}, Lcom/ss/android/vesdk/VEEditor;->_concatShootVideo(Ljava/lang/String;[Ljava/lang/String;[J)Z

    move-result p1

    .line 6804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_concatShootVideo ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_104

    .line 6806
    invoke-static {v0}, Lcom/ss/android/vesdk/VEFileUtils;->exists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 6807
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 6809
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 6811
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v2, v2, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateTrackClips(II[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_fe

    .line 6812
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateTrackClips failed, ret = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 6816
    :cond_fe
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    return v5

    :cond_104
    return v2

    .line 6769
    :cond_105
    :goto_105
    const-string p0, "concatShootVideo mRecordData or mResManager is empty "

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private createWrapperInvokers()V
    .registers 5

    .line 1642
    const-class v0, Lcom/ss/android/vesdk/VEEditor;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "com.ss.android.vesdk.VEMVInvoker"

    invoke-static {v3, v1, v2}, Lcom/ss/android/vesdk/VEJavaCalls;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    .line 1644
    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "com.ss.android.vesdk.VEBingoInvoker"

    invoke-static {v3, v1, v2}, Lcom/ss/android/vesdk/VEJavaCalls;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/android/vesdk/internal/IVEBingo;

    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    .line 1646
    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.ss.android.vesdk.VEStickerInvoker"

    invoke-static {v2, v0, v1}, Lcom/ss/android/vesdk/VEJavaCalls;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/internal/IVESticker;

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    .line 1648
    new-instance v0, Lcom/ss/android/vesdk/VEFilterInvoker;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEFilterInvoker;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    .line 1649
    new-instance v0, Lcom/ss/android/vesdk/VESequenceInvoker;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VESequenceInvoker;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    .line 1650
    new-instance v0, Lcom/ss/android/vesdk/VEAudioExtendInvoker;

    invoke-direct {v0, p0}, Lcom/ss/android/vesdk/VEAudioExtendInvoker;-><init>(Lcom/ss/android/vesdk/VEEditor;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperAudioExtend:Lcom/ss/android/vesdk/internal/IVEAudioExtend;

    .line 1652
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_58

    .line 1653
    const-string p0, "VEEditor"

    const-string v0, "VEStickerInvoker is NULL"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method public static detectAudioLoudness([Ljava/lang/String;[I[I)[Lcom/ss/android/vesdk/LoudnessDetectResult;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_6

    .line 10006
    :cond_5
    array-length v1, p0

    :goto_6
    if-nez p1, :cond_a

    move v2, v0

    goto :goto_b

    .line 10007
    :cond_a
    array-length v2, p1

    :goto_b
    if-nez p2, :cond_e

    goto :goto_f

    .line 10008
    :cond_e
    array-length v0, p2

    :goto_f
    if-lez v1, :cond_1d

    if-ne v2, v0, :cond_1d

    if-lez v2, :cond_18

    if-eq v2, v1, :cond_18

    goto :goto_1d

    .line 10014
    :cond_18
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->detectAudioLoudness([Ljava/lang/String;[I[I)[Lcom/ss/android/vesdk/LoudnessDetectResult;

    move-result-object p0

    return-object p0

    .line 10010
    :cond_1d
    :goto_1d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "detectAudioLoudness invalid param, audioPathLength:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trimInLength: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", trimOutLength: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VEEditor"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static enableAVSync2(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static enableDisplayP3ReEncode(Z)I
    .registers 1

    .line 2482
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableDisplayP3ReEncode(Z)I

    move-result p0

    return p0
.end method

.method public static enableDisplayP3Render(Z)I
    .registers 1

    .line 2492
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableDisplayP3Render(Z)I

    move-result p0

    return p0
.end method

.method public static enableFirstFrameOpt(Z)I
    .registers 1

    .line 2463
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableFirstFrameOpt(Z)I

    move-result p0

    return p0
.end method

.method public static enableHighSpeed(Z)I
    .registers 3

    .line 2337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableHighSpeed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableHighSpeed(Z)I

    move-result p0

    return p0
.end method

.method public static enableMultiThreadDecode(Z)I
    .registers 3

    .line 2360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMultiThreadDecode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableMultiThreadDecode(Z)I

    move-result p0

    return p0
.end method

.method public static enableOptPlayBackDropFrame(Z)I
    .registers 3

    .line 2383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableOptPlayBackDropFrame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableOptPlayBackDropFrame(Z)I

    move-result p0

    return p0
.end method

.method public static enablePreviewSwDecodeCompileHwDecode(Z)I
    .registers 1

    .line 2473
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enablePreviewSwDecodeCompileHwDecode(Z)I

    move-result p0

    return p0
.end method

.method public static enableSeekAndPreloadOpt(Z)I
    .registers 3

    .line 2370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableSeekAndPreloadOpt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableSeekAndPreloadOpt(Z)I

    move-result p0

    return p0
.end method

.method public static genReverseVideo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4853
    const-string v0, "VEEditor"

    const-string v1, "genReverseVideo width path"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_22

    .line 4854
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_22

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_22

    .line 4858
    :cond_18
    new-instance v0, Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-direct {v0}, Lcom/ss/android/medialib/FFMpegInvoker;-><init>()V

    .line 4859
    invoke-virtual {v0, p0, p1}, Lcom/ss/android/medialib/FFMpegInvoker;->addFastReverseVideo(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_22
    :goto_22
    const/16 p0, -0x64

    return p0
.end method

.method public static genReverseVideo(Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VETimelineParams;IIIILcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;
    .registers 14

    .line 4904
    iget-object v0, p1, Lcom/ss/android/vesdk/VETimelineParams;->videoFilePaths:[Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0xd

    const/16 v3, 0x1e

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_4b

    array-length v0, v0

    if-le v0, v5, :cond_4b

    .line 4905
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {v0, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 4906
    invoke-virtual {v0, p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResizeMode(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 4907
    invoke-virtual {p2, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSWCRF(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setWatermarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    sget-object p3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    .line 4908
    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    sget-object p3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    .line 4909
    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodePreset(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 4910
    invoke-virtual {p2, v6, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEnableRemuxVideo(ZZ)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 4911
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p2

    :goto_44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p6

    goto :goto_7e

    .line 4913
    :cond_4b
    new-instance p2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {p2, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    const/4 p3, -0x1

    .line 4914
    invoke-virtual {p2, p3, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 4915
    invoke-virtual {p2, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSWCRF(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setWatermarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    sget-object p3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    .line 4916
    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    sget-object p3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    .line 4917
    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodePreset(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 4918
    invoke-virtual {p2, v6, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEnableRemuxVideo(ZZ)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 4919
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p2

    goto :goto_44

    .line 4922
    :goto_7e
    invoke-static/range {v0 .. v5}, Lcom/ss/android/vesdk/VEEditor;->genReverseVideo2(Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VETimelineParams;Lcom/ss/android/vesdk/VEVideoEncodeSettings;IILcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object p0

    return-object p0
.end method

.method public static genReverseVideo(Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VETimelineParams;IILcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;
    .registers 12

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 4880
    invoke-static/range {v0 .. v6}, Lcom/ss/android/vesdk/VEEditor;->genReverseVideo(Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VETimelineParams;IIIILcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object p0

    return-object p0
.end method

.method public static genReverseVideo2(Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VERecordData;IILcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;
    .registers 13

    .line 5028
    const-string v0, "genReverseVideo2 with recordData."

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5030
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0xd

    const/16 v3, 0x1e

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_55

    .line 5032
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {v0, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 5033
    invoke-virtual {v0, p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResizeMode(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 5034
    invoke-virtual {p2, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSWCRF(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setWatermarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    sget-object p3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    .line 5035
    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    sget-object p3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    .line 5036
    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodePreset(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 5037
    invoke-virtual {p2, v7, v7}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEnableRemuxVideo(ZZ)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 5038
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p2

    goto :goto_86

    .line 5040
    :cond_55
    new-instance v0, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    invoke-direct {v0, v4}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    .line 5041
    invoke-virtual {v0, p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 5042
    invoke-virtual {p2, v3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSWCRF(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setWatermarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    sget-object p3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    .line 5043
    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    sget-object p3, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    .line 5044
    invoke-virtual {p2, p3}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodePreset(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 5045
    invoke-virtual {p2, v7, v7}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEnableRemuxVideo(ZZ)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 5046
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p2

    .line 5049
    :goto_86
    new-instance p3, Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->getWorkspace()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;)V

    .line 5050
    invoke-virtual {p3, p1, v7, v7}, Lcom/ss/android/vesdk/VEEditor;->init(Lcom/ss/android/vesdk/VERecordData;ZZ)I

    move-result p1

    if-eqz p1, :cond_aa

    .line 5052
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "genReverseVideo2 init error:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 5056
    :cond_aa
    invoke-static {p3, p0, p2, v6, p4}, Lcom/ss/android/vesdk/VEEditor;->genReverseVideoWithEditor(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VEVideoEncodeSettings;ZLcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object p0

    return-object p0
.end method

.method public static genReverseVideo2(Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VERecordData;Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;
    .registers 4

    const/4 v0, -0x1

    .line 5008
    invoke-static {p0, p1, v0, v0, p2}, Lcom/ss/android/vesdk/VEEditor;->genReverseVideo2(Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VERecordData;IILcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object p0

    return-object p0
.end method

.method public static genReverseVideo2(Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VETimelineParams;Lcom/ss/android/vesdk/VEVideoEncodeSettings;IILcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;
    .registers 23

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    .line 4972
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genReverseVideo2 with param:startTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "endTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VEEditor"

    invoke-static {v4, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4973
    iget-object v3, v0, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    array-length v3, v3

    new-array v13, v3, [F

    const/4 v3, 0x0

    .line 4974
    :goto_2a
    iget-object v5, v0, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    array-length v6, v5

    if-ge v3, v6, :cond_37

    .line 4975
    aget-wide v5, v5, v3

    double-to-float v5, v5

    aput v5, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 4978
    :cond_37
    new-instance v5, Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual/range {p0 .. p0}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->getWorkspace()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;)V

    .line 4980
    iget-object v6, v0, Lcom/ss/android/vesdk/VETimelineParams;->videoFilePaths:[Ljava/lang/String;

    iget-object v7, v0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimIn:[I

    iget-object v8, v0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimOut:[I

    iget-object v10, v0, Lcom/ss/android/vesdk/VETimelineParams;->audioFilePaths:[Ljava/lang/String;

    iget-object v11, v0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimIn:[I

    iget-object v12, v0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimOut:[I

    iget-object v15, v0, Lcom/ss/android/vesdk/VETimelineParams;->rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    sget-object v16, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const/4 v9, 0x0

    move-object v14, v13

    invoke-virtual/range {v5 .. v16}, Lcom/ss/android/vesdk/VEEditor;->init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[F[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result v0

    if-eqz v0, :cond_6e

    .line 4984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genReverseVideo2 init2 error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4988
    :cond_6e
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->EDITOR_TIMERANGE_FLAG_AFTER_SPEED:Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    invoke-virtual {v5, v1, v2, v0}, Lcom/ss/android/vesdk/VEEditor;->setTimeRange(IILcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;)I

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 4990
    invoke-static {v5, v1, v2, v0, v3}, Lcom/ss/android/vesdk/VEEditor;->genReverseVideoWithEditor(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VEVideoEncodeSettings;ZLcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object v0

    return-object v0
.end method

.method public static genReverseVideo2([BLcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VETimelineParams;Lcom/ss/android/vesdk/VEVideoEncodeSettings;IILcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;
    .registers 24

    move-object/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    .line 4927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "genReverseVideo2 with param:startTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "endTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VEEditor"

    invoke-static {v4, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4928
    iget-object v3, v0, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    array-length v3, v3

    new-array v13, v3, [F

    const/4 v3, 0x0

    .line 4929
    :goto_2a
    iget-object v5, v0, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    array-length v6, v5

    if-ge v3, v6, :cond_37

    .line 4930
    aget-wide v5, v5, v3

    double-to-float v5, v5

    aput v5, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 4933
    :cond_37
    new-instance v3, Lcom/ss/android/vesdk/VEUserConfig;

    invoke-direct {v3}, Lcom/ss/android/vesdk/VEUserConfig;-><init>()V

    .line 4935
    new-instance v5, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;

    sget-object v6, Lcom/ss/android/vesdk/VEUserConfig$ConfigID;->ConfigID_UseRefaCanvasWrap:Lcom/ss/android/vesdk/VEUserConfig$ConfigID;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;-><init>(Lcom/ss/android/vesdk/VEUserConfig$ConfigID;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Lcom/ss/android/vesdk/VEUserConfig;->addConfig(Lcom/ss/android/vesdk/VEUserConfig$VEUserConfigItem;)Lcom/ss/android/vesdk/VEUserConfig;

    .line 4936
    new-instance v5, Lcom/ss/android/vesdk/VEEditor;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->getWorkspace()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/ss/android/vesdk/VEEditor;-><init>(Ljava/lang/String;Lcom/ss/android/vesdk/VEUserConfig;)V

    move-object/from16 v3, p0

    .line 4938
    invoke-virtual {v5, v3}, Lcom/ss/android/vesdk/VEEditor;->initAuthInternal([B)I

    .line 4940
    iget-object v6, v0, Lcom/ss/android/vesdk/VETimelineParams;->videoFilePaths:[Ljava/lang/String;

    iget-object v7, v0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimIn:[I

    iget-object v8, v0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimOut:[I

    iget-object v10, v0, Lcom/ss/android/vesdk/VETimelineParams;->audioFilePaths:[Ljava/lang/String;

    iget-object v11, v0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimIn:[I

    iget-object v12, v0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimOut:[I

    iget-object v15, v0, Lcom/ss/android/vesdk/VETimelineParams;->rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    sget-object v16, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const/4 v9, 0x0

    move-object v14, v13

    invoke-virtual/range {v5 .. v16}, Lcom/ss/android/vesdk/VEEditor;->init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[F[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result v0

    if-eqz v0, :cond_84

    .line 4944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genReverseVideo2 init2 error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 4948
    :cond_84
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;->EDITOR_TIMERANGE_FLAG_AFTER_SPEED:Lcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;

    invoke-virtual {v5, v1, v2, v0}, Lcom/ss/android/vesdk/VEEditor;->setTimeRange(IILcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;)I

    const/4 v0, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    .line 4950
    invoke-static {v5, v1, v2, v0, v3}, Lcom/ss/android/vesdk/VEEditor;->genReverseVideoWithEditor(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VEVideoEncodeSettings;ZLcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;

    move-result-object v0

    return-object v0
.end method

.method private static genReverseVideoWithEditor(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VEVideoEncodeSettings;ZLcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)Lcom/ss/android/vesdk/VEEditor;
    .registers 16

    .line 5064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5066
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    .line 5068
    new-instance v5, Lcom/ss/android/ttve/nativePort/TEReverseCallback;

    invoke-direct {v5}, Lcom/ss/android/ttve/nativePort/TEReverseCallback;-><init>()V

    .line 5069
    invoke-virtual {v5, p4}, Lcom/ss/android/ttve/nativePort/TEReverseCallback;->setListener(Ljava/lang/Object;)V

    const/4 v9, 0x0

    .line 5071
    iput-boolean v9, p1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    const/4 v0, 0x1

    const/4 v10, 0x0

    if-nez p2, :cond_53

    .line 5075
    const-string p2, "VEEditor"

    const-string v1, "using default video setting for genReverseVideo2"

    invoke-static {p2, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5076
    new-instance p2, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    const/4 v1, 0x2

    invoke-direct {p2, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;-><init>(I)V

    const/4 v1, -0x1

    .line 5077
    invoke-virtual {p2, v1, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setVideoRes(II)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setResizeMode(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    const/16 v1, 0x1e

    .line 5078
    invoke-virtual {p2, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setFps(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v9}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSupportHwEnc(Z)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    const/16 v1, 0xd

    invoke-virtual {p2, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setSWCRF(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setGopSize(I)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    invoke-virtual {p2, v10}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setWatermarkParam(Lcom/ss/android/vesdk/VEWatermarkParam;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;->ENCODE_PROFILE_BASELINE:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;

    .line 5079
    invoke-virtual {p2, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodeProfile(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PROFILE;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;->ENCODE_LEVEL_ULTRAFAST:Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;

    .line 5080
    invoke-virtual {p2, v1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->setEncodePreset(Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_PRESET;)Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;

    move-result-object p2

    .line 5081
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings$Builder;->build()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p2

    .line 5084
    :cond_53
    sget v1, Lcom/ss/android/vesdk/VEEditor;->genReverseCount:I

    add-int/2addr v1, v0

    sput v1, Lcom/ss/android/vesdk/VEEditor;->genReverseCount:I

    .line 5085
    invoke-virtual {p1}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->clearReverseCacheFiles()V

    .line 5086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/ss/android/vesdk/VEEditor;->genReverseCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->genReverseVideoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/ss/android/vesdk/VEEditor;->genReverseCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->genReverseVideoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/ss/android/vesdk/VEEditor;->genReverseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->genSeqAudioPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5090
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$11;

    move-object v1, p0

    move-object v7, p1

    move v2, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/vesdk/VEEditor$11;-><init>(Lcom/ss/android/vesdk/VEEditor;ZLjava/lang/String;Ljava/lang/String;Lcom/ss/android/ttve/nativePort/TEReverseCallback;Ljava/lang/String;Lcom/ss/android/vesdk/runtime/VEEditorResManager;Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)V

    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VEEditor;->setOnInfoListener(Lcom/ss/android/vesdk/VECommonCallback;)V

    .line 5133
    new-instance p0, Lcom/ss/android/vesdk/VEEditor$12;

    invoke-direct {p0, v1, v8}, Lcom/ss/android/vesdk/VEEditor$12;-><init>(Lcom/ss/android/vesdk/VEEditor;Lcom/ss/android/vesdk/VEListener$VEEditorGenReverseListener;)V

    invoke-virtual {v1, p0}, Lcom/ss/android/vesdk/VEEditor;->setOnErrorListener(Lcom/ss/android/vesdk/VECommonCallback;)V

    .line 5147
    invoke-virtual {v1, v3, v6, p2}, Lcom/ss/android/vesdk/VEEditor;->compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z

    .line 5154
    :try_start_bc
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 5155
    const-string p1, "mWorkSpace"

    invoke-virtual {v7}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->getWorkspace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5156
    const-string p1, "mVideoPaths"

    iget-object p2, v7, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    if-eqz p2, :cond_d8

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_d9

    :catch_d5
    move-exception v0

    move-object p0, v0

    goto :goto_123

    :cond_d8
    move-object p2, v10

    :goto_d9
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5157
    const-string p1, "mAudioPaths"

    iget-object p2, v7, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    if-eqz p2, :cond_e7

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_e8

    :cond_e7
    move-object p2, v10

    :goto_e8
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5158
    const-string p1, "mTransitions"

    iget-object p2, v7, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTransitions:[Ljava/lang/String;

    if-eqz p2, :cond_f6

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_f7

    :cond_f6
    move-object p2, v10

    :goto_f7
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5159
    const-string p1, "mReverseVideoPath"

    iget-object p2, v7, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    if-eqz p2, :cond_105

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_106

    :cond_105
    move-object p2, v10

    :goto_106
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5160
    const-string p1, "mReverseAudioPaths"

    iget-object p2, v7, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioPaths:[Ljava/lang/String;

    if-eqz p2, :cond_113

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_113
    invoke-virtual {p0, p1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5161
    const-string p1, "resultCode"

    invoke-virtual {p0, p1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5162
    const-string p1, "vesdk_event_editor_reverse_video"

    const-string p2, "behavior"

    invoke-static {p1, p0, p2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_122
    .catch Lorg/json/JSONException; {:try_start_bc .. :try_end_122} :catch_d5

    return-object v1

    .line 5165
    :goto_123
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1
.end method

.method private getFileInfoCache(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 7694
    monitor-enter p0

    .line 7695
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 7696
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file info cache miss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7697
    iget p1, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    .line 7698
    const-string p1, ""

    monitor-exit p0

    return-object p1

    :catchall_27
    move-exception p1

    goto/16 :goto_128

    .line 7701
    :cond_2a
    sget-object v0, Lcom/ss/android/vesdk/VEEditor;->mFileInfoCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_7d

    .line 7704
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file info cache miss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7705
    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    .line 7706
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->addFileInfoCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7707
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 7708
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add file info cache for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7709
    const-string p1, ""

    monitor-exit p0

    return-object p1

    .line 7711
    :cond_7b
    monitor-exit p0

    return-object v0

    .line 7714
    :cond_7d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7715
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_b1

    .line 7719
    sget-object v0, Lcom/ss/android/vesdk/VEEditor;->mFileInfoCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7720
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file info cache miss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7721
    iget p1, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    .line 7722
    const-string p1, ""

    monitor-exit p0

    return-object p1

    .line 7726
    :cond_b1
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_106

    .line 7728
    sget-object v0, Lcom/ss/android/vesdk/VEEditor;->mFileInfoCacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7729
    invoke-direct {p0, p1}, Lcom/ss/android/vesdk/VEEditor;->addFileInfoCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7730
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 7731
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file info cache miss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7732
    const-string p1, ""

    monitor-exit p0

    return-object p1

    .line 7734
    :cond_e8
    const-string v1, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update file info cache for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7735
    iget p1, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    .line 7736
    monitor-exit p0

    return-object v0

    .line 7739
    :cond_106
    const-string v1, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file info cache hit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7740
    iget p1, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheHitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheHitCount:I

    .line 7741
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    return-object p1

    .line 7742
    :goto_128
    monitor-exit p0
    :try_end_129
    .catchall {:try_start_1 .. :try_end_129} :catchall_27

    throw p1
.end method

.method public static getMVInfoStatic(Ljava/lang/String;)Lcom/ss/android/ttve/model/VEMvResVideoInfo;
    .registers 3

    .line 11858
    const-string v0, "VEEditor"

    const-string v1, "getMVInfoStatic..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11859
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getMVInfoStatic(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/model/MVInfoBean;

    .line 11861
    new-instance v0, Lcom/ss/android/ttve/model/VEMvResVideoInfo;

    iget-object p0, p0, Lcom/ss/android/ttve/model/MVInfoBean;->resources:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Lcom/ss/android/ttve/model/VEMvResVideoInfo;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[F[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Z)I
    .registers 33

    move-object/from16 v1, p0

    .line 3709
    monitor-enter p0

    const/4 v2, 0x1

    .line 3711
    :try_start_4
    invoke-static {v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->clearWithType(I)V

    .line 3713
    invoke-static {v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->initStats(I)V

    .line 3714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 3715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 3716
    const-string v0, "VEEditor"

    const-string v3, "init2... width rotate"

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v3, "ve_enable_file_info_cache"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3718
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableFileInfoCache(Z)I

    if-eqz v0, :cond_79

    .line 3723
    const-string v0, "VEEditor"

    const-string v3, "enable file info cache"

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3724
    invoke-virtual/range {p0 .. p1}, Lcom/ss/android/vesdk/VEEditor;->getAllFileInfoCacheList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3725
    invoke-virtual {v1, v0}, Lcom/ss/android/vesdk/VEEditor;->isFileInfoCacheExist([Ljava/lang/String;)[Z

    move-result-object v16

    .line 3726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    sub-long v18, v5, v7

    move v3, v2

    .line 3727
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 3729
    invoke-static/range {p10 .. p10}, Lcom/ss/android/vesdk/ROTATE_DEGREE;->toIntArray([Lcom/ss/android/vesdk/ROTATE_DEGREE;)[I

    move-result-object v13

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v15, p12

    move-object/from16 v17, v0

    .line 3727
    invoke-virtual/range {v2 .. v17}, Lcom/ss/android/ttve/nativePort/TEInterface;->initVideoEditor2([Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[F[IIZ[Z[Ljava/lang/String;)I

    move-result v0

    move-object/from16 v3, p1

    move-object/from16 v6, p5

    :goto_72
    move v2, v0

    move-wide/from16 v4, v18

    goto :goto_a6

    :catchall_76
    move-exception v0

    goto/16 :goto_21f

    .line 3733
    :cond_79
    const-string v0, "VEEditor"

    const-string v2, "disable file info cache"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3734
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 3736
    invoke-static/range {p10 .. p10}, Lcom/ss/android/vesdk/ROTATE_DEGREE;->toIntArray([Lcom/ss/android/vesdk/ROTATE_DEGREE;)[I

    move-result-object v13

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v15, p12

    .line 3734
    invoke-virtual/range {v2 .. v15}, Lcom/ss/android/ttve/nativePort/TEInterface;->initVideoEditor2([Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[F[IIZ)I

    move-result v0

    const-wide/16 v18, 0x0

    goto :goto_72

    .line 3739
    :goto_a6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_ab
    .catchall {:try_start_4 .. :try_end_ab} :catchall_76

    .line 3741
    :try_start_ab
    const-string v7, "videoFilePaths"

    if-eqz v3, :cond_b9

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_bb

    :catch_b4
    move-exception v0

    move-object/from16 v8, p11

    goto/16 :goto_1b9

    :cond_b9
    const-string v8, ""

    :goto_bb
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3742
    const-string v7, "audioFilePaths"

    if-eqz v6, :cond_c7

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_c9

    :cond_c7
    const-string v8, ""

    :goto_c9
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3743
    const-string v7, "vTrimIn"

    if-eqz p2, :cond_d5

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    goto :goto_d7

    :cond_d5
    const-string v8, ""

    :goto_d7
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3744
    const-string v7, "vTrimOut"

    if-eqz p3, :cond_e3

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    goto :goto_e5

    :cond_e3
    const-string v8, ""

    :goto_e5
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3745
    const-string v7, "aTrimIn"

    if-eqz p6, :cond_f1

    invoke-static/range {p6 .. p6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    goto :goto_f3

    :cond_f1
    const-string v8, ""

    :goto_f3
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3746
    const-string v7, "aTrimOut"

    if-eqz p7, :cond_ff

    invoke-static/range {p7 .. p7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    goto :goto_101

    :cond_ff
    const-string v8, ""

    :goto_101
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3747
    const-string v7, "videoSpeed"

    if-eqz p8, :cond_10d

    invoke-static/range {p8 .. p8}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v8

    goto :goto_10f

    :cond_10d
    const-string v8, ""

    :goto_10f
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3748
    const-string v7, "audioSpeed"

    if-eqz p9, :cond_11b

    invoke-static/range {p9 .. p9}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v8

    goto :goto_11d

    :cond_11b
    const-string v8, ""

    :goto_11d
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3749
    const-string v7, "rotate"

    if-eqz p10, :cond_129

    invoke-static/range {p10 .. p10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_12b

    :cond_129
    const-string v8, ""

    :goto_12b
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3750
    const-string v7, "videoOutRes"
    :try_end_130
    .catch Lorg/json/JSONException; {:try_start_ab .. :try_end_130} :catch_b4
    .catchall {:try_start_ab .. :try_end_130} :catchall_76

    move-object/from16 v8, p11

    if-eqz v8, :cond_13c

    :try_start_134
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    goto :goto_13e

    :catch_139
    move-exception v0

    goto/16 :goto_1b9

    :cond_13c
    const-string v9, ""

    :goto_13e
    invoke-virtual {v0, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3751
    const-string v7, "cacheCheckTime"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3752
    const-string v4, "createSceneTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    sub-long/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3753
    const-string v4, "hitRate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/ss/android/vesdk/VEEditor;->miCacheHitCount:I

    int-to-double v9, v7

    iget v11, v1, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    add-int/2addr v11, v7

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3754
    const-string v4, "resultCode"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3755
    const-string v4, "vesdk_event_editor_init_video"

    const-string v5, "behavior"

    invoke-static {v4, v0, v5}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 3757
    const-string v4, "VEEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file info cache json: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b8
    .catch Lorg/json/JSONException; {:try_start_134 .. :try_end_1b8} :catch_139
    .catchall {:try_start_134 .. :try_end_1b8} :catchall_76

    goto :goto_1bc

    .line 3759
    :goto_1b9
    :try_start_1b9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1bc
    if-eqz v2, :cond_1dc

    .line 3762
    const-string v0, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initVideoEditor2 failed, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3764
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->onMonitorError()V

    const/4 v4, 0x0

    .line 3765
    iput-boolean v4, v1, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 3766
    monitor-exit p0

    return v2

    :cond_1dc
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 3768
    iput-boolean v2, v1, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 3769
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput-boolean v4, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    .line 3770
    iput-object v8, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 3771
    iput-object v6, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    .line 3772
    iput-object v3, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    move-object/from16 v9, p4

    .line 3773
    iput-object v9, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTransitions:[Ljava/lang/String;

    .line 3774
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    const/4 v3, -0x1

    invoke-interface {v0, v3}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtIndexInternal(I)V

    if-eqz v6, :cond_1fb

    .line 3775
    array-length v0, v6

    if-eqz v0, :cond_1fb

    move v0, v2

    goto :goto_1fc

    :cond_1fb
    move v0, v4

    :goto_1fc
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 3776
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 3777
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v2, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    goto :goto_211

    .line 3779
    :cond_20d
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v4, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    .line 3781
    :goto_211
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v4, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    .line 3782
    iput v4, v1, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 3784
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v0}, Lcom/ss/android/vesdk/internal/IVEFilter;->initFiltersInternal()I

    move-result v0

    monitor-exit p0

    return v0

    .line 3785
    :goto_21f
    monitor-exit p0
    :try_end_220
    .catchall {:try_start_1b9 .. :try_end_220} :catchall_76

    throw v0
.end method

.method private onMonitorCompile(I)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    if-nez v1, :cond_a

    goto :goto_b

    :cond_a
    return-void

    .line 1327
    :cond_b
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/ss/android/vesdk/VEEditor;->mlCompileStartTime:J

    sub-long/2addr v3, v5

    .line 1328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compile cost:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VEEditor"

    invoke-static {v6, v5}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v5, "te_composition_time"

    invoke-static {v5, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(Ljava/lang/String;J)V

    .line 1331
    invoke-static {v2, v5, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1333
    iget-object v3, v0, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    invoke-static {v3}, Lcom/ss/android/medialib/FileUtils;->checkFileExists(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v3, :cond_10f

    const/16 v3, 0xa

    .line 1335
    new-array v3, v3, [I

    .line 1336
    iget-object v6, v0, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/ss/android/ttve/nativePort/TEVideoUtils;->getVideoFileInfo(Ljava/lang/String;[I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10f

    .line 1338
    new-instance v6, Ljava/io/File;

    iget-object v7, v0, Lcom/ss/android/vesdk/VEEditor;->mOutputFile:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1341
    iget v8, v0, Lcom/ss/android/vesdk/VEEditor;->mPageMode:I

    int-to-long v8, v8

    const-string v10, "te_composition_page_mode"

    invoke-static {v10, v8, v9}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(Ljava/lang/String;J)V

    long-to-double v6, v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    div-double/2addr v6, v8

    .line 1342
    const-string v8, "te_composition_file_size"

    invoke-static {v8, v6, v7}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(Ljava/lang/String;D)V

    const/4 v9, 0x3

    .line 1343
    aget v11, v3, v9

    int-to-double v11, v11

    const-string v13, "te_composition_file_duration"

    invoke-static {v13, v11, v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(Ljava/lang/String;D)V

    const/4 v11, 0x6

    .line 1344
    aget v12, v3, v11

    int-to-double v14, v12

    const-string v12, "te_composition_bit_rate"

    invoke-static {v12, v14, v15}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(Ljava/lang/String;D)V

    const/4 v14, 0x7

    .line 1345
    aget v15, v3, v14

    move/from16 v16, v14

    int-to-double v14, v15

    move/from16 v17, v9

    const-string v9, "te_composition_fps"

    invoke-static {v9, v14, v15}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(Ljava/lang/String;D)V

    .line 1346
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v15, v3, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v11

    aget v11, v3, v2

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v14, "te_composition_resolution"

    invoke-static {v14, v11}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget v11, v0, Lcom/ss/android/vesdk/VEEditor;->mPageMode:I

    move/from16 v19, v5

    move-wide/from16 v20, v6

    int-to-long v5, v11

    invoke-static {v2, v10, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v14, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1354
    aget v5, v3, v16

    int-to-double v5, v5

    invoke-static {v2, v9, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    .line 1356
    aget v5, v3, v18

    int-to-double v5, v5

    invoke-static {v2, v12, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    .line 1358
    aget v5, v3, v17

    int-to-double v5, v5

    invoke-static {v2, v13, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    move-wide/from16 v6, v20

    .line 1360
    invoke-static {v2, v8, v6, v7}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V

    .line 1362
    iget-object v5, v0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-virtual {v5}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->getTimeEffectType()I

    move-result v5

    if-eqz v5, :cond_f0

    .line 1364
    const-string v6, "te_composition_time_filter_type"

    int-to-long v7, v5

    invoke-static {v2, v6, v7, v8}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 1368
    :cond_f0
    aget v5, v3, v17

    int-to-long v5, v5

    invoke-static {v13, v5, v6}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;J)V

    .line 1369
    aget v5, v3, v16

    int-to-long v5, v5

    const-string v7, "te_composition_video_frame_rate"

    invoke-static {v7, v5, v6}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;J)V

    .line 1370
    aget v5, v3, v19

    int-to-long v5, v5

    const-string v7, "te_composition_video_resolution_width"

    invoke-static {v7, v5, v6}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;J)V

    .line 1371
    aget v3, v3, v2

    int-to-long v5, v3

    const-string v3, "te_composition_video_resolution_height"

    invoke-static {v3, v5, v6}, Lcom/ss/android/ttve/editorInfo/TEEditorInfo;->addInfo(Ljava/lang/String;J)V

    goto :goto_111

    :cond_10f
    move/from16 v19, v5

    .line 1377
    :goto_111
    iget-object v3, v0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-virtual {v3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->isEffectAdd()Z

    move-result v3

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_11f

    move-wide v9, v7

    goto :goto_120

    :cond_11f
    move-wide v9, v5

    .line 1378
    :goto_120
    const-string v11, "te_composition_effect_add"

    invoke-static {v2, v11, v9, v10}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    if-nez v3, :cond_135

    .line 1380
    iget-object v3, v0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    move/from16 v9, v19

    invoke-virtual {v3, v9}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->serializeMap(I)Ljava/lang/String;

    move-result-object v3

    .line 1381
    const-string v10, "te_composition_effect_json"

    invoke-static {v2, v10, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_137

    :cond_135
    move/from16 v9, v19

    .line 1385
    :goto_137
    iget-object v3, v0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-virtual {v3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->isInfoStickerAdd()Z

    move-result v3

    if-eqz v3, :cond_140

    move-wide v5, v7

    .line 1386
    :cond_140
    const-string v7, "te_composition_info_sticker_add"

    invoke-static {v2, v7, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    if-nez v3, :cond_152

    .line 1388
    iget-object v3, v0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-virtual {v3, v2}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->serializeMap(I)Ljava/lang/String;

    move-result-object v3

    .line 1389
    const-string v5, "te_composition_info_sticker_json"

    invoke-static {v2, v5, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1393
    :cond_152
    iget-object v3, v0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-virtual {v3}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->reset()V

    .line 1395
    sget v3, Lcom/ss/android/ttve/monitor/TEMonitor;->MONITOR_ACTION_COMPILE:I

    invoke-static {v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->report(I)V

    .line 1398
    const-string v3, "iesve_veeditor_composition_finish_file"

    iget-object v5, v0, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    invoke-static {v2, v3, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string v3, "iesve_veeditor_composition_finish_result"

    const-string v5, "succ"

    invoke-static {v2, v3, v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1400
    const-string v3, "iesve_veeditor_composition_finish_reason"

    invoke-static {v2, v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1403
    invoke-static {v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->getMapByType(I)Ljava/util/Map;

    move-result-object v3

    .line 1404
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1406
    :try_start_178
    invoke-static {v3, v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->putAll(Ljava/util/Map;Lorg/json/JSONObject;)V

    .line 1407
    const-string v3, "usage_type"

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor;->mUsageType:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eq v1, v2, :cond_187

    const/4 v0, 0x2

    if-ne v1, v0, :cond_188

    :cond_187
    move v1, v9

    .line 1409
    :cond_188
    const-string v0, "resultCode"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18d
    .catch Lorg/json/JSONException; {:try_start_178 .. :try_end_18d} :catch_18e

    goto :goto_192

    :catch_18e
    move-exception v0

    .line 1412
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1414
    :goto_192
    const-string v0, "performance"

    const-string v1, "vesdk_event_editor_compile_finish"

    invoke-static {v1, v4, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1415
    const-string v0, "behavior"

    invoke-static {v1, v4, v0}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1418
    invoke-static {v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    return-void
.end method

.method public static openEditorFpsLog(Z)V
    .registers 3

    .line 2394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openEditorFpsLog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    sput-boolean p0, Lcom/ss/android/vesdk/VERuntimeConfig;->sOpenEditorFpsLog:Z

    .line 2396
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->openEditorFpsLog(Z)I

    return-void
.end method

.method private reverseFilter(II)I
    .registers 9

    .line 4703
    monitor-enter p0

    .line 4704
    :try_start_1
    const-string v0, "VEEditor"

    const-string v1, "reverseFilter"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4705
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    if-nez v0, :cond_19

    .line 4706
    const-string p1, "VEEditor"

    const-string p2, "VideoEditorgit is null ,init it first"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 4707
    monitor-exit p0

    return p1

    :catchall_16
    move-exception v0

    move-object p1, v0

    goto :goto_4b

    .line 4709
    :cond_19
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 4710
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDurationUs()J

    move-result-wide v4

    const/4 v3, 0x1

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateTrackFilterDuration(IIZJ)I

    .line 4711
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p1

    if-eqz p1, :cond_49

    .line 4714
    const-string p2, "VEEditor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reverseFilter prepareEngine failed: result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4715
    monitor-exit p0

    return p1

    .line 4717
    :cond_49
    monitor-exit p0

    return p2

    .line 4718
    :goto_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_16

    throw p1
.end method

.method public static setAutoPrepareStatic(Z)V
    .registers 3

    .line 4217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoPrepare... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4218
    sput-boolean p0, Lcom/ss/android/vesdk/VEEditor;->mSAutoPrepare:Z

    return-void
.end method

.method private setBitrateOptions(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)V
    .registers 8

    .line 7218
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwCRF()I

    move-result v1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwMaxRate()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwPreset()I

    move-result v4

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getSwQP()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileSoftwareEncodeOptions(IJII)V

    .line 7219
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileHardwareEncodeOptions(I)V

    .line 7220
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getBitrateMode()Lcom/ss/android/vesdk/VEVideoEncodeSettings$ENCODE_BITRATE_MODE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getEncodeProfile()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileCommonEncodeOptions(II)V

    return-void
.end method

.method public static setDropFrameParam(ZJJ)I
    .registers 5

    .line 2453
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setDropFrameParam(ZJJ)I

    move-result p0

    return p0
.end method

.method public static setEnableEffectCanvas(Z)I
    .registers 3

    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableEffectCanvas: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableEffectCanvas(Z)I

    move-result p0

    return p0
.end method

.method public static setEnableEffectTransition(Z)I
    .registers 3

    .line 2531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableEffectTransition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2532
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableEffectTransition(Z)I

    move-result p0

    return p0
.end method

.method public static setEnableRefaComposer(Z)I
    .registers 3

    .line 2575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableRefaComposer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableRefaComposer(Z)I

    move-result p0

    return p0
.end method

.method public static setForceDropFrameWithoutAudio(Z)I
    .registers 3

    .line 2544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceDropFrameWithoutAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2545
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setForceDropFrameWithoutAudio(Z)I

    move-result p0

    return p0
.end method

.method public static setImageBufferLimit(III)I
    .registers 5

    .line 2623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageBufferLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    invoke-static {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setImageBufferLimit(III)I

    move-result p0

    return p0
.end method

.method public static setInfoStickerTransEnable(Z)I
    .registers 3

    .line 7423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInfoStickerTransEnable enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7424
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setInfoStickerTransEnable(Z)I

    move-result p0

    return p0
.end method

.method public static setLensOneKeyHdrMaxCacheSize(I)V
    .registers 3

    .line 9317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLensOneKeyHdrMaxCacheSize... maxCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9318
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setLensOneKeyHdrMaxCacheSize(I)V

    return-void
.end method

.method public static setMaxAudioReaderLimits(I)I
    .registers 3

    .line 2503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxAudioReaderLimits... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setMaxAudioReaderCount(I)I

    move-result p0

    return p0
.end method

.method public static setMaxImageBufferCount(I)I
    .registers 3

    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxImageBufferCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x780

    .line 2609
    invoke-static {p0, v0, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setImageBufferLimit(III)I

    move-result p0

    return p0
.end method

.method public static setMaxSoftWareReaderCount(I)I
    .registers 3

    .line 2408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxSoftWareReaderCount... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2409
    invoke-static {p0, v0, v0, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setMaxSoftWareVideoReaderCount(IIII)I

    move-result p0

    return p0
.end method

.method public static setMaxVideoReaderLimits(IIII)I
    .registers 6

    .line 2425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxVideoReaderLimits... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3b

    .line 2428
    invoke-static {}, Lcom/ss/android/ttve/mediacodec/TEMediaCodecDecoder;->getMaxMediaCodecVideoDecoderCount()I

    move-result v0

    if-lez v0, :cond_3a

    if-lez p3, :cond_36

    if-gt p3, v0, :cond_38

    :cond_36
    if-gez p3, :cond_3b

    :cond_38
    move p3, v0

    goto :goto_3b

    :cond_3a
    const/4 p3, 0x0

    .line 2442
    :cond_3b
    :goto_3b
    invoke-static {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setMaxSoftWareVideoReaderCount(IIII)I

    move-result p0

    return p0
.end method

.method public static setOptConfig(I)I
    .registers 6

    .line 2274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOptConfig... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2276
    :try_start_16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2277
    const-string v2, "config"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2278
    const-string v2, "vesdk_event_editor_opt_config"

    const-string v3, "performance"

    invoke-static {v2, v0, v3}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_27} :catch_28

    goto :goto_3d

    :catch_28
    move-exception v0

    .line 2280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report optConfig json err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    :goto_3d
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "crossplat_glbase_fbo"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_51

    const/high16 v0, 0x200000

    or-int/2addr p0, v0

    .line 2289
    :cond_51
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "use_byte264"

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_64

    const/high16 v0, 0x2000000

    or-int/2addr p0, v0

    .line 2294
    :cond_64
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "optimize srv_um crash"

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_77

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr p0, v2

    .line 2299
    :cond_77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableColorspace: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "color_space"

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9e

    const/high16 v0, 0x20000000

    or-int/2addr p0, v0

    .line 2304
    :cond_9e
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "ve_enable_render_encode_resolution_align4"

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 2306
    const-string v0, "enableRenderEncodeAlign4: true"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    or-int/2addr p0, v0

    const/4 v0, 0x4

    .line 2308
    invoke-static {v0}, Lcom/ss/android/ttve/mediacodec/TEAvcEncoder;->setEncodeResolutionAlign(I)V

    .line 2311
    :cond_ba
    invoke-static {p0}, Lcom/ss/android/vesdk/VERuntimeConfig;->setConfig(I)V

    .line 2313
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableOpt(I)I

    move-result p0

    return p0
.end method

.method public static setTexturePoolLimit(II)I
    .registers 4

    .line 2637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTexturePoolLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    invoke-static {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTexturePoolLimit(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addAudioCleanFilter(IIII)I
    .registers 5
    .annotation build Lcom/ss/android/vesdk/annotation/TobAuth;
        func = 0x3a8ac62b
    .end annotation

    .line 10029
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->addAudioCleanFilter(IIII)I

    move-result p0

    return p0
.end method

.method public addAudioCommonFilter(IILjava/lang/String;[BIILcom/ss/android/vesdk/VEListener$AudioCommonFilterListener;)I
    .registers 8
    .annotation build Lcom/ss/android/vesdk/annotation/TobAuth;
        func = 0x3a8ac62b
    .end annotation

    .line 9971
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p7}, Lcom/ss/android/vesdk/internal/IVEFilter;->addAudioCommonFilter(IILjava/lang/String;[BIILcom/ss/android/vesdk/VEListener$AudioCommonFilterListener;)I

    move-result p0

    return p0
.end method

.method public addAudioDRCFilter(I[FII)I
    .registers 5
    .annotation build Lcom/ss/android/vesdk/annotation/TobAuth;
        func = 0x3a8ac62b
    .end annotation

    .line 10043
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->addAudioDRCFilter(I[FII)I

    move-result p0

    return p0
.end method

.method public addAudioEffects(II[I[I[Lcom/ss/android/vesdk/VEAudioEffectBean;)[I
    .registers 6

    .line 9828
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEFilter;->addAudioEffects(II[I[I[Lcom/ss/android/vesdk/VEAudioEffectBean;)[I

    move-result-object p0

    return-object p0
.end method

.method public addAudioTrack(Ljava/lang/String;IIIIZ)I
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 8313
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/vesdk/VEEditor;->addAudioTrack(Ljava/lang/String;IIIIZZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;IIIIZII)I
    .registers 9

    .line 8382
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p8}, Lcom/ss/android/vesdk/internal/IVESequence;->addAudioTrack(Ljava/lang/String;IIIIZII)I

    move-result p0

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;IIIIZZ)I
    .registers 17

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 8333
    invoke-virtual/range {v0 .. v8}, Lcom/ss/android/vesdk/VEEditor;->addAudioTrackWithInfo(Ljava/lang/String;Ljava/lang/String;IIIIZZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;IIIIZZZ)I
    .registers 19

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 8337
    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/vesdk/VEEditor;->addAudioTrackWithInfo(Ljava/lang/String;Ljava/lang/String;IIIIZZZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;IIZ)I
    .registers 5

    .line 8291
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVESequence;->addAudioTrack(Ljava/lang/String;IIZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrack(Ljava/lang/String;IIZZ)I
    .registers 6

    .line 8295
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVESequence;->addAudioTrack(Ljava/lang/String;IIZZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrackWithInfo(Ljava/lang/String;Ljava/lang/String;IIIIZZ)I
    .registers 9

    .line 8358
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p8}, Lcom/ss/android/vesdk/internal/IVESequence;->addAudioTrackWithInfo(Ljava/lang/String;Ljava/lang/String;IIIIZZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrackWithInfo(Ljava/lang/String;Ljava/lang/String;IIIIZZZ)I
    .registers 10

    .line 8362
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p9}, Lcom/ss/android/vesdk/internal/IVESequence;->addAudioTrackWithInfo(Ljava/lang/String;Ljava/lang/String;IIIIZZZ)I

    move-result p0

    return p0
.end method

.method public addAudioTrackWithStruct(Lcom/ss/android/vesdk/clipparam/VECommonClipParam;Z)I
    .registers 3

    .line 8253
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESequence;->addAudioTrackWithStruct(Lcom/ss/android/vesdk/clipparam/VECommonClipParam;Z)I

    move-result p0

    return p0
.end method

.method public addCherEffect(IILcom/ss/android/vesdk/VECherEffectParam;)[I
    .registers 4

    .line 9869
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->addCherEffect(IILcom/ss/android/vesdk/VECherEffectParam;)[I

    move-result-object p0

    return-object p0
.end method

.method public addClipAuxiliaryParam(II[Lcom/ss/android/vesdk/clipparam/VEClipAuxiliaryParam;)I
    .registers 4

    .line 8266
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESequence;->addClipAuxiliaryParam(II[Lcom/ss/android/vesdk/clipparam/VEClipAuxiliaryParam;)I

    move-result p0

    return p0
.end method

.method public addEmojiSticker(Ljava/lang/String;)I
    .registers 2

    .line 10219
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10220
    const-string p0, "VEEditor"

    const-string p1, "addEmojiSticker STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10223
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->addEmojiSticker(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addEqualizer(IIIII)I
    .registers 6

    .line 9843
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEFilter;->addEqualizer(IIIII)I

    move-result p0

    return p0
.end method

.method public addEqualizer(ILcom/ss/android/vesdk/VEEqualizerParams;II)I
    .registers 5

    .line 9857
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->addEqualizer(ILcom/ss/android/vesdk/VEEqualizerParams;II)I

    move-result p0

    return p0
.end method

.method public addExtRes(Ljava/lang/String;IIIIFFFF)I
    .registers 10

    .line 10982
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10983
    const-string p0, "VEEditor"

    const-string p1, "addExtRes STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10986
    :cond_e
    invoke-interface/range {p0 .. p9}, Lcom/ss/android/vesdk/internal/IVESticker;->addExtRes(Ljava/lang/String;IIIIFFFF)I

    move-result p0

    return p0
.end method

.method public addExternalVideoTrack(Ljava/lang/String;IIIII)I
    .registers 15

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 8493
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/vesdk/VEEditor;->addExternalVideoTrackWithFileInfo(Ljava/lang/String;Ljava/lang/String;IIIII)I

    move-result p0

    return p0
.end method

.method public addExternalVideoTrackWithFileInfo(Ljava/lang/String;Ljava/lang/String;IIIII)I
    .registers 8

    .line 8513
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p7}, Lcom/ss/android/vesdk/internal/IVESequence;->addExternalVideoTrackWithFileInfo(Ljava/lang/String;Ljava/lang/String;IIIII)I

    move-result p0

    return p0
.end method

.method public addFFmpegPitchTempo(IFFII)I
    .registers 6

    .line 9947
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEFilter;->addFFmpegPitchTempo(IFFII)I

    move-result p0

    return p0
.end method

.method public addFadeInFadeOut(IIIIII)I
    .registers 7

    .line 9885
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p6}, Lcom/ss/android/vesdk/internal/IVEFilter;->addFadeInFadeOut(IIIIII)I

    move-result p0

    return p0
.end method

.method public addFilterEffects([I[I[Ljava/lang/String;)[I
    .registers 4

    .line 9088
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->addFilterEffects([I[I[Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public addFilterEffects([I[I[Ljava/lang/String;[Z[I[I)[I
    .registers 7

    .line 9104
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p6}, Lcom/ss/android/vesdk/internal/IVEFilter;->addFilterEffects([I[I[Ljava/lang/String;[Z[I[I)[I

    move-result-object p0

    return-object p0
.end method

.method public addFilterEffectsWithTag([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;)[I
    .registers 7

    .line 9120
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p6}, Lcom/ss/android/vesdk/internal/IVEFilter;->addFilterEffectsWithTag([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public addFilterEffectsWithTagSync([I[I[Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)[I
    .registers 4

    .line 9133
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->addFilterEffectsWithTagSync([I[I[Lcom/ss/android/vesdk/filterparam/VEEffectFilterParam;)[I

    move-result-object p0

    return-object p0
.end method

.method public addImageSticker(Ljava/lang/String;FFFF)I
    .registers 6

    .line 10302
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10303
    const-string p0, "VEEditor"

    const-string p1, "addImageSticker STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10306
    :cond_e
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVESticker;->addImageSticker(Ljava/lang/String;FFFF)I

    move-result p0

    return p0
.end method

.method public addImageStickerWithRatio(Ljava/lang/String;FFFF)I
    .registers 6

    .line 10320
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10321
    const-string p0, "VEEditor"

    const-string p1, "addImageStickerWithRatio STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10324
    :cond_e
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVESticker;->addImageStickerWithRatio(Ljava/lang/String;FFFF)I

    move-result p0

    return p0
.end method

.method public addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 3

    .line 10156
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10157
    const-string p0, "VEEditor"

    const-string p1, "addInfoSticker 1 STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10160
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->addInfoSticker(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addInfoStickerOrEmoji(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 10235
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10236
    const-string p0, "VEEditor"

    const-string p1, "addInfoStickerOrEmoji STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10239
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->addInfoStickerOrEmoji(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addInfoStickerTemplate(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 10523
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10524
    const-string p0, "VEEditor"

    const-string p1, "addInfoStickerTemplate STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10527
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->addInfoStickerTemplate(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addInfoStickerWithBuffer()I
    .registers 3

    .line 10265
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "VEEditor"

    if-eqz v0, :cond_11

    .line 10266
    const-string p0, "no need to addInfoStickerWithBuffer, is destroying, just return"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 10269
    :cond_11
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_1d

    .line 10270
    const-string p0, "addInfoStickerWithBuffer STICKER IS NOT SUPPORT !!!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10273
    :cond_1d
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVESticker;->addInfoStickerWithBuffer()I

    move-result p0

    return p0
.end method

.method public addInfoStickerWithInitInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 10173
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10174
    const-string p0, "VEEditor"

    const-string p1, "addInfoStickerWithInitInfo STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10177
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESticker;->addInfoStickerWithInitInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addLoudnessFilter(IFII)I
    .registers 5

    .line 10056
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->addLoudnessFilter(IFII)I

    move-result p0

    return p0
.end method

.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 6117
    monitor-enter p0

    .line 6118
    :try_start_1
    const-string v0, "VEEditor"

    const-string v1, "addMetadata..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1f

    .line 6123
    :cond_15
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->addMetaData(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 6124
    monitor-exit p0

    return p1

    :catchall_1d
    move-exception p1

    goto :goto_23

    :cond_1f
    :goto_1f
    const/16 p1, -0x64

    .line 6121
    monitor-exit p0

    return p1

    .line 6125
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_1d

    throw p1
.end method

.method public addPitchTempo(IIFFII)I
    .registers 7

    .line 9931
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p6}, Lcom/ss/android/vesdk/internal/IVEFilter;->addPitchTempo(IIFFII)I

    move-result p0

    return p0
.end method

.method public addRepeatEffect(IIIII)I
    .registers 6

    .line 9658
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEFilter;->addRepeatEffect(IIIII)I

    move-result p0

    return p0
.end method

.method public addReverb(ILjava/lang/String;II)I
    .registers 5
    .annotation build Lcom/ss/android/vesdk/annotation/TobAuth;
        func = 0x3a8ac62b
    .end annotation

    .line 9900
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->addReverb(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public addReverb2(ILcom/ss/android/vesdk/VEReverb2Params;II)I
    .registers 5
    .annotation build Lcom/ss/android/vesdk/annotation/TobAuth;
        func = 0x3a8ac62b
    .end annotation

    .line 9915
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->addReverb2(ILcom/ss/android/vesdk/VEReverb2Params;II)I

    move-result p0

    return p0
.end method

.method public addSegmentVolume([I[I[I[I[F)[I
    .registers 6

    .line 8566
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVESequence;->addSegmentVolume([I[I[I[I[F)[I

    move-result-object p0

    return-object p0
.end method

.method public addSlowMotionEffect(IIIIFF)I
    .registers 7

    .line 9687
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p6}, Lcom/ss/android/vesdk/internal/IVEFilter;->addSlowMotionEffect(IIIIFF)I

    move-result p0

    return p0
.end method

.method public addSticker(Ljava/lang/String;IIFFFF)I
    .registers 8

    .line 10933
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10934
    const-string p0, "VEEditor"

    const-string p1, "addSticker STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10937
    :cond_e
    invoke-interface/range {p0 .. p7}, Lcom/ss/android/vesdk/internal/IVESticker;->addSticker(Ljava/lang/String;IIFFFF)I

    move-result p0

    return p0
.end method

.method public addSticker(Ljava/lang/String;IIIIFFFF)I
    .registers 10

    .line 10959
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10960
    const-string p0, "VEEditor"

    const-string p1, "addSticker2 STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10963
    :cond_e
    invoke-interface/range {p0 .. p9}, Lcom/ss/android/vesdk/internal/IVESticker;->addSticker(Ljava/lang/String;IIIIFFFF)I

    move-result p0

    return p0
.end method

.method public addTextSticker(Ljava/lang/String;)I
    .registers 2

    .line 10204
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10205
    const-string p0, "VEEditor"

    const-string p1, "addTextSticker1, STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10208
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->addTextSticker(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addTextStickerWithInitInfo(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 10189
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10190
    const-string p0, "VEEditor"

    const-string p1, "addTextStickerWithInitInfo2 STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10193
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->addTextStickerWithInitInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addTimeEffect(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 4

    .line 9716
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->addTimeEffect(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0
.end method

.method public addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 4

    .line 9156
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0
.end method

.method public addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I
    .registers 6

    .line 9170
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEFilter;->addTrackFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;II)I

    move-result p0

    return p0
.end method

.method public addVidoeClipWithAlgorithm([Ljava/lang/String;)I
    .registers 2

    .line 8670
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEBingo;->addVideoClipWithAlgorithm([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public addWaterMark(Ljava/lang/String;DDDD)I
    .registers 23

    .line 5912
    const-string v0, "VEEditor"

    const-string v1, "addWaterMark..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5913
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    filled-new-array {v2}, [I

    move-result-object v3

    .line 5914
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v4

    const/4 v2, 0x0

    move-wide v9, p2

    move-wide/from16 v11, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    .line 5913
    invoke-virtual/range {v0 .. v12}, Lcom/ss/android/ttve/nativePort/TEInterface;->addWaterMark([Ljava/lang/String;[Ljava/lang/String;[I[IDDDD)I

    move-result v0

    return v0
.end method

.method public addWaterMarkForGifHigh(Ljava/lang/String;DDDD)I
    .registers 10

    .line 5930
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->waterMarkFile:Ljava/lang/String;

    .line 5931
    iput-wide p2, p0, Lcom/ss/android/vesdk/VEEditor;->waterMarkWidth:D

    .line 5932
    iput-wide p4, p0, Lcom/ss/android/vesdk/VEEditor;->waterMarkHeight:D

    .line 5933
    iput-wide p6, p0, Lcom/ss/android/vesdk/VEEditor;->waterMarkOffsetX:D

    .line 5934
    iput-wide p8, p0, Lcom/ss/android/vesdk/VEEditor;->waterMarkOffsetY:D

    const/4 p0, 0x0

    return p0
.end method

.method public appendComposerNodes([Ljava/lang/String;)I
    .registers 2

    .line 8958
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->appendComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public appendComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 4

    .line 9008
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->appendComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public begin2DBrush()I
    .registers 2

    .line 11355
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11356
    const-string p0, "VEEditor"

    const-string v0, "begin2DBrush STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11359
    :cond_e
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVESticker;->begin2DBrush()I

    move-result p0

    return p0
.end method

.method public beginAudioExtendToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFLcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;)I
    .registers 8

    .line 4474
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperAudioExtend:Lcom/ss/android/vesdk/internal/IVEAudioExtend;

    invoke-interface/range {p0 .. p7}, Lcom/ss/android/vesdk/internal/IVEAudioExtend;->beginAudioExtendToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFLcom/ss/android/vesdk/VEListener$VEProcessAudioExtendListener;)I

    move-result p0

    return p0
.end method

.method public beginGenVideoFrames(IIZLcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)I
    .registers 5

    .line 8823
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEBingo;->beginGenVideoFrames(IIZLcom/ss/android/vesdk/VEListener$VEBeginVideoFrameListener;)I

    move-result p0

    return p0
.end method

.method public beginInfoStickerPin(I)I
    .registers 2

    .line 11270
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11271
    const-string p0, "VEEditor"

    const-string p1, "beginInfoStickerPin STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11274
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->beginInfoStickerPin(I)I

    move-result p0

    return p0
.end method

.method public cancelAudioExtendToFile()I
    .registers 1

    .line 4483
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperAudioExtend:Lcom/ss/android/vesdk/internal/IVEAudioExtend;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEAudioExtend;->cancelAudioExtendToFile()I

    move-result p0

    return p0
.end method

.method public cancelGenVideoFrame(I)I
    .registers 2

    .line 8833
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEBingo;->cancelGenVideoFrame(I)I

    move-result p0

    return p0
.end method

.method public cancelGetVideoFrames()I
    .registers 3

    .line 6196
    monitor-enter p0

    .line 6197
    :try_start_1
    const-string v0, "VEEditor"

    const-string v1, "cancelGetVideoFrames..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6198
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->cancelGetImages()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    .line 6199
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public cancelInfoStickerPin(I)I
    .registers 2

    .line 11285
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11286
    const-string p0, "VEEditor"

    const-string p1, "cancelInfoStickerPin STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11289
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->cancelInfoStickerPin(I)I

    move-result p0

    return p0
.end method

.method public cancelReverseVideo()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5180
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-boolean v0, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    if-eqz v0, :cond_9

    const/16 p0, -0x69

    return p0

    .line 5183
    :cond_9
    monitor-enter p0

    .line 5184
    :try_start_a
    new-instance v0, Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-direct {v0}, Lcom/ss/android/medialib/FFMpegInvoker;-><init>()V

    .line 5185
    invoke-virtual {v0}, Lcom/ss/android/medialib/FFMpegInvoker;->stopReverseVideo()I

    const/4 v0, 0x1

    .line 5186
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCancelReverse:Z

    .line 5187
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public changeBitmapRes([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 10

    .line 7976
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p9}, Lcom/ss/android/vesdk/internal/IVESequence;->changeBitmapRes([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result p0

    return p0
.end method

.method public changeBitmapRes([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;II)I
    .registers 12

    .line 8002
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p11}, Lcom/ss/android/vesdk/internal/IVESequence;->changeBitmapRes([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;II)I

    move-result p0

    return p0
.end method

.method protected changeMvUserVideoInfo(I[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)V
    .registers 6

    .line 8152
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    invoke-interface {v0}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->isMVInitialedInternal()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8153
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->changeMvUserVideoInfoInternal(I[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I

    :cond_d
    return-void
.end method

.method public changeRes([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[ILcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 9

    .line 7927
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p8}, Lcom/ss/android/vesdk/internal/IVESequence;->changeRes([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[ILcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result p0

    return p0
.end method

.method public changeRes([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 10

    .line 7952
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p9}, Lcom/ss/android/vesdk/internal/IVESequence;->changeRes([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result p0

    return p0
.end method

.method public changeResWithEffect([Ljava/lang/String;[Ljava/lang/String;[I[I[F[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;)I
    .registers 25

    if-eqz p1, :cond_27

    .line 3958
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_27

    .line 3960
    :cond_6
    array-length v0, p1

    new-array v1, v0, [Z

    const/4 v0, 0x1

    .line 3961
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 3962
    invoke-virtual/range {v0 .. v12}, Lcom/ss/android/vesdk/VEEditor;->changeResWithEffect([Z[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;)I

    move-result v0

    return v0

    :cond_27
    :goto_27
    const/16 v0, -0x64

    return v0
.end method

.method public changeResWithEffect([Z[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;)I
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v8, p7

    .line 3986
    const-string v1, "changeResWithEffect in..."

    const-string v14, "VEEditor"

    invoke-static {v14, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3987
    array-length v1, v3

    if-eqz v1, :cond_150

    move-object/from16 v2, p1

    array-length v1, v2

    array-length v4, v3

    if-eq v1, v4, :cond_18

    goto/16 :goto_150

    .line 3990
    :cond_18
    iget-object v1, v0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    move-result v1

    if-eqz v1, :cond_36

    .line 3992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop in changeResWithEffect failed, ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 3996
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeResWithEffect clear reverse before, mOriginalSoundTrackType = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget v4, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4000
    iget-object v1, v0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-boolean v4, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    const/4 v5, 0x1

    const/4 v15, 0x0

    if-eqz v4, :cond_8c

    iget-boolean v4, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioDone:Z

    if-eqz v4, :cond_8c

    iget-object v4, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioPaths:[Ljava/lang/String;

    if-eqz v4, :cond_8c

    iget v4, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    if-ne v4, v5, :cond_8c

    .line 4002
    iget v1, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    invoke-virtual {v0, v1, v5, v15}, Lcom/ss/android/vesdk/VEEditor;->getVolume(III)F

    move-result v1

    .line 4005
    iget-object v4, v0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget v4, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    invoke-virtual {v0, v4}, Lcom/ss/android/vesdk/VEEditor;->deleteAudioTrack(I)I

    .line 4006
    iget-object v4, v0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v15, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    .line 4007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeResWithEffect remove org audio track index "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget v6, v6, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8e

    :cond_8c
    const/high16 v1, -0x40800000    # -1.0f

    .line 4009
    :goto_8e
    iget-object v4, v0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioPaths:[Ljava/lang/String;

    .line 4010
    iput-object v6, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    .line 4011
    iput-boolean v15, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    .line 4012
    iput-boolean v15, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioDone:Z

    if-eqz v8, :cond_a0

    .line 4013
    array-length v4, v8

    if-eqz v4, :cond_a0

    move v4, v5

    goto :goto_a1

    :cond_a0
    move v4, v15

    :goto_a1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 4014
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 4015
    iget-object v4, v0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v5, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    goto :goto_b6

    .line 4017
    :cond_b2
    iget-object v4, v0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v15, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    .line 4020
    :goto_b6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeResWithEffect clear reverse after, mOriginalSoundTrackType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget v5, v5, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    iget-object v4, v0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput-object v3, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    .line 4023
    iput-object v8, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    move v4, v1

    .line 4024
    iget-object v1, v0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 4025
    invoke-static/range {p12 .. p12}, Lcom/ss/android/vesdk/ROTATE_DEGREE;->toIntArray([Lcom/ss/android/vesdk/ROTATE_DEGREE;)[I

    move-result-object v13

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v16, v4

    move-object/from16 v4, p3

    .line 4024
    invoke-virtual/range {v1 .. v13}, Lcom/ss/android/ttve/nativePort/TEInterface;->changeResWithEffect([Z[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Ljava/lang/String;[Ljava/lang/String;[I[I[F[I)I

    move-result v1

    if-eqz v1, :cond_108

    .line 4027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRes in changeResWithEffect failed, ret = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4032
    :cond_108
    iget-object v1, v0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 4033
    iget-object v1, v0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, v15}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result v1

    const/4 v2, 0x0

    move/from16 v4, v16

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_123

    .line 4037
    iget-object v2, v0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget v3, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    iget v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    invoke-virtual {v0, v3, v2, v4}, Lcom/ss/android/vesdk/VEEditor;->setVolume(IIF)Z

    .line 4039
    :cond_123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeResWithEffect done\uff0cmInitSize.width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    iget v3, v3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mInitSize.height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ret = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_150
    :goto_150
    const/16 v0, -0x64

    return v0
.end method

.method public changeTransitionAt(ILcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)I
    .registers 3

    .line 9640
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->changeTransitionAt(ILcom/ss/android/vesdk/filterparam/VETransitionFilterParam;)I

    move-result p0

    return p0
.end method

.method public changeTransitionAt(ILjava/lang/String;)I
    .registers 3

    .line 9627
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->changeTransitionAt(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .registers 4

    if-eqz p1, :cond_c

    if-nez p3, :cond_5

    goto :goto_c

    .line 8924
    :cond_5
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->checkComposerNodeExclusion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    :cond_c
    :goto_c
    const/4 p0, -0x1

    const/4 p1, 0x0

    .line 8922
    filled-new-array {p0, p1}, [I

    move-result-object p0

    return-object p0
.end method

.method public checkMateData()Z
    .registers 4

    .line 7194
    const-string v0, "copyright"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7195
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 7198
    const-string v1, "VEEditor"

    const-string v2, "checkMatedata... "

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7199
    invoke-static {v0, p0}, Lcom/ss/android/vesdk/utils/DigestUtils;->checkInfoByMd5(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public checkScoresFile(Ljava/lang/String;)I
    .registers 2

    .line 8810
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEBingo;->checkScoresFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public clearDisplay(I)V
    .registers 4

    .line 2203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearDisplay... color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->clearDisplay(I)V

    return-void
.end method

.method public clearFileInfoCache()V
    .registers 2

    .line 7781
    monitor-enter p0

    .line 7782
    :try_start_1
    sget-object v0, Lcom/ss/android/vesdk/VEEditor;->mFileInfoCacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7783
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z
    .registers 5

    const/4 v0, 0x0

    .line 6458
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    .line 6460
    sget-object v0, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->DEFAULT:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/VEEditor;->_compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;)Z

    move-result p0

    if-nez p0, :cond_12

    .line 6462
    const-string p1, "VEEditor"

    const-string p2, "_compile failed"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return p0
.end method

.method public compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Z
    .registers 6

    .line 6422
    iput-object p5, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    .line 6423
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEEditor;->_compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Z
    .registers 5

    .line 6439
    iput-object p4, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    .line 6440
    sget-object p4, Lcom/ss/android/vesdk/VEAudioEncodeSettings;->DEFAULT:Lcom/ss/android/vesdk/VEAudioEncodeSettings;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VEEditor;->_compile(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEAudioEncodeSettings;)Z

    move-result p1

    if-nez p1, :cond_d

    const/4 p2, 0x0

    .line 6442
    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    :cond_d
    return p1
.end method

.method public compileOnlyAudio(Ljava/lang/String;Lcom/ss/android/vesdk/VEAudioEncodeSettings;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Z
    .registers 4

    .line 6360
    iput-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    .line 6361
    invoke-direct {p0, p1, p2}, Lcom/ss/android/vesdk/VEEditor;->_compileOnlyAudio(Ljava/lang/String;Lcom/ss/android/vesdk/VEAudioEncodeSettings;)Z

    move-result p0

    return p0
.end method

.method public compileSingleImage(Ljava/lang/String;Lcom/ss/android/vesdk/VEVideoEncodeSettings;Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)Z
    .registers 9

    .line 6374
    iput-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    .line 6375
    monitor-enter p0

    .line 6376
    :try_start_3
    iget-boolean p3, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    const/16 v0, -0x69

    if-eqz p3, :cond_92

    .line 6379
    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-eqz p3, :cond_8f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1c

    goto :goto_8f

    .line 6383
    :cond_1c
    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_87

    .line 6388
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 6390
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getCompileType()Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_JPEG:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    if-ne v0, v1, :cond_3c

    .line 6391
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileType(I)V

    goto :goto_4b

    :catchall_3a
    move-exception p1

    goto :goto_9a

    .line 6392
    :cond_3c
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getCompileType()Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    move-result-object v0

    sget-object v1, Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;->COMPILE_TYPE_PNG:Lcom/ss/android/vesdk/VEVideoEncodeSettings$COMPILE_TYPE;

    if-ne v0, v1, :cond_4b

    .line 6393
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileType(I)V

    :cond_4b
    :goto_4b
    const/4 v0, 0x1

    add-int/2addr p3, v0

    .line 6396
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 6397
    iput-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    .line 6399
    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeMode()I

    move-result v1

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeX()F

    move-result v2

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getResizeY()F

    move-result v3

    invoke-virtual {p3, v1, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setResizer(IFF)V

    .line 6400
    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x0

    invoke-virtual {p3, p1, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEngineCompilePath(Ljava/lang/String;Ljava/lang/String;)V

    .line 6401
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object p3

    iget p3, p3, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->getVideoRes()Lcom/ss/android/vesdk/VESize;

    move-result-object p2

    iget p2, p2, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p1, p3, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setWidthHeight(II)V

    .line 6402
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    .line 6403
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->start()I

    .line 6404
    monitor-exit p0

    return v0

    .line 6385
    :cond_87
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    const-string p2, "Compile single image outPath should contains *.png/*.jpg suffix!!!"

    invoke-direct {p1, v0, p2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_8f
    :goto_8f
    const/4 p1, 0x0

    .line 6380
    monitor-exit p0

    return p1

    .line 6377
    :cond_92
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    const-string p2, "Make sure the initialization is successful before coding!!!"

    invoke-direct {p1, v0, p2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 6405
    :goto_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_3 .. :try_end_9b} :catchall_3a

    throw p1
.end method

.method public deleteAICutOutClipParam(I)I
    .registers 2

    .line 9279
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->deleteAICutOutClipParam(I)I

    move-result p0

    return p0
.end method

.method public deleteAudioFilters([I)I
    .registers 2

    .line 10086
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->deleteAudioFilters([I)I

    move-result p0

    return p0
.end method

.method public deleteAudioTrack(I)I
    .registers 3

    const/4 v0, 0x0

    .line 8462
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/vesdk/VEEditor;->deleteAudioTrack(IZ)I

    move-result p0

    return p0
.end method

.method public deleteAudioTrack(IZ)I
    .registers 3

    .line 8474
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESequence;->deleteAudioTrack(IZ)I

    move-result p0

    return p0
.end method

.method public deleteClip(II)I
    .registers 3

    .line 8087
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESequence;->deleteClip(II)I

    move-result p0

    return p0
.end method

.method public deleteExternalVideoTrack(I)I
    .registers 2

    .line 8549
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESequence;->deleteExternalVideoTrack(I)I

    move-result p0

    return p0
.end method

.method public deleteFilterEffects([I)I
    .registers 2

    .line 9144
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->deleteFilterEffects([I)I

    move-result p0

    return p0
.end method

.method public deleteFilters([I)I
    .registers 2

    .line 9181
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->deleteFilters([I)I

    move-result p0

    return p0
.end method

.method public deleteRepeatEffect(I)I
    .registers 2

    .line 9669
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->deleteRepeatEffect(I)I

    move-result p0

    return p0
.end method

.method public deleteSlowEffect(I)I
    .registers 2

    .line 9698
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->deleteSlowEffect(I)I

    move-result p0

    return p0
.end method

.method public deleteSticker(I)I
    .registers 2

    .line 10999
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11000
    const-string p0, "VEEditor"

    const-string p1, "deleteSticker STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11003
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->deleteSticker(I)I

    move-result p0

    return p0
.end method

.method public deleteTimeEffect(I)I
    .registers 2

    .line 9730
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->deleteTimeEffect(I)I

    move-result p0

    return p0
.end method

.method public deleteVideoClipWithAlgorithm(I)I
    .registers 2

    .line 8680
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEBingo;->deleteVideoClipWithAlgorithm(I)I

    move-result p0

    return p0
.end method

.method public deleteWaterMark(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public destroy()V
    .registers 7

    .line 4625
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4626
    const-string v0, "VEEditor"

    const-string v2, "destroy... set destroying true"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4628
    monitor-enter p0

    const/4 v0, 0x0

    .line 4629
    :try_start_f
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 4630
    const-string v2, "VEEditor"

    const-string v3, "onDestroy... "

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4632
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    .line 4634
    iget-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2c

    .line 4635
    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    goto/16 :goto_ae

    .line 4637
    :cond_2c
    iget-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 4639
    iget v2, p0, Lcom/ss/android/vesdk/VEEditor;->mPageMode:I

    if-ne v2, v1, :cond_39

    const/4 v1, 0x3

    .line 4640
    invoke-static {v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    .line 4643
    :cond_39
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    .line 4644
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_59

    .line 4645
    :cond_48
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_59

    .line 4646
    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-ne v1, v3, :cond_59

    .line 4647
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 4650
    :cond_59
    :goto_59
    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceView:Landroid/view/SurfaceView;

    .line 4651
    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureView:Landroid/view/TextureView;

    .line 4652
    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 4653
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    if-eqz v1, :cond_94

    .line 4654
    invoke-virtual {v1, v2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setOpenGLListeners(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;)V

    .line 4655
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, v2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setInfoListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 4656
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, v2}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setErrorListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 4657
    const-string v1, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyEngine... handler = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4658
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->destroyEngine()I

    .line 4659
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEEditor;->clearNativeFromInvokers()V

    .line 4661
    :cond_94
    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    .line 4662
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a7

    .line 4663
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4664
    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 4666
    :cond_a7
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4667
    monitor-exit p0

    return-void

    :goto_ae
    monitor-exit p0
    :try_end_af
    .catchall {:try_start_f .. :try_end_af} :catchall_29

    throw v0
.end method

.method public disableAlgorithmReplay()V
    .registers 3

    .line 3462
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setAlgorithmReplay(ILjava/lang/String;)V

    return-void
.end method

.method public disableAudioEffect(II)I
    .registers 3

    .line 9812
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->disableAudioEffect(II)I

    move-result p0

    return p0
.end method

.method public disableFilterEffect(II)I
    .registers 3

    .line 9075
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->disableFilterEffect(II)I

    move-result p0

    return p0
.end method

.method public doLensOneKeyHdrDetect()I
    .registers 3

    .line 9327
    const-string v0, "VEEditor"

    const-string v1, "doLensOneKeyHdrDetect..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9328
    monitor-enter p0

    .line 9329
    :try_start_8
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->doLensOneKeyHdrDetect()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    .line 9330
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public dumpSequence()Ljava/lang/String;
    .registers 2

    .line 11880
    monitor-enter p0

    .line 11881
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->dumpSequence()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    .line 11882
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public dumpSequence(Ljava/lang/String;)V
    .registers 3

    .line 11890
    monitor-enter p0

    .line 11891
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->dumpSequence(Ljava/lang/String;)V

    .line 11892
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public enableAudioCommonFilter(IILjava/lang/String;[BILcom/ss/android/vesdk/VEListener$AudioCommonFilterListener;)I
    .registers 7

    .line 9993
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p6}, Lcom/ss/android/vesdk/internal/IVEFilter;->enableAudioCommonFilter(IILjava/lang/String;[BILcom/ss/android/vesdk/VEListener$AudioCommonFilterListener;)I

    move-result p0

    return p0
.end method

.method public enableAudioEffect(IIILcom/ss/android/vesdk/VEAudioEffectBean;)I
    .registers 5

    .line 9798
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->enableAudioEffect(IIILcom/ss/android/vesdk/VEAudioEffectBean;)I

    move-result p0

    return p0
.end method

.method public enableAudioEffect(ILcom/ss/android/vesdk/VEAudioEffectBean;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9781
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->enableAudioEffect(ILcom/ss/android/vesdk/VEAudioEffectBean;)I

    move-result p0

    return p0
.end method

.method public enableEffect(Z)I
    .registers 4

    .line 7469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableEffect... enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7470
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableEffect(Z)I

    move-result p0

    if-eqz p0, :cond_32

    .line 7472
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableEffect failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    return p0
.end method

.method public enableEffectAmazing(Z)I
    .registers 3

    .line 3914
    monitor-enter p0

    .line 3915
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableEffectAmazing(Z)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    .line 3916
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public enableFaceDetect(Z)V
    .registers 3

    .line 3504
    monitor-enter p0

    .line 3505
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableFaceDetect(Z)I

    .line 3506
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public enableFilterEffect(ILjava/lang/String;)I
    .registers 3

    .line 9037
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->enableFilterEffect(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public enableFilterEffect(ILjava/lang/String;ZII)I
    .registers 6

    .line 9050
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEFilter;->enableFilterEffect(ILjava/lang/String;ZII)I

    move-result p0

    return p0
.end method

.method public enableFilterEffectWithTag(ILjava/lang/String;IILjava/lang/String;)I
    .registers 6

    .line 9063
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEFilter;->enableFilterEffectWithTag(ILjava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public enableGenderDetect(Z)V
    .registers 3

    .line 3516
    monitor-enter p0

    .line 3517
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableGenderDetect(Z)I

    .line 3518
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public enableHDRSetting(Z)V
    .registers 2

    .line 9546
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->enableHDRSetting(Z)V

    return-void
.end method

.method public enableHighSpeedForSingle(Z)I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2349
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableHighSpeedForSingle(Z)I

    move-result p0

    return p0
.end method

.method public enableImageEditor(Z)I
    .registers 4

    .line 7435
    const-string v0, "enableImageEditor"

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7436
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableImageEditor(Z)I

    move-result p0

    if-eqz p0, :cond_23

    .line 7438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableImageEditor failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return p0
.end method

.method public enableReversePlay(Z)I
    .registers 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 4730
    monitor-enter p0

    .line 4731
    :try_start_5
    const-string v2, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableReversePlay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4733
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-boolean v3, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    if-nez v3, :cond_2f

    .line 4734
    const-string v0, "VEEditor"

    const-string v2, "enableReversePlay error: reverse video is not ready!"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x64

    .line 4735
    monitor-exit p0

    return v0

    :catchall_2c
    move-exception v0

    goto/16 :goto_16a

    :cond_2f
    if-eqz v2, :cond_15f

    .line 4737
    iget-object v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    if-eqz v2, :cond_15f

    array-length v2, v2

    if-gtz v2, :cond_3a

    goto/16 :goto_15f

    .line 4742
    :cond_3a
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    .line 4744
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDurationUs()J

    move-result-wide v7

    .line 4745
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    if-eqz v0, :cond_4f

    .line 4748
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    goto :goto_53

    .line 4750
    :cond_4f
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    .line 4752
    :goto_53
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateTrackClips(II[Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_74

    .line 4754
    const-string v0, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTrackClips failed, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4755
    monitor-exit p0

    return v2

    .line 4759
    :cond_74
    const-string v2, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableReversePlay: mReverseAudioPaths == null: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v4, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioPaths:[Ljava/lang/String;

    const/4 v10, 0x1

    if-nez v4, :cond_89

    move v4, v10

    goto :goto_8a

    :cond_89
    move v4, v9

    :goto_8a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4760
    const-string v2, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableReversePlay: mOriginalSoundTrackType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget v4, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4761
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v3, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioPaths:[Ljava/lang/String;

    if-eqz v3, :cond_104

    iget v2, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    if-eq v2, v10, :cond_104

    .line 4762
    iget-object v11, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    aget-object v12, v3, v9

    .line 4763
    invoke-virtual {v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v14

    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v16

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 4762
    invoke-virtual/range {v11 .. v17}, Lcom/ss/android/ttve/nativePort/TEInterface;->addAudioTrack(Ljava/lang/String;IIIIZ)I

    move-result v2

    .line 4764
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v4, v1, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    invoke-virtual {v4, v10, v2}, Lcom/ss/android/ttve/common/TETrackIndexManager;->addTrack(II)I

    move-result v2

    iput v2, v3, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    .line 4765
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v10, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    .line 4766
    iput-boolean v10, v2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioDone:Z

    .line 4768
    const-string v2, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableReversePlay: add org audio track index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget v4, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mOriginalSoundTrackType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget v4, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4772
    :cond_104
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-boolean v2, v1, Lcom/ss/android/vesdk/VEEditor;->mBReversePlay:Z

    if-eq v0, v2, :cond_10c

    move v6, v10

    goto :goto_10d

    :cond_10c
    move v6, v9

    :goto_10d
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateTrackFilterDuration(IIZJ)I

    .line 4773
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 4774
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v2, v9}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result v2

    if-eqz v2, :cond_137

    .line 4776
    const-string v0, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableReversePlay() prepareEngine failed: result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4777
    monitor-exit p0

    return v2

    .line 4779
    :cond_137
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtIndexInternal(I)V

    .line 4780
    sget-object v2, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1, v9, v2}, Lcom/ss/android/vesdk/VEEditor;->seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;)I

    .line 4781
    iput-boolean v0, v1, Lcom/ss/android/vesdk/VEEditor;->mBReversePlay:Z

    if-eqz v0, :cond_15d

    .line 4784
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 4785
    const-string v2, "iesve_veeditor_time_effect_id"

    const-string v3, "reverse"

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 4786
    const-string v2, "iesve_veeditor_time_effect"

    invoke-static {v2, v10, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 4789
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->setTimeEffectType(I)V

    .line 4791
    :cond_15d
    monitor-exit p0

    return v9

    .line 4738
    :cond_15f
    :goto_15f
    const-string v0, "VEEditor"

    const-string v2, "enableReversePlay error: reverse video path is invalid!"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x69

    .line 4739
    monitor-exit p0

    return v0

    .line 4792
    :goto_16a
    monitor-exit p0
    :try_end_16b
    .catchall {:try_start_5 .. :try_end_16b} :catchall_2c

    throw v0
.end method

.method public declared-synchronized enableSimpleProcessor(Z)V
    .registers 5

    monitor-enter p0

    .line 4319
    :try_start_1
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableSimpleProcessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableSimpleProcessor(Z)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 4321
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public enableStickerAnimationPreview(IZ)I
    .registers 3

    .line 10805
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10806
    const-string p0, "VEEditor"

    const-string p1, "enableStickerAnimationPreview STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10809
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->enableStickerAnimationPreview(IZ)I

    move-result p0

    return p0
.end method

.method public enableStickerResourceLoadSync(IZ)I
    .registers 3

    .line 10896
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10897
    const-string p0, "VEEditor"

    const-string p1, "enableStickerResourceLoadSync STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10900
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->enableStickerResourceLoadSync(IZ)I

    move-result p0

    return p0
.end method

.method public end2DBrush(Ljava/lang/String;)I
    .registers 2

    .line 11368
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11369
    const-string p0, "VEEditor"

    const-string p1, "end2DBrush STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11372
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->end2DBrush(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public excAICutOutTask()I
    .registers 1

    .line 9288
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEFilter;->excAICutOutTask()I

    move-result p0

    return p0
.end method

.method public expandTimeline(I)I
    .registers 2

    .line 8625
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESequence;->expandTimeline(I)I

    move-result p0

    return p0
.end method

.method public faceCoverClear(ILjava/lang/String;Z)I
    .registers 4

    .line 4409
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->faceCoverClear(ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public faceCoverClearCache()I
    .registers 1

    .line 4429
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->faceCoverClearCache()I

    move-result p0

    return p0
.end method

.method public faceCoverLoad(I[Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 6

    .line 4365
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/TEInterface;->faceCoverLoad(I[Ljava/lang/String;ILjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public faceCoverRestoreAll()I
    .registers 1

    .line 4418
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->faceCoverRestoreAll()I

    move-result p0

    return p0
.end method

.method public faceCoverScale(IDDDLjava/lang/String;Z)I
    .registers 10

    .line 4396
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual/range {p0 .. p9}, Lcom/ss/android/ttve/nativePort/TEInterface;->faceCoverScale(IDDDLjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public faceCoverSet(IDDLjava/lang/String;Z)I
    .registers 8

    .line 4380
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual/range {p0 .. p7}, Lcom/ss/android/ttve/nativePort/TEInterface;->faceCoverSet(IDDLjava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public faceCoverSetDir(Ljava/lang/String;)I
    .registers 2

    .line 4350
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->faceCoverSetDir(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public flushSeekCmd()I
    .registers 5

    .line 5514
    monitor-enter p0

    .line 5515
    :try_start_1
    const-string v0, "VEEditor"

    const-string v1, "flushSeekCmd... "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5516
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->flushSeekCmd()I

    move-result v0

    if-gez v0, :cond_29

    .line 5518
    const-string v1, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flush error the ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :catchall_27
    move-exception v0

    goto :goto_2b

    .line 5520
    :cond_29
    :goto_29
    monitor-exit p0

    return v0

    .line 5521
    :goto_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_27

    throw v0
.end method

.method public forceUpdateInfoSticker(IZ)I
    .registers 3

    .line 10379
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10380
    const-string p0, "VEEditor"

    const-string p1, "forceUpdateInfoSticker STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10383
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->forceUpdateInfoSticker(IZ)I

    move-result p0

    return p0
.end method

.method public genRandomSolve()I
    .registers 1

    .line 8742
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEBingo;->genRandomSolve()I

    move-result p0

    return p0
.end method

.method public genReverseVideo()I
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4806
    const-string v0, "genReverseVideo"

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4807
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v0, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    if-eqz v0, :cond_95

    array-length v0, v0

    if-gtz v0, :cond_12

    goto/16 :goto_95

    .line 4812
    :cond_12
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    .line 4814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4815
    new-instance v0, Lcom/ss/android/medialib/FFMpegInvoker;

    invoke-direct {v0}, Lcom/ss/android/medialib/FFMpegInvoker;-><init>()V

    .line 4816
    iget-object v4, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v5, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    .line 4818
    :goto_29
    iget-object v6, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v7, v6, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_87

    .line 4819
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->genReverseVideoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4820
    iget-object v7, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v7, v7, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-virtual {v0, v7, v6}, Lcom/ss/android/medialib/FFMpegInvoker;->addFastReverseVideo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 4821
    iget-boolean v8, p0, Lcom/ss/android/vesdk/VEEditor;->mCancelReverse:Z

    const/4 v9, -0x1

    if-eqz v8, :cond_5c

    .line 4822
    const-string v0, "genReverseVideo fail: cancel reverse"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4823
    iput-boolean v4, p0, Lcom/ss/android/vesdk/VEEditor;->mCancelReverse:Z

    return v9

    :cond_5c
    if-eqz v7, :cond_7e

    const/4 v8, -0x4

    if-ne v7, v8, :cond_67

    .line 4830
    const-string v7, "genReverseVideo fail: not video (-4)"

    invoke-static {v1, v7}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    .line 4828
    :cond_67
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reverse mResManager.mVideoPaths[i] failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 4833
    :cond_7e
    :goto_7e
    iget-object v7, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v7, v7, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    aput-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_87
    const/4 p0, 0x1

    .line 4835
    iput-boolean p0, v6, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    .line 4838
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 4837
    const-string v2, "te_edit_reverse_time"

    invoke-static {p0, v2, v0, v1}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    return v4

    .line 4808
    :cond_95
    :goto_95
    const-string p0, "genReverseVideo error:invalid videoPaths"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public genSmartCutting()I
    .registers 1

    .line 8752
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEBingo;->genSmartCutting()I

    move-result p0

    return p0
.end method

.method protected genVideoTrackSizeFromPath([Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)[Lcom/ss/android/vesdk/VESize;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/VESize;",
            ">;)[",
            "Lcom/ss/android/vesdk/VESize;"
        }
    .end annotation

    .line 3923
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3925
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_5e

    aget-object v3, p2, v2

    move v4, v1

    .line 3926
    :goto_d
    array-length v5, p1

    if-ge v4, v5, :cond_5b

    .line 3927
    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 3928
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "... ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ss/android/vesdk/VESize;

    iget v5, v5, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/vesdk/VESize;

    iget v4, v4, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VEEditor"

    invoke-static {v4, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3934
    :cond_5e
    new-array p1, v1, [Lcom/ss/android/vesdk/VESize;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public get2DBrushStrokeCount()I
    .registers 2

    .line 11438
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11439
    const-string p0, "VEEditor"

    const-string v0, "get2DBrushStrokeCount STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11442
    :cond_e
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVESticker;->get2DBrushStrokeCount()I

    move-result p0

    return p0
.end method

.method public getAllAudioTracks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/ttve/model/VEAudioTrackIndex;",
            ">;"
        }
    .end annotation

    .line 11871
    const-string v0, "VEEditor"

    const-string v1, "getAllAudioTracks..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 11872
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getAllAudioTracks()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getAllClips(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipParam;",
            ">;"
        }
    .end annotation

    .line 8191
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESequence;->getAllClips(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getAllFileInfoCacheList([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 7668
    monitor-enter p0

    .line 7669
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x0

    .line 7670
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheHitCount:I

    .line 7671
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    .line 7672
    new-array v2, v0, [Ljava/lang/String;

    :goto_9
    if-ge v1, v0, :cond_25

    .line 7674
    aget-object v3, p1, v1

    invoke-direct {p0, v3}, Lcom/ss/android/vesdk/VEEditor;->getFileInfoCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 7675
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 7676
    aput-object v3, v2, v1

    goto :goto_22

    :catchall_1c
    move-exception p1

    goto :goto_27

    .line 7679
    :cond_1e
    const-string v3, ""

    aput-object v3, v2, v1

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 7683
    :cond_25
    monitor-exit p0

    return-object v2

    .line 7684
    :goto_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_1c

    throw p1
.end method

.method public getAllVideoFileInfos()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipVideoFileInfoParam;",
            ">;"
        }
    .end annotation

    .line 8201
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVESequence;->getAllVideoFileInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllVideoRangeData()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/clipparam/VEClipAlgorithmParam;",
            ">;"
        }
    .end annotation

    .line 8762
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEBingo;->getAllVideoRangeData()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getBusinessManager()Lcom/ss/android/ttve/biz/TEBaseBusinessManager;
    .registers 1

    .line 11971
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mBusinessManager:Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    return-object p0
.end method

.method protected getCanvasWrapFilterIndex()I
    .registers 1

    .line 11995
    iget p0, p0, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    return p0
.end method

.method public getClipFileInfoString(III)Ljava/lang/String;
    .registers 4

    .line 8214
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESequence;->getClipFileInfoString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClipFileInfoStringWithPath(IIILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 8228
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVESequence;->getClipFileInfoStringWithPath(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getClipMattingProgress(I)F
    .registers 2

    .line 9299
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->getClipMattingProgress(I)F

    move-result p0

    return p0
.end method

.method public getColorFilterIntensity(Ljava/lang/String;)F
    .registers 2

    .line 9461
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->getColorFilterIntensity(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method protected getCurColorFilter()Lcom/ss/android/ttve/model/FilterBean;
    .registers 1

    .line 11919
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEFilter;->getCurColorFilterInternal()Lcom/ss/android/ttve/model/FilterBean;

    move-result-object p0

    return-object p0
.end method

.method public getCurPosition()I
    .registers 1

    .line 5747
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getCurPosition()I

    move-result p0

    return p0
.end method

.method public getCurrDecodeImage(II)Landroid/graphics/Bitmap;
    .registers 7

    .line 2045
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p1

    .line 2047
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrDecodeImage... trackIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " clipIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    monitor-enter p0

    .line 2052
    :try_start_26
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDecodeRect(II)Lcom/ss/android/vesdk/VERect;

    move-result-object v0

    .line 2053
    iget v1, v0, Lcom/ss/android/vesdk/VERect;->width:I

    .line 2054
    iget v0, v0, Lcom/ss/android/vesdk/VERect;->height:I

    const/4 v2, 0x0

    if-lez v1, :cond_86

    if-gtz v0, :cond_36

    goto :goto_86

    .line 2059
    :cond_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_84

    .line 2062
    :try_start_37
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3d} :catch_68

    .line 2067
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDecodeImage(Landroid/graphics/Bitmap;II)I

    move-result p0

    if-eqz p0, :cond_67

    .line 2069
    const-string p1, "VEEditor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrDecodeImage failed "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_66

    .line 2070
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_66

    .line 2071
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_66
    return-object v2

    :cond_67
    return-object v0

    :catch_68
    move-exception p0

    .line 2064
    const-string p1, "VEEditor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCurrDecodeImage createBitmap failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_84
    move-exception p1

    goto :goto_88

    .line 2057
    :cond_86
    :goto_86
    :try_start_86
    monitor-exit p0

    return-object v2

    .line 2059
    :goto_88
    monitor-exit p0
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_84

    throw p1
.end method

.method public getCurrDecodeImageWithInfo(II)Lcom/ss/android/vesdk/VEBitmapWithInfo;
    .registers 8

    .line 2091
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p1

    .line 2093
    const-string v0, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrDecodeImage... trackIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " clipIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    monitor-enter p0

    .line 2098
    :try_start_26
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDecodeInfo(II)[I

    move-result-object v0

    .line 2100
    aget v1, v0, v1

    const/4 v2, 0x3

    .line 2101
    aget v2, v0, v2

    const/4 v3, 0x7

    .line 2102
    aget v0, v0, v3

    const/4 v3, 0x0

    if-lez v1, :cond_bb

    if-gtz v2, :cond_3b

    goto/16 :goto_bb

    .line 2107
    :cond_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_26 .. :try_end_3c} :catchall_b9

    .line 2110
    :try_start_3c
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_42} :catch_9d

    .line 2115
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, v1, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDecodeImage(Landroid/graphics/Bitmap;II)I

    move-result p0

    if-eqz p0, :cond_6c

    .line 2117
    const-string p1, "VEEditor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCurrDecodeImage failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6b

    .line 2118
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_6b

    .line 2119
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6b
    return-object v3

    .line 2123
    :cond_6c
    new-instance p0, Lcom/ss/android/vesdk/VEBitmapWithInfo;

    invoke-direct {p0, v1}, Lcom/ss/android/vesdk/VEBitmapWithInfo;-><init>(Landroid/graphics/Bitmap;)V

    const/16 p1, 0x10

    if-ne v0, p1, :cond_87

    .line 2125
    sget-object p1, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;->BT2020_PQ:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/ss/android/vesdk/VEBitmapWithInfo;->setColorInfo(III)V

    return-object p0

    :cond_87
    const/16 p1, 0x12

    if-ne v0, p1, :cond_9c

    .line 2127
    sget-object p1, Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;->BT2020_HLG:Lcom/ss/android/vesdk/VEBitmapWithInfo$COLOR_TYPE;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/ss/android/vesdk/VEBitmapWithInfo;->setColorInfo(III)V

    :cond_9c
    return-object p0

    :catch_9d
    move-exception p0

    .line 2112
    const-string p1, "VEEditor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCurrDecodeImage createBitmap failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catchall_b9
    move-exception p1

    goto :goto_bd

    .line 2105
    :cond_bb
    :goto_bb
    :try_start_bb
    monitor-exit p0

    return-object v3

    .line 2107
    :goto_bd
    monitor-exit p0
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_b9

    throw p1
.end method

.method public getCurrDisplayImage()Landroid/graphics/Bitmap;
    .registers 3

    .line 1873
    const-string v0, "VEEditor"

    const-string v1, "getCurrDisplayImage..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1874
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->getCurrDisplayImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getCurrDisplayImage(I)Landroid/graphics/Bitmap;
    .registers 6

    .line 1891
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrDisplayImage... width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    monitor-enter p0

    .line 1896
    :try_start_17
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getVideoResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    .line 1898
    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    const/4 v2, 0x0

    if-eqz v1, :cond_8c

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    if-nez v0, :cond_25

    goto :goto_8c

    :cond_25
    if-lez p1, :cond_2f

    if-lt p1, v1, :cond_2a

    goto :goto_2f

    :cond_2a
    mul-int/2addr v0, p1

    .line 1905
    div-int/2addr v0, v1

    goto :goto_30

    :catchall_2d
    move-exception p1

    goto :goto_8e

    :cond_2f
    :goto_2f
    move p1, v1

    .line 1908
    :goto_30
    rem-int/lit8 v1, p1, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_37

    add-int/lit8 p1, p1, 0x1

    .line 1911
    :cond_37
    rem-int/lit8 v1, v0, 0x2
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_2d

    if-ne v1, v3, :cond_3d

    add-int/lit8 v0, v0, 0x1

    .line 1916
    :cond_3d
    :try_start_3d
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_43} :catch_6f
    .catchall {:try_start_3d .. :try_end_43} :catchall_2d

    .line 1921
    :try_start_43
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDisplayImage(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 1922
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_2d

    if-eqz v0, :cond_6e

    .line 1925
    const-string p0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayImage failed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6d

    .line 1926
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_6d

    .line 1927
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6d
    return-object v2

    :cond_6e
    return-object p1

    :catch_6f
    move-exception p1

    .line 1918
    :try_start_70
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayImage createBitmap failed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    monitor-exit p0

    return-object v2

    .line 1899
    :cond_8c
    :goto_8c
    monitor-exit p0

    return-object v2

    .line 1922
    :goto_8e
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_70 .. :try_end_8f} :catchall_2d

    throw p1
.end method

.method public getCurrProcessedImage(II)Landroid/graphics/Bitmap;
    .registers 7

    .line 1948
    monitor-enter p0

    .line 1949
    :try_start_1
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrProcessedImage... width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_54

    const/4 v0, 0x0

    .line 1951
    :try_start_20
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_8b
    .catchall {:try_start_20 .. :try_end_26} :catchall_54

    .line 1956
    :try_start_26
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p2, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getProcessedImage(Landroid/graphics/Bitmap;)I

    move-result p2

    .line 1958
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getState()Lcom/ss/android/vesdk/VEEditor$VEState;

    move-result-object v1

    .line 1959
    sget-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->PAUSED:Lcom/ss/android/vesdk/VEEditor$VEState;

    if-eq v1, v2, :cond_56

    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VEState;->STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

    if-eq v1, v3, :cond_56

    sget-object v3, Lcom/ss/android/vesdk/VEEditor$VEState;->SEEKING:Lcom/ss/android/vesdk/VEEditor$VEState;

    if-eq v1, v3, :cond_56

    .line 1960
    const-string p1, "VEEditor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrProcessedImage createBitmap failed for invalid engine state:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    monitor-exit p0

    return-object v0

    :catchall_54
    move-exception p1

    goto :goto_a8

    :cond_56
    if-ne v1, v2, :cond_5b

    .line 1966
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->refreshCurrentFrame()I

    .line 1970
    :cond_5b
    sget-object v2, Lcom/ss/android/vesdk/VEEditor$VEState;->STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

    if-ne v1, v2, :cond_65

    .line 1971
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->pause()I

    .line 1972
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->play()I

    .line 1974
    :cond_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_26 .. :try_end_66} :catchall_54

    if-eqz p2, :cond_8a

    .line 1977
    const-string p0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayImage failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_89

    .line 1978
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_89

    .line 1979
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_89
    return-object v0

    :cond_8a
    return-object p1

    :catch_8b
    move-exception p1

    .line 1953
    :try_start_8c
    const-string p2, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrProcessedImage createBitmap failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    monitor-exit p0

    return-object v0

    .line 1974
    :goto_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_8c .. :try_end_a9} :catchall_54

    throw p1
.end method

.method public declared-synchronized getCurrTransparentImage()Landroid/graphics/Bitmap;
    .registers 7

    monitor-enter p0

    .line 2141
    :try_start_1
    const-string v0, "VEEditor"

    const-string v1, "getCurrTransparentImage in."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getVideoResolution()Lcom/ss/android/vesdk/VESize;

    move-result-object v0

    .line 2145
    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    const/4 v2, 0x0

    if-eqz v1, :cond_7c

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    if-nez v0, :cond_16

    goto :goto_7c

    .line 2150
    :cond_16
    rem-int/lit8 v3, v1, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    add-int/lit8 v1, v1, 0x1

    .line 2153
    :cond_1d
    rem-int/lit8 v3, v0, 0x2
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_53

    if-ne v3, v4, :cond_23

    add-int/lit8 v0, v0, 0x1

    .line 2159
    :cond_23
    :try_start_23
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_29} :catch_5f
    .catchall {:try_start_23 .. :try_end_29} :catchall_53

    .line 2165
    :try_start_29
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getTransparentImage(Landroid/graphics/Bitmap;)I

    move-result v1

    if-eqz v1, :cond_55

    .line 2167
    const-string v3, "VEEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrTransparentImage failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_56

    .line 2168
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_56

    .line 2169
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_56

    :catchall_53
    move-exception v0

    goto :goto_7e

    :cond_55
    move-object v2, v0

    .line 2174
    :cond_56
    :goto_56
    const-string v0, "VEEditor"

    const-string v1, "getCurrTransparentImage done."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_29 .. :try_end_5d} :catchall_53

    .line 2175
    monitor-exit p0

    return-object v2

    :catch_5f
    move-exception v0

    .line 2161
    :try_start_60
    const-string v1, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrTransparentImage createBitmap failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_53

    .line 2162
    monitor-exit p0

    return-object v2

    .line 2146
    :cond_7c
    :goto_7c
    monitor-exit p0

    return-object v2

    :goto_7e
    :try_start_7e
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_53

    throw v0
.end method

.method public getDuration()I
    .registers 2

    .line 5716
    monitor-enter p0

    .line 5717
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getDuration()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    .line 5718
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected getFieldInitSize()Lcom/ss/android/vesdk/VESize;
    .registers 1

    .line 11979
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method

.method public getHandler()J
    .registers 4

    .line 1745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHandler... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v0

    return-wide v0
.end method

.method public getImages([IIILcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;Lcom/ss/android/vesdk/VEListener$VEGetImageListener;)I
    .registers 9

    .line 6171
    monitor-enter p0

    .line 6172
    :try_start_1
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImages... width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eqz p2, :cond_4d

    if-nez p3, :cond_2d

    goto :goto_4d

    .line 6180
    :cond_2d
    iput-object p5, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 6181
    iget-object p5, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mGetImageCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    invoke-virtual {p5, v1}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setGetImageCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;)V

    .line 6182
    iget-object p5, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p4}, Lcom/ss/android/vesdk/VEEditor$GET_FRAMES_FLAGS;->getValue()I

    move-result p4

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->getImages([IIII)I

    move-result p1

    .line 6183
    const-string p2, "te_edit_get_frame_with_effect_ret"

    int-to-long p3, p1

    invoke-static {v0, p2, p3, p4}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 6185
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    .line 6186
    monitor-exit p0

    return p1

    :catchall_4b
    move-exception p1

    goto :goto_62

    .line 6174
    :cond_4d
    :goto_4d
    const-string p1, "VEEditor"

    const-string p2, "getImages error, size invalid"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6175
    const-string p1, "te_edit_get_frame_with_effect_ret"

    const-wide/16 p2, -0x64

    invoke-static {v0, p1, p2, p3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 6177
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    const/16 p1, -0x64

    .line 6178
    monitor-exit p0

    return p1

    .line 6187
    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_4b

    throw p1
.end method

.method public getInfoStickerBoundingBox(I)[F
    .registers 2

    .line 10595
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_d

    .line 10596
    const-string p0, "VEEditor"

    const-string p1, "getInfoStickerBoundingBox STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 10599
    :cond_d
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerBoundingBox(I)[F

    move-result-object p0

    return-object p0
.end method

.method public getInfoStickerBoundingBoxWithoutRotate(I)[F
    .registers 2

    .line 10611
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_d

    .line 10612
    const-string p0, "VEEditor"

    const-string p1, "getInfoStickerBoundingBoxWithoutRotate STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 10615
    :cond_d
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerBoundingBoxWithoutRotate(I)[F

    move-result-object p0

    return-object p0
.end method

.method public getInfoStickerFlip(I[Z)I
    .registers 3

    .line 10627
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10628
    const-string p0, "VEEditor"

    const-string p1, "getInfoStickerFlip STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10631
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerFlip(I[Z)I

    move-result p0

    return p0
.end method

.method public getInfoStickerPinData(I[Ljava/nio/ByteBuffer;)I
    .registers 3

    .line 11326
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11327
    const-string p0, "VEEditor"

    const-string p1, "getInfoStickerPinData STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11330
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerPinData(I[Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public getInfoStickerPinState(I)I
    .registers 2

    .line 11311
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11312
    const-string p0, "VEEditor"

    const-string p1, "getInfoStickerPinState STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11315
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerPinState(I)I

    move-result p0

    return p0
.end method

.method public getInfoStickerPosition(I[F)I
    .registers 3

    .line 10643
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10644
    const-string p0, "VEEditor"

    const-string p1, "getInfoStickerPosition STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10647
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerPosition(I[F)I

    move-result p0

    return p0
.end method

.method public getInfoStickerRotate(I)F
    .registers 2

    .line 10689
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_f

    .line 10690
    const-string p0, "VEEditor"

    const-string p1, "getInfoStickerRotate STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x3b9ec000    # -901.0f

    return p0

    .line 10693
    :cond_f
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerRotate(I)F

    move-result p0

    return p0
.end method

.method public getInfoStickerScale(I)F
    .registers 2

    .line 10674
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_f

    .line 10675
    const-string p0, "VEEditor"

    const-string p1, "getInfoStickerScale STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x3b9ec000    # -901.0f

    return p0

    .line 10678
    :cond_f
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerScale(I)F

    move-result p0

    return p0
.end method

.method public getInfoStickerTemplateParams(I)Ljava/lang/String;
    .registers 2

    .line 10536
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_d

    .line 10537
    const-string p0, "VEEditor"

    const-string p1, "getInfoStickerTemplateParams STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 10540
    :cond_d
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerTemplateParams(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInfoStickerVisible(I)Z
    .registers 2

    .line 10722
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_d

    .line 10723
    const-string p0, "VEEditor"

    const-string p1, "getInfoStickerVisible STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 10726
    :cond_d
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerVisible(I)Z

    move-result p0

    return p0
.end method

.method public getInfostickertemplateParams(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 10549
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_d

    .line 10550
    const-string p0, "VEEditor"

    const-string p1, "getInfostickertemplateParams STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 10553
    :cond_d
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerTemplateParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInitSize()Lcom/ss/android/vesdk/VESize;
    .registers 3

    .line 1757
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayWidth:I

    iget p0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayHeight:I

    invoke-direct {v0, v1, p0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 1758
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInitSize... initWidth:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initHeight:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VEEditor"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInitSize(II)Lcom/ss/android/vesdk/VESize;
    .registers 10

    .line 1772
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 1775
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    iget v1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float v2, v1

    iget v3, p0, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    int-to-float v4, p1

    int-to-float v5, p2

    div-float v6, v4, v5

    cmpl-float v2, v2, v6

    if-lez v2, :cond_23

    .line 1776
    iput p1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 1777
    iget p0, p0, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float p0, p0

    int-to-float v1, v3

    div-float/2addr p0, v1

    div-float/2addr v4, p0

    float-to-int p0, v4

    iput p0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    goto :goto_2e

    .line 1779
    :cond_23
    iput p2, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 1780
    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-float p0, p0

    int-to-float v1, v1

    div-float/2addr p0, v1

    div-float/2addr v5, p0

    float-to-int p0, v5

    iput p0, v0, Lcom/ss/android/vesdk/VESize;->width:I

    .line 1783
    :goto_2e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInitSize... surfaceWidth:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", surfaceHeight:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", width:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VEEditor"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getInternalNativeEditor()Lcom/ss/android/ttve/nativePort/TEInterface;
    .registers 1

    .line 1674
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    return-object p0
.end method

.method public getKeyFrameParam(II)Ljava/lang/String;
    .registers 3

    .line 4081
    monitor-enter p0

    .line 4082
    :try_start_1
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    .line 4083
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw p1
.end method

.method protected getLastTimeMS()J
    .registers 3

    .line 11915
    iget-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    return-wide v0
.end method

.method public getMVBackgroundAudioRid()I
    .registers 2

    .line 11597
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11598
    const-string p0, "VEEditor"

    const-string v0, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11602
    :cond_e
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->getMVBackgroundAudioRid()I

    move-result p0

    return p0
.end method

.method public getMVBackgroundAudioTrackIndex()I
    .registers 2

    .line 11612
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11613
    const-string p0, "VEEditor"

    const-string v0, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11617
    :cond_e
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->getMVBackgroundAudioTrackIndex()I

    move-result p0

    return p0
.end method

.method public getMVInfo()Lcom/ss/android/ttve/model/MVInfoBean;
    .registers 2

    .line 11566
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_d

    .line 11567
    const-string p0, "VEEditor"

    const-string v0, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 11571
    :cond_d
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->getMVInfo()Lcom/ss/android/ttve/model/MVInfoBean;

    move-result-object p0

    return-object p0
.end method

.method public getMVKaraokeAudioTrackIndex()I
    .registers 2

    .line 11642
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11643
    const-string p0, "VEEditor"

    const-string v0, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11646
    :cond_e
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->getMVKaraokeAudioIndex()I

    move-result p0

    return p0
.end method

.method public getMVOriginalBackgroundAudio()Lcom/ss/android/vesdk/VEMVAudioInfo;
    .registers 2

    .line 11628
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_d

    .line 11629
    const-string p0, "VEEditor"

    const-string v0, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 11633
    :cond_d
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->getMVOriginalBackgroundAudio()Lcom/ss/android/vesdk/VEMVAudioInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMVUserVideoInfo(Ljava/lang/String;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/ss/android/ttve/model/MVResourceBean;",
            ">;>;"
        }
    .end annotation

    .line 11582
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_d

    .line 11583
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 11587
    :cond_d
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->getMVUserVideoInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected getMasterTrackIndex()I
    .registers 1

    .line 11959
    iget p0, p0, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    return p0
.end method

.method public getMetadata(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 6135
    monitor-enter p0

    .line 6136
    :try_start_1
    const-string v0, "VEEditor"

    const-string v1, "getMetadata..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6139
    const-string p1, ""

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    goto :goto_1c

    .line 6141
    :cond_14
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 6142
    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_12

    throw p1
.end method

.method protected getMusicSRTEffectFilterIndex()I
    .registers 1

    .line 11967
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEFilter;->getMusicSrtIndexInternal()I

    move-result p0

    return p0
.end method

.method protected getOutPoint()I
    .registers 1

    .line 11991
    iget p0, p0, Lcom/ss/android/vesdk/VEEditor;->mOutPoint:I

    return p0
.end method

.method public getPCMDeliverHandle()J
    .registers 3

    .line 5958
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getPCMDeliverHandle()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayFps()F
    .registers 1

    .line 7637
    iget p0, p0, Lcom/ss/android/vesdk/VEEditor;->mPlayFps:F

    return p0
.end method

.method public getProjectMattingProgress()F
    .registers 1

    .line 9309
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEFilter;->getProjectMattingProgress()F

    move-result p0

    return p0
.end method

.method public getReDrawBmp()Landroid/graphics/Bitmap;
    .registers 3

    .line 6229
    const-string v0, "VEEditor"

    const-string v1, "getReDrawBmp..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6230
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 6231
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRemuxErrorCode(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)I
    .registers 6

    .line 6295
    monitor-enter p0

    .line 6296
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    if-eqz v0, :cond_b2

    .line 6299
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const/4 p1, -0x1

    .line 6300
    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    goto/16 :goto_bc

    .line 6302
    :cond_17
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v1, "remux_video_res"

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 6303
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_55

    .line 6304
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6305
    invoke-virtual {p1, v0}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->setEnableRemuxVideoRes(I)V

    .line 6306
    const-string v1, "VESDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemuxErrorCode::remuxVideoRes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 6308
    :cond_55
    const-string v0, "VESDK"

    const-string v1, "getRemuxErrorCode::No remux video resolution config"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6311
    :goto_5c
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->genEditorStatus()V

    .line 6313
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getNativeContext()J

    move-result-wide v0

    .line 6314
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->setVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;J)I

    .line 6316
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->updateVideoEncodeSettings()Lcom/ss/android/vesdk/VEVideoEncodeSettings;

    move-result-object p1

    .line 6317
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoEncodeSettings = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/VEVideoEncodeSettings;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6319
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->getEnableRemuxErrorCode()I

    move-result p1

    .line 6320
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before synthesis report remux error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6322
    monitor-exit p0

    return p1

    .line 6297
    :cond_b2
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    const-string v0, "Make sure the initialization is successful before calling!!!"

    const/16 v1, -0x69

    invoke-direct {p1, v1, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 6323
    :goto_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_1 .. :try_end_bd} :catchall_14

    throw p1
.end method

.method public getResManager()Lcom/ss/android/vesdk/runtime/VEEditorResManager;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    return-object p0
.end method

.method public getReverseAudioPaths()[Ljava/lang/String;
    .registers 2

    .line 5213
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    if-eqz v0, :cond_9

    .line 5214
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioPaths:[Ljava/lang/String;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getReverseVideoPaths()[Ljava/lang/String;
    .registers 2

    .line 5199
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    if-eqz v0, :cond_9

    .line 5200
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRuntimeGLVersion()I
    .registers 3

    .line 2515
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getRuntimeGLVersion()I

    move-result p0

    .line 2516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRuntimeGLVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method protected getSeparateAV()Ljava/lang/Boolean;
    .registers 1

    .line 11951
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getSequenceUniqueKey()Ljava/lang/String;
    .registers 1

    .line 8635
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVESequence;->getSequenceUniqueKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServerAlgorithmConfig()Lcom/ss/android/vesdk/VEMVAlgorithmConfig;
    .registers 2

    .line 11785
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_d

    .line 11786
    const-string p0, "VEEditor"

    const-string v0, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 11789
    :cond_d
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->getServerAlgorithmConfig()Lcom/ss/android/vesdk/VEMVAlgorithmConfig;

    move-result-object p0

    return-object p0
.end method

.method public getSingleTrackProcessedImage(III)Landroid/graphics/Bitmap;
    .registers 7

    .line 2001
    monitor-enter p0

    .line 2002
    :try_start_1
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSingleTrackProcessedImage... width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",trackIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-gez p3, :cond_2f

    .line 2004
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2c

    return-object v0

    :catchall_2c
    move-exception p1

    goto/16 :goto_ad

    .line 2007
    :cond_2f
    :try_start_2f
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_35} :catch_90
    .catchall {:try_start_2f .. :try_end_35} :catchall_2c

    .line 2012
    :try_start_35
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p3}, Lcom/ss/android/ttve/common/TETrackIndexManager;->getNativeTrackIndex(II)I

    move-result p2

    .line 2013
    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p3, p2, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getSingleTrackProcessedImage(ILandroid/graphics/Bitmap;)I

    move-result p2

    .line 2015
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getState()Lcom/ss/android/vesdk/VEEditor$VEState;

    move-result-object p3

    .line 2016
    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->PAUSED:Lcom/ss/android/vesdk/VEEditor$VEState;

    if-eq p3, v1, :cond_6a

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->STARTED:Lcom/ss/android/vesdk/VEEditor$VEState;

    if-eq p3, v1, :cond_6a

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->SEEKING:Lcom/ss/android/vesdk/VEEditor$VEState;

    if-eq p3, v1, :cond_6a

    .line 2017
    const-string p1, "VEEditor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSingleTrackProcessedImage createBitmap failed for invalid engine state:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    monitor-exit p0

    return-object v0

    .line 2020
    :cond_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_35 .. :try_end_6b} :catchall_2c

    if-eqz p2, :cond_8f

    .line 2023
    const-string p0, "VEEditor"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSingleTrackProcessedImage failed "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8e

    .line 2024
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_8e

    .line 2025
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8e
    return-object v0

    :cond_8f
    return-object p1

    :catch_90
    move-exception p1

    .line 2009
    :try_start_91
    const-string p2, "VEEditor"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSingleTrackProcessedImage createBitmap failed "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    monitor-exit p0

    return-object v0

    .line 2020
    :goto_ad
    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_91 .. :try_end_ae} :catchall_2c

    throw p1
.end method

.method public getSrtInfoStickerInitPosition(I[F)I
    .registers 3

    .line 11215
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11216
    const-string p0, "VEEditor"

    const-string p1, "getSrtInfoStickerInitPosition STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11219
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->getSrtInfoStickerInitPosition(I[F)I

    move-result p0

    return p0
.end method

.method public getState()Lcom/ss/android/vesdk/VEEditor$VEState;
    .registers 3

    .line 4678
    monitor-enter p0

    .line 4679
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    if-nez v0, :cond_12

    .line 4680
    const-string v0, "VEEditor"

    const-string v1, "video editor is created yet"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4681
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->IDLE:Lcom/ss/android/vesdk/VEEditor$VEState;

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    goto :goto_29

    .line 4683
    :cond_12
    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getCurState()I

    move-result v0

    if-gez v0, :cond_23

    .line 4685
    const-string v0, "VEEditor"

    const-string v1, "native video editor is not inited, already released or releasing"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4686
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VEState;->IDLE:Lcom/ss/android/vesdk/VEEditor$VEState;

    monitor-exit p0

    return-object v0

    .line 4688
    :cond_23
    invoke-static {v0}, Lcom/ss/android/vesdk/VEEditor$VEState;->valueOf(I)Lcom/ss/android/vesdk/VEEditor$VEState;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 4689
    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_10

    throw v0
.end method

.method public getStickerIsDynamic(I)Z
    .registers 2

    .line 10564
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_d

    .line 10565
    const-string p0, "VEEditor"

    const-string p1, "getStickerIsDynamic fail !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 10568
    :cond_d
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->getInfoStickerIsDynamic(I)Z

    move-result p0

    return p0
.end method

.method protected getSurfaceHeight()I
    .registers 1

    .line 11987
    iget p0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    return p0
.end method

.method protected getSurfaceView()Landroid/view/SurfaceView;
    .registers 1

    .line 11923
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method protected getSurfaceWidth()I
    .registers 1

    .line 11983
    iget p0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    return p0
.end method

.method protected getTEMonitorFilterMgr()Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;
    .registers 1

    .line 11963
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    return-object p0
.end method

.method public getTextContent(Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;)I
    .registers 2

    .line 11076
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11077
    const-string p0, "VEEditor"

    const-string p1, "getTextContent STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11080
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->getTextContent(Lcom/ss/android/vesdk/VEEditor$OnARTextContentCallback;)I

    move-result p0

    return p0
.end method

.method public getTextLimitCount()I
    .registers 2

    .line 11043
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11044
    const-string p0, "VEEditor"

    const-string v0, "getTextLimitCount STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11047
    :cond_e
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVESticker;->getTextLimitCount()I

    move-result p0

    return p0
.end method

.method protected getTrackIndexManager()Lcom/ss/android/ttve/common/TETrackIndexManager;
    .registers 1

    .line 11975
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    return-object p0
.end method

.method public getVideoClipEndTime(I)J
    .registers 2

    .line 8276
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESequence;->getVideoClipEndTime(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getVideoPaths()[Ljava/lang/String;
    .registers 1

    .line 5249
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    return-object p0
.end method

.method public getVideoResolution()Lcom/ss/android/vesdk/VESize;
    .registers 3

    .line 1799
    new-instance v0, Lcom/ss/android/vesdk/VESize;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    iget v1, p0, Lcom/ss/android/vesdk/VESize;->width:I

    iget p0, p0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-direct {v0, v1, p0}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 1800
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoResolution... width:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "VEEditor"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVolume(III)F
    .registers 4

    .line 8615
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESequence;->getVolume(III)F

    move-result p0

    return p0
.end method

.method public init(Lcom/ss/android/vesdk/VEEditorModel;Lcom/ss/android/vesdk/VETimelineParams;)I
    .registers 12

    .line 3062
    monitor-enter p0

    const/4 v0, 0x1

    .line 3064
    :try_start_2
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->clearWithType(I)V

    .line 3066
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->initStats(I)V

    .line 3067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 3068
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 3069
    const-string v1, "VEEditor"

    const-string v2, "init with model..."

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_9b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v3, p0

    .line 3072
    :try_start_23
    invoke-virtual/range {v3 .. v8}, Lcom/ss/android/vesdk/VEEditor;->setDisplayState(FFFII)V

    .line 3074
    iget-object p0, v3, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    if-nez p0, :cond_38

    .line 3075
    const-string p0, "VEEditor"

    const-string p1, "init mResManager is null"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    .line 3076
    monitor-exit v3

    return p0

    :catchall_35
    move-exception v0

    :goto_36
    move-object p0, v0

    goto :goto_9e

    .line 3079
    :cond_38
    iput-boolean v0, v3, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 3080
    iget-boolean v0, p1, Lcom/ss/android/vesdk/VEEditorModel;->reverseDone:Z

    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    .line 3081
    iget-object v0, p1, Lcom/ss/android/vesdk/VEEditorModel;->videoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    iput-object v0, v3, Lcom/ss/android/vesdk/VEEditor;->mVideoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 3082
    iget-object v0, p1, Lcom/ss/android/vesdk/VEEditorModel;->audioPaths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    .line 3083
    iget-object v0, p1, Lcom/ss/android/vesdk/VEEditorModel;->videoPaths:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    .line 3084
    iget-object v0, p1, Lcom/ss/android/vesdk/VEEditorModel;->transitions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTransitions:[Ljava/lang/String;

    .line 3085
    iget-object p0, v3, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtIndexInternal(I)V

    .line 3086
    iget-boolean p0, p1, Lcom/ss/android/vesdk/VEEditorModel;->separateAV:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v3, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 3087
    iget-object p0, v3, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    .line 3088
    iget p0, p1, Lcom/ss/android/vesdk/VEEditorModel;->masterTrackIndex:I

    iput p0, v3, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 3089
    iget-object p0, v3, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p1, Lcom/ss/android/vesdk/VEEditorModel;->hostTrackIndex:I

    invoke-virtual {p0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setHostTrackIndex(I)V

    if-eqz p2, :cond_93

    .line 3092
    iget-object p0, v3, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateSenceTime(Lcom/ss/android/vesdk/VETimelineParams;)I

    move-result p0

    if-gez p0, :cond_8e

    .line 3094
    const-string p1, "VEEditor"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateSceneTime failed, ret = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    monitor-exit v3

    return p0

    .line 3097
    :cond_8e
    iget-object p2, v3, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p2, v0, p0, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTimeRange(III)I

    .line 3100
    :cond_93
    iget-object p0, v3, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->initFiltersInternal(Lcom/ss/android/vesdk/VEEditorModel;)I

    move-result p0

    monitor-exit v3

    return p0

    :catchall_9b
    move-exception v0

    move-object v3, p0

    goto :goto_36

    .line 3101
    :goto_9e
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_23 .. :try_end_9f} :catchall_35

    throw p0
.end method

.method public init(Lcom/ss/android/vesdk/VERecordData;Z)I
    .registers 4

    const/4 v0, 0x1

    .line 2960
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/android/vesdk/VEEditor;->init(Lcom/ss/android/vesdk/VERecordData;ZZ)I

    move-result p0

    return p0
.end method

.method public init(Lcom/ss/android/vesdk/VERecordData;ZZ)I
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2975
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 2976
    iput-object v1, v0, Lcom/ss/android/vesdk/VEEditor;->mRecordData:Lcom/ss/android/vesdk/VERecordData;

    const/4 v2, 0x0

    const/16 v3, -0x64

    .line 2977
    const-string v15, "VEEditor"

    const/4 v4, 0x0

    if-eqz p2, :cond_4b

    .line 2978
    iget-object v5, v1, Lcom/ss/android/vesdk/VERecordData;->concatVideo:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 2979
    const-string v0, "Merged video file path unconfigured!"

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 2982
    :cond_20
    iget-object v3, v0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    invoke-virtual {v3}, Lcom/ss/android/ttve/common/TETrackIndexManager;->release()V

    .line 2983
    iget-object v3, v0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v3, v4}, Lcom/ss/android/vesdk/internal/IVEFilter;->setCurColorFilterInternal(Lcom/ss/android/ttve/model/FilterBean;)V

    .line 2984
    iget-object v3, v0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->clearFilter()I

    .line 2986
    iget-object v3, v1, Lcom/ss/android/vesdk/VERecordData;->concatVideo:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VERecordData;->isUseMusic()Z

    move-result v5

    if-eqz v5, :cond_3d

    move-object v5, v4

    goto :goto_44

    :cond_3d
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iget-object v1, v1, Lcom/ss/android/vesdk/VERecordData;->concatAudio:Ljava/lang/String;

    aput-object v1, v5, v2

    :goto_44
    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/ss/android/vesdk/VEEditor;->init([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result v0

    return v0

    .line 2989
    :cond_4b
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 2991
    new-array v6, v5, [Ljava/lang/String;

    .line 2992
    new-array v7, v5, [Ljava/lang/String;

    .line 2993
    new-array v8, v5, [I

    .line 2994
    new-array v9, v5, [I

    .line 2995
    new-array v10, v5, [I

    .line 2996
    new-array v11, v5, [I

    .line 2997
    new-array v12, v5, [F

    .line 2998
    new-array v2, v5, [F

    .line 2999
    new-array v5, v5, [Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 3002
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VERecordData;->getSegmentData()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move/from16 v18, v3

    const/4 v3, 0x0

    :goto_70
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_eb

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;

    .line 3003
    iget-boolean v1, v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mEnable:Z

    if-eqz v1, :cond_e3

    .line 3004
    iget-object v1, v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideo:Ljava/lang/String;

    aput-object v1, v6, v3

    .line 3005
    iget-object v1, v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mAudio:Ljava/lang/String;

    aput-object v1, v7, v3

    .line 3006
    invoke-virtual {v4}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->getCutTrimIn()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    move-wide/from16 v23, v13

    div-long v13, v19, v21

    long-to-int v1, v13

    aput v1, v8, v3

    .line 3007
    invoke-virtual {v4}, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->getCutTrimOut()J

    move-result-wide v13

    div-long v13, v13, v21

    long-to-int v1, v13

    aput v1, v9, v3

    .line 3008
    iget v1, v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mSpeed:F

    const/4 v13, 0x0

    cmpl-float v14, v1, v13

    const/high16 v16, 0x3f800000    # 1.0f

    if-nez v14, :cond_ab

    move/from16 v1, v16

    :cond_ab
    aput v1, v12, v3

    .line 3009
    iget v1, v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mVideoSpeed:F

    cmpl-float v13, v1, v13

    if-nez v13, :cond_b5

    move/from16 v1, v16

    :cond_b5
    aput v1, v2, v3

    .line 3010
    iget-object v1, v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mRotate:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    aput-object v1, v5, v3

    .line 3011
    iget-boolean v1, v4, Lcom/ss/android/vesdk/VERecordData$VERecordSegmentData;->mWithNoSpeedBoth:Z

    if-eqz v1, :cond_d0

    .line 3012
    aget v1, v8, v3

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    aput v1, v10, v3

    .line 3013
    aget v1, v9, v3

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    aput v1, v11, v3

    goto :goto_e0

    .line 3015
    :cond_d0
    aget v1, v8, v3

    int-to-float v1, v1

    aget v4, v12, v3

    mul-float/2addr v1, v4

    float-to-int v1, v1

    aput v1, v10, v3

    .line 3016
    aget v1, v9, v3

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    aput v1, v11, v3

    :goto_e0
    add-int/lit8 v3, v3, 0x1

    goto :goto_e5

    :cond_e3
    move-wide/from16 v23, v13

    :goto_e5
    move-object/from16 v1, p1

    move-wide/from16 v13, v23

    const/4 v4, 0x0

    goto :goto_70

    :cond_eb
    move-wide/from16 v23, v13

    if-nez v3, :cond_f5

    .line 3022
    const-string v0, "There are no valid clips!"

    invoke-static {v15, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v18

    .line 3025
    :cond_f5
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3026
    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 3027
    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 3028
    invoke-static {v9, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 3029
    invoke-static {v10, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 3030
    invoke-static {v11, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v9

    .line 3031
    invoke-static {v12, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v10

    .line 3032
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    .line 3033
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 3035
    iget-object v5, v0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    const/4 v11, 0x0

    invoke-interface {v5, v11}, Lcom/ss/android/vesdk/internal/IVEFilter;->setCurColorFilterInternal(Lcom/ss/android/ttve/model/FilterBean;)V

    .line 3036
    iget-object v5, v0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->clearFilter()I

    .line 3037
    iget-object v5, v0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    invoke-virtual {v5}, Lcom/ss/android/ttve/common/TETrackIndexManager;->release()V

    .line 3039
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VERecordData;->isUseMusic()Z

    move-result v5

    if-eqz v5, :cond_13c

    move-object v10, v3

    move-object v3, v7

    move-object v4, v11

    move-object v5, v4

    move-object v7, v5

    move-object v9, v7

    goto :goto_143

    :cond_13c
    move-object v5, v10

    move-object v10, v3

    move-object v3, v7

    move-object v7, v9

    move-object v9, v5

    move-object v5, v4

    move-object v4, v8

    :goto_143
    const/4 v8, 0x0

    .line 3046
    sget-object v11, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    move-object v12, v8

    move-object v8, v2

    move-object v2, v6

    move-object v6, v4

    move-object v4, v12

    move/from16 v12, p3

    invoke-direct/range {v0 .. v12}, Lcom/ss/android/vesdk/VEEditor;->init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[F[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Z)I

    move-result v0

    .line 3047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init with VERecordData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v23

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public init([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v11, p4

    .line 2666
    monitor-enter p0

    const/4 v12, 0x1

    .line 2668
    :try_start_6
    invoke-static {v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->clearWithType(I)V

    .line 2670
    invoke-static {v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->initStats(I)V

    .line 2671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 2672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 2673
    const-string v0, "VEEditor"

    const-string v2, "init..."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    if-nez v0, :cond_31

    .line 2676
    const-string v0, "VEEditor"

    const-string v2, "init mResManager is null"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x70

    .line 2677
    monitor-exit p0

    return v0

    :catchall_2e
    move-exception v0

    goto/16 :goto_1d8

    .line 2680
    :cond_31
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v2, "ve_enable_file_info_cache"

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v13}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2681
    invoke-static {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableFileInfoCache(Z)I

    if-eqz v0, :cond_79

    .line 2686
    const-string v0, "VEEditor"

    const-string v2, "enable file info cache"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    invoke-virtual/range {p0 .. p1}, Lcom/ss/android/vesdk/VEEditor;->getAllFileInfoCacheList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2688
    invoke-virtual {v1, v10}, Lcom/ss/android/vesdk/VEEditor;->isFileInfoCacheExist([Ljava/lang/String;)[Z

    move-result-object v9

    .line 2689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    sub-long v14, v2, v4

    .line 2690
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->getWorkspace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v10}, Lcom/ss/android/ttve/nativePort/TEInterface;->initVideoEditor(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;I[Z[Ljava/lang/String;)I

    move-result v0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    :goto_77
    move v2, v0

    goto :goto_9a

    .line 2693
    :cond_79
    const-string v0, "VEEditor"

    const-string v2, "disable file info cache"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->getWorkspace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->initVideoEditor(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[[Ljava/lang/String;I)I

    move-result v0

    const-wide/16 v14, 0x0

    goto :goto_77

    .line 2697
    :goto_9a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_9f
    .catchall {:try_start_6 .. :try_end_9f} :catchall_2e

    .line 2699
    :try_start_9f
    const-string v3, "videoFilePaths"

    if-eqz v4, :cond_ab

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_ad

    :catch_a8
    move-exception v0

    goto/16 :goto_175

    :cond_ab
    const-string v6, ""

    :goto_ad
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2700
    const-string v3, "audioFilePaths"

    if-eqz v5, :cond_b9

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_bb

    :cond_b9
    const-string v6, ""

    :goto_bb
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2701
    const-string v3, "vTrimIn"

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2702
    const-string v3, "vTrimOut"

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2703
    const-string v3, "aTrimIn"

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2704
    const-string v3, "aTrimOut"

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2705
    const-string v3, "videoSpeed"

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2706
    const-string v3, "audioSpeed"

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2707
    const-string v3, "rotate"

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2708
    const-string v3, "videoOutRes"

    if-eqz v11, :cond_f8

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    goto :goto_fa

    :cond_f8
    const-string v6, ""

    :goto_fa
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2709
    const-string v3, "cacheCheckTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2710
    const-string v3, "createSceneTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2711
    const-string v3, "hitRate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/ss/android/vesdk/VEEditor;->miCacheHitCount:I

    int-to-double v8, v7

    iget v10, v1, Lcom/ss/android/vesdk/VEEditor;->miCacheMissCount:I

    add-int/2addr v10, v7

    int-to-double v14, v10

    div-double/2addr v8, v14

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2712
    const-string v3, "resultCode"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2713
    const-string v3, "vesdk_event_editor_init_video"

    const-string v6, "behavior"

    invoke-static {v3, v0, v6}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2715
    const-string v3, "VEEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file info cache json: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_174
    .catch Lorg/json/JSONException; {:try_start_9f .. :try_end_174} :catch_a8
    .catchall {:try_start_9f .. :try_end_174} :catchall_2e

    goto :goto_178

    .line 2718
    :goto_175
    :try_start_175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_178
    if-eqz v2, :cond_197

    .line 2721
    const-string v0, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initVideoEditor failed, ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2723
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->onMonitorError()V

    .line 2724
    iput-boolean v13, v1, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 2725
    monitor-exit p0

    return v2

    .line 2727
    :cond_197
    iput-boolean v12, v1, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 2728
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput-boolean v13, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    .line 2729
    iput-object v11, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 2730
    iput-object v5, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    .line 2731
    iput-object v4, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    move-object/from16 v6, p2

    .line 2732
    iput-object v6, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTransitions:[Ljava/lang/String;

    .line 2733
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtIndexInternal(I)V

    if-eqz v5, :cond_1b4

    .line 2734
    array-length v0, v5

    if-eqz v0, :cond_1b4

    move v0, v12

    goto :goto_1b5

    :cond_1b4
    move v0, v13

    :goto_1b5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 2735
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 2736
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v12, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    goto :goto_1ca

    .line 2738
    :cond_1c6
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v13, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    .line 2740
    :goto_1ca
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v13, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    .line 2741
    iput v13, v1, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 2743
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v0}, Lcom/ss/android/vesdk/internal/IVEFilter;->initFiltersInternal()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2744
    :goto_1d8
    monitor-exit p0
    :try_end_1d9
    .catchall {:try_start_175 .. :try_end_1d9} :catchall_2e

    throw v0
.end method

.method public init2([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 23

    .line 3807
    monitor-enter p0

    const/4 v12, 0x1

    .line 3809
    :try_start_2
    invoke-static {v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->clearWithType(I)V

    .line 3811
    invoke-static {v12}, Lcom/ss/android/ttve/monitor/TEMonitor;->initStats(I)V

    .line 3812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 3813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 3814
    const-string v0, "VEEditor"

    const-string v1, "init2..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3815
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    .line 3817
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v9, p8

    .line 3815
    invoke-virtual/range {v0 .. v11}, Lcom/ss/android/ttve/nativePort/TEInterface;->initImageEditor([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[I[I[Ljava/lang/String;[[Ljava/lang/String;[F[II)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_55

    .line 3819
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create Scene failed, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3820
    iput-boolean p2, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 3821
    monitor-exit p0

    return p1

    :catchall_52
    move-exception v0

    move-object p1, v0

    goto :goto_96

    .line 3823
    :cond_55
    iput-boolean v12, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 3824
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput-boolean p2, p1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    move-object/from16 v0, p9

    .line 3825
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 3826
    iput-object v4, p1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    move-object/from16 v7, p4

    .line 3827
    iput-object v7, p1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTransitions:[Ljava/lang/String;

    .line 3828
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtIndexInternal(I)V

    if-eqz v4, :cond_72

    .line 3829
    array-length p1, v4

    if-eqz p1, :cond_72

    move p1, v12

    goto :goto_73

    :cond_72
    move p1, p2

    :goto_73
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 3830
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_84

    .line 3831
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v12, p1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    goto :goto_88

    .line 3833
    :cond_84
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput p2, p1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    .line 3835
    :goto_88
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput p2, p1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    .line 3836
    iput p2, p0, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 3838
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->initFiltersInternal()I

    move-result p1

    monitor-exit p0

    return p1

    .line 3839
    :goto_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_2 .. :try_end_97} :catchall_52

    throw p1
.end method

.method public init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[ILcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 21

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v11, p8

    .line 3664
    invoke-virtual/range {v0 .. v11}, Lcom/ss/android/vesdk/VEEditor;->init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[F[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result p0

    return p0
.end method

.method public init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[F[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 25

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 3686
    invoke-direct/range {v0 .. v12}, Lcom/ss/android/vesdk/VEEditor;->init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[F[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Z)I

    move-result p0

    return p0
.end method

.method public initAudioExtendToFile()I
    .registers 1

    .line 4457
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperAudioExtend:Lcom/ss/android/vesdk/internal/IVEAudioExtend;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEAudioExtend;->initAudioExtendToFile()I

    move-result p0

    return p0
.end method

.method public initAuthInternal([B)I
    .registers 2

    if-nez p1, :cond_5

    const/16 p0, -0x64

    return p0

    .line 11909
    :cond_5
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->initAuthInternal([B)I

    move-result p0

    return p0
.end method

.method public initBingoAlgorithm()I
    .registers 1

    .line 8660
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEBingo;->initBingoAlgorithm()I

    move-result p0

    return p0
.end method

.method public initColorAndHDRFilter()V
    .registers 1

    .line 9350
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEFilter;->initFiltersInternal()I

    return-void
.end method

.method public initColorFilter()I
    .registers 1

    .line 9341
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEFilter;->initColorFilter()I

    move-result p0

    return p0
.end method

.method protected initFilters()I
    .registers 1

    .line 12013
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEFilter;->initFiltersInternal()I

    move-result p0

    return p0
.end method

.method public initMV(Lcom/ss/android/vesdk/VEMVParams;)I
    .registers 2

    .line 11551
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11552
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11556
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->initMV(Lcom/ss/android/vesdk/VEMVParams;)I

    move-result p0

    return p0
.end method

.method public initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 11510
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11511
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11515
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I
    .registers 7

    .line 11534
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11535
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11539
    :cond_e
    invoke-interface/range {p0 .. p6}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IZ)I
    .registers 6

    .line 11490
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11491
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11494
    :cond_e
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->initMV(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IZ)I

    move-result p0

    return p0
.end method

.method public initOnlyAudio([Ljava/lang/String;[I[I[F)I
    .registers 11

    .line 2758
    monitor-enter p0

    .line 2759
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 2760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 2761
    const-string v0, "VEEditor"

    const-string v1, "initOnlyAudio..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    if-nez v0, :cond_26

    .line 2764
    const-string p1, "VEEditor"

    const-string p2, "init mResManager is null"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0x70

    .line 2765
    monitor-exit p0

    return p1

    :catchall_23
    move-exception v0

    move-object p1, v0

    goto :goto_74

    :cond_26
    move-object v1, v0

    .line 2768
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->getWorkspace()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->initAudioEditor(Ljava/lang/String;[Ljava/lang/String;[I[I[F)I

    move-result p1

    if-eqz p1, :cond_4f

    .line 2770
    const-string p2, "VEEditor"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "initAudioEditor failed, ret = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    monitor-exit p0

    return p1

    :cond_4f
    const/4 p1, 0x1

    .line 2773
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 2774
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    const/4 p3, 0x0

    iput-boolean p3, p2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    .line 2775
    iput-object v2, p2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    const/4 p4, 0x0

    .line 2776
    iput-object p4, p2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    .line 2777
    iput-object p4, p2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTransitions:[Ljava/lang/String;

    .line 2778
    iput-object p4, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 2779
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    const/4 p4, -0x1

    invoke-interface {p2, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtIndexInternal(I)V

    .line 2780
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 2781
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput p1, p2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    .line 2782
    iput p3, p2, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    .line 2783
    iput p3, p0, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 2785
    monitor-exit p0

    return p3

    .line 2786
    :goto_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_23

    throw p1
.end method

.method public initPictureWithMaxSide(Landroid/content/Context;[Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;I[Lcom/ss/android/vesdk/VESize;)I
    .registers 27

    move/from16 v0, p12

    .line 3865
    monitor-enter p0

    .line 3866
    :try_start_3
    array-length v1, p2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_15

    .line 3867
    const-string v0, "VEEditor"

    const-string v1, "pictureFilePaths.length is not 1"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x64

    .line 3868
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    goto/16 :goto_f1

    .line 3870
    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v5, p2, v4

    invoke-static {v1, v5}, Lcom/ss/android/vesdk/utils/BitmapLoader;->getPictureSize(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 3871
    new-instance v5, Lcom/ss/android/vesdk/VESize;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v6, v1}, Lcom/ss/android/vesdk/VESize;-><init>(II)V

    .line 3872
    iget v1, v5, Lcom/ss/android/vesdk/VESize;->width:I

    iget v6, v5, Lcom/ss/android/vesdk/VESize;->height:I

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v1, v6

    int-to-float v7, v0

    div-float/2addr v1, v7

    .line 3873
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-gt v1, v3, :cond_58

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    .line 3874
    invoke-virtual/range {v1 .. v12}, Lcom/ss/android/vesdk/VEEditor;->init2([Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[F[F[Lcom/ss/android/vesdk/ROTATE_DEGREE;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 3878
    :cond_58
    iget v1, v5, Lcom/ss/android/vesdk/VESize;->width:I

    iget v2, v5, Lcom/ss/android/vesdk/VESize;->height:I

    if-le v1, v2, :cond_6a

    mul-int/2addr v2, v0

    int-to-float v2, v2

    mul-float/2addr v2, v6

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    .line 3881
    rem-int/lit8 v2, v1, 0x2

    add-int/2addr v1, v2

    move v2, v1

    move v1, v0

    goto :goto_74

    :cond_6a
    mul-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, v6

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 3885
    rem-int/lit8 v2, v1, 0x2

    add-int/2addr v1, v2

    move v2, v0

    .line 3887
    :goto_74
    sput-boolean v3, Lcom/ss/android/vesdk/utils/BitmapLoader;->isSampleSizeRound:Z

    .line 3888
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aget-object v5, p2, v4

    invoke-static {v3, v5, v1, v2}, Lcom/ss/android/vesdk/utils/BitmapLoader;->loadBitmapCompat(Landroid/content/ContentResolver;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v11

    if-nez v11, :cond_8d

    .line 3890
    const-string v0, "VEEditor"

    const-string v1, "BitmapLoader.loadBitmapCompat failed!"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x69

    .line 3891
    monitor-exit p0

    return v0

    .line 3893
    :cond_8d
    sput-boolean v4, Lcom/ss/android/vesdk/utils/BitmapLoader;->isSampleSizeRound:Z

    .line 3894
    filled-new-array {v11}, [Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3895
    aget-object v1, p13, v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v1, Lcom/ss/android/vesdk/VESize;->width:I

    .line 3896
    aget-object v1, p13, v4

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, v1, Lcom/ss/android/vesdk/VESize;->height:I

    .line 3897
    const-string v1, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPictureWithMaxSidemaxSide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "bitmap width: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "height: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    .line 3898
    invoke-virtual/range {v1 .. v10}, Lcom/ss/android/vesdk/VEEditor;->init2([Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[FLcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result v0

    .line 3899
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_ef

    .line 3900
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 3902
    :cond_ef
    monitor-exit p0

    return v0

    .line 3904
    :goto_f1
    monitor-exit p0
    :try_end_f2
    .catchall {:try_start_3 .. :try_end_f2} :catchall_12

    throw v0
.end method

.method public initWithAlgorithm([Ljava/lang/String;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 3

    .line 8650
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEBingo;->initWithAlgorithm([Ljava/lang/String;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I

    move-result p0

    return p0
.end method

.method public initWithCanvas(Lcom/ss/android/vesdk/VEEditorSettings;)I
    .registers 28

    move-object/from16 v1, p0

    .line 3113
    monitor-enter p0

    .line 3114
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getCanvasFilterParams()[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;

    move-result-object v0

    .line 3115
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getVideoFilePaths()[Ljava/lang/String;

    move-result-object v2

    .line 3116
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getImages()[Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3117
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getVTrimIn()[I

    move-result-object v8

    .line 3118
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getVTrimOut()[I

    move-result-object v9

    .line 3119
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getVTransitionFilterParam()[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;

    move-result-object v3

    .line 3120
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getSizes()[Lcom/ss/android/vesdk/VESize;

    move-result-object v4

    .line 3121
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getVideoFileInfos()[Ljava/lang/String;

    move-result-object v7

    .line 3122
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getVideoOutRes()Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    move-result-object v6

    .line 3124
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getAudioFilePaths()[Ljava/lang/String;

    move-result-object v10

    .line 3125
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getAudioFileInfos()[Ljava/lang/String;

    move-result-object v11

    .line 3126
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getATrimIn()[I

    move-result-object v12

    .line 3127
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getATrimOut()[I

    move-result-object v13

    .line 3128
    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/vesdk/VEEditorSettings;->getSpeed()[F

    move-result-object v18

    if-eqz v5, :cond_45

    .line 3133
    array-length v15, v5

    const/16 p1, 0x0

    .line 3134
    array-length v14, v5

    goto :goto_50

    :catchall_42
    move-exception v0

    goto/16 :goto_247

    :cond_45
    const/16 p1, 0x0

    if-eqz v2, :cond_4d

    .line 3137
    array-length v15, v2

    move/from16 v14, p1

    goto :goto_50

    :cond_4d
    move/from16 v14, p1

    move v15, v14

    :goto_50
    const/16 v16, -0x64

    if-nez v15, :cond_5d

    .line 3142
    const-string v0, "VEEditor"

    const-string v2, "initWithCanvas invalid canvasFilterParam inputFileNum"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    monitor-exit p0

    return v16

    :cond_5d
    if-eqz v0, :cond_23e

    move-object/from16 v17, v5

    .line 3146
    array-length v5, v0

    if-eqz v5, :cond_23e

    aget-object v5, v0, p1

    move-object/from16 v21, v0

    iget v0, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    if-lez v0, :cond_23e

    iget v0, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    if-gtz v0, :cond_72

    goto/16 :goto_23e

    .line 3152
    :cond_72
    array-length v0, v8

    if-ne v15, v0, :cond_78

    array-length v0, v9

    if-eq v15, v0, :cond_7b

    :cond_78
    move v6, v15

    goto/16 :goto_214

    :cond_7b
    if-eqz v4, :cond_a1

    .line 3157
    array-length v0, v4

    if-eq v15, v0, :cond_a1

    .line 3158
    const-string v0, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWithCanvas invalid param, inputFileNum.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sizes.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    monitor-exit p0

    return v16

    :cond_a1
    move/from16 v0, p1

    .line 3162
    :goto_a3
    array-length v5, v8

    if-ge v0, v5, :cond_eb

    .line 3163
    aget v5, v9, v0

    if-ltz v5, :cond_e4

    move-object/from16 v20, v4

    aget v4, v8, v0

    if-gt v5, v4, :cond_e6

    .line 3164
    const-string v2, "VEEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initWithCanvas invalid param vTrimIn["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v8, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", vTrimOut["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v9, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    monitor-exit p0

    return v16

    :cond_e4
    move-object/from16 v20, v4

    :cond_e6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v20

    goto :goto_a3

    :cond_eb
    move-object/from16 v20, v4

    const/4 v0, 0x1

    .line 3169
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->clearWithType(I)V

    .line 3171
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->initStats(I)V

    .line 3172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 3173
    iput-wide v4, v1, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 3174
    const-string v4, "VEEditor"

    const-string v5, "initWithCanvasAndInfos..."

    invoke-static {v4, v5}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_134

    .line 3178
    array-length v5, v3

    if-lez v5, :cond_134

    .line 3179
    array-length v5, v3

    new-array v5, v5, [Ljava/lang/String;

    .line 3180
    array-length v4, v3

    new-array v4, v4, [I

    .line 3181
    array-length v0, v3

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v23, v4

    move/from16 v0, p1

    .line 3182
    :goto_117
    array-length v4, v3

    if-ge v0, v4, :cond_12f

    .line 3183
    aget-object v4, v3, v0

    iget-object v4, v4, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->transName:Ljava/lang/String;

    aput-object v4, v5, v0

    .line 3184
    aget-object v4, v3, v0

    move/from16 v24, v0

    iget v0, v4, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranType:I

    aput v0, v23, v24

    .line 3185
    iget v0, v4, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranDuration:I

    aput v0, v19, v24

    add-int/lit8 v0, v24, 0x1

    goto :goto_117

    :cond_12f
    move-object/from16 v0, v19

    move-object/from16 v4, v23

    goto :goto_137

    :cond_134
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3189
    :goto_137
    iget-object v3, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    if-lez v14, :cond_140

    move-object v14, v6

    move v6, v15

    move-object v15, v4

    const/4 v4, 0x0

    goto :goto_144

    :cond_140
    move-object v14, v6

    move v6, v15

    move-object v15, v4

    move-object v4, v2

    :goto_144
    sget-object v16, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 3194
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    move-object/from16 v16, v14

    move-object v14, v5

    move-object/from16 v5, v17

    const/16 v17, 0x0

    move-object/from16 v25, v16

    move-object/from16 v16, v0

    move/from16 v0, p1

    .line 3189
    invoke-virtual/range {v3 .. v20}, Lcom/ss/android/ttve/nativePort/TEInterface;->initVideoEditorWithCanvas([Ljava/lang/String;[Landroid/graphics/Bitmap;I[Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[[Ljava/lang/String;[FI[Lcom/ss/android/vesdk/VESize;)I

    move-result v3

    if-eqz v3, :cond_17a

    .line 3196
    const-string v2, "VEEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initVideoEditorWithCanvas, ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->onMonitorError()V

    .line 3199
    iput-boolean v0, v1, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 3200
    monitor-exit p0

    return v3

    :cond_17a
    const/4 v4, 0x1

    .line 3202
    iput-boolean v4, v1, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 3203
    iput-boolean v0, v1, Lcom/ss/android/vesdk/VEEditor;->mReverseDone:Z

    move-object/from16 v4, v25

    .line 3204
    iput-object v4, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 3205
    iget-object v4, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput-object v10, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    .line 3206
    iput-object v2, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    .line 3207
    iput-object v14, v4, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTransitions:[Ljava/lang/String;

    .line 3208
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    const/4 v4, -0x1

    invoke-interface {v2, v4}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtIndexInternal(I)V

    if-eqz v10, :cond_198

    .line 3209
    array-length v2, v10

    if-eqz v2, :cond_198

    const/4 v14, 0x1

    goto :goto_199

    :cond_198
    move v14, v0

    :goto_199
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 3210
    iput v0, v1, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 3212
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v0, v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTrackDurationType(III)I

    .line 3213
    sget-object v2, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CANVAS:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    invoke-virtual {v1, v2}, Lcom/ss/android/vesdk/VEEditor;->setScaleMode(Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;)I

    .line 3214
    aget-object v2, v21, v0

    iget v5, v2, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    iget v2, v2, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    invoke-virtual {v1, v5, v2}, Lcom/ss/android/vesdk/VEEditor;->setWidthHeight(II)V

    .line 3215
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mBusinessManager:Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    const/4 v5, 0x1

    iput v5, v2, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;->editorType:I
    :try_end_1ba
    .catchall {:try_start_3 .. :try_end_1ba} :catchall_42

    .line 3218
    :try_start_1ba
    iget-object v7, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v0}, [I

    move-result-object v8

    const-string v2, "canvas wrap"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    filled-new-array {v0}, [I

    move-result-object v10

    iget v2, v1, Lcom/ss/android/vesdk/VEEditor;->mOutPoint:I

    filled-new-array {v2}, [I

    move-result-object v11

    filled-new-array {v0}, [I

    move-result-object v12

    const/16 v2, 0xf

    filled-new-array {v2}, [I

    move-result-object v13

    const/16 v22, 0x1

    filled-new-array/range {v22 .. v22}, [I

    move-result-object v14

    invoke-virtual/range {v7 .. v14}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I[I)[I

    move-result-object v2

    .line 3225
    aget v2, v2, v0

    iput v2, v1, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    .line 3228
    aget-object v5, v21, v0

    invoke-virtual {v1, v4, v2, v5}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move v14, v0

    :goto_1ee
    if-ge v14, v6, :cond_1fa

    .line 3232
    iget v2, v1, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    aget-object v5, v21, v14

    invoke-virtual {v1, v14, v2, v5}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    add-int/lit8 v14, v14, 0x1

    goto :goto_1ee

    .line 3235
    :cond_1fa
    new-instance v2, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct {v2}, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;-><init>()V

    move v14, v0

    :goto_200
    if-ge v14, v6, :cond_20a

    .line 3237
    iget v0, v1, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    invoke-virtual {v1, v14, v0, v2}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    :try_end_207
    .catch Ljava/lang/NullPointerException; {:try_start_1ba .. :try_end_207} :catch_20c
    .catchall {:try_start_1ba .. :try_end_207} :catchall_42

    add-int/lit8 v14, v14, 0x1

    goto :goto_200

    .line 3240
    :cond_20a
    :try_start_20a
    monitor-exit p0

    return v3

    .line 3242
    :catch_20c
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v2, "init failed: VESDK need to be init"

    invoke-direct {v0, v4, v2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3153
    :goto_214
    const-string v0, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWithCanvas invalid param, inputFileNum.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", vTrimIn.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", vTrimOut.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3154
    monitor-exit p0

    return v16

    .line 3148
    :cond_23e
    :goto_23e
    const-string v0, "VEEditor"

    const-string v2, "initWithCanvas invalid canvasFilterParam!"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3149
    monitor-exit p0

    return v16

    .line 3244
    :goto_247
    monitor-exit p0
    :try_end_248
    .catchall {:try_start_20a .. :try_end_248} :catchall_42

    throw v0
.end method

.method public initWithCanvas([Ljava/lang/String;[I[I[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;)I
    .registers 28

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    .line 3271
    invoke-virtual/range {v0 .. v14}, Lcom/ss/android/vesdk/VEEditor;->initWithCanvasAndInfos([Ljava/lang/String;[Ljava/lang/String;[I[I[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;)I

    move-result p0

    return p0
.end method

.method public initWithCanvas([Ljava/lang/String;[I[I[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;[Lcom/ss/android/vesdk/VESize;)I
    .registers 31

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    .line 3300
    invoke-virtual/range {v1 .. v16}, Lcom/ss/android/vesdk/VEEditor;->initWithCanvasAndInfos([Ljava/lang/String;[Ljava/lang/String;[I[I[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;[Lcom/ss/android/vesdk/VESize;)I

    move-result v0

    return v0
.end method

.method public initWithCanvasAndInfos([Ljava/lang/String;[Ljava/lang/String;[I[I[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;)I
    .registers 32

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    .line 3330
    invoke-virtual/range {v1 .. v16}, Lcom/ss/android/vesdk/VEEditor;->initWithCanvasAndInfos([Ljava/lang/String;[Ljava/lang/String;[I[I[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;[Lcom/ss/android/vesdk/VESize;)I

    move-result v0

    return v0
.end method

.method public initWithCanvasAndInfos([Ljava/lang/String;[Ljava/lang/String;[I[I[Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;[Ljava/lang/String;[Ljava/lang/String;[I[I[F[Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;[Lcom/ss/android/vesdk/VESize;)I
    .registers 36

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v0, p5

    move-object/from16 v2, p11

    move-object/from16 v4, p15

    .line 3361
    monitor-enter p0

    const/16 v5, -0x64

    if-eqz v2, :cond_1ee

    .line 3362
    :try_start_13
    array-length v6, v2

    if-eqz v6, :cond_1ee

    const/4 v6, 0x0

    aget-object v9, v2, v6

    iget v10, v9, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    if-lez v10, :cond_1ee

    iget v9, v9, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    if-gtz v9, :cond_23

    goto/16 :goto_1ee

    .line 3367
    :cond_23
    array-length v9, v3

    array-length v10, v7

    if-ne v9, v10, :cond_1c3

    array-length v9, v3

    array-length v10, v8

    if-eq v9, v10, :cond_2d

    goto/16 :goto_1c3

    :cond_2d
    if-eqz v4, :cond_58

    .line 3371
    array-length v9, v3

    array-length v10, v4

    if-eq v9, v10, :cond_58

    .line 3372
    const-string v0, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initWithCanvas invalid param, videoFilePaths.length: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sizes.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3373
    monitor-exit p0

    return v5

    :catchall_55
    move-exception v0

    goto/16 :goto_1f7

    :cond_58
    move v9, v6

    .line 3375
    :goto_59
    array-length v10, v7

    if-ge v9, v10, :cond_9b

    .line 3376
    aget v10, v8, v9

    if-ltz v10, :cond_98

    aget v11, v7, v9

    if-gt v10, v11, :cond_98

    .line 3377
    const-string v0, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initWithCanvas invalid param vTrimIn["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v7, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", vTrimOut["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v8, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3378
    monitor-exit p0

    return v5

    :cond_98
    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    :cond_9b
    const/4 v5, 0x1

    .line 3382
    invoke-static {v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->clearWithType(I)V

    .line 3384
    invoke-static {v5}, Lcom/ss/android/ttve/monitor/TEMonitor;->initStats(I)V

    .line 3385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 3386
    iput-wide v9, v1, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 3387
    const-string v9, "VEEditor"

    const-string v10, "initWithCanvasAndInfos..."

    invoke-static {v9, v10}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_da

    .line 3391
    array-length v9, v0

    if-lez v9, :cond_da

    .line 3392
    array-length v9, v0

    new-array v9, v9, [Ljava/lang/String;

    .line 3393
    array-length v10, v0

    new-array v10, v10, [I

    .line 3394
    array-length v11, v0

    new-array v11, v11, [I

    move v12, v6

    .line 3395
    :goto_c0
    array-length v13, v0

    if-ge v12, v13, :cond_d6

    .line 3396
    aget-object v13, v0, v12

    iget-object v13, v13, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->transName:Ljava/lang/String;

    aput-object v13, v9, v12

    .line 3397
    aget-object v13, v0, v12

    iget v14, v13, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranType:I

    aput v14, v10, v12

    .line 3398
    iget v13, v13, Lcom/ss/android/vesdk/filterparam/VETransitionFilterParam;->tranDuration:I

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_c0

    :cond_d6
    move-object v13, v9

    move-object v14, v10

    move-object v15, v11

    goto :goto_de

    :cond_da
    const/4 v9, 0x0

    move-object v13, v9

    move-object v14, v13

    move-object v15, v14

    .line 3402
    :goto_de
    iget-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    move v0, v5

    array-length v5, v3

    sget-object v9, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 3406
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v17, p10

    move-object/from16 v19, p15

    move v0, v6

    move-object/from16 v6, p2

    .line 3402
    invoke-virtual/range {v2 .. v19}, Lcom/ss/android/ttve/nativePort/TEInterface;->initVideoEditorWithCanvas([Ljava/lang/String;[Landroid/graphics/Bitmap;I[Ljava/lang/String;[I[I[Ljava/lang/String;[Ljava/lang/String;[I[I[Ljava/lang/String;[I[I[[Ljava/lang/String;[FI[Lcom/ss/android/vesdk/VESize;)I

    move-result v2

    if-eqz v2, :cond_11d

    .line 3408
    const-string v3, "VEEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initVideoEditorWithCanvas, ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3410
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->onMonitorError()V

    .line 3411
    iput-boolean v0, v1, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 3412
    monitor-exit p0

    return v2

    :cond_11d
    const/4 v4, 0x1

    .line 3414
    iput-boolean v4, v1, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 3415
    iput-boolean v0, v1, Lcom/ss/android/vesdk/VEEditor;->mReverseDone:Z

    move-object/from16 v5, p12

    .line 3416
    iput-object v5, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 3417
    iget-object v5, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput-object v9, v5, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    .line 3418
    iput-object v3, v5, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    .line 3419
    iput-object v13, v5, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTransitions:[Ljava/lang/String;

    .line 3420
    iget-object v5, v1, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    const/4 v6, -0x1

    invoke-interface {v5, v6}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtIndexInternal(I)V

    if-eqz v9, :cond_13b

    .line 3421
    array-length v5, v9

    if-eqz v5, :cond_13b

    move v5, v4

    goto :goto_13c

    :cond_13b
    move v5, v0

    :goto_13c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 3422
    iput v0, v1, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 3424
    iget-object v5, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v5, v0, v0, v4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setTrackDurationType(III)I

    .line 3425
    sget-object v5, Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;->SCALE_MODE_CANVAS:Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;

    invoke-virtual {v1, v5}, Lcom/ss/android/vesdk/VEEditor;->setScaleMode(Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;)I

    .line 3426
    aget-object v5, p11, v0

    iget v7, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->width:I

    iget v5, v5, Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;->height:I

    invoke-virtual {v1, v7, v5}, Lcom/ss/android/vesdk/VEEditor;->setWidthHeight(II)V

    .line 3427
    iget-object v5, v1, Lcom/ss/android/vesdk/VEEditor;->mBusinessManager:Lcom/ss/android/ttve/biz/TEBaseBusinessManager;

    iput v4, v5, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;->editorType:I
    :try_end_15b
    .catchall {:try_start_13 .. :try_end_15b} :catchall_55

    .line 3430
    :try_start_15b
    iget-object v5, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    filled-new-array {v0}, [I

    move-result-object v7

    const-string v8, "canvas wrap"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v0}, [I

    move-result-object v9

    iget v10, v1, Lcom/ss/android/vesdk/VEEditor;->mOutPoint:I

    filled-new-array {v10}, [I

    move-result-object v10

    filled-new-array {v0}, [I

    move-result-object v11

    const/16 v12, 0xf

    filled-new-array {v12}, [I

    move-result-object v12

    filled-new-array {v4}, [I

    move-result-object v4

    move-object/from16 p9, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v7

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    move-object/from16 p7, v11

    move-object/from16 p8, v12

    invoke-virtual/range {p2 .. p9}, Lcom/ss/android/ttve/nativePort/TEInterface;->addFilters([I[Ljava/lang/String;[I[I[I[I[I)[I

    move-result-object v4

    .line 3435
    aget v4, v4, v0

    iput v4, v1, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    .line 3438
    aget-object v5, p11, v0

    invoke-virtual {v1, v6, v4, v5}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    .line 3441
    array-length v3, v3

    move v4, v0

    :goto_19e
    if-ge v4, v3, :cond_1aa

    .line 3443
    iget v5, v1, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    aget-object v7, p11, v4

    invoke-virtual {v1, v4, v5, v7}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_19e

    .line 3446
    :cond_1aa
    new-instance v4, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;

    invoke-direct {v4}, Lcom/ss/android/vesdk/filterparam/VEVideoTransformFilterParam;-><init>()V

    :goto_1af
    if-ge v0, v3, :cond_1b9

    .line 3448
    iget v5, v1, Lcom/ss/android/vesdk/VEEditor;->mCanvasWrapFilterIndex:I

    invoke-virtual {v1, v0, v5, v4}, Lcom/ss/android/vesdk/VEEditor;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    :try_end_1b6
    .catch Ljava/lang/NullPointerException; {:try_start_15b .. :try_end_1b6} :catch_1bb
    .catchall {:try_start_15b .. :try_end_1b6} :catchall_55

    add-int/lit8 v0, v0, 0x1

    goto :goto_1af

    .line 3451
    :cond_1b9
    :try_start_1b9
    monitor-exit p0

    return v2

    .line 3453
    :catch_1bb
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v2, "init failed: VESDK need to be init"

    invoke-direct {v0, v6, v2}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3368
    :cond_1c3
    :goto_1c3
    const-string v0, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initWithCanvas invalid param, videoFilePaths.length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", vTrimIn.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", vTrimOut.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3369
    monitor-exit p0

    return v5

    .line 3364
    :cond_1ee
    :goto_1ee
    const-string v0, "VEEditor"

    const-string v2, "initWithCanvas invalid canvasFilterParam!"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3365
    monitor-exit p0

    return v5

    .line 3455
    :goto_1f7
    monitor-exit p0
    :try_end_1f8
    .catchall {:try_start_1b9 .. :try_end_1f8} :catchall_55

    throw v0
.end method

.method public initWithStruct([Lcom/ss/android/vesdk/clipparam/VECommonClipParam;[Lcom/ss/android/vesdk/clipparam/VECommonClipParam;[Ljava/lang/String;Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)I
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 2845
    monitor-enter p0

    const/4 v4, 0x1

    .line 2846
    :try_start_a
    invoke-static {v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->clearWithType(I)V

    .line 2847
    invoke-static {v4}, Lcom/ss/android/ttve/monitor/TEMonitor;->initStats(I)V

    .line 2848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 2849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    .line 2850
    const-string v5, "VEEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initWithStruct, videoClipArray size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    if-nez v0, :cond_2d

    move v8, v7

    goto :goto_2e

    :cond_2d
    array-length v8, v0

    :goto_2e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", audioClipArray size: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_3a

    move v8, v7

    goto :goto_3b

    :cond_3a
    array-length v8, v2

    :goto_3b
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    iget-object v5, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, v0, v2, v3, v6}, Lcom/ss/android/ttve/nativePort/TEInterface;->initVideoEditorWithStruct([Lcom/ss/android/vesdk/clipparam/VECommonClipParam;[Lcom/ss/android/vesdk/clipparam/VECommonClipParam;[Ljava/lang/String;I)I

    move-result v5

    .line 2853
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_89

    if-eqz v0, :cond_cc

    .line 2857
    :try_start_56
    array-length v9, v0

    if-lez v9, :cond_cc

    .line 2858
    array-length v9, v0

    .line 2859
    new-array v10, v9, [Ljava/lang/String;
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_5c} :catch_c9
    .catchall {:try_start_56 .. :try_end_5c} :catchall_89

    .line 2860
    :try_start_5c
    new-array v11, v9, [I

    .line 2861
    new-array v12, v9, [I

    .line 2862
    new-array v13, v9, [D

    .line 2863
    new-array v14, v9, [I

    move v15, v7

    :goto_65
    if-ge v15, v9, :cond_97

    .line 2865
    aget-object v8, v0, v15

    iget-object v8, v8, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->path:Ljava/lang/String;

    aput-object v8, v10, v15

    .line 2866
    aget-object v8, v0, v15

    iget v4, v8, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->trimIn:I

    aput v4, v11, v15

    .line 2867
    iget v4, v8, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->trimOut:I

    aput v4, v12, v15
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_5c .. :try_end_77} :catch_93
    .catchall {:try_start_5c .. :try_end_77} :catchall_89

    move v4, v9

    move-object/from16 v17, v10

    .line 2868
    :try_start_7a
    iget-wide v9, v8, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->speed:D

    aput-wide v9, v13, v15

    .line 2869
    iget v8, v8, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->videoClipRotate:I

    aput v8, v14, v15

    add-int/lit8 v15, v15, 0x1

    move v9, v4

    move-object/from16 v10, v17

    const/4 v4, 0x1

    goto :goto_65

    :catchall_89
    move-exception v0

    goto/16 :goto_22e

    :catch_8c
    move-exception v0

    :goto_8d
    move-object/from16 v8, v17

    :goto_8f
    const/16 v16, 0x0

    goto/16 :goto_1bf

    :catch_93
    move-exception v0

    move-object/from16 v17, v10

    goto :goto_8d

    :cond_97
    move-object/from16 v17, v10

    .line 2872
    const-string v0, "videoFilePaths"

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2873
    const-string v0, "vTrimIn"

    invoke-static {v11}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2874
    const-string v0, "vTrimOut"

    invoke-static {v12}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2875
    const-string v0, "videoSpeed"

    invoke-static {v13}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2876
    const-string v0, "rotate"

    invoke-static {v14}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c6
    .catch Lorg/json/JSONException; {:try_start_7a .. :try_end_c6} :catch_8c
    .catchall {:try_start_7a .. :try_end_c6} :catchall_89

    move-object/from16 v10, v17

    goto :goto_f0

    :catch_c9
    move-exception v0

    const/4 v8, 0x0

    goto :goto_8f

    .line 2878
    :cond_cc
    :try_start_cc
    const-string v0, "videoFilePaths"

    const-string v4, ""

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2879
    const-string v0, "vTrimIn"

    const-string v4, ""

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2880
    const-string v0, "vTrimOut"

    const-string v4, ""

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2881
    const-string v0, "videoSpeed"

    const-string v4, ""

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2882
    const-string v0, "rotate"

    const-string v4, ""

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ef
    .catch Lorg/json/JSONException; {:try_start_cc .. :try_end_ef} :catch_c9
    .catchall {:try_start_cc .. :try_end_ef} :catchall_89

    const/4 v10, 0x0

    :goto_f0
    if-eqz v2, :cond_147

    .line 2885
    :try_start_f2
    array-length v0, v2

    if-lez v0, :cond_147

    .line 2886
    array-length v0, v2

    .line 2887
    new-array v8, v0, [Ljava/lang/String;
    :try_end_f8
    .catch Lorg/json/JSONException; {:try_start_f2 .. :try_end_f8} :catch_143
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_89

    .line 2888
    :try_start_f8
    new-array v4, v0, [I

    .line 2889
    new-array v9, v0, [I

    .line 2890
    new-array v11, v0, [D

    move v12, v7

    :goto_ff
    if-ge v12, v0, :cond_11e

    .line 2892
    aget-object v13, v2, v12

    iget-object v13, v13, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->path:Ljava/lang/String;

    aput-object v13, v8, v12

    .line 2893
    aget-object v13, v2, v12

    iget v14, v13, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->trimIn:I

    aput v14, v4, v12

    .line 2894
    iget v14, v13, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->trimOut:I

    aput v14, v9, v12

    .line 2895
    iget-wide v13, v13, Lcom/ss/android/vesdk/clipparam/VECommonClipParam;->speed:D

    aput-wide v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_ff

    :catch_118
    move-exception v0

    move-object/from16 v16, v8

    move-object v8, v10

    goto/16 :goto_1bf

    .line 2898
    :cond_11e
    const-string v0, "audioFilePaths"

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2899
    const-string v0, "aTrimIn"

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2900
    const-string v0, "aTrimOut"

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2901
    const-string v0, "audioSpeed"

    invoke-static {v11}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_142
    .catch Lorg/json/JSONException; {:try_start_f8 .. :try_end_142} :catch_118
    .catchall {:try_start_f8 .. :try_end_142} :catchall_89

    goto :goto_164

    :catch_143
    move-exception v0

    move-object v8, v10

    goto/16 :goto_8f

    .line 2903
    :cond_147
    :try_start_147
    const-string v0, "audioFilePaths"

    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2904
    const-string v0, "aTrimIn"

    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2905
    const-string v0, "aTrimOut"

    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2906
    const-string v0, "audioSpeed"

    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_163
    .catch Lorg/json/JSONException; {:try_start_147 .. :try_end_163} :catch_143
    .catchall {:try_start_147 .. :try_end_163} :catchall_89

    const/4 v8, 0x0

    .line 2908
    :goto_164
    :try_start_164
    const-string v0, "videoOutRes"

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2909
    const-string v0, "cacheCheckTime"

    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2910
    const-string v0, "createSceneTime"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    sub-long/2addr v11, v13

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2911
    const-string v0, "hitRate"

    const-string v2, ""

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2913
    const-string v0, "resultCode"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2914
    const-string v0, "vesdk_event_editor_init_video"

    const-string v2, "behavior"

    invoke-static {v0, v6, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 2916
    const-string v0, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file info cache json: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1be
    .catch Lorg/json/JSONException; {:try_start_164 .. :try_end_1be} :catch_118
    .catchall {:try_start_164 .. :try_end_1be} :catchall_89

    goto :goto_1c5

    .line 2918
    :goto_1bf
    :try_start_1bf
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v10, v8

    move-object/from16 v8, v16

    :goto_1c5
    if-eqz v5, :cond_1e4

    .line 2922
    const-string v0, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initVideoEditorWithStruct failed, ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor;->onMonitorError()V

    .line 2924
    iput-boolean v7, v1, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 2925
    monitor-exit p0

    return v5

    :cond_1e4
    const/4 v2, 0x1

    .line 2927
    iput-boolean v2, v1, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 2928
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    if-eqz v0, :cond_1ee

    .line 2929
    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TETrackIndexManager;->reset()V

    .line 2931
    :cond_1ee
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput-boolean v7, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    move-object/from16 v2, p4

    .line 2932
    iput-object v2, v1, Lcom/ss/android/vesdk/VEEditor;->mVideoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 2933
    iput-object v8, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    .line 2934
    iput-object v10, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    .line 2935
    iput-object v3, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTransitions:[Ljava/lang/String;

    .line 2936
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtIndexInternal(I)V

    if-eqz v8, :cond_209

    .line 2937
    array-length v0, v8

    if-eqz v0, :cond_209

    const/4 v2, 0x1

    goto :goto_20a

    :cond_209
    move v2, v7

    :goto_20a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    .line 2938
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 2939
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    const/4 v2, 0x1

    iput v2, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    goto :goto_220

    .line 2941
    :cond_21c
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v7, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackType:I

    .line 2943
    :goto_220
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput v7, v0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mOriginalSoundTrackIndex:I

    .line 2944
    iput v7, v1, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    .line 2946
    iget-object v0, v1, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v0}, Lcom/ss/android/vesdk/internal/IVEFilter;->initFiltersInternal()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2947
    :goto_22e
    monitor-exit p0
    :try_end_22f
    .catchall {:try_start_1bf .. :try_end_22f} :catchall_89

    throw v0
.end method

.method public insertClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 5

    .line 8017
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVESequence;->insertClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p0

    return p0
.end method

.method public insertClips(IILjava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;",
            ">;)I"
        }
    .end annotation

    .line 8031
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVESequence;->insertClips(IILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method public invalidate()V
    .registers 9

    .line 2227
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const v6, -0x13880

    const/4 v7, 0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const v5, -0x13880

    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/ttve/nativePort/TEInterface;->setDisplayState(FFFFIII)V

    return-void
.end method

.method public is2DBrushEmpty()Z
    .registers 2

    .line 11427
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_d

    .line 11428
    const-string p0, "VEEditor"

    const-string v0, "is2DBrushEmpty STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 11431
    :cond_d
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVESticker;->is2DBrushEmpty()Z

    move-result p0

    return p0
.end method

.method public isAudioExtendToFileProcessing()Z
    .registers 1

    .line 4501
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperAudioExtend:Lcom/ss/android/vesdk/internal/IVEAudioExtend;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEAudioExtend;->isAudioExtendToFileProcessing()Z

    move-result p0

    return p0
.end method

.method public isCompileEncode()I
    .registers 1

    .line 5728
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->isCompileEncode()I

    move-result p0

    return p0
.end method

.method public isEnableRemuxVideo(Lcom/ss/android/vesdk/VEVideoEncodeSettings;)Z
    .registers 6

    .line 6266
    monitor-enter p0

    .line 6267
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    if-eqz v0, :cond_34

    .line 6271
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    const/4 p1, 0x0

    .line 6272
    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    goto :goto_3e

    .line 6276
    :cond_16
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->genEditorStatus()V

    .line 6279
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VERuntime;->getInstance()Lcom/ss/android/vesdk/runtime/VERuntime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VERuntime;->getNativeContext()J

    move-result-wide v0

    .line 6280
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->setVideoEncodeSettings(Lcom/ss/android/vesdk/VEVideoEncodeSettings;J)I

    .line 6283
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->isEnableRemuxVideo()Z

    move-result p1

    monitor-exit p0

    return p1

    .line 6268
    :cond_34
    new-instance p1, Lcom/ss/android/vesdk/VEException;

    const-string v0, "Make sure the initialization is successful before calling!!!"

    const/16 v1, -0x69

    invoke-direct {p1, v1, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 6284
    :goto_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_14

    throw p1
.end method

.method protected isFileInfoCacheExist([Ljava/lang/String;)[Z
    .registers 6

    .line 7647
    monitor-enter p0

    .line 7648
    :try_start_1
    array-length v0, p1

    .line 7649
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_1a

    .line 7651
    aget-object v3, p1, v2

    if-eqz v3, :cond_17

    .line 7652
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    const/4 v3, 0x1

    .line 7653
    aput-boolean v3, v1, v2

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_1c

    :cond_17
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 7657
    :cond_1a
    monitor-exit p0

    return-object v1

    .line 7658
    :goto_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_15

    throw p1
.end method

.method public isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z
    .registers 2

    .line 7616
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->isGestureRegistered(Lcom/ss/android/vesdk/VEGestureEvent;)Z

    move-result p0

    return p0
.end method

.method public isInfoStickerAnimatable(I)Z
    .registers 2

    .line 10334
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_d

    .line 10335
    const-string p0, "VEEditor"

    const-string p1, "isInfoStickerAnimatable STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 10338
    :cond_d
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->isInfoStickerAnimatable(I)Z

    move-result p0

    return p0
.end method

.method public isUseFilterProcess()Z
    .registers 5

    .line 6333
    monitor-enter p0

    .line 6334
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    if-eqz v0, :cond_25

    .line 6338
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 6339
    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    goto :goto_2f

    .line 6343
    :cond_16
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->genEditorStatus()V

    .line 6346
    invoke-static {}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->getInstance()Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/vesdk/runtime/VEPublishSettingManager;->isUseFilterProcess()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 6335
    :cond_25
    new-instance v0, Lcom/ss/android/vesdk/VEException;

    const-string v1, "Make sure the initialization is successful before calling!!!"

    const/16 v2, -0x69

    invoke-direct {v0, v2, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 6347
    :goto_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_14

    throw v0
.end method

.method public isValid()Z
    .registers 5

    .line 6761
    monitor-enter p0

    .line 6762
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    .line 6763
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public isWatermarkCompileEncode()I
    .registers 1

    .line 5737
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->isWatermarkCompileEncode()I

    move-result p0

    return p0
.end method

.method public lockSeekVideoClip(I)I
    .registers 4

    .line 5647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lockSeekVideoClip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5648
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->lockSeekVideoClip(I)I

    move-result p0

    return p0
.end method

.method public mapOriginalPositionToTimeEffectPosition(I)I
    .registers 2

    .line 9741
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->mapOriginalPositionToTimeEffectPosition(I)I

    move-result p0

    return p0
.end method

.method public mapTimeEffectDurationToOriginalDuration(I)I
    .registers 2

    .line 9763
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->mapTimeEffectDurationToOriginalDuration(I)I

    move-result p0

    return p0
.end method

.method public mapTimeEffectPositionToOriginalPosition(I)I
    .registers 2

    .line 9752
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->mapTimeEffectPositionToOriginalPosition(I)I

    move-result p0

    return p0
.end method

.method public moveClip(III)I
    .registers 5

    const/4 v0, 0x1

    .line 8044
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/VEEditor;->moveClip(IIIZ)I

    move-result p0

    return p0
.end method

.method public moveClip(IIIZ)I
    .registers 5

    .line 8059
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVESequence;->moveClip(IIIZ)I

    move-result p0

    return p0
.end method

.method public moveVideoClipWithAlgorithm(II)I
    .registers 3

    .line 8691
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEBingo;->moveVideoClipWithAlgorithm(II)I

    move-result p0

    return p0
.end method

.method public notifyHideKeyBoard(Z)I
    .registers 2

    .line 11014
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11015
    const-string p0, "VEEditor"

    const-string p1, "notifyHideKeyBoard STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11018
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->notifyHideKeyBoard(Z)I

    move-result p0

    return p0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 1218
    const-string p0, "VEEditor"

    const-string p1, "onFrameAvailable..."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onMonitorError()V
    .registers 10

    .line 1433
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-virtual {v0}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->isEffectAdd()Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_e

    move-wide v5, v3

    goto :goto_f

    :cond_e
    move-wide v5, v1

    :goto_f
    const/4 v7, 0x1

    .line 1434
    const-string v8, "te_composition_effect_add"

    invoke-static {v7, v8, v5, v6}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    if-nez v0, :cond_23

    .line 1436
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->serializeMap(I)Ljava/lang/String;

    move-result-object v0

    .line 1437
    const-string v5, "te_composition_effect_json"

    invoke-static {v7, v5, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1441
    :cond_23
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-virtual {v0}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->isInfoStickerAdd()Z

    move-result v0

    if-eqz v0, :cond_2c

    move-wide v1, v3

    .line 1442
    :cond_2c
    const-string v3, "te_composition_info_sticker_add"

    invoke-static {v7, v3, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    if-nez v0, :cond_3e

    .line 1444
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-virtual {v0, v7}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->serializeMap(I)Ljava/lang/String;

    move-result-object v0

    .line 1445
    const-string v1, "te_composition_info_sticker_json"

    invoke-static {v7, v1, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1451
    :cond_3e
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTEMonitorFilterMgr:Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;

    invoke-virtual {v0}, Lcom/ss/android/ttve/monitor/TEMonitorFilterMgr;->reset()V

    .line 1454
    const-string v0, "iesve_veeditor_composition_finish_file"

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileType:Ljava/lang/String;

    invoke-static {v7, v0, p0}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string p0, "iesve_veeditor_composition_finish_result"

    const-string v0, "fail"

    invoke-static {v7, p0, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1456
    const-string p0, "iesve_veeditor_composition_finish_reason"

    const-string v0, ""

    invoke-static {v7, p0, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V

    .line 1459
    invoke-static {v7}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    return-void
.end method

.method public onSurfaceChanged(II)V
    .registers 5

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    .line 1309
    iput p2, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    .line 1310
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->updateInitDisplaySize()V

    if-eqz p1, :cond_2f

    if-nez p2, :cond_2a

    goto :goto_2f

    .line 1313
    :cond_2a
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setSurfaceSize(II)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .registers 12

    .line 1260
    const-string v0, "surfaceCreated..."

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1261
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstTimeSurfaceCreate:Z

    .line 1263
    iget-boolean v2, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurface:Z

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9a

    const/4 v2, 0x0

    .line 1264
    invoke-virtual {p1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v3

    .line 1266
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    .line 1267
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    .line 1268
    iget-object v6, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1269
    iget-object v7, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 1271
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "width "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " height "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " image width "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " image height "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v1, v4

    int-to-float v8, v5

    div-float v9, v1, v8

    int-to-float v6, v6

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v7, v6, v9

    if-lez v7, :cond_6f

    div-float/2addr v1, v6

    float-to-int v1, v1

    sub-int v1, v5, v1

    .line 1279
    div-int/lit8 v1, v1, 0x2

    .line 1280
    new-instance v6, Landroid/graphics/Rect;

    sub-int/2addr v5, v1

    invoke-direct {v6, v0, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_7b

    :cond_6f
    mul-float/2addr v8, v6

    float-to-int v1, v8

    sub-int v1, v4, v1

    .line 1282
    div-int/lit8 v1, v1, 0x2

    .line 1283
    new-instance v6, Landroid/graphics/Rect;

    sub-int/2addr v4, v1

    invoke-direct {v6, v1, v0, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1286
    :goto_7b
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1, v2, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1287
    invoke-virtual {p1, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1289
    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurfaceOnce:Z

    if-eqz v1, :cond_9a

    .line 1290
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_98

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_98

    .line 1291
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1292
    iput-object v2, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 1294
    :cond_98
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurfaceOnce:Z

    .line 1297
    :cond_9a
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setPreviewSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceDestroyed()V
    .registers 3

    .line 1195
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1196
    const-string p0, "VEEditor"

    const-string v0, "no need to releasePreviewSurface, is destroying, just return"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1200
    :cond_10
    monitor-enter p0

    .line 1201
    :try_start_11
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1202
    const-string v0, "VEEditor"

    const-string v1, "no need to releasePreviewSurface, just lock return"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    goto :goto_32

    .line 1205
    :cond_24
    const-string v0, "VEEditor"

    const-string v1, "surfaceDestroyed..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->releasePreviewSurface()V

    .line 1207
    monitor-exit p0

    return-void

    :goto_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_22

    throw v0
.end method

.method public pause()I
    .registers 2

    .line 5339
    monitor-enter p0

    const/4 v0, 0x0

    .line 5340
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->pause(Z)I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    .line 5341
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public pause(I)I
    .registers 3

    .line 5366
    monitor-enter p0

    if-nez p1, :cond_b

    .line 5368
    :try_start_3
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->pause()I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    goto :goto_14

    .line 5370
    :cond_b
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->pause(I)I

    move-result p1

    monitor-exit p0

    return p1

    .line 5372
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_9

    throw p1
.end method

.method public pause(Z)I
    .registers 5

    .line 5323
    monitor-enter p0

    .line 5324
    :try_start_1
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause... refreshFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5325
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->pause(I)I

    move-result v0

    if-eqz p1, :cond_27

    .line 5327
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->refreshCurrentFrame()I

    move-result v0

    goto :goto_27

    :catchall_25
    move-exception p1

    goto :goto_29

    .line 5329
    :cond_27
    :goto_27
    monitor-exit p0

    return v0

    .line 5330
    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_25

    throw p1
.end method

.method public pauseEffectAudio(Z)I
    .registers 2

    .line 11229
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11230
    const-string p0, "VEEditor"

    const-string p1, "pauseEffectAudio STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11233
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->pauseEffectAudio(Z)I

    move-result p0

    return p0
.end method

.method public pauseInfoStickerAnimation(Z)I
    .registers 2

    .line 10346
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10347
    const-string p0, "VEEditor"

    const-string p1, "pauseInfoStickerAnimation STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10350
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->pauseInfoStickerAnimation(Z)I

    move-result p0

    return p0
.end method

.method public pauseSync()I
    .registers 3

    .line 5350
    monitor-enter p0

    .line 5351
    :try_start_1
    const-string v0, "VEEditor"

    const-string v1, "pauseSync..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5352
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->pauseSync()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    .line 5353
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public play()I
    .registers 7

    .line 5294
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 5295
    const-string p0, "VEEditor"

    const-string v0, "no need to play, is destroying, just return"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5299
    :cond_11
    monitor-enter p0

    .line 5300
    :try_start_12
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 5301
    const-string v0, "VEEditor"

    const-string v2, "no need to play, is destroying, just lock return"

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5302
    monitor-exit p0

    return v1

    :catchall_23
    move-exception v0

    goto :goto_46

    .line 5304
    :cond_25
    const-string v0, "VEEditor"

    const-string v2, "play..."

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5306
    iput v1, p0, Lcom/ss/android/vesdk/VEEditor;->miFrameCount:I

    .line 5307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    .line 5308
    iget-wide v2, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstPlayTimeMS:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3e

    .line 5309
    iput-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstPlayTimeMS:J

    .line 5311
    :cond_3e
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->start()I

    move-result v0

    monitor-exit p0

    return v0

    .line 5312
    :goto_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_23

    throw v0
.end method

.method public prepare()I
    .registers 7

    .line 4146
    monitor-enter p0

    .line 4147
    :try_start_1
    const-string v0, "VEEditor"

    const-string v1, "prepare..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4148
    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoBackGroundColor:I

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/VEEditor;->setVideoBackgroudColor(I)V

    .line 4150
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableRemuxVideo(Z)V

    .line 4151
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setUsrRotate(I)V

    .line 4152
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableReEncodeOpt(Z)V

    .line 4155
    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mEditorMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4f

    .line 4156
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v3, "ve_editor_firstframe_delay"

    invoke-virtual {v0, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 4157
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_81

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_81

    .line 4158
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4159
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEditorFirstFrameDelay(I)I

    goto :goto_81

    :catchall_4c
    move-exception v0

    goto/16 :goto_c4

    :cond_4f
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7c

    .line 4162
    invoke-static {}, Lcom/ss/android/vesdk/VEConfigCenter;->getInstance()Lcom/ss/android/vesdk/VEConfigCenter;

    move-result-object v0

    const-string v3, "ve_record_editor_firstframe_delay"

    invoke-virtual {v0, v3}, Lcom/ss/android/vesdk/VEConfigCenter;->getValue(Ljava/lang/String;)Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 4163
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_81

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_81

    .line 4164
    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEConfigCenter$ValuePkt;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4165
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEditorFirstFrameDelay(I)I

    goto :goto_81

    .line 4168
    :cond_7c
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEditorFirstFrameDelay(I)I

    .line 4172
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result v0

    if-eqz v0, :cond_a2

    .line 4176
    const-string v3, "VEEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare() prepareEngine failed: result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4177
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->onMonitorError()V

    .line 4179
    :cond_a2
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->getInitResolution()[I

    move-result-object v3

    .line 4180
    iget-object v4, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    aget v1, v3, v1

    iput v1, v4, Lcom/ss/android/vesdk/VESize;->width:I

    .line 4181
    aget v1, v3, v2

    iput v1, v4, Lcom/ss/android/vesdk/VESize;->height:I

    .line 4183
    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    if-lez v1, :cond_bd

    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    if-lez v1, :cond_bd

    .line 4184
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->updateInitDisplaySize()V

    .line 4188
    :cond_bd
    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mBackGroundColor:I

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEEditor;->setBackgroundColor(I)V

    .line 4189
    monitor-exit p0

    return v0

    .line 4190
    :goto_c4
    monitor-exit p0
    :try_end_c5
    .catchall {:try_start_1 .. :try_end_c5} :catchall_4c

    throw v0
.end method

.method public prepareOnlyAudio()I
    .registers 5

    .line 2798
    monitor-enter p0

    .line 2799
    :try_start_1
    const-string v0, "VEEditor"

    const-string v1, "prepareOnlyAudio..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableRemuxVideo(Z)V

    .line 2802
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setUsrRotate(I)V

    .line 2803
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableReEncodeOpt(Z)V

    .line 2805
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEditorFirstFrameDelay(I)I

    .line 2807
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result v0

    if-eqz v0, :cond_42

    .line 2811
    const-string v1, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareOnlyAudio() prepareEngine failed: result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->onMonitorError()V

    goto :goto_42

    :catchall_40
    move-exception v0

    goto :goto_44

    .line 2814
    :cond_42
    :goto_42
    monitor-exit p0

    return v0

    .line 2815
    :goto_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_40

    throw v0
.end method

.method protected prepareWithCallback(I)I
    .registers 9

    .line 4229
    const-string v0, "VEEditor"

    iget-boolean v1, p0, Lcom/ss/android/vesdk/VEEditor;->mAutoPrepare:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_b7

    sget-boolean v1, Lcom/ss/android/vesdk/VEEditor;->mSAutoPrepare:Z

    if-nez v1, :cond_d

    goto/16 :goto_b7

    .line 4232
    :cond_d
    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoBackGroundColor:I

    invoke-virtual {p0, v1}, Lcom/ss/android/vesdk/VEEditor;->setVideoBackgroudColor(I)V

    .line 4233
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    if-eqz v1, :cond_a1

    .line 4234
    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VEState;->ERROR:Lcom/ss/android/vesdk/VEEditor$VEState;

    const/4 v3, 0x0

    const/16 v4, 0x1018

    .line 4237
    :try_start_1b
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getState()Lcom/ss/android/vesdk/VEEditor$VEState;

    move-result-object v1

    .line 4238
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->getCurPosition()I

    move-result v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_80

    .line 4245
    iget-object v6, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v6, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableRemuxVideo(Z)V

    .line 4246
    iget-object v6, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v6, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setUsrRotate(I)V

    .line 4247
    iget-object v6, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v6, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableReEncodeOpt(Z)V

    .line 4248
    iget-object v6, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v6, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p1

    if-eqz p1, :cond_59

    .line 4250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareEngine error: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4251
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-float v1, v5

    invoke-interface {p0, v4, v0, v1, v3}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    return p1

    .line 4254
    :cond_59
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getInitResolution()[I

    move-result-object p1

    .line 4255
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    aget v6, p1, v2

    iput v6, v0, Lcom/ss/android/vesdk/VESize;->width:I

    const/4 v6, 0x1

    .line 4256
    aget p1, p1, v6

    iput p1, v0, Lcom/ss/android/vesdk/VESize;->height:I

    .line 4258
    iget p1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    if-lez p1, :cond_75

    iget p1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    if-lez p1, :cond_75

    .line 4259
    invoke-virtual {p0}, Lcom/ss/android/vesdk/VEEditor;->updateInitDisplaySize()V

    .line 4262
    :cond_75
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-float v0, v5

    invoke-interface {p0, v4, p1, v0, v3}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    return v2

    :catch_80
    move-exception p1

    .line 4240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareWithCallback error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4241
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    int-to-float v0, v2

    invoke-interface {p0, v4, p1, v0, v3}, Lcom/ss/android/vesdk/VECommonCallback;->onCallback(IIFLjava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 4267
    :cond_a1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEnableRemuxVideo(Z)V

    .line 4268
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setUsrRotate(I)V

    .line 4269
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableReEncodeOpt(Z)V

    .line 4270
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p0

    return p0

    :cond_b7
    :goto_b7
    return v2
.end method

.method public processDoubleClickEvent(FF)I
    .registers 4

    .line 5853
    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    if-nez v0, :cond_9

    goto :goto_10

    .line 5856
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->processDoubleClickEvent(FF)I

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/16 p0, -0x69

    return p0
.end method

.method public processLongPressEvent(FF)I
    .registers 4

    .line 5838
    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    if-nez v0, :cond_9

    goto :goto_10

    .line 5841
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->processLongPressEvent(FF)I

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/16 p0, -0x69

    return p0
.end method

.method public processPanEvent(FFFFF)I
    .registers 7

    .line 5802
    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    if-nez v0, :cond_9

    goto :goto_10

    .line 5805
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual/range {p0 .. p5}, Lcom/ss/android/ttve/nativePort/TEInterface;->processPanEvent(FFFFF)I

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/16 p0, -0x69

    return p0
.end method

.method public processRotationEvent(FF)I
    .registers 3

    .line 5827
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->processRotationEvent(FF)I

    move-result p0

    return p0
.end method

.method public processScaleEvent(FF)I
    .registers 3

    .line 5816
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->processScaleEvent(FF)I

    move-result p0

    return p0
.end method

.method public processTouchDownEvent(FFLcom/ss/android/vesdk/VEGestureType;)I
    .registers 4

    .line 5759
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->processTouchDownEvent(FFLcom/ss/android/vesdk/VEGestureType;)I

    move-result p0

    return p0
.end method

.method public processTouchEvent(FF)I
    .registers 5

    .line 7497
    const-string v0, "processTouchEvent"

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7498
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->processTouchEvent(FF)I

    move-result p0

    if-eqz p0, :cond_23

    .line 7500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "processTouchEvent failed, ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return p0
.end method

.method public processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z
    .registers 4

    .line 7603
    invoke-virtual {p1}, Lcom/ss/android/vesdk/VETouchPointer;->getEvent()Lcom/ss/android/vesdk/VETouchPointer$TouchEvent;

    move-result-object v0

    if-eqz v0, :cond_10

    if-gez p2, :cond_9

    goto :goto_10

    .line 7606
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->processTouchEvent(Lcom/ss/android/vesdk/VETouchPointer;I)Z

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public processTouchMoveEvent(FF)I
    .registers 4

    .line 5770
    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    if-nez v0, :cond_9

    goto :goto_10

    .line 5773
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->processTouchMoveEvent(FF)I

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/16 p0, -0x69

    return p0
.end method

.method public processTouchUpEvent(FFLcom/ss/android/vesdk/VEGestureType;)I
    .registers 5

    .line 5785
    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    if-nez v0, :cond_9

    goto :goto_10

    .line 5788
    :cond_9
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->processTouchUpEvent(FFLcom/ss/android/vesdk/VEGestureType;)I

    move-result p0

    return p0

    :cond_10
    :goto_10
    const/16 p0, -0x69

    return p0
.end method

.method public pushImageToBuffer(Ljava/lang/String;)I
    .registers 4

    .line 2591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pushImageToBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_26

    .line 2592
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_26

    .line 2596
    :cond_1f
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->pushImageToBuffer(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2593
    :cond_26
    :goto_26
    const-string p0, "pushImageToBuffer: filePath invalid!"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public refreshCurrentFrame()I
    .registers 3

    .line 5381
    monitor-enter p0

    .line 5382
    :try_start_1
    const-string v0, "VEEditor"

    const-string v1, "refreshCurrentFrame..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5383
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->refreshCurrentFrame(I)I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    .line 5384
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public refreshCurrentFrameWithMode(I)I
    .registers 5

    .line 5395
    monitor-enter p0

    .line 5396
    :try_start_1
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshCurrentFrameWithMode...mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5397
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->refreshCurrentFrame(I)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_1f
    move-exception p1

    .line 5398
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public refreshWithCallback(Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I
    .registers 4

    .line 5409
    monitor-enter p0

    .line 5410
    :try_start_1
    const-string v0, "VEEditor"

    const-string v1, "refresh with cb... "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5411
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    .line 5412
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    sget-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v0}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->refreshCurrentFrame(I)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_18
    move-exception p1

    .line 5413
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public releaseEngine()V
    .registers 3

    .line 4526
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4527
    const-string v0, "VEEditor"

    const-string v1, "releaseEngine... set destroying true"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4529
    monitor-enter p0

    .line 4530
    :try_start_e
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    if-eqz v0, :cond_26

    .line 4531
    const-string v0, "VEEditor"

    const-string v1, "releaseEngine... "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4533
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 4534
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->releaseEngine()I

    goto :goto_26

    :catchall_24
    move-exception v0

    goto :goto_2e

    .line 4536
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4537
    monitor-exit p0

    return-void

    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_24

    throw v0
.end method

.method public releaseEngineUnitResourceAsync()V
    .registers 3

    .line 4548
    monitor-enter p0

    .line 4549
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    if-eqz v0, :cond_1c

    .line 4550
    const-string v0, "VEEditor"

    const-string v1, "onRelease Async... "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4551
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    .line 4552
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 4553
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->releaseEngineAsync()I

    goto :goto_1c

    :catchall_1a
    move-exception v0

    goto :goto_1e

    .line 4555
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1a

    throw v0
.end method

.method public releaseEngineUnitResourceAsync(Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;)V
    .registers 4

    .line 4566
    monitor-enter p0

    .line 4567
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    if-eqz v0, :cond_1b

    .line 4568
    const-string v0, "VEEditor"

    const-string v1, "onRelease Async... "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4569
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mAsyncReleaseEngineListener:Lcom/ss/android/vesdk/VEListener$VEEditorAsyncReleaseEngineUnitResourceListener;

    .line 4570
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    .line 4571
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->releaseEngineAsync()I

    goto :goto_1b

    :catchall_19
    move-exception p1

    goto :goto_1d

    .line 4573
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    :goto_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_19

    throw p1
.end method

.method public releaseResource()V
    .registers 6

    .line 4582
    monitor-enter p0

    const/4 v0, 0x0

    .line 4583
    :try_start_2
    iput-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    .line 4584
    const-string v0, "VEEditor"

    const-string v1, "onReleaseResource... "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4586
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->getNativeHandler()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 4587
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    goto :goto_82

    .line 4589
    :cond_1b
    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mPageMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    const/4 v0, 0x3

    .line 4590
    invoke-static {v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->reportWithType(I)V

    .line 4593
    :cond_24
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->releasePreviewSurface()V

    .line 4594
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 4595
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_49

    .line 4596
    :cond_38
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_49

    .line 4597
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v4, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-ne v0, v4, :cond_49

    .line 4598
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 4601
    :cond_49
    :goto_49
    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceView:Landroid/view/SurfaceView;

    .line 4602
    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mTextureView:Landroid/view/TextureView;

    .line 4603
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    if-eqz v0, :cond_6d

    .line 4604
    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setOpenGLListeners(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IOpenGLCallback;)V

    .line 4605
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setInfoListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 4606
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setErrorListener(Lcom/ss/android/ttve/common/TECommonCallback;)V

    .line 4607
    const-string v0, "VEEditor"

    const-string v4, "onReleaseResource... setNativeHandler 0"

    invoke-static {v0, v4}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4608
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setNativeHandler(J)V

    .line 4609
    invoke-direct {p0}, Lcom/ss/android/vesdk/VEEditor;->clearNativeFromInvokers()V

    .line 4611
    :cond_6d
    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    .line 4612
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_80

    .line 4613
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4614
    iput-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    .line 4616
    :cond_80
    monitor-exit p0

    return-void

    :goto_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_2 .. :try_end_83} :catchall_19

    throw v0
.end method

.method public reloadComposerNodes([Ljava/lang/String;)I
    .registers 2

    .line 8947
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->reloadComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public reloadComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 4

    .line 8995
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->reloadComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeAllVideoSound()I
    .registers 1

    .line 8724
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEBingo;->removeAllVideoSound()I

    move-result p0

    return p0
.end method

.method public removeComposerNodes([Ljava/lang/String;)I
    .registers 2

    .line 8969
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->removeComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeEffectListener()I
    .registers 1

    .line 5992
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->removeEffectCallback()I

    const/4 p0, 0x0

    return p0
.end method

.method public removeInfoSticker(I)I
    .registers 2

    .line 10579
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10580
    const-string p0, "VEEditor"

    const-string p1, "removeInfoSticker STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10583
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->removeInfoSticker(I)I

    move-result p0

    return p0
.end method

.method public removeKeyFrameParam(III)I
    .registers 5

    .line 4068
    monitor-enter p0

    .line 4069
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->deleteKeyFrameParam(III)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    .line 4070
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public removeMessageCenterListener()I
    .registers 1

    .line 6012
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->removeMessageCenterListener()I

    move-result p0

    return p0
.end method

.method public removeMusic(I)I
    .registers 2

    .line 8715
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEBingo;->removeMusic(I)I

    move-result p0

    return p0
.end method

.method public removeSegmentVolume(I)I
    .registers 2

    .line 8589
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESequence;->removeSegmentVolume(I)I

    move-result p0

    return p0
.end method

.method public replaceClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 5

    .line 8074
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVESequence;->replaceClip(IILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p0

    return p0
.end method

.method public replaceComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 6

    .line 9023
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEFilter;->replaceComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public replaceOnlyAudioClip(ILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 4

    .line 2829
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESequence;->replaceAudioClip(ILcom/ss/android/vesdk/clipparam/VEClipSourceParam;Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p0

    return p0
.end method

.method protected resetTrackIndexManager()V
    .registers 1

    .line 12021
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mTrackIndexManager:Lcom/ss/android/ttve/common/TETrackIndexManager;

    invoke-virtual {p0}, Lcom/ss/android/ttve/common/TETrackIndexManager;->reset()V

    return-void
.end method

.method public restore(Lcom/ss/android/vesdk/VEEditorModel;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4103
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 p1, -0xc8

    const-string v0, "Deprecated, no longer supported!"

    invoke-direct {p0, p1, v0}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public restoreAllVideoSound()I
    .registers 1

    .line 8733
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEBingo;->restoreAllVideoSound()I

    move-result p0

    return p0
.end method

.method public restoreInfoStickerPinWithData(ILjava/nio/ByteBuffer;)I
    .registers 3

    .line 11342
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11343
    const-string p0, "VEEditor"

    const-string p1, "restoreInfoStickerPinWithData STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11346
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->restoreInfoStickerPinWithData(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public reverseFilter()I
    .registers 2

    const/4 v0, 0x0

    .line 4699
    invoke-direct {p0, v0, v0}, Lcom/ss/android/vesdk/VEEditor;->reverseFilter(II)I

    move-result p0

    return p0
.end method

.method public save()Lcom/ss/android/vesdk/VEEditorModel;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4092
    new-instance p0, Lcom/ss/android/vesdk/VEException;

    const/16 v0, -0xc8

    const-string v1, "Deprecated, no longer supported!"

    invoke-direct {p0, v0, v1}, Lcom/ss/android/vesdk/VEException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public saveModel()Lcom/ss/android/vesdk/VEEditorModel;
    .registers 4

    .line 4113
    const-string v0, "saveModel..."

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4114
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    if-eqz v0, :cond_6d

    .line 4115
    new-instance v0, Lcom/ss/android/vesdk/VEEditorModel;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEEditorModel;-><init>()V

    .line 4116
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-boolean v1, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    iput-boolean v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->reverseDone:Z

    .line 4117
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->videoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    .line 4118
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoGravity:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->videoGravity:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 4119
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoScaletype:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->videoScaleType:Lcom/ss/android/vesdk/VEEditor$VIDEO_SCALETYPE;

    .line 4120
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->separateAV:Z

    .line 4121
    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->masterTrackIndex:I

    .line 4122
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->getHostTrackIndex()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->hostTrackIndex:I

    .line 4123
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v1}, Lcom/ss/android/vesdk/internal/IVEFilter;->getAudioFilterIndexInternal()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->audioEffectFilterIndex:I

    .line 4124
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v1}, Lcom/ss/android/vesdk/internal/IVEFilter;->getColorFilterIndexInternal()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->colorFilterIndex:I

    .line 4125
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v1}, Lcom/ss/android/vesdk/internal/IVEFilter;->getHDRFilterIndexInternal()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->effectHDRFilterIndex:I

    .line 4126
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v1}, Lcom/ss/android/vesdk/internal/IVEFilter;->getLensHDRFilterIndexInternal()I

    move-result v1

    iput v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->mLensHDRFilterIndex:I

    .line 4127
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iget-object v2, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    iput-object v2, v0, Lcom/ss/android/vesdk/VEEditorModel;->videoPaths:[Ljava/lang/String;

    .line 4128
    iget-object v2, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mAudioPaths:[Ljava/lang/String;

    iput-object v2, v0, Lcom/ss/android/vesdk/VEEditorModel;->audioPaths:[Ljava/lang/String;

    .line 4129
    iget-object v1, v1, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mTransitions:[Ljava/lang/String;

    iput-object v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->transitions:[Ljava/lang/String;

    .line 4130
    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mBackGroundColor:I

    iput v1, v0, Lcom/ss/android/vesdk/VEEditorModel;->backgroundColor:I

    .line 4131
    iget p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoBackGroundColor:I

    iput p0, v0, Lcom/ss/android/vesdk/VEEditorModel;->videoBackgroundColor:I

    return-object v0

    .line 4135
    :cond_6d
    const-string p0, "saveModel error, editor is not init..."

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;)I
    .registers 9

    .line 5493
    monitor-enter p0

    .line 5494
    :try_start_1
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5495
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v0

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    .line 5496
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    .line 5497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastSeekTimeMS:J

    .line 5498
    iget-wide v2, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_42

    .line 5499
    iput-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J

    goto :goto_42

    :catchall_40
    move-exception p1

    goto :goto_52

    .line 5502
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    iget v2, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result p2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->seek(IIII)I

    move-result p1

    monitor-exit p0

    return p1

    .line 5503
    :goto_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_40

    throw p1
.end method

.method public seek(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;)I
    .registers 10

    .line 5562
    monitor-enter p0

    .line 5563
    :try_start_1
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek with cb... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5564
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v0

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_41

    .line 5565
    iput-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    .line 5566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastSeekTimeMS:J

    .line 5567
    iget-wide v2, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-nez p3, :cond_41

    .line 5568
    iput-wide v0, p0, Lcom/ss/android/vesdk/VEEditor;->mlFirstSeekTimeMS:J

    goto :goto_41

    :catchall_3f
    move-exception p1

    goto :goto_6c

    .line 5571
    :cond_41
    :goto_41
    iget-object p3, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result p2

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->seek(IIII)I

    move-result p1

    if-eqz p1, :cond_6a

    .line 5573
    const-string p2, "VEEditor"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "seek failed, result = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 5574
    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    .line 5576
    :cond_6a
    monitor-exit p0

    return p1

    .line 5577
    :goto_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_3f

    throw p1
.end method

.method public seekIFrame(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;)I
    .registers 5

    .line 5705
    const-string v0, "VEEditor"

    const-string v1, "seekIFrame..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5706
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    iget p0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result p2

    or-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p1, v1, p0, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->seek(IIII)I

    move-result p0

    return p0
.end method

.method public seekWithResult(ILcom/ss/android/vesdk/VEListener$VEGetImageListener;)I
    .registers 6

    .line 5534
    monitor-enter p0

    .line 5535
    :try_start_1
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekWithResult... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5536
    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    .line 5537
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;

    invoke-virtual {p2, v0}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setSeekFrameCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IGetImageCallback;)V

    .line 5538
    iget-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p2, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->seekWithResult(I)I

    move-result p1

    if-eqz p1, :cond_44

    .line 5540
    const-string p2, "VEEditor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seek failed, result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 5541
    iput-object p2, p0, Lcom/ss/android/vesdk/VEEditor;->mGetSeekFrameListener:Lcom/ss/android/vesdk/VEListener$VEGetImageListener;

    goto :goto_44

    :catchall_42
    move-exception p1

    goto :goto_46

    .line 5543
    :cond_44
    :goto_44
    monitor-exit p0

    return p1

    .line 5544
    :goto_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_42

    throw p1
.end method

.method public seekWithSpeed(ILcom/ss/android/vesdk/VEEditor$SEEK_MODE;FF)I
    .registers 11

    .line 5599
    monitor-enter p0

    .line 5600
    :try_start_1
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekWithSpeed... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " durationSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " pxSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5601
    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v0

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_43

    const/4 v0, 0x0

    .line 5602
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSeekListener:Lcom/ss/android/vesdk/VEListener$VEEditorSeekListener;

    goto :goto_43

    :catchall_40
    move-exception v0

    move-object p1, v0

    goto :goto_5f

    :cond_43
    :goto_43
    if-lez p1, :cond_4b

    .line 5607
    invoke-direct {p0, p3, p4}, Lcom/ss/android/vesdk/VEEditor;->calSeekToleranceBySpeed(FF)I

    move-result p3

    :goto_49
    move v5, p3

    goto :goto_4e

    :cond_4b
    const/16 p3, 0xa

    goto :goto_49

    .line 5609
    :goto_4e
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget v2, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    iget v3, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    invoke-virtual {p2}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/ttve/nativePort/TEInterface;->seekWithTolerance(IIIII)I

    move-result p1

    monitor-exit p0

    return p1

    .line 5610
    :goto_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_1 .. :try_end_60} :catchall_40

    throw p1
.end method

.method public set2DBrushCanvasAlpha(F)I
    .registers 2

    .line 11405
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11406
    const-string p0, "VEEditor"

    const-string p1, "set2DBrushCanvasAlpha STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11409
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->set2DBrushCanvasAlpha(F)I

    move-result p0

    return p0
.end method

.method public set2DBrushColor(I)I
    .registers 2

    .line 11392
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11393
    const-string p0, "VEEditor"

    const-string p1, "set2DBrushColor STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11396
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->set2DBrushColor(I)I

    move-result p0

    return p0
.end method

.method public set2DBrushSize(F)I
    .registers 2

    .line 11381
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11382
    const-string p0, "VEEditor"

    const-string p1, "set2DBrushSize STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11385
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->set2DBrushSize(F)I

    move-result p0

    return p0
.end method

.method public setAIRotation(ILcom/ss/android/vesdk/ROTATE_DEGREE;)I
    .registers 3

    .line 8782
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEBingo;->setAIRotation(ILcom/ss/android/vesdk/ROTATE_DEGREE;)I

    move-result p0

    return p0
.end method

.method public setAlgorithmPreConfig(II)I
    .registers 5

    .line 7532
    const-string v0, "setAlgorithmPreConfig"

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7533
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setAlgorithmPreConfig(II)I

    move-result p0

    if-eqz p0, :cond_23

    .line 7535
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAlgorithmPreConfig failed, ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return p0
.end method

.method public setAlgorithmReplayModePlay(Ljava/lang/String;)V
    .registers 3

    .line 3480
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setAlgorithmReplay(ILjava/lang/String;)V

    return-void
.end method

.method public setAlgorithmReplayModeSave(Ljava/lang/String;)V
    .registers 3

    .line 3471
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setAlgorithmReplay(ILjava/lang/String;)V

    return-void
.end method

.method public setAlgorithmSyncAndNum(ZI)I
    .registers 5

    .line 7515
    const-string v0, "setAlgorithmSyncAndNum"

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7516
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setAlgorithmSyncAndNum(ZI)I

    move-result p0

    if-eqz p0, :cond_23

    .line 7518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setAlgorithmSyncAndNum failed, ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return p0
.end method

.method public setAudioDisplayListener(Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;)V
    .registers 2

    .line 1710
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

    .line 1711
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mAudioDisplayListener:Lcom/ss/android/vesdk/VEListener$VEAudioDisplayListener;

    if-eqz p1, :cond_c

    .line 1712
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->enableAudioDisplayCallBack(Z)I

    :cond_c
    return-void
.end method

.method public setAudioOffset(II)I
    .registers 3

    .line 10098
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->setAudioOffset(II)I

    move-result p0

    return p0
.end method

.method public setAutoPrepare(Z)V
    .registers 4

    .line 4203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoPrepare... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4204
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor;->mAutoPrepare:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 4

    .line 2188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBackgroundColor... color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->mBackGroundColor:I

    .line 2190
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setBackGroundColor(I)V

    return-void
.end method

.method public setCanvasMinDuration(IZ)I
    .registers 3

    .line 7905
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESequence;->setCanvasMinDuration(IZ)I

    move-result p0

    return p0
.end method

.method public setClientState(I)I
    .registers 4

    .line 7586
    const-string v0, "setClientState"

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7587
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setClientState(I)I

    move-result p0

    if-eqz p0, :cond_23

    .line 7589
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setClientState failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return p0
.end method

.method public setClipReservePitch(IIIZ)I
    .registers 5

    .line 8242
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVESequence;->setClipReservePitch(IIIZ)I

    move-result p0

    return p0
.end method

.method public setColorFilter(Ljava/lang/String;)I
    .registers 2

    .line 9359
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setColorFilter(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setColorFilter(Ljava/lang/String;F)I
    .registers 3

    .line 9371
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->setColorFilter(Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setColorFilter(Ljava/lang/String;FZZ)I
    .registers 5

    .line 9410
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->setColorFilter(Ljava/lang/String;FZZ)I

    move-result p0

    return p0
.end method

.method public setColorFilter(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 4

    .line 9383
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->setColorFilter(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setColorFilter(Ljava/lang/String;Ljava/lang/String;FF)I
    .registers 5

    .line 9397
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->setColorFilter(Ljava/lang/String;Ljava/lang/String;FF)I

    move-result p0

    return p0
.end method

.method public setColorFilter(Ljava/lang/String;Ljava/lang/String;FFZ)I
    .registers 6

    .line 9425
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEFilter;->setColorFilter(Ljava/lang/String;Ljava/lang/String;FFZ)I

    move-result p0

    return p0
.end method

.method public setColorFilterNew(Ljava/lang/String;F)I
    .registers 3

    .line 9436
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->setColorFilterNew(Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setColorFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)I
    .registers 6

    .line 9451
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEFilter;->setColorFilterNew(Ljava/lang/String;Ljava/lang/String;FFF)I

    move-result p0

    return p0
.end method

.method public setCompileAudioDriver(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .line 5971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VEEditor-setCompileAudioDriver, path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trimIn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trimOut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5972
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCompileAudioDriver(Ljava/lang/String;IILjava/lang/String;)I

    return-void
.end method

.method public setCompileListener(Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;)V
    .registers 2

    .line 6701
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    return-void
.end method

.method public setCompileListener(Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;Landroid/os/Looper;)V
    .registers 3

    .line 6685
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mCompileListener:Lcom/ss/android/vesdk/VEListener$VEEditorCompileListener;

    if-eqz p2, :cond_c

    .line 6687
    new-instance p1, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    invoke-direct {p1, p0, p2}, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;-><init>(Lcom/ss/android/vesdk/VEEditor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    return-void

    :cond_c
    const/4 p1, 0x0

    .line 6689
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    return-void
.end method

.method public setComposerMode(II)I
    .registers 3

    .line 8880
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->setComposerMode(II)I

    move-result p0

    return p0
.end method

.method public setComposerNodes([Ljava/lang/String;)I
    .registers 2

    .line 8936
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setComposerNodes([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 4

    .line 8982
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->setComposerNodesWithTag([Ljava/lang/String;I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setCrop(IIII)V
    .registers 8

    .line 4334
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 4335
    div-int v1, p4, p3

    const-string v2, "iesve_veeditor_cut_scale"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;I)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    const/4 v1, 0x1

    .line 4336
    invoke-static {v2, v1, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 4338
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setCrop(IIII)V

    return-void
.end method

.method public setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V
    .registers 2

    .line 6021
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mCustomProcessor:Lcom/ss/android/vesdk/VEFrameCustomProcessor;

    .line 6022
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setCustomProcessor(Lcom/ss/android/vesdk/VEFrameCustomProcessor;)V

    return-void
.end method

.method public setDestroyVersion(Z)I
    .registers 2

    .line 2239
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setDestroyVersion(Z)I

    move-result p0

    return p0
.end method

.method public setDeviceRotation([F)I
    .registers 4

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 5865
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/android/vesdk/VEEditor;->setDeviceRotation([FD)I

    move-result p0

    return p0
.end method

.method public setDeviceRotation([FD)I
    .registers 4

    .line 5874
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setDeviceRotation([FD)I

    move-result p0

    return p0
.end method

.method public setDisplayPos(IIII)V
    .registers 13

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayPos... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v0, p3

    .line 1730
    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayWidth:I

    int-to-float v1, v1

    div-float v3, v0, v1

    int-to-float v0, p4

    .line 1731
    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayHeight:I

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 1732
    iget v0, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr v0, p3

    sub-int/2addr v0, p1

    neg-int v6, v0

    .line 1733
    iget p1, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p1, p4

    sub-int v7, p1, p2

    const/4 v5, 0x0

    move-object v2, p0

    .line 1735
    invoke-virtual/range {v2 .. v7}, Lcom/ss/android/vesdk/VEEditor;->setDisplayState(FFFII)V

    return-void
.end method

.method public setDisplayState(FFFII)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1819
    invoke-virtual/range {v0 .. v6}, Lcom/ss/android/vesdk/VEEditor;->setDisplayState(FFFIII)V

    return-void
.end method

.method public setDisplayState(FFFIII)V
    .registers 16

    .line 1841
    new-instance v0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {v0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 1842
    const-string v1, "iesve_veeditor_video_scale_width"

    invoke-virtual {v0, v1, p1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;F)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    move-result-object v1

    const-string v2, "iesve_veeditor_video_scale_heigh"

    .line 1843
    invoke-virtual {v1, v2, p2}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;F)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 1844
    const-string v1, "iesve_veeditor_video_scale"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    .line 1845
    iput p3, p0, Lcom/ss/android/vesdk/VEEditor;->rotate:F

    .line 1846
    iput p2, p0, Lcom/ss/android/vesdk/VEEditor;->scaleW:F

    .line 1847
    iput p2, p0, Lcom/ss/android/vesdk/VEEditor;->scaleH:F

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisplayState... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    :try_start_52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1851
    const-string v1, "scaleW"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1852
    const-string v1, "scaleH"

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1853
    const-string v1, "degree"

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1854
    const-string v1, "transX"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1855
    const-string v1, "transY"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1856
    const-string v1, "vesdk_event_editor_scale_rotate_trans"

    const-string v2, "behavior"

    invoke-static {v1, v0, v2}, Lcom/ss/android/ttve/monitor/ApplogUtils;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception v0

    .line 1859
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1861
    :goto_90
    iget-object v1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/ss/android/ttve/nativePort/TEInterface;->setDisplayState(FFFFIII)V

    return-void
.end method

.method public declared-synchronized setDldEnabled(Z)V
    .registers 3

    monitor-enter p0

    .line 9586
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setDldEnabled(Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 9587
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

.method public declared-synchronized setDldThrVal(I)V
    .registers 3

    monitor-enter p0

    .line 9595
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setDldThrVal(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 9596
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

.method public declared-synchronized setDleEnabled(Z)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_10

    .line 9558
    :try_start_3
    const-string v0, "VEEditor"

    const-string v1, "compileProbe setDleEnabled enabled = false"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9559
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_17

    .line 9561
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setDleEnabled(Z)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_e

    .line 9563
    monitor-exit p0

    return-void

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_e

    throw p1
.end method

.method public declared-synchronized setDleEnabledPreview(Z)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_10

    .line 9574
    :try_start_3
    const-string v0, "VEEditor"

    const-string v1, "compileProbe setDleEnabledPreview enabled = false"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9575
    invoke-static {}, Lcom/ss/android/vesdk/VEEditor;->cancelCompileProbe()V

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_17

    .line 9577
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setDleEnabledPreview(Z)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_e

    .line 9578
    monitor-exit p0

    return-void

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_e

    throw p1
.end method

.method public setEditorMode(I)V
    .registers 3

    .line 4307
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->mEditorMode:I

    .line 4308
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEditorMode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VEEditor"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEditorUsageType(Ljava/lang/String;)V
    .registers 4

    .line 2648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEditorUsageType... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mUsageType:Ljava/lang/String;

    return-void
.end method

.method public setEffectBgmEnable(Z)I
    .registers 2

    .line 11242
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11243
    const-string p0, "VEEditor"

    const-string p1, "setEffectBgmEnable STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11246
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->setEffectBgmEnable(Z)I

    move-result p0

    return p0
.end method

.method public setEffectCacheInt(ILjava/lang/String;I)I
    .registers 4

    .line 8848
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->setEffectCacheInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setEffectFontPath(ILjava/lang/String;I)I
    .registers 4

    .line 10866
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10867
    const-string p0, "VEEditor"

    const-string p1, "setEffectFontPath STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10870
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESticker;->setEffectFontPath(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setEffectHDRFilter(ILjava/lang/String;F)I
    .registers 4

    .line 9501
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->setEffectHDRFilter(ILjava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setEffectHDRFilter(Ljava/lang/String;)I
    .registers 2

    .line 9476
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setEffectHDRFilter(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setEffectHDRFilter(Ljava/lang/String;F)I
    .registers 3

    .line 9488
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->setEffectHDRFilter(Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public setEffectInputText(ILjava/lang/String;IILjava/lang/String;)I
    .registers 6

    .line 10881
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10882
    const-string p0, "VEEditor"

    const-string p1, "setEffectInputText STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10885
    :cond_e
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVESticker;->setEffectInputText(ILjava/lang/String;IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setEffectListener(Lcom/ss/android/vesdk/VEListener$VEEditorEffectListener;)I
    .registers 2

    .line 5982
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEffectCallback(Lcom/ss/android/vesdk/VEListener$VEEditorEffectListener;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setEffectMaxMemoryCache(I)I
    .registers 4

    .line 7407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEffectMaxMemoryCache size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_1b

    const/16 p0, -0x64

    return p0

    .line 7411
    :cond_1b
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setEffectMaxMemoryCache(I)I

    move-result p0

    if-eqz p0, :cond_37

    .line 7413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setEffectMaxMemoryCache failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    return p0
.end method

.method public setEnableMultipleAudioFilter(Z)V
    .registers 2

    .line 10075
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setEnableMultipleAudioFilter(Z)V

    return-void
.end method

.method public setExpandLastFrame(Z)V
    .registers 4

    .line 3655
    const-string v0, "VEEditor"

    const-string v1, "setExpandLastFrame..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3656
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setExpandLastFrame(Z)V

    return-void
.end method

.method public setExtVideoTrackSeqIn(II)I
    .registers 3

    .line 8525
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESequence;->setExtVideoTrackSeqIn(II)I

    move-result p0

    return p0
.end method

.method public setExternalAlgorithmResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 11801
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11802
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11805
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->setExternalAlgorithmResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setExternalAlgorithmResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_IN_TYPE;)I
    .registers 5

    .line 11844
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11845
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11848
    :cond_e
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->setExternalAlgorithmResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/vesdk/VEMVAlgorithmConfig$MV_REESULT_IN_TYPE;)I

    move-result p0

    return p0
.end method

.method public setExternalVideoTrackLayer(II)I
    .registers 3

    .line 8537
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESequence;->setExternalVideoTrackLayer(II)I

    move-result p0

    return p0
.end method

.method public setFileRotate(IILcom/ss/android/vesdk/ROTATE_DEGREE;)I
    .registers 4

    .line 8182
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESequence;->setFileRotate(IILcom/ss/android/vesdk/ROTATE_DEGREE;)I

    move-result p0

    return p0
.end method

.method public setFilterInTimeOffset(II)I
    .registers 3

    .line 9241
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->setFilterInTimeOffset(II)I

    move-result p0

    return p0
.end method

.method public setFirstFrameListener(Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;)V
    .registers 2

    .line 1317
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstFrameListener:Lcom/ss/android/vesdk/VEListener$VEFirstFrameListener;

    return-void
.end method

.method public setForceDetectForFirstFrameByClip(Z)V
    .registers 2

    .line 3541
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setForceDetectForFirstFrameByClip(Z)V

    return-void
.end method

.method public setFrameTrace(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setHeightWidthRatio(F)V
    .registers 4

    .line 3645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeightWidthRatio... ratio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3646
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setHeightWidthRatio(F)V

    return-void
.end method

.method public setImageResizeInfo(III)V
    .registers 5

    const/4 v0, 0x0

    .line 3635
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/android/vesdk/VEEditor;->setImageResizeInfo(IIII)V

    return-void
.end method

.method public setImageResizeInfo(IIII)V
    .registers 7

    .line 3624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageResizeInfo... width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resfillmode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resizeAlgro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3625
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setImageResizeinfo(IIII)V

    return-void
.end method

.method public setInOut(II)I
    .registers 3

    .line 7811
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESequence;->setInOut(II)I

    move-result p0

    return p0
.end method

.method public setInOut(IILcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;)I
    .registers 4

    .line 7825
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESequence;->setInOut(IILcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;)I

    move-result p0

    return p0
.end method

.method public setInfoStickerAlpha(IF)I
    .registers 3

    .line 10461
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10462
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerAlpha STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10465
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerAlpha(IF)I

    move-result p0

    return p0
.end method

.method public setInfoStickerBufferCallback(Lcom/ss/android/vesdk/VEListener$VEInfoStickerBufferListener;)I
    .registers 2

    .line 10284
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10285
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerBufferCallback STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10288
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerBufferCallback(Lcom/ss/android/vesdk/VEListener$VEInfoStickerBufferListener;)I

    move-result p0

    return p0
.end method

.method public setInfoStickerCallSync(Z)I
    .registers 2

    .line 10850
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10851
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerCallSync STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10854
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerCallSync(Z)I

    move-result p0

    return p0
.end method

.method public setInfoStickerEditMode(Z)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public setInfoStickerFlip(IZZ)I
    .registers 4

    .line 10494
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10495
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerFlip STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10498
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerFlip(IZZ)I

    move-result p0

    return p0
.end method

.method public setInfoStickerLayer(II)I
    .registers 3

    .line 10477
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10478
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerLayer STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10481
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerLayer(II)I

    move-result p0

    return p0
.end method

.method public setInfoStickerPosition(IFF)I
    .registers 4

    .line 10363
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10364
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerPosition STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10367
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerPosition(IFF)I

    move-result p0

    return p0
.end method

.method public setInfoStickerRestoreMode(I)I
    .registers 2

    .line 10659
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10660
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerRestoreMode STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10663
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerRestoreMode(I)I

    move-result p0

    return p0
.end method

.method public setInfoStickerRotation(IF)I
    .registers 3

    .line 10395
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10396
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerRotation STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10399
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerRotation(IF)I

    move-result p0

    return p0
.end method

.method public setInfoStickerScale(IF)I
    .registers 3

    .line 10428
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10429
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerScale STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10432
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerScale(IF)I

    move-result p0

    return p0
.end method

.method public setInfoStickerScaleSync(IF)F
    .registers 3

    .line 10445
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_f

    .line 10446
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerScaleSync STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p0, -0x3b9ec000    # -901.0f

    return p0

    .line 10449
    :cond_f
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerScaleSync(IF)F

    move-result p0

    return p0
.end method

.method public setInfoStickerTemplateParams(ILjava/lang/String;)I
    .registers 3

    .line 10508
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10509
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerTemplateParams STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10512
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerTemplateParams(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setInfoStickerTime(III)I
    .registers 4

    .line 10412
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10413
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerTime STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10416
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerTime(III)I

    move-result p0

    return p0
.end method

.method public setInfoStickerVisible(IZ)I
    .registers 3

    .line 10706
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10707
    const-string p0, "VEEditor"

    const-string p1, "setInfoStickerVisible STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10710
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setInfoStickerVisible(IZ)I

    move-result p0

    return p0
.end method

.method protected setInitSuccess(Z)V
    .registers 2

    .line 11935
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSuccess:Z

    return-void
.end method

.method protected setInitTimeMS(J)V
    .registers 3

    .line 11931
    iput-wide p1, p0, Lcom/ss/android/vesdk/VEEditor;->mlInitTimeMS:J

    return-void
.end method

.method public setInterimScoresToFile(Ljava/lang/String;)I
    .registers 2

    .line 8801
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEBingo;->setInterimScoresToFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setKeyFrameParam(IIILjava/lang/String;)I
    .registers 6

    .line 4053
    monitor-enter p0

    .line 4054
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->setKeyFrameParam(IIILjava/lang/String;)I

    move-result p1

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    .line 4055
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public setLanguage(Ljava/lang/String;)I
    .registers 2

    .line 11029
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11030
    const-string p0, "VEEditor"

    const-string p1, "setLanguage STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11033
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->setLanguage(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected setLastTimeMS(J)V
    .registers 3

    .line 11927
    iput-wide p1, p0, Lcom/ss/android/vesdk/VEEditor;->mlLastTimeMS:J

    return-void
.end method

.method public setLensHDRFilter(Ljava/lang/String;)I
    .registers 4

    .line 9513
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-interface {p0, p1, v0, v1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setLensHDRFilter(Ljava/lang/String;D)I

    move-result p0

    return p0
.end method

.method public setLensHDRFilter(Ljava/lang/String;I)I
    .registers 5

    .line 9525
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    int-to-double v0, p2

    invoke-interface {p0, p1, v0, v1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setLensHDRFilter(Ljava/lang/String;D)I

    move-result p0

    return p0
.end method

.method public setListenerForMV(Lcom/ss/android/vesdk/VEListener$VEMVInitListener;)V
    .registers 2

    .line 11468
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_c

    .line 11469
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11473
    :cond_c
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->setListenerForMV(Lcom/ss/android/vesdk/VEListener$VEMVInitListener;)V

    return-void
.end method

.method public setLoopPlay(Z)V
    .registers 4

    .line 4281
    const-string v0, "VEEditor"

    const-string v1, "setLoopPlay"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4282
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setLooping(Z)V

    return-void
.end method

.method public setMVAudioBeatAlgorithmResult(Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;)I
    .registers 2

    .line 11814
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11815
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11818
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->setMVAudioBeatAlgorithmResult(Lcom/ss/android/ttve/model/VEMVAudioAlgorithmResult;)I

    move-result p0

    return p0
.end method

.method public setMVDataJson(Ljava/lang/String;)I
    .registers 2

    .line 11827
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11828
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11831
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->setMVDataJson(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setMVoriginalAudio(ZF)I
    .registers 3

    .line 11657
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11658
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11661
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->setMvOriginalAudio(ZF)I

    move-result p0

    return p0
.end method

.method public setMaleMakeupState(Z)I
    .registers 2

    .line 9536
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMaleMakeupState(Z)I

    move-result p0

    return p0
.end method

.method protected setMasterTrackIndex(I)V
    .registers 2

    .line 11955
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->mMasterTrackIndex:I

    return-void
.end method

.method public setMaxWidthHeight(II)V
    .registers 5

    .line 3568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxWidthHeight... width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setMaxWidthHeight(II)V

    return-void
.end method

.method public setMessageCenterListener(Lcom/ss/android/vesdk/VEListener$VEMessageCenterListener;)I
    .registers 2

    .line 6003
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setMessageCenterListener(Lcom/ss/android/vesdk/VEListener$VEMessageCenterListener;)I

    move-result p0

    return p0
.end method

.method public setMessageHandlerLooper(Landroid/os/Looper;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 6748
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    invoke-direct {v0, p0, p1}, Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;-><init>(Lcom/ss/android/vesdk/VEEditor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    return-void

    .line 6750
    :cond_a
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6751
    iput-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mMessageHandler:Lcom/ss/android/vesdk/VEEditor$VEEditorMessageHandler;

    return-void
.end method

.method public setMultiComposer(Z)V
    .registers 2

    .line 3555
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setMultiComposer(Z)V

    return-void
.end method

.method public setMusicAndResult(Ljava/lang/String;IILcom/ss/android/vesdk/clipparam/VEAlgorithmPath;)I
    .registers 5

    .line 8704
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEBingo;->setMusicAndResult(Ljava/lang/String;IILcom/ss/android/vesdk/clipparam/VEAlgorithmPath;)I

    move-result p0

    return p0
.end method

.method public setMusicCropRatio(I)I
    .registers 2

    .line 8791
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEBingo;->setMusicCropRatio(I)I

    move-result p0

    return p0
.end method

.method protected setMusicSRTEffectFilterIndex(I)V
    .registers 2

    .line 11943
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtIndexInternal(I)V

    return-void
.end method

.method public setMusicSrtEffect(Lcom/ss/android/vesdk/VEMusicSRTEffectParam;)I
    .registers 2
    .annotation build Lcom/ss/android/vesdk/annotation/TobAuth;
        func = 0x3a8ac62b
    .end annotation

    .line 10109
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtEffect(Lcom/ss/android/vesdk/VEMusicSRTEffectParam;)I

    move-result p0

    return p0
.end method

.method public setMusicSrtEffect(Lcom/ss/android/vesdk/VEMusicSRTEffectParam;Z)I
    .registers 3
    .annotation build Lcom/ss/android/vesdk/annotation/TobAuth;
        func = 0x3a8ac62b
    .end annotation

    .line 10121
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->setMusicSrtEffect(Lcom/ss/android/vesdk/VEMusicSRTEffectParam;Z)I

    move-result p0

    return p0
.end method

.method public setOnErrorListener(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 2

    .line 1689
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonErrorCallback:Lcom/ss/android/vesdk/VECommonCallback;

    .line 1690
    const-string p0, "VEEditor"

    const-string p1, "setOnErrorListener..."

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnInfoListener(Lcom/ss/android/vesdk/VECommonCallback;)V
    .registers 4

    .line 1700
    const-string v0, "VEEditor"

    const-string v1, "setOnInfoListener..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mUserCommonInfoCallback:Lcom/ss/android/vesdk/VECommonCallback;

    return-void
.end method

.method public declared-synchronized setPageMode(I)V
    .registers 5

    monitor-enter p0

    .line 4294
    :try_start_1
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->mPageMode:I

    .line 4295
    const-string v0, "VEEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPageMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4296
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setPageMode(I)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 4297
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public setPreviewFps(I)I
    .registers 4

    .line 6057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewFps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6058
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setPreviewFps(I)I

    const/4 p0, 0x0

    return p0
.end method

.method public setPreviewScaleMode(I)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7552
    const-string v0, "setPreviewScaleMode"

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7553
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setPreviewScaleMode(I)I

    move-result p0

    if-eqz p0, :cond_23

    .line 7555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPreviewScaleMode failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    return p0
.end method

.method public setPreviewScaleMode(Lcom/ss/android/vesdk/VEEditor$PREVIEW_SCALE_MODE;)I
    .registers 4

    .line 7570
    const-string v0, "setPreviewScaleMode"

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7571
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setPreviewScaleMode(I)I

    move-result p0

    if-eqz p0, :cond_27

    .line 7573
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPreviewScaleMode failed, ret = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return p0
.end method

.method public setPreviewSurfaceBitmap(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1228
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "VEEditor"

    if-eqz v0, :cond_10

    .line 1229
    const-string p0, "no need to setPreviewSurfaceBitmap, is destroying, just return"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1233
    :cond_10
    const-string v0, "setPreviewSurfaceBitmap..."

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->setPreviewSurfaceBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setPreviewSurfaceBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 5

    .line 1245
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "VEEditor"

    if-eqz v0, :cond_10

    .line 1246
    const-string p0, "no need to setPreviewSurfaceBitmap, is destroying, just return"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1250
    :cond_10
    const-string v0, "setPreviewSurfaceBitmap..."

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setPreviewSurfaceBitmap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public setReDrawBmp(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 6244
    const-string v0, "VEEditor"

    const-string v1, "setReDrawBmp..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6246
    iget-boolean v0, p0, Lcom/ss/android/vesdk/VEEditor;->mFirstTimeSurfaceCreate:Z

    if-nez v0, :cond_c

    return-void

    .line 6249
    :cond_c
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 6250
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 6252
    :cond_1b
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 6253
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurface:Z

    .line 6254
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurfaceOnce:Z

    return-void
.end method

.method public setReverseMediaPaths([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 5272
    const-string v0, "setReverseMediaPaths"

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_24

    .line 5273
    array-length v0, p1

    if-gtz v0, :cond_d

    goto :goto_24

    :cond_d
    if-eqz p2, :cond_12

    .line 5277
    array-length v0, p2

    if-gtz v0, :cond_17

    .line 5278
    :cond_12
    const-string v0, "setReverseMediaPaths with reverseAudioPaths is null"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5280
    :cond_17
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    if-eqz p0, :cond_22

    .line 5281
    iput-object p2, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseAudioPaths:[Ljava/lang/String;

    .line 5282
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    const/4 p1, 0x1

    .line 5283
    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    :cond_22
    const/4 p0, 0x0

    return p0

    .line 5274
    :cond_24
    :goto_24
    const-string p0, "setReverseMediaPaths error, reverseVideoPaths = null"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public setReverseVideoPaths([Ljava/lang/String;)I
    .registers 4

    .line 5228
    const-string v0, "setReverseVideoPaths"

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_18

    .line 5229
    array-length v0, p1

    if-gtz v0, :cond_d

    goto :goto_18

    .line 5234
    :cond_d
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    if-eqz p0, :cond_16

    .line 5235
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseVideoPath:[Ljava/lang/String;

    const/4 p1, 0x1

    .line 5236
    iput-boolean p1, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mReverseDone:Z

    :cond_16
    const/4 p0, 0x0

    return p0

    .line 5230
    :cond_18
    :goto_18
    const-string p0, "setReverseVideoPaths error, reverseVideoPaths is null"

    invoke-static {v1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public setScaleMode(Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;)I
    .registers 3

    .line 5429
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5430
    const-string p0, "VEEditor"

    const-string p1, "set scale mode failed,is destroying, just return"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_11
    const/4 v0, 0x0

    .line 5433
    invoke-virtual {p0, p1, v0, v0}, Lcom/ss/android/vesdk/VEEditor;->setScaleMode(Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;FF)I

    move-result p0

    return p0
.end method

.method public setScaleMode(Lcom/ss/android/vesdk/VEEditor$SCALE_MODE;FF)I
    .registers 8

    .line 5451
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VEEditor"

    if-eqz v0, :cond_11

    .line 5452
    const-string p0, "set scale mode failed,is destroying, just return"

    invoke-static {v2, p0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5455
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScaleMode... mode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", x = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", y = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5456
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$15;->$SwitchMap$com$ss$android$vesdk$VEEditor$SCALE_MODE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_6c

    goto :goto_6a

    .line 5473
    :pswitch_41
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p1, 0x6

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setResizer(IFF)V

    goto :goto_6a

    .line 5470
    :pswitch_48
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setResizer(IFF)V

    goto :goto_6a

    .line 5467
    :pswitch_4f
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setResizer(IFF)V

    goto :goto_6a

    .line 5464
    :pswitch_56
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setResizer(IFF)V

    goto :goto_6a

    .line 5461
    :pswitch_5d
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setResizer(IFF)V

    goto :goto_6a

    .line 5458
    :pswitch_64
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/ttve/nativePort/TEInterface;->setResizer(IFF)V

    :goto_6a
    return v1

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_64
        :pswitch_5d
        :pswitch_56
        :pswitch_4f
        :pswitch_48
        :pswitch_41
    .end packed-switch
.end method

.method protected setSeparateAV(Ljava/lang/Boolean;)V
    .registers 2

    .line 11947
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mbSeparateAV:Ljava/lang/Boolean;

    return-void
.end method

.method public setSpeedRatio(F)I
    .registers 4

    .line 6069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeedRatio = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6070
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setSpeedRatio(F)V

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized setSpeedRatioAndUpdate(F)I
    .registers 6

    monitor-enter p0

    .line 6081
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 6082
    const-string p1, "VEEditor"

    const-string v0, "no need to setSpeedRatioAndUpdate, is destroying, just return"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 6083
    monitor-exit p0

    return v1

    :catchall_13
    move-exception p1

    goto :goto_49

    .line 6085
    :cond_15
    :try_start_15
    const-string v0, "VEEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSpeedRatioAndUpdate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6086
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_37

    move p1, v0

    .line 6090
    :cond_37
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setSpeedRatio(F)V

    .line 6091
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->createTimeline()I

    .line 6092
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1, v1}, Lcom/ss/android/ttve/nativePort/TEInterface;->prepareEngine(I)I

    move-result p1
    :try_end_47
    .catchall {:try_start_15 .. :try_end_47} :catchall_13

    monitor-exit p0

    return p1

    :goto_49
    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_13

    throw p1
.end method

.method public setSrtAudioInfo(IIIIIZ)I
    .registers 7

    .line 11166
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11167
    const-string p0, "VEEditor"

    const-string p1, "setSrtAudioInfo STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11170
    :cond_e
    invoke-interface/range {p0 .. p6}, Lcom/ss/android/vesdk/internal/IVESticker;->setSrtAudioInfo(IIIIIZ)I

    move-result p0

    return p0
.end method

.method public setSrtColor(II)I
    .registers 3

    .line 11151
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11152
    const-string p0, "VEEditor"

    const-string p1, "setSrtColor STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11155
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setSrtColor(II)I

    move-result p0

    return p0
.end method

.method public setSrtFont(ILjava/lang/String;)I
    .registers 3

    .line 11135
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11136
    const-string p0, "VEEditor"

    const-string p1, "setSrtFont STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11139
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setSrtFont(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setSrtInfo(IILjava/lang/String;)I
    .registers 4

    .line 11119
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11120
    const-string p0, "VEEditor"

    const-string p1, "setSrtInfo STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11123
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESticker;->setSrtInfo(IILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setSrtInitialPosition(IFF)I
    .registers 4

    .line 11199
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11200
    const-string p0, "VEEditor"

    const-string p1, "setSrtInitialPosition STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11203
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESticker;->setSrtInitialPosition(IFF)I

    move-result p0

    return p0
.end method

.method public setSrtManipulateState(IZ)I
    .registers 3

    .line 11182
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11183
    const-string p0, "VEEditor"

    const-string p1, "setSrtManipulateState STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11186
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setSrtManipulateState(IZ)I

    move-result p0

    return p0
.end method

.method public setStickerAnimation(IZLjava/lang/String;ILjava/lang/String;I)I
    .registers 18

    .line 10757
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez v0, :cond_e

    .line 10758
    const-string p0, "VEEditor"

    const-string p1, "setStickerAnimation STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    :cond_e
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 10761
    const-string v7, ""

    const/4 v8, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v10}, Lcom/ss/android/vesdk/internal/IVESticker;->setStickerAnimation(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public setStickerAnimation(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;III)I
    .registers 11

    .line 10788
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10789
    const-string p0, "VEEditor"

    const-string p1, "setStickerAnimation STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10792
    :cond_e
    invoke-interface/range {p0 .. p10}, Lcom/ss/android/vesdk/internal/IVESticker;->setStickerAnimation(IZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public setStickerAnimator(ILcom/ss/android/vesdk/VEStickerAnimator;)I
    .registers 3

    .line 10140
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10141
    const-string p0, "VEEditor"

    const-string p1, "setStickerAnimator STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10144
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setStickerAnimator(ILcom/ss/android/vesdk/VEStickerAnimator;)I

    move-result p0

    return p0
.end method

.method public setStickerPinArea(ILcom/ss/android/vesdk/filterparam/VEStickerPinAreaParam;)I
    .registers 3

    .line 11259
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->setStickerPinArea(ILcom/ss/android/vesdk/filterparam/VEStickerPinAreaParam;)I

    move-result p0

    return p0
.end method

.method public setSurfaceReDraw(Z)V
    .registers 4

    .line 6213
    const-string v0, "VEEditor"

    const-string v1, "setSurfaceReDraw..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6214
    iput-boolean p1, p0, Lcom/ss/android/vesdk/VEEditor;->mReDrawSurface:Z

    if-nez p1, :cond_e

    const/4 p1, 0x0

    .line 6216
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mCurrentBmp:Landroid/graphics/Bitmap;

    :cond_e
    return-void
.end method

.method public setTextBitmapCallback(Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;)I
    .registers 2

    .line 11101
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11102
    const-string p0, "VEEditor"

    const-string p1, "setTextBitmapCallback STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11105
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->setTextBitmapCallback(Lcom/ss/android/vesdk/VEEditor$OnARTextBitmapCallback;)I

    move-result p0

    return p0
.end method

.method public setTimeRange(IILcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;)I
    .registers 4

    .line 7841
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESequence;->setTimeRange(IILcom/ss/android/vesdk/VEEditor$SET_RANGE_MODE;)I

    move-result p0

    return p0
.end method

.method public setTrackDurationType(III)I
    .registers 4

    .line 7797
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESequence;->setTrackDurationType(III)I

    move-result p0

    return p0
.end method

.method public setTrackFilterEnable(IZZ)I
    .registers 4

    .line 9255
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->setTrackFilterEnable(IZZ)I

    move-result p0

    return p0
.end method

.method public setTransitionAt(JLjava/lang/String;)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9614
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->setTransitionAt(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setUseLargeMattingModel(Z)V
    .registers 3

    .line 6045
    monitor-enter p0

    .line 6046
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setUseLargeMattingModel(Z)V

    .line 6047
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public setVEEncoderListener(Lcom/ss/android/vesdk/VEListener$VEEncoderListener;)V
    .registers 2

    .line 6152
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mEncoderListener:Lcom/ss/android/vesdk/VEListener$VEEncoderListener;

    return-void
.end method

.method public setVideoBackgroudColor(I)V
    .registers 4

    .line 2218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoBackgroudColor... color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    iput p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoBackGroundColor:I

    .line 2220
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttve/nativePort/TEInterface;->setVideoBackGroundColor(I)V

    return-void
.end method

.method protected setVideoOutRes(Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;)V
    .registers 2

    .line 11939
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutRes:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-void
.end method

.method public setVideoOutputListener(Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;)V
    .registers 2

    .line 6710
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

    .line 6711
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoOutputListener:Lcom/ss/android/vesdk/VEListener$VEVideoOutputListener;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    .line 6712
    invoke-static {p0}, Lcom/ss/android/ttve/nativePort/TEInterface;->openOutputCallback(Z)I

    :cond_a
    return-void
.end method

.method public setVideoPaths([Ljava/lang/String;)V
    .registers 4

    .line 5259
    const-string v0, "VEEditor"

    const-string v1, "setVideoPaths"

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5260
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mResManager:Lcom/ss/android/vesdk/runtime/VEEditorResManager;

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VEEditorResManager;->mVideoPaths:[Ljava/lang/String;

    return-void
.end method

.method public setVolume(IIF)Z
    .registers 4

    .line 8602
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESequence;->setVolume(IIF)Z

    move-result p0

    return p0
.end method

.method public setWidthHeight(II)V
    .registers 5

    .line 3531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWidthHeight... width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->setWidthHeight(II)V

    return-void
.end method

.method public setmKeyFrameListener(Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;)V
    .registers 2

    .line 6722
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mKeyFrameListener:Lcom/ss/android/vesdk/VEListener$VEKeyFrameListener;

    if-eqz p1, :cond_b

    .line 6724
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mkeyFrameCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;

    invoke-virtual {p1, p0}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setKeyFrameCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IKeyFrameCallback;)V

    :cond_b
    return-void
.end method

.method public setmMattingListener(Lcom/ss/android/vesdk/VEListener$VEMattingListener;)V
    .registers 2

    .line 6734
    iput-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingListener:Lcom/ss/android/vesdk/VEListener$VEMattingListener;

    if-eqz p1, :cond_b

    .line 6736
    iget-object p1, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mMattingCallback:Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;

    invoke-virtual {p1, p0}, Lcom/ss/android/ttve/nativePort/TENativeServiceBase;->setMattingCallback(Lcom/ss/android/ttve/nativePort/NativeCallbacks$IMattingCallback;)V

    :cond_b
    return-void
.end method

.method public startEffectMonitor()V
    .registers 1

    .line 8857
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEFilter;->startEffectMonitor()V

    return-void
.end method

.method public startStickerAnimationPreview(II)I
    .registers 3

    .line 10820
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10821
    const-string p0, "VEEditor"

    const-string p1, "startStickerAnimationPreview STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10824
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->startStickerAnimationPreview(II)I

    move-result p0

    return p0
.end method

.method public stop()V
    .registers 3

    .line 4510
    monitor-enter p0

    .line 4511
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    if-eqz v0, :cond_14

    .line 4512
    const-string v0, "VEEditor"

    const-string v1, "stop... "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4514
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {v0}, Lcom/ss/android/ttve/nativePort/TEInterface;->stop()I

    goto :goto_14

    :catchall_12
    move-exception v0

    goto :goto_16

    .line 4516
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_12

    throw v0
.end method

.method public stopEffectMonitor()V
    .registers 1

    .line 8866
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEFilter;->stopEffectMonitor()V

    return-void
.end method

.method public stopInfoStickerPin(I)I
    .registers 2

    .line 11300
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESticker;->stopInfoStickerPin(I)I

    move-result p0

    return p0
.end method

.method public stopStickerAnimationPreview()I
    .registers 2

    .line 10833
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10834
    const-string p0, "VEEditor"

    const-string v0, "stopStickerAnimationPreview STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10837
    :cond_e
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVESticker;->stopStickerAnimationPreview()I

    move-result p0

    return p0
.end method

.method public suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z
    .registers 3

    .line 7627
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->suspendGestureRecognizer(Lcom/ss/android/vesdk/VEGestureEvent;Z)Z

    move-result p0

    return p0
.end method

.method public switchResourceLoadMode(ZI)I
    .registers 3

    .line 6033
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->switchResourceLoadMode(ZI)I

    move-result p0

    return p0
.end method

.method public testSerialization()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public undo2DBrush()I
    .registers 2

    .line 11416
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 11417
    const-string p0, "VEEditor"

    const-string v0, "undo2DBrush STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 11420
    :cond_e
    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVESticker;->undo2DBrush()I

    move-result p0

    return p0
.end method

.method public uninitAudioExtendToFile()I
    .registers 1

    .line 4492
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperAudioExtend:Lcom/ss/android/vesdk/internal/IVEAudioExtend;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEAudioExtend;->uninitAudioExtendToFile()I

    move-result p0

    return p0
.end method

.method public updateAICutOutClipParam(IILcom/ss/android/vesdk/clipparam/VEAICutOutClipParam;)I
    .registers 4

    .line 9268
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->updateAICutOutClipParam(IILcom/ss/android/vesdk/clipparam/VEAICutOutClipParam;)I

    move-result p0

    return p0
.end method

.method public updateAlgorithmFromNormal()I
    .registers 1

    .line 8772
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperBingo:Lcom/ss/android/vesdk/internal/IVEBingo;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEBingo;->updateAlgorithmFromNormal()I

    move-result p0

    return p0
.end method

.method public updateAlgorithmRuntimeParam(Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;F)I
    .registers 5

    .line 7452
    const-string v0, "updateAlgorithmRuntimeParam"

    const-string v1, "VEEditor"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7453
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p1}, Lcom/ss/android/vesdk/algorithm/VEAlgorithmRuntimeParamKey;->getValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateAlgorithmRuntimeParam(IF)I

    move-result p0

    if-eqz p0, :cond_27

    .line 7455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateAlgorithmRuntimeParam failed, ret = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    return p0
.end method

.method public updateAudioTrack(IIIIIZ)I
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 8414
    invoke-virtual/range {v0 .. v7}, Lcom/ss/android/vesdk/VEEditor;->updateAudioTrack(IIIIIZZ)I

    move-result p0

    return p0
.end method

.method public updateAudioTrack(IIIIIZII)I
    .registers 9

    .line 8452
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p8}, Lcom/ss/android/vesdk/internal/IVESequence;->updateAudioTrack(IIIIIZII)I

    move-result p0

    return p0
.end method

.method public updateAudioTrack(IIIIIZZ)I
    .registers 8

    .line 8433
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface/range {p0 .. p7}, Lcom/ss/android/vesdk/internal/IVESequence;->updateAudioTrack(IIIIIZZ)I

    move-result p0

    return p0
.end method

.method public updateAudioTrack(IIIZ)I
    .registers 5

    .line 8397
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVESequence;->updateAudioTrack(IIIZ)I

    move-result p0

    return p0
.end method

.method public updateCanvasResolutionParam(Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;)I
    .registers 3

    .line 8165
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mIsDestroying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8166
    const-string p0, "VEEditor"

    const-string p1, "no need to play, is destroying, just return"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 8169
    :cond_11
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESequence;->updateCanvasResolutionParam(Lcom/ss/android/vesdk/filterparam/VECanvasFilterParam;)I

    move-result p0

    return p0
.end method

.method public updateClipFilterTime(IIII)I
    .registers 5

    .line 9228
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->updateClipFilterTime(IIII)I

    move-result p0

    return p0
.end method

.method public updateClipSourceParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I
    .registers 5

    .line 8145
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVESequence;->updateClipSourceParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I

    move-result p0

    return p0
.end method

.method public updateClipSourceParam(I[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I
    .registers 5

    const/4 v0, 0x0

    .line 8130
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->updateClipSourceParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipSourceParam;)I

    move-result p0

    return p0
.end method

.method public updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 5

    .line 8116
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVESequence;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p0

    return p0
.end method

.method public updateClipsTimelineParam(I[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I
    .registers 5

    const/4 v0, 0x0

    .line 8101
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ss/android/vesdk/VEEditor;->updateClipsTimelineParam(II[I[Lcom/ss/android/vesdk/clipparam/VEClipTimelineParam;)I

    move-result p0

    return p0
.end method

.method public updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I
    .registers 4

    .line 8893
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->updateComposerNode(Ljava/lang/String;Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method protected updateFilters()V
    .registers 1

    .line 12017
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0}, Lcom/ss/android/vesdk/internal/IVEFilter;->updateFiltersInternal()V

    return-void
.end method

.method protected updateInitDisplaySize()V
    .registers 8

    .line 7225
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitSize:Lcom/ss/android/vesdk/VESize;

    iget v1, v0, Lcom/ss/android/vesdk/VESize;->width:I

    int-to-float v2, v1

    iget v0, v0, Lcom/ss/android/vesdk/VESize;->height:I

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceWidth:I

    int-to-float v4, v3

    iget v5, p0, Lcom/ss/android/vesdk/VEEditor;->mSurfaceHeight:I

    int-to-float v6, v5

    div-float/2addr v4, v6

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1f

    .line 7226
    iput v3, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayWidth:I

    int-to-float v2, v3

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    div-float/2addr v2, v1

    float-to-int v0, v2

    .line 7227
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayHeight:I

    goto :goto_29

    .line 7229
    :cond_1f
    iput v5, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayHeight:I

    int-to-float v2, v5

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 7230
    iput v0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayWidth:I

    .line 7233
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInitDisplaySize... mInitDisplayWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInitDisplayHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/VEEditor;->mInitDisplayHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VEEditor"

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateLoudnessFilter(IF)V
    .registers 3

    .line 10066
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->updateLoudnessFilter(IF)V

    return-void
.end method

.method public updateMVBackgroundAudioTrack(Ljava/lang/String;II)I
    .registers 4

    .line 11674
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11675
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11678
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->updateMVBackgroundAudioTrack(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public updateMVBackgroundAudioTrack2(Ljava/lang/String;II)I
    .registers 4

    .line 11691
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11692
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11695
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->updateMVBackgroundAudioTrack2(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method protected updateMVFilterInternal(I)V
    .registers 3

    .line 11999
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    invoke-interface {v0}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->isMVInitialedInternal()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 12000
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->addMVFilterInternal(I)V

    :cond_d
    return-void
.end method

.method protected updateMVFiltersInternal([I)V
    .registers 6

    .line 12005
    iget-object v0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->isMVInitialedInternal()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 12006
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_18

    aget v2, p1, v1

    .line 12007
    iget-object v3, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    invoke-interface {v3, v2}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->addMVFilterInternal(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_18
    return-void
.end method

.method public updateMVResources(Lcom/ss/android/vesdk/VEMVParams;)I
    .registers 2

    .line 11706
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11707
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11710
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->updateMVResources(Lcom/ss/android/vesdk/VEMVParams;)I

    move-result p0

    return p0
.end method

.method public updateMVResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 11737
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11738
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11741
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->updateMVResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateMVResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IZ)I
    .registers 6

    .line 11772
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11773
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11776
    :cond_e
    invoke-interface/range {p0 .. p5}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->updateMVResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[IZ)I

    move-result p0

    return p0
.end method

.method public updateMVResourcesRecreateEngine(Lcom/ss/android/vesdk/VEMVParams;)I
    .registers 2

    .line 11721
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11722
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11725
    :cond_e
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->updateMVResourcesRecreateEngine(Lcom/ss/android/vesdk/VEMVParams;)I

    move-result p0

    return p0
.end method

.method public updateMVResourcesRecreateEngine(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 11753
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperMV:Lcom/ss/android/vesdk/internal/IVEMusicVideo;

    if-nez p0, :cond_e

    .line 11754
    const-string p0, "VEEditor"

    const-string p1, "MV IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x384

    return p0

    .line 11757
    :cond_e
    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEMusicVideo;->updateMVResourcesRecreateEngine(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I
    .registers 5

    .line 8907
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/internal/IVEFilter;->updateMultiComposerNodes(I[Ljava/lang/String;[Ljava/lang/String;[F)I

    move-result p0

    return p0
.end method

.method public updatePreViewResolution(IIII)V
    .registers 5

    .line 5948
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mVideoEditor:Lcom/ss/android/ttve/nativePort/TEInterface;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ss/android/ttve/nativePort/TEInterface;->updateResolution(IIII)V

    return-void
.end method

.method public updateSceneFileOrder(Lcom/ss/android/vesdk/VETimelineParams;)I
    .registers 2

    .line 7881
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESequence;->updateSceneFileOrder(Lcom/ss/android/vesdk/VETimelineParams;)I

    move-result p0

    return p0
.end method

.method public updateSceneTime(Lcom/ss/android/vesdk/VETimelineParams;)I
    .registers 2

    .line 7853
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/internal/IVESequence;->updateSceneTime(Lcom/ss/android/vesdk/VETimelineParams;)I

    move-result p0

    return p0
.end method

.method public updateSceneTime(Lcom/ss/android/vesdk/VETimelineParams;II)I
    .registers 4

    .line 7867
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESequence;->updateSceneTime(Lcom/ss/android/vesdk/VETimelineParams;II)I

    move-result p0

    return p0
.end method

.method public updateSegmentVolume(IF)I
    .registers 3

    .line 8578
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESequence;->updateSegmentVolume(IF)I

    move-result p0

    return p0
.end method

.method public updateTextSticker(ILjava/lang/String;)I
    .registers 3

    .line 10251
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSticker:Lcom/ss/android/vesdk/internal/IVESticker;

    if-nez p0, :cond_e

    .line 10252
    const-string p0, "VEEditor"

    const-string p1, "updateTextSticker STICKER IS NOT SUPPORT !!!"

    invoke-static {p0, p1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x385

    return p0

    .line 10255
    :cond_e
    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVESticker;->updateTextSticker(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 4

    .line 9193
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->updateTrackClipFilter(IILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0
.end method

.method public updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I
    .registers 3

    .line 9204
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2}, Lcom/ss/android/vesdk/internal/IVEFilter;->updateTrackFilterParam(ILcom/ss/android/vesdk/filterparam/VEBaseFilterParam;)I

    move-result p0

    return p0
.end method

.method public updateTrackFilterTime(III)I
    .registers 4

    .line 9216
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperFilter:Lcom/ss/android/vesdk/internal/IVEFilter;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVEFilter;->updateTrackFilterTime(III)I

    move-result p0

    return p0
.end method

.method public updateVideoClips([Ljava/lang/String;[I[I)I
    .registers 4

    .line 7893
    iget-object p0, p0, Lcom/ss/android/vesdk/VEEditor;->mWrapperSequence:Lcom/ss/android/vesdk/internal/IVESequence;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/internal/IVESequence;->updateVideoClips([Ljava/lang/String;[I[I)I

    move-result p0

    return p0
.end method
