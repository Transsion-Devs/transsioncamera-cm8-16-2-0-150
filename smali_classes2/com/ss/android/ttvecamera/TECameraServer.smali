.class public final enum Lcom/ss/android/ttvecamera/TECameraServer;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TECameraServer$HandlerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttvecamera/TECameraServer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttvecamera/TECameraServer;

.field public static final enum INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

.field private static final TAG:Ljava/lang/String; = "TECameraServer"


# instance fields
.field private cachedClosePrivacyCert:Lcom/bytedance/bpea/basics/Cert;

.field private cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

.field private final mBasePreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

.field private mBeginTime:J

.field private mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;

.field private final mCameraClientCondition:Landroid/os/ConditionVariable;

.field private mCameraCloseTaskHandlerId:I

.field private mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

.field private volatile mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

.field private mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

.field private mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

.field private mCheckCloseTask:Ljava/lang/Runnable;

.field private volatile mCurrentCameraState:I

.field private mCurrentZoom:F

.field private mEnableVBoost:Z

.field private mFirstEC:Z

.field private mFirstZoom:Z

.field private mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

.field private final mFpsConfigCallbackProxy:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

.field private mHandler:Landroid/os/Handler;

.field private volatile mHandlerDestroyed:Z

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private volatile mIsCameraPendingClose:Z

.field private volatile mIsCameraProviderChanged:Z

.field private volatile mIsCameraSwitchState:Z

.field private mIsForegroundVisible:Z

.field private volatile mIsInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mMainHandler:Landroid/os/Handler;

.field private mOnBackGround:Z

.field private final mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenTime:J

.field private final mPictureSizeCallBack:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

.field private mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;

.field private mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

.field mProviderManager:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

.field private mProviderSettings:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;

.field private mRetryCnt:I

.field private mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;

.field private mStartPreviewError:Z

.field private final mStateLock:Ljava/lang/Object;

.field private mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

.field private mVBoostTimeoutMS:I

.field private volatile sClientCount:I

.field private satZoomCallback:Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 85
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraServer;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraServer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 84
    filled-new-array {v0}, [Lcom/ss/android/ttvecamera/TECameraServer;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraServer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandlerDestroyed:Z

    const/4 p2, 0x0

    .line 93
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentZoom:F

    .line 95
    new-instance p2, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;

    invoke-direct {p2}, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;-><init>()V

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const/4 p2, 0x0

    .line 97
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    .line 98
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    .line 113
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mLock:Ljava/lang/Object;

    .line 122
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I

    const-wide/16 v1, 0x0

    .line 125
    iput-wide v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mOpenTime:J

    .line 126
    iput-wide v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mBeginTime:J

    const/4 v1, -0x1

    .line 127
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    .line 128
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStartPreviewError:Z

    .line 130
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClientCondition:Landroid/os/ConditionVariable;

    .line 132
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 134
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mMainHandler:Landroid/os/Handler;

    .line 136
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 137
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->cachedClosePrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 138
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mOnBackGround:Z

    .line 139
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFirstEC:Z

    .line 140
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFirstZoom:Z

    .line 142
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mEnableVBoost:Z

    .line 143
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mVBoostTimeoutMS:I

    .line 145
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsForegroundVisible:Z

    .line 147
    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraCloseTaskHandlerId:I

    .line 150
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraSwitchState:Z

    .line 2296
    new-instance p1, Lcom/ss/android/ttvecamera/TECameraServer$46;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/TECameraServer$46;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    .line 2550
    new-instance p1, Lcom/ss/android/ttvecamera/TECameraServer$47;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/TECameraServer$47;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFpsConfigCallbackProxy:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    .line 2560
    new-instance p1, Lcom/ss/android/ttvecamera/TECameraServer$48;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/TECameraServer$48;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPictureSizeCallBack:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    .line 2570
    new-instance p1, Lcom/ss/android/ttvecamera/TECameraServer$49;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/TECameraServer$49;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mBasePreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    .line 2586
    new-instance p1, Lcom/ss/android/ttvecamera/TECameraServer$50;

    invoke-direct {p1, p0}, Lcom/ss/android/ttvecamera/TECameraServer$50;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->satZoomCallback:Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 4

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer;->open(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/ss/android/ttvecamera/TECameraServer;ZLcom/bytedance/bpea/basics/Cert;)I
    .registers 3

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->close(ZLcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/ss/android/ttvecamera/TECameraServer;)Z
    .registers 1

    .line 84
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraPendingClose:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/ss/android/ttvecamera/TECameraServer;Z)Z
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraPendingClose:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/lang/Object;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ss/android/ttvecamera/TECameraServer;)Z
    .registers 1

    .line 84
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFirstEC:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/ss/android/ttvecamera/TECameraServer;Z)Z
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFirstEC:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/ss/android/ttvecamera/TECameraServer;)J
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mOpenTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/ss/android/ttvecamera/TECameraServer;J)J
    .registers 3

    .line 84
    iput-wide p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mOpenTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/ss/android/ttvecamera/TECameraServer;)J
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mBeginTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/ss/android/ttvecamera/TECameraServer;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    return p0
.end method

.method static synthetic access$1802(Lcom/ss/android/ttvecamera/TECameraServer;I)I
    .registers 2

    .line 84
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    return p1
.end method

.method static synthetic access$1810(Lcom/ss/android/ttvecamera/TECameraServer;)I
    .registers 3

    .line 84
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    return v0
.end method

.method static synthetic access$1900(Lcom/ss/android/ttvecamera/TECameraServer;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/bytedance/bpea/basics/Cert;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/ss/android/ttvecamera/TECameraServer;)Z
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->isCameraPermitted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->close(Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2402(Lcom/ss/android/ttvecamera/TECameraServer;Z)Z
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStartPreviewError:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/ss/android/ttvecamera/TECameraServer;)Landroid/os/Handler;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/ss/android/ttvecamera/TECameraServer;)V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->handlePreviewingFallback()V

    return-void
.end method

.method static synthetic access$2700(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraBase;)Lcom/ss/android/ttvecamera/TECameraBase;
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/ss/android/ttvecamera/TECameraServer;)Z
    .registers 1

    .line 84
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFirstZoom:Z

    return p0
.end method

.method static synthetic access$3102(Lcom/ss/android/ttvecamera/TECameraServer;Z)Z
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFirstZoom:Z

    return p1
.end method

.method static synthetic access$400(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/bytedance/bpea/basics/Cert;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->cachedClosePrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->realCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ss/android/ttvecamera/TECameraServer;)I
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->decreaseClientCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/ss/android/ttvecamera/TECameraServer;)I
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->destroy()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ss/android/ttvecamera/TECameraServer;)Landroid/os/Handler;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ss/android/ttvecamera/TECameraServer;)Landroid/os/ConditionVariable;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClientCondition:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z
    .registers 5

    .line 2137
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2138
    :try_start_3
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;

    if-eq v1, p1, :cond_2e

    if-nez v1, :cond_13

    .line 2140
    const-string p0, "TECameraServer"

    const-string p1, "Internal CameraClient is null. Must call connect first!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :catchall_11
    move-exception p0

    goto :goto_31

    .line 2142
    :cond_13
    const-string p1, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CameraClient, need : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    const/4 p0, 0x0

    .line 2144
    monitor-exit v0

    return p0

    .line 2146
    :cond_2e
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_11

    throw p0
.end method

.method private close(Lcom/bytedance/bpea/basics/Cert;)I
    .registers 3

    const/4 v0, 0x1

    .line 828
    invoke-direct {p0, v0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->close(ZLcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method private close(ZLcom/bytedance/bpea/basics/Cert;)I
    .registers 14

    .line 832
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 833
    const-string v4, "TECameraServer"

    if-nez v0, :cond_29

    .line 835
    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraCloseTaskHandlerId:I

    .line 836
    invoke-virtual {p0, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 837
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p1, :cond_23

    .line 838
    const-string p1, "call camera close process, handler is null"

    invoke-static {v4, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->cachedClosePrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->forceCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V

    .line 840
    const-string p1, "call camera close process, handler is null, force close done"

    invoke-static {v4, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :cond_23
    invoke-virtual {p0, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    const/16 p0, -0x70

    return p0

    .line 846
    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call camera close process...sync: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", handler: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-boolean v5, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandlerDestroyed:Z

    if-nez v5, :cond_d7

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    if-eq v5, v6, :cond_d7

    .line 848
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 852
    iget v6, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraCloseTaskHandlerId:I

    if-eq v6, v3, :cond_65

    if-eq v6, v5, :cond_65

    .line 853
    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraCloseTaskHandlerId:I

    .line 854
    const-string p0, "camera close task discard...handler id has changed"

    invoke-static {v4, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 857
    :cond_65
    iput v5, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraCloseTaskHandlerId:I

    .line 859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz p1, :cond_72

    .line 861
    iget-object v5, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClientCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v5}, Landroid/os/ConditionVariable;->close()V

    :cond_72
    const/4 v5, 0x1

    .line 863
    iput-boolean v5, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraPendingClose:Z

    .line 865
    new-instance v5, Lcom/ss/android/ttvecamera/TECameraServer$10;

    move-object v6, p0

    move v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/ss/android/ttvecamera/TECameraServer$10;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;JZLcom/bytedance/bpea/basics/Cert;)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v9, :cond_115

    const-wide/16 p0, 0x5dc

    .line 885
    iget-object p2, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClientCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p2, p0, p1}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p0

    .line 886
    iput-boolean v2, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraPendingClose:Z

    .line 887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v7

    if-nez p0, :cond_bd

    .line 889
    iput v3, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraCloseTaskHandlerId:I

    .line 890
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Camera close timeout, mCurrentCameraState "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-virtual {v6, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 892
    iget-object p0, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p0, :cond_b9

    .line 893
    iget-object p0, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    iget-object p1, v6, Lcom/ss/android/ttvecamera/TECameraServer;->cachedClosePrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->forceCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V

    .line 895
    :cond_b9
    invoke-virtual {v6, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    goto :goto_115

    .line 897
    :cond_bd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Camera close cost: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_115

    :cond_d7
    move-object v6, p0

    move v9, p1

    move-object v10, p2

    .line 901
    iput v3, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraCloseTaskHandlerId:I

    .line 902
    iget-boolean p0, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mEnableVBoost:Z

    if-eqz p0, :cond_fe

    .line 903
    iget-object p0, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    new-instance p1, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;

    sget-object p2, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->BOOST_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    iget v0, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mVBoostTimeoutMS:I

    invoke-direct {p1, p2, v0}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;-><init>(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;I)V

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->startAction(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;)V

    .line 904
    invoke-direct {v6, v10}, Lcom/ss/android/ttvecamera/TECameraServer;->realCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V

    .line 905
    iget-object p0, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    new-instance p1, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;

    sget-object p2, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->RESTORE_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    invoke-direct {p1, p2}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;-><init>(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;)V

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->startAction(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;)V

    goto :goto_101

    .line 907
    :cond_fe
    invoke-direct {v6, v10}, Lcom/ss/android/ttvecamera/TECameraServer;->realCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V

    .line 910
    :goto_101
    iget-object p0, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mMainHandler:Landroid/os/Handler;

    iget-object p1, v6, Lcom/ss/android/ttvecamera/TECameraServer;->mCheckCloseTask:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v9, :cond_115

    .line 913
    invoke-direct {v6}, Lcom/ss/android/ttvecamera/TECameraServer;->decreaseClientCount()I

    move-result p0

    if-nez p0, :cond_115

    .line 914
    invoke-direct {v6}, Lcom/ss/android/ttvecamera/TECameraServer;->destroy()I

    move-result p0

    return p0

    :cond_115
    :goto_115
    return v2
.end method

.method private createCameraInstance()Lcom/ss/android/ttvecamera/TECameraBase;
    .registers 4

    .line 492
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->createCameraInstanceCore()Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 494
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mBasePreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;

    goto :goto_f

    :cond_e
    move-object v1, v2

    :goto_f
    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TECameraBase;->registerPreviewListener(Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;)V

    .line 495
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

    if-eqz v1, :cond_18

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFpsConfigCallbackProxy:Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;

    :cond_18
    invoke-virtual {v0, v2}, Lcom/ss/android/ttvecamera/TECameraBase;->registerFpsConfigListener(Lcom/ss/android/ttvecamera/TECameraBase$CameraFpsConfigCallback;)V

    :cond_1b
    return-object v0
.end method

.method private createCameraInstanceCore()Lcom/ss/android/ttvecamera/TECameraBase;
    .registers 12

    .line 505
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Detect:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraUtils;->isSupportsCamera2(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    move v0, v2

    .line 507
    :goto_13
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v4, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    if-ne v4, v2, :cond_26

    .line 508
    iget-object v0, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPictureSizeCallBack:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    invoke-static {v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECamera1;->create(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Lcom/ss/android/ttvecamera/TECamera1;

    move-result-object p0

    return-object p0

    :cond_26
    const/16 v3, 0xa

    const/4 v9, 0x2

    if-eq v3, v4, :cond_2f

    const/16 v3, 0xb

    if-ne v3, v4, :cond_31

    :cond_2f
    move-object v10, p0

    goto :goto_63

    :cond_31
    if-nez v0, :cond_42

    .line 525
    iput v2, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 526
    iget-object v0, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPictureSizeCallBack:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    invoke-static {v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECamera1;->create(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Lcom/ss/android/ttvecamera/TECamera1;

    move-result-object p0

    return-object p0

    .line 528
    :cond_42
    iget-object v5, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v7, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPictureSizeCallBack:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/ss/android/ttvecamera/TECameraServer;->createVendorCamera2Instance(ILandroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p0

    move-object v10, v3

    if-nez p0, :cond_62

    .line 530
    iget-object p0, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput v9, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 531
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    iget-object v0, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    iget-object v2, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mPictureSizeCallBack:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    invoke-static {v9, p0, v0, v1, v2}, Lcom/ss/android/ttvecamera/TECamera2;->create(ILandroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Lcom/ss/android/ttvecamera/TECamera2;

    move-result-object p0

    :cond_62
    return-object p0

    .line 511
    :goto_63
    iget-object v5, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    iget-object v6, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v7, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    iget-object v8, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mPictureSizeCallBack:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    const-string v3, "com.ss.android.ttvecamera.TEVendorCamera"

    invoke-static/range {v3 .. v8}, Lcom/ss/android/ttvecamera/TECameraUtils;->createCameraInstance(Ljava/lang/String;ILandroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p0, :cond_7d

    .line 514
    const-string v0, "TECameraServer"

    const-string v1, "createCameraInstance TEVendorCamera"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_7d
    if-nez v0, :cond_90

    .line 517
    iget-object p0, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 518
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    iget-object v0, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    iget-object v2, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mPictureSizeCallBack:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    invoke-static {p0, v0, v1, v2}, Lcom/ss/android/ttvecamera/TECamera1;->create(Landroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Lcom/ss/android/ttvecamera/TECamera1;

    move-result-object p0

    return-object p0

    .line 520
    :cond_90
    iget-object p0, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput v9, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 521
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    iget-object v0, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object v1, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    iget-object v2, v10, Lcom/ss/android/ttvecamera/TECameraServer;->mPictureSizeCallBack:Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;

    invoke-static {v9, p0, v0, v1, v2}, Lcom/ss/android/ttvecamera/TECamera2;->create(ILandroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Lcom/ss/android/ttvecamera/TECamera2;

    move-result-object p0

    return-object p0
.end method

.method private createHandler(ZLjava/lang/String;)Landroid/os/Handler;
    .registers 4

    if-eqz p1, :cond_49

    .line 2153
    :try_start_2
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_9

    .line 2154
    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    .line 2156
    :cond_9
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2157
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 2158
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/ss/android/ttvecamera/TECameraServer$45;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer$45;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;)V

    invoke-virtual {p2, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 2186
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2188
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/ss/android/ttvecamera/TECameraServer$HandlerCallback;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer$HandlerCallback;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;)V

    invoke-direct {p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    return-object p2

    :catch_2e
    move-exception p0

    .line 2190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CreateHandler failed!: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraServer"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    :cond_49
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_56

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_5a

    :cond_56
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_5a
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method private createMessage(IZLandroid/os/Handler;)Landroid/os/Message;
    .registers 4

    if-eqz p2, :cond_11

    .line 2655
    invoke-virtual {p3, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 2656
    invoke-virtual {p3, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2657
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    goto :goto_15

    .line 2659
    :cond_11
    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    .line 2662
    :goto_15
    iput p1, p0, Landroid/os/Message;->what:I

    return-object p0
.end method

.method private createVendorCamera2Instance(ILandroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Lcom/ss/android/ttvecamera/TECameraBase;
    .registers 13
    .param p1    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$CameraType;
        .end annotation
    .end param

    const/4 p0, 0x4

    const/4 v0, 0x0

    if-ne p1, p0, :cond_8

    .line 545
    const-string p0, "com.ss.android.ttvecamera.TEOpMediaCamera"

    :goto_6
    move-object v1, p0

    goto :goto_1d

    :cond_8
    const/4 p0, 0x6

    if-ne p1, p0, :cond_e

    .line 547
    const-string p0, "com.ss.android.ttvecamera.TEVoCamera"

    goto :goto_6

    :cond_e
    const/16 p0, 0x8

    if-ne p1, p0, :cond_15

    .line 549
    const-string p0, "com.ss.android.ttvecamera.TEXmV2Camera"

    goto :goto_6

    :cond_15
    const/16 p0, 0x9

    if-ne p1, p0, :cond_1c

    .line 551
    const-string p0, "com.ss.android.ttvecamera.TEOpCamera"

    goto :goto_6

    :cond_1c
    move-object v1, v0

    :goto_1d
    if-eqz v1, :cond_41

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 554
    invoke-static/range {v1 .. v6}, Lcom/ss/android/ttvecamera/TECameraUtils;->createCameraInstance(Ljava/lang/String;ILandroid/content/Context;Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;Landroid/os/Handler;Lcom/ss/android/ttvecamera/TECameraBase$PictureSizeCallBack;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TECamera2;

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create, vendorCamera2 = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TECameraServer"

    invoke-static {p2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_41
    return-object v0
.end method

.method private declared-synchronized decreaseClientCount()I
    .registers 4

    monitor-enter p0

    .line 2602
    :try_start_1
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I

    .line 2603
    const-string v0, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sClientCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I

    if-gez v0, :cond_41

    .line 2605
    const-string v0, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ClientCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2606
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I

    goto :goto_41

    :catchall_3f
    move-exception v0

    goto :goto_45

    .line 2608
    :cond_41
    :goto_41
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_3f

    monitor-exit p0

    return v0

    :goto_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_3f

    throw v0
.end method

.method private declared-synchronized destroy()I
    .registers 5

    monitor-enter p0

    .line 282
    :try_start_1
    const-string v0, "TECameraServer"

    const-string v1, "destroy...start"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsInitialized:Z

    const/4 v1, 0x0

    .line 285
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCheckCloseTask:Ljava/lang/Runnable;

    .line 286
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;

    .line 287
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;

    .line 288
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    .line 289
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

    .line 290
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->cachedClosePrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 291
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 292
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mProviderSettings:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;

    .line 293
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v2, :cond_28

    .line 294
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraBase;->destroy()V

    goto :goto_28

    :catchall_26
    move-exception v0

    goto :goto_51

    .line 296
    :cond_28
    :goto_28
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_34

    .line 298
    new-instance v3, Lcom/ss/android/ttvecamera/TECameraServer$1;

    invoke-direct {v3, p0}, Lcom/ss/android/ttvecamera/TECameraServer$1;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    :cond_34
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_42

    .line 308
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 312
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x1

    .line 313
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandlerDestroyed:Z

    .line 314
    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    .line 317
    :cond_42
    invoke-static {}, Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;->getInstance()Lcom/ss/android/ttvecamera/TECameraCapture$NullCameraObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    .line 318
    const-string v1, "TECameraServer"

    const-string v2, "destroy...end"

    invoke-static {v1, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_26

    .line 320
    monitor-exit p0

    return v0

    :goto_51
    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_26

    throw v0
.end method

.method private handlePreviewingFallback()V
    .registers 7

    .line 2259
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_4c

    .line 2262
    :cond_8
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2264
    :try_start_b
    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v2, v3, :cond_30

    .line 2266
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v2, :cond_2e

    .line 2267
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v2}, Lcom/ss/android/ttvecamera/TECameraBase;->stopCapture()V

    const/4 v2, 0x4

    .line 2268
    invoke-virtual {p0, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 2269
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-virtual {v2, v3}, Lcom/ss/android/ttvecamera/TECameraBase;->close(Lcom/bytedance/bpea/basics/Cert;)V

    .line 2270
    iput-object v4, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    .line 2271
    invoke-virtual {p0, v5}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    goto :goto_2e

    :catchall_2c
    move-exception p0

    goto :goto_4d

    :cond_2e
    :goto_2e
    move v2, v1

    goto :goto_31

    :cond_30
    move v2, v5

    .line 2274
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_2c

    if-eqz v2, :cond_4c

    .line 2277
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    .line 2278
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v1, 0x33

    const-string v2, "need recreate surfacetexture"

    invoke-interface {v0, v1, v5, v2, v4}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 2279
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->INSTANCE:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    invoke-direct {v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->open(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    :cond_4c
    :goto_4c
    return-void

    .line 2274
    :goto_4d
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_2c

    throw p0
.end method

.method private declared-synchronized increaseClientCount()I
    .registers 4

    monitor-enter p0

    .line 2596
    :try_start_1
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I

    .line 2597
    const-string v0, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sClientCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2598
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->sClientCount:I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return v0

    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private declared-synchronized init(Z)V
    .registers 4

    monitor-enter p0

    .line 158
    :try_start_1
    const-string v0, "TECameraServer"

    const-string v1, "init...start"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsInitialized:Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_43

    if-eqz v0, :cond_e

    .line 160
    monitor-exit p0

    return-void

    .line 162
    :cond_e
    :try_start_e
    const-string v0, "TECameraServer"

    invoke-direct {p0, p1, v0}, Lcom/ss/android/ttvecamera/TECameraServer;->createHandler(ZLjava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandlerDestroyed:Z

    .line 164
    new-instance v0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-direct {v0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mProviderManager:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsInitialized:Z

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentZoom:F

    .line 167
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mOnBackGround:Z

    .line 169
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mMainHandler:Landroid/os/Handler;

    .line 170
    new-instance p1, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    invoke-direct {p1}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    .line 171
    const-string p1, "TECameraServer"

    const-string v0, "init...end"

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_43

    .line 172
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method

.method private isARConfigNotEqual(Lcom/ss/android/ttvecamera/TECameraSettings;)Z
    .registers 7

    .line 2238
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 2241
    :cond_6
    iget v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_88

    .line 2242
    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    if-nez v0, :cond_11

    return v1

    .line 2245
    :cond_11
    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->augmentedFaceMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$AugmentedFaceMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->augmentedFaceMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$AugmentedFaceMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_87

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->cloudAnchorMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    .line 2246
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->cloudAnchorMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$CloudAnchorMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_87

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->depthMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    .line 2247
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->depthMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$DepthMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_87

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->focusMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$FocusMode;

    .line 2248
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->focusMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$FocusMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_87

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->lightEstimationMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    .line 2249
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->lightEstimationMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$LightEstimationMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_87

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->planeFindingMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    .line 2250
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    iget-object p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->arConfig:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;

    iget-object p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig;->planeFindingMode:Lcom/ss/android/ttvecamera/TECameraSettings$ARConfig$PlaneFindingMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p0, p1, :cond_86

    goto :goto_87

    :cond_86
    return v4

    :cond_87
    :goto_87
    return v1

    :cond_88
    return v4
.end method

.method private isCameraPermitted()Z
    .registers 5

    const/4 v0, 0x1

    .line 2288
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAMERA"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_10

    if-nez v1, :cond_e

    goto :goto_2b

    :cond_e
    const/4 v0, 0x0

    goto :goto_2b

    :catch_10
    move-exception v1

    .line 2290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "test camera permission failed!: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TECameraServer"

    invoke-static {v2, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    :goto_2b
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mOpenInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CamPerm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private onlySwitchSession(Lcom/ss/android/ttvecamera/TECameraSettings;)Z
    .registers 7

    .line 2197
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-eqz v0, :cond_66

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-nez v1, :cond_66

    iget v1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-nez v1, :cond_66

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_66

    iget v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    if-ne v1, v2, :cond_66

    iget-object v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v2, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget-object v3, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v4, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-ne v2, v4, :cond_66

    iget v1, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v2, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-ne v1, v2, :cond_66

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mHighFPS:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mHighFPS:I

    if-ne v1, v2, :cond_66

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    if-ne v1, v2, :cond_66

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    if-ne v1, v2, :cond_66

    iget-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    iget-boolean v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    if-ne v1, v2, :cond_66

    iget-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    iget-boolean v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    if-eq v1, v2, :cond_66

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableAiNightVideo:Z

    iget-boolean v1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableAiNightVideo:Z

    if-eq v0, v1, :cond_66

    .line 2210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2211
    const-string v1, "enable_video_stabilization"

    iget-boolean v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2212
    const-string v1, "enable_ai_night_video"

    iget-boolean v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableAiNightVideo:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2213
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v1, v0}, Lcom/ss/android/ttvecamera/TECameraBase;->setFeatureParameters(Landroid/os/Bundle;)V

    .line 2217
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    const/4 p0, 0x1

    return p0

    :cond_66
    const/4 p0, 0x0

    return p0
.end method

.method private open(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 15

    .line 374
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 377
    :cond_9
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraPendingClose:Z

    const/16 v1, -0x69

    if-eqz v0, :cond_17

    .line 378
    const-string p0, "TECameraServer"

    const-string p1, "pending close"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 382
    :cond_17
    iget-boolean v0, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableBackGroundStrategy:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mOnBackGround:Z

    if-eqz v0, :cond_27

    .line 383
    const-string p0, "TECameraServer"

    const-string p1, "in background"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 388
    :cond_27
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_35

    .line 390
    const-string p0, "TECameraServer"

    const-string p1, "open, mHandler is null!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 395
    :cond_35
    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraPendingClose:Z

    if-eqz v1, :cond_43

    .line 396
    const-string p0, "TECameraServer"

    const-string p1, "had called disConnect(), abandon open camera!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x71

    return p0

    .line 400
    :cond_43
    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandlerDestroyed:Z

    const/4 v2, 0x0

    if-nez v1, :cond_64

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_64

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 403
    new-instance v4, Lcom/ss/android/ttvecamera/TECameraServer$2;

    move-object v5, p0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/ss/android/ttvecamera/TECameraServer$2;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;JLcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_16b

    :cond_64
    move-object v5, p0

    move-object v9, p2

    move-object v10, p3

    .line 417
    const-string p0, "TECameraServer-open"

    invoke-static {p0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    .line 418
    iput-object v9, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    .line 419
    const-string p0, "TECameraServer"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "is force close camera="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsForceCloseCamera:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", Camera2Detect="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableCamera2Detect:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance p0, Lcom/ss/android/ttvecamera/TECameraServer$3;

    invoke-direct {p0, v5}, Lcom/ss/android/ttvecamera/TECameraServer$3;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;)V

    iput-object p0, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCheckCloseTask:Ljava/lang/Runnable;

    const/4 p0, 0x0

    .line 439
    iput p0, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentZoom:F

    .line 440
    iget p0, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    if-gez p0, :cond_a6

    iget p0, v9, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    iput p0, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    .line 442
    :cond_a6
    iget-object p0, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p0

    .line 443
    :try_start_a9
    iget p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 p2, 0x1

    if-eqz p1, :cond_db

    .line 444
    const-string p1, "TECameraServer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No need open camera again, state = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    if-eq p1, p2, :cond_d6

    .line 446
    iget-object p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const-string p3, "Camera features is ready"

    invoke-interface {p1, p2, v2, p3}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onInfo(IILjava/lang/String;)V

    goto :goto_d6

    :catchall_d2
    move-exception v0

    move-object p1, v0

    goto/16 :goto_16c

    .line 450
    :cond_d6
    :goto_d6
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    .line 451
    monitor-exit p0

    return v2

    .line 454
    :cond_db
    invoke-virtual {v5, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 456
    iget-object p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez p1, :cond_11a

    .line 457
    invoke-direct {v5}, Lcom/ss/android/ttvecamera/TECameraServer;->createCameraInstance()Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p1

    iput-object p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    .line 458
    iget-object p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez p1, :cond_113

    .line 459
    iget-object p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 p2, 0xb

    if-ne p1, p2, :cond_104

    .line 460
    invoke-virtual {v5, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 461
    iget-object p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    iget-object p2, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 p3, -0x1ac

    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, v0, v0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    goto :goto_110

    .line 463
    :cond_104
    invoke-virtual {v5, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 464
    iget-object p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const-string p2, "open : mCameraInstance is null."

    const/16 p3, -0x64

    invoke-interface {p1, p3, p2}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    :goto_110
    const/4 p1, -0x1

    .line 466
    monitor-exit p0

    return p1

    .line 468
    :cond_113
    iget-object p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    iget-object p2, v5, Lcom/ss/android/ttvecamera/TECameraServer;->satZoomCallback:Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;

    invoke-virtual {p1, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->setSATZoomCallback(Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;)V

    .line 470
    :cond_11a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mBeginTime:J

    .line 472
    iget-boolean p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mEnableVBoost:Z

    if-eqz p1, :cond_147

    .line 473
    iget-object p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    new-instance p2, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;

    sget-object p3, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->BOOST_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    iget v0, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mVBoostTimeoutMS:I

    invoke-direct {p2, p3, v0}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;-><init>(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;I)V

    invoke-virtual {p1, p2}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->startAction(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;)V

    .line 474
    iget-object p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    iget-object p2, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {p1, p2, v10}, Lcom/ss/android/ttvecamera/TECameraBase;->open(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p1

    .line 475
    iget-object p2, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    new-instance p3, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;

    sget-object v0, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;->RESTORE_CPU:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;

    invoke-direct {p3, v0}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;-><init>(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$ActionType;)V

    invoke-virtual {p2, p3}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->startAction(Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager$Action;)V

    goto :goto_14f

    .line 477
    :cond_147
    iget-object p1, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    iget-object p2, v5, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {p1, p2, v10}, Lcom/ss/android/ttvecamera/TECameraBase;->open(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p1

    :goto_14f
    if-eqz p1, :cond_167

    .line 480
    const-string p2, "TECameraServer"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Open camera failed, ret = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_167
    monitor-exit p0
    :try_end_168
    .catchall {:try_start_a9 .. :try_end_168} :catchall_d2

    .line 484
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    :goto_16b
    return v2

    .line 482
    :goto_16c
    :try_start_16c
    monitor-exit p0
    :try_end_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_d2

    throw p1
.end method

.method private realCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 7

    .line 923
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 925
    :try_start_3
    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    if-nez v1, :cond_22

    .line 926
    const-string p1, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "realCloseCamera, no need to close camera, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    :catchall_20
    move-exception p0

    goto :goto_60

    :cond_22
    const/4 v1, 0x4

    .line 928
    invoke-virtual {p0, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 929
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v1, :cond_4e

    .line 930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 931
    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v3, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->close(Lcom/bytedance/bpea/basics/Cert;)V

    .line 932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 933
    const-string p1, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system call close() cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    const/4 p1, 0x0

    .line 935
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 938
    :goto_52
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p1, :cond_5e

    .line 939
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p1}, Lcom/ss/android/ttvecamera/TECameraBase;->destroy()V

    const/4 p1, 0x0

    .line 940
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    .line 942
    :cond_5e
    monitor-exit v0

    return-void

    :goto_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_20

    throw p0
.end method

.method private setAsyncCloseCheckMsg()V
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCheckCloseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCheckCloseTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldReOpenCamera(Lcom/ss/android/ttvecamera/TECameraSettings;)Z
    .registers 7

    .line 2224
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-eqz v0, :cond_4c

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    if-ne v1, v2, :cond_4a

    iget-object v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v2, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    iget-object v3, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v4, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    if-ne v2, v4, :cond_4a

    iget v1, v1, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    iget v2, v3, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    if-ne v1, v2, :cond_4a

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne v1, v2, :cond_4a

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mHighFPS:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mHighFPS:I

    if-ne v1, v2, :cond_4a

    iget-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    iget-boolean v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableStabilization:Z

    if-ne v1, v2, :cond_4a

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mRequiredCameraLevel:I

    if-ne v1, v2, :cond_4a

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    iget v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMaxWidth:I

    if-ne v1, v2, :cond_4a

    iget-boolean v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    iget-boolean v2, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseMaxWidthTakePicture:Z

    if-ne v1, v2, :cond_4a

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    iget v1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    if-ne v0, v1, :cond_4a

    .line 2234
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->isARConfigNotEqual(Lcom/ss/android/ttvecamera/TECameraSettings;)Z

    move-result p0

    if-eqz p0, :cond_4c

    :cond_4a
    const/4 p0, 0x1

    return p0

    :cond_4c
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttvecamera/TECameraServer;
    .registers 2

    .line 84
    const-class v0, Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TECameraServer;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttvecamera/TECameraServer;
    .registers 1

    .line 84
    sget-object v0, Lcom/ss/android/ttvecamera/TECameraServer;->$VALUES:[Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0}, [Lcom/ss/android/ttvecamera/TECameraServer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttvecamera/TECameraServer;

    return-object v0
.end method


# virtual methods
.method public abortSession(Lcom/ss/android/ttvecamera/TECameraCapture;)I
    .registers 3

    .line 751
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 755
    :cond_9
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_17

    .line 757
    const-string p0, "TECameraServer"

    const-string p1, "abortSession, mHandler is null!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 761
    :cond_17
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraServer$8;

    invoke-direct {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer$8;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public addCameraAlgorithm(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)V
    .registers 3

    .line 2763
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez v0, :cond_c

    .line 2764
    const-string p0, "TECameraServer"

    const-string p1, "addCameraAlgorithm failed mCameraInstance is null!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2767
    :cond_c
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->addCameraAlgorithm(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)V

    return-void
.end method

.method public addCameraProvider(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;)I
    .registers 7

    .line 626
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 630
    :cond_9
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandlerDestroyed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_26

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_26

    .line 631
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/ttvecamera/TECameraServer$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$5;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_95

    .line 638
    :cond_26
    const-string p1, "TECameraServer"

    const-string v0, "addCameraProvider"

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 640
    :try_start_30
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez v0, :cond_41

    .line 641
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const-string p2, "Invalidate Camera Instance!!"

    const/16 v0, -0x64

    invoke-interface {p0, v0, p2}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 642
    monitor-exit p1

    return v0

    :catchall_3f
    move-exception p0

    goto :goto_96

    .line 644
    :cond_41
    const-string v0, "TECameraServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCameraProvider, mProviderSettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mProviderSettings:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", providerSettings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mProviderSettings:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraBase;->getProviderManager()Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    move-result-object v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mProviderSettings:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;

    if-eqz v0, :cond_78

    invoke-virtual {v0, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->isSame(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;)Z

    move-result v0

    if-nez v0, :cond_78

    goto :goto_7b

    .line 654
    :cond_78
    iput-boolean v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraProviderChanged:Z

    goto :goto_94

    .line 646
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mProviderManager:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v0, p2, v2}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->createProvider(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;Lcom/ss/android/ttvecamera/TECameraBase;)V

    const/4 v0, 0x1

    .line 647
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraProviderChanged:Z

    .line 648
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mProviderSettings:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;

    if-nez v0, :cond_91

    .line 649
    new-instance v0, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;

    invoke-direct {v0, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;-><init>(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;)V

    iput-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mProviderSettings:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;

    goto :goto_94

    .line 651
    :cond_91
    invoke-virtual {v0, p2}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;->copyFrom(Lcom/ss/android/ttvecamera/provider/TECameraProviderManager$ProviderSettings;)V

    .line 656
    :goto_94
    monitor-exit p1

    :goto_95
    return v1

    :goto_96
    monitor-exit p1
    :try_end_97
    .catchall {:try_start_30 .. :try_end_97} :catchall_3f

    throw p0
.end method

.method public appLifeCycleChanged(Z)V
    .registers 2

    .line 2691
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mOnBackGround:Z

    return-void
.end method

.method public cancelFocus(Lcom/ss/android/ttvecamera/TECameraCapture;)I
    .registers 4

    .line 1263
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 1266
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 1267
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$18;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer$18;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_30

    .line 1274
    :cond_20
    const-string p1, "TECameraServer"

    const-string v0, "cancelFocus..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1276
    :try_start_2a
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->cancelFocus()V

    .line 1277
    monitor-exit p1

    :goto_30
    const/4 p0, 0x0

    return p0

    :catchall_32
    move-exception p0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw p0
.end method

.method public captureBurst(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;Lcom/ss/android/ttvecamera/model/BurstRequest;)I
    .registers 5

    .line 1135
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 1139
    :cond_9
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ss/android/ttvecamera/TECameraServer$14;

    invoke-direct {v0, p0, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer$14;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraSettings$CaptureBufferFrameCallback;Lcom/ss/android/ttvecamera/model/BurstRequest;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public changeCaptureFormat()V
    .registers 1

    return-void
.end method

.method public changeRecorderState(Lcom/ss/android/ttvecamera/TECameraCapture;ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)I
    .registers 6

    .line 2667
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 2671
    :cond_9
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandlerDestroyed:Z

    if-nez v0, :cond_24

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_24

    .line 2672
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$51;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer$51;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3e

    .line 2679
    :cond_24
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2680
    :try_start_27
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez v0, :cond_38

    .line 2681
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const-string p2, "Invalidate Camera Instance!!"

    const/16 p3, -0x64

    invoke-interface {p0, p3, p2}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 2682
    monitor-exit p1

    return p3

    :catchall_36
    move-exception p0

    goto :goto_40

    .line 2684
    :cond_38
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2, p3}, Lcom/ss/android/ttvecamera/TECameraBase;->changeRecorderState(ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)V

    .line 2685
    monitor-exit p1

    :goto_3e
    const/4 p0, 0x0

    return p0

    :goto_40
    monitor-exit p1
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_36

    throw p0
.end method

.method public connect(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 10

    .line 188
    const-string v0, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_94

    if-eqz p2, :cond_8c

    if-eqz p3, :cond_84

    .line 201
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCheckCloseTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_26
    invoke-direct {p0, p3}, Lcom/ss/android/ttvecamera/TECameraServer;->shouldReOpenCamera(Lcom/ss/android/ttvecamera/TECameraSettings;)Z

    move-result v1

    .line 206
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3c

    if-nez v1, :cond_3c

    .line 207
    const-string p0, "TECameraServer"

    const-string p1, "No need reconnect."

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    monitor-exit v0

    return v3

    :catchall_3a
    move-exception p0

    goto :goto_82

    .line 211
    :cond_3c
    iget-boolean v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsInitialized:Z

    if-nez v2, :cond_45

    const/4 v1, 0x1

    .line 213
    invoke-direct {p0, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->init(Z)V

    move v1, v3

    .line 215
    :cond_45
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;

    .line 216
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    .line 217
    iput-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPictureSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PictureSizeCallBack;

    .line 218
    iget-boolean p2, p3, Lcom/ss/android/ttvecamera/TECameraSettings;->mEnableVBoost:Z

    iput-boolean p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mEnableVBoost:Z

    const/4 p4, -0x1

    .line 219
    iput p4, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    if-eqz p2, :cond_69

    .line 221
    iget p2, p3, Lcom/ss/android/ttvecamera/TECameraSettings;->mVBoostTimeoutMS:I

    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mVBoostTimeoutMS:I

    .line 222
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    new-instance p4, Lcom/ss/android/ttvecamera/systemresmanager/TEVBoostStrategy;

    invoke-direct {p4}, Lcom/ss/android/ttvecamera/systemresmanager/TEVBoostStrategy;-><init>()V

    invoke-virtual {p2, p4}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->setStrategy(Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;)V

    .line 223
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mSystemResManager:Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;

    iget-object p4, p3, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p4}, Lcom/ss/android/ttvecamera/systemresmanager/TESystemResManager;->initStrategy(Landroid/content/Context;)V

    .line 225
    :cond_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_26 .. :try_end_6a} :catchall_3a

    .line 227
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->increaseClientCount()I

    if-eqz v1, :cond_79

    .line 231
    const-string p2, "TECameraServer"

    const-string p4, "reopen camera."

    invoke-static {p2, p4}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, p5}, Lcom/ss/android/ttvecamera/TECameraServer;->close(Lcom/bytedance/bpea/basics/Cert;)I

    .line 234
    :cond_79
    iput-boolean v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraPendingClose:Z

    .line 235
    iput-object p5, p0, Lcom/ss/android/ttvecamera/TECameraServer;->cachedOpenPrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 236
    invoke-direct {p0, p1, p3, p5}, Lcom/ss/android/ttvecamera/TECameraServer;->open(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0

    .line 225
    :goto_82
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_3a

    throw p0

    .line 198
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mParams must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "observer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 190
    :cond_94
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public couldForwardState(I)Z
    .registers 6

    .line 1621
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const-string v1, "TECameraServer"

    if-ne p1, v0, :cond_b

    .line 1622
    const-string v0, "No need this"

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x1

    if-eqz p1, :cond_4c

    if-eq p1, v0, :cond_32

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2c

    .line 1643
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalidate camera state = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1640
    :cond_2c
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    if-ne p0, v0, :cond_31

    return v0

    :cond_31
    return v3

    .line 1629
    :cond_32
    iget p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    if-eqz p1, :cond_4c

    .line 1630
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need open camera again, state = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    return v0
.end method

.method public disConnect(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 4

    const/4 v0, 0x1

    .line 242
    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->disConnect(Lcom/ss/android/ttvecamera/TECameraCapture;ZLcom/bytedance/bpea/basics/Cert;)I

    move-result p0

    return p0
.end method

.method public disConnect(Lcom/ss/android/ttvecamera/TECameraCapture;ZLcom/bytedance/bpea/basics/Cert;)I
    .registers 7

    .line 249
    const-string v0, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disConnect with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraSwitchState:Z

    .line 251
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_1c
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;

    if-ne v2, p1, :cond_43

    if-eqz v2, :cond_43

    const/4 p1, 0x0

    .line 253
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;

    .line 257
    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 258
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_41

    .line 260
    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->cachedClosePrivacyCert:Lcom/bytedance/bpea/basics/Cert;

    .line 261
    invoke-direct {p0, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer;->close(ZLcom/bytedance/bpea/basics/Cert;)I

    if-eqz p2, :cond_3d

    .line 263
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->decreaseClientCount()I

    move-result p1

    if-nez p1, :cond_40

    .line 264
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->destroy()I

    move-result p0

    return p0

    .line 267
    :cond_3d
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->setAsyncCloseCheckMsg()V

    :cond_40
    return v0

    :catchall_41
    move-exception p0

    goto :goto_47

    :cond_43
    const/16 p0, -0x64

    .line 255
    :try_start_45
    monitor-exit v1

    return p0

    .line 258
    :goto_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_41

    throw p0
.end method

.method public downExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;)V
    .registers 5

    .line 1740
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1743
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 1744
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$32;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer$32;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1751
    :cond_1e
    const-string p1, "TECameraServer"

    const-string v0, "downExposureCompensation..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1753
    :try_start_28
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_50

    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    .line 1754
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not set ec on state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x69

    invoke-interface {v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1755
    monitor-exit p1

    return-void

    :catchall_4e
    move-exception p0

    goto :goto_6e

    .line 1758
    :cond_50
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraBase;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object v0

    if-nez v0, :cond_63

    .line 1760
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const-string v0, "downExposureCompensation get ec info failed"

    const/16 v1, -0x70

    invoke-interface {p0, v1, v0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1761
    monitor-exit p1

    return-void

    .line 1763
    :cond_63
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraBase;->setExposureCompensation(I)Z

    .line 1764
    monitor-exit p1

    return-void

    :goto_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_28 .. :try_end_6f} :catchall_4e

    throw p0
.end method

.method public enableCaf(Lcom/ss/android/ttvecamera/TECameraCapture;)I
    .registers 4

    .line 1283
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 1286
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 1287
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$19;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer$19;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 1294
    :cond_20
    const-string p1, "TECameraServer"

    const-string v0, "enableCaf..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1296
    :try_start_2a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_36

    .line 1298
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->enableCaf()V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_39

    .line 1300
    :cond_36
    :goto_36
    monitor-exit p1

    :goto_37
    const/4 p0, 0x0

    return p0

    :goto_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_34

    throw p0
.end method

.method public enableMulticamZoom(Lcom/ss/android/ttvecamera/TECameraCapture;Z)I
    .registers 5

    .line 2715
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 2718
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 2719
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$52;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$52;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_46

    .line 2726
    :cond_20
    const-string p1, "TECameraServer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableMulticamZoom: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2728
    :try_start_39
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_45

    .line 2729
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->enableMulticamZoom(Z)V

    goto :goto_45

    :catchall_43
    move-exception p0

    goto :goto_48

    .line 2731
    :cond_45
    :goto_45
    monitor-exit p1

    :goto_46
    const/4 p0, 0x0

    return p0

    :goto_48
    monitor-exit p1
    :try_end_49
    .catchall {:try_start_39 .. :try_end_49} :catchall_43

    throw p0
.end method

.method public focusAtPoint(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TEFocusSettings;)I
    .registers 5

    .line 1234
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 1237
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 1238
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$17;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TEFocusSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_67

    .line 1248
    :cond_20
    const-string p1, "TECameraServer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focusAtPoint at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1250
    :try_start_39
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_61

    .line 1251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not set focus on state : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1252
    const-string v0, "TECameraServer"

    invoke-static {v0, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const/16 v0, -0x69

    invoke-interface {p0, v0, p2}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1254
    monitor-exit p1

    return v0

    :catchall_5f
    move-exception p0

    goto :goto_69

    .line 1256
    :cond_61
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)V

    .line 1257
    monitor-exit p1

    :goto_67
    const/4 p0, 0x0

    return p0

    :goto_69
    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_39 .. :try_end_6a} :catchall_5f

    throw p0
.end method

.method public getApertureRange(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ApertureCallback;)[F
    .registers 6

    const/4 v0, 0x1

    .line 1994
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1995
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v1

    if-nez v1, :cond_14

    const/4 p0, 0x2

    .line 1996
    new-array p0, p0, [F

    fill-array-data p0, :array_40

    return-object p0

    .line 1998
    :cond_14
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_2b

    .line 1999
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/ttvecamera/TECameraServer$41;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$41;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ApertureCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    .line 2009
    :cond_2b
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2010
    :try_start_2e
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p2, :cond_3b

    .line 2011
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getApertureRange()[F

    move-result-object v0

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_3d

    .line 2013
    :cond_3b
    :goto_3b
    monitor-exit p1

    return-object v0

    :goto_3d
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_39

    throw p0

    nop

    :array_40
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public getBestPreviewSize(Lcom/ss/android/ttvecamera/TECameraCapture;FLcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 6

    .line 613
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 617
    :cond_8
    iget p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    if-eqz p1, :cond_19

    iget p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_12

    goto :goto_19

    .line 620
    :cond_12
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2, p3}, Lcom/ss/android/ttvecamera/TECameraBase;->getBestPreviewSize(FLcom/ss/android/ttvecamera/TEFrameSizei;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0

    return-object p0

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getCameraCapbilitiesForBytebench(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$CameraCapabilitiesForBytebenchCallback;)Lorg/json/JSONObject;
    .registers 6

    .line 2737
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2738
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 2741
    :cond_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_24

    .line 2742
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/ttvecamera/TECameraServer$53;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$53;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$CameraCapabilitiesForBytebenchCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    .line 2752
    :cond_24
    const-string p1, "TECameraServer"

    const-string p2, "getCameraCapbilitiesForBytebench"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2754
    :try_start_2e
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p2, :cond_3b

    .line 2755
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getCameraCapbilitiesForBytebench()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_3d

    .line 2757
    :cond_3b
    :goto_3b
    monitor-exit p1

    return-object v0

    :goto_3d
    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_39

    throw p0
.end method

.method public getCameraCaptureSize()[I
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 357
    :cond_6
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getCameraCaptureSize()[I

    move-result-object p0

    return-object p0
.end method

.method public getCameraECInfo(Lcom/ss/android/ttvecamera/TECameraCapture;)Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;
    .registers 3

    .line 1668
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 1671
    :cond_8
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v0
.end method

.method public getCameraState()I
    .registers 2

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraServer;->getCameraState(Z)I

    move-result p0

    return p0
.end method

.method public getCameraState(Z)I
    .registers 2

    if-eqz p1, :cond_c

    .line 334
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 335
    :try_start_5
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    .line 336
    monitor-exit p1

    return p0

    :catchall_9
    move-exception p0

    monitor-exit p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw p0

    .line 338
    :cond_c
    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    return p0
.end method

.method public getExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;)I
    .registers 5

    .line 1675
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1678
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1679
    :try_start_9
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_31

    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    .line 1680
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not get ec on state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x69

    invoke-interface {v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1681
    monitor-exit p1

    return v1

    :catchall_2f
    move-exception p0

    goto :goto_39

    .line 1683
    :cond_31
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getExposureCompensation()I

    move-result p0

    monitor-exit p1

    return p0

    .line 1684
    :goto_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_2f

    throw p0

    .line 1676
    :cond_3b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Client is not connected!!!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFOV(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$FOVCallback;)[F
    .registers 7

    const/4 v0, 0x2

    .line 1107
    new-array v1, v0, [F

    .line 1108
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1109
    new-array p0, v0, [F

    fill-array-data p0, :array_62

    return-object p0

    .line 1111
    :cond_f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_26

    .line 1112
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/ttvecamera/TECameraServer$13;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$13;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$FOVCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 1122
    :cond_26
    const-string p1, "TECameraServer"

    const-string p2, "getFOV"

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1124
    :try_start_30
    iget p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x3

    if-eq p2, v1, :cond_58

    .line 1125
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not getFOV on state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x69

    invoke-interface {p2, v1, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1126
    new-array p0, v0, [F

    fill-array-data p0, :array_6a

    monitor-exit p1

    return-object p0

    :catchall_56
    move-exception p0

    goto :goto_60

    .line 1128
    :cond_58
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getFOV()[F

    move-result-object p0

    .line 1129
    monitor-exit p1

    return-object p0

    :goto_60
    monitor-exit p1
    :try_end_61
    .catchall {:try_start_30 .. :try_end_61} :catchall_56

    throw p0

    :array_62
    .array-data 4
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
    .end array-data

    :array_6a
    .array-data 4
        -0x40000000    # -2.0f
        -0x40000000    # -2.0f
    .end array-data
.end method

.method public getFlashMode(Lcom/ss/android/ttvecamera/TECameraCapture;)I
    .registers 2

    .line 1440
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez p1, :cond_6

    const/4 p0, -0x1

    return p0

    .line 1443
    :cond_6
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getFlashMode()I

    move-result p0

    return p0
.end method

.method public getISO(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;)I
    .registers 6

    .line 1923
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 1926
    :cond_8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_1f

    .line 1927
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/ttvecamera/TECameraServer$38;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$38;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ISOCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    .line 1937
    :cond_1f
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1938
    :try_start_22
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p2, :cond_2f

    .line 1939
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getISO()I

    move-result v1

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_31

    .line 1941
    :cond_2f
    :goto_2f
    monitor-exit p1

    return v1

    :goto_31
    monitor-exit p1
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_2d

    throw p0
.end method

.method public getISORange(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;)[I
    .registers 6

    const/4 v0, 0x2

    .line 1877
    new-array v0, v0, [I

    .line 1878
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 p0, -0x1

    .line 1879
    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0

    .line 1881
    :cond_f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_26

    .line 1882
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/ttvecamera/TECameraServer$36;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$36;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ISORangeCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    .line 1892
    :cond_26
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1893
    :try_start_29
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p2, :cond_36

    .line 1894
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getISORange()[I

    move-result-object v0

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_38

    .line 1896
    :cond_36
    :goto_36
    monitor-exit p1

    return-object v0

    :goto_38
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_34

    throw p0
.end method

.method public getManualFocusAbility(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;)F
    .registers 6

    .line 1307
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_9

    return v1

    .line 1310
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_20

    .line 1311
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/ttvecamera/TECameraServer$20;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$20;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    .line 1321
    :cond_20
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1322
    :try_start_23
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p2, :cond_30

    .line 1323
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getManualFocusAbility()F

    move-result v1

    goto :goto_30

    :catchall_2e
    move-exception p0

    goto :goto_32

    .line 1325
    :cond_30
    :goto_30
    monitor-exit p1

    return v1

    :goto_32
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_2e

    throw p0
.end method

.method public getPictureSize(Lcom/ss/android/ttvecamera/TECameraCapture;)[I
    .registers 3

    .line 1379
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 1382
    :cond_8
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez p1, :cond_d

    return-object v0

    .line 1386
    :cond_d
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getPictureSize()[I

    move-result-object p0

    return-object p0
.end method

.method public getPreviewFps()[I
    .registers 2

    .line 345
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 349
    :cond_6
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getPreviewFps()[I

    move-result-object p0

    return-object p0
.end method

.method public getShutterTimeRange(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;)[J
    .registers 6

    const/4 v0, 0x2

    .line 1948
    new-array v1, v0, [J

    .line 1949
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1950
    new-array p0, v0, [J

    fill-array-data p0, :array_3a

    return-object p0

    .line 1952
    :cond_f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_26

    .line 1953
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/ttvecamera/TECameraServer$39;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$39;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ShutterTimeCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 1963
    :cond_26
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1964
    :try_start_29
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p2, :cond_36

    .line 1965
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getShutterTimeRange()[J

    move-result-object v1

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_38

    .line 1967
    :cond_36
    :goto_36
    monitor-exit p1

    return-object v1

    :goto_38
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_29 .. :try_end_39} :catchall_34

    throw p0

    :array_3a
    .array-data 8
        -0x1
        -0x1
    .end array-data
.end method

.method public getSupportedPictureSizes(Lcom/ss/android/ttvecamera/TECameraCapture;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ttvecamera/TECameraCapture;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 1406
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 1409
    :cond_8
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez p1, :cond_d

    return-object v0

    .line 1414
    :cond_d
    :try_start_d
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 1416
    const-string p1, "TECameraServer"

    const-string v1, "getSupportedPictureSizes, exception occured."

    invoke-static {p1, v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getSupportedPreviewSizes(Lcom/ss/android/ttvecamera/TECameraCapture;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/android/ttvecamera/TECameraCapture;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;"
        }
    .end annotation

    .line 1390
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 1393
    :cond_8
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez p1, :cond_d

    return-object v0

    .line 1398
    :cond_d
    :try_start_d
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 1400
    const-string p1, "TECameraServer"

    const-string v1, "getSupportedPreviewSizes, exception occured."

    invoke-static {p1, v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public isAutoExposureLockSupported(Lcom/ss/android/ttvecamera/TECameraCapture;)Z
    .registers 6

    .line 1794
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1797
    :cond_8
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1798
    :try_start_b
    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_31

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_31

    .line 1799
    const-string v1, "TECameraServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not get ae lock supported on state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    monitor-exit p1

    return v0

    :catchall_2f
    move-exception p0

    goto :goto_39

    .line 1802
    :cond_31
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->isAutoExposureLockSupported()Z

    move-result p0

    monitor-exit p1

    return p0

    .line 1803
    :goto_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_2f

    throw p0
.end method

.method public isAutoFocusLockSupported(Lcom/ss/android/ttvecamera/TECameraCapture;)Z
    .registers 6

    .line 1832
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1835
    :cond_8
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1836
    :try_start_b
    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_31

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_31

    .line 1837
    const-string v1, "TECameraServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not get ae lock supported on state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    monitor-exit p1

    return v0

    :catchall_2f
    move-exception p0

    goto :goto_39

    .line 1840
    :cond_31
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->isAutoFocusLockSupported()Z

    move-result p0

    monitor-exit p1

    return p0

    .line 1841
    :goto_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_2f

    throw p0
.end method

.method public isCameraSwitchState()Z
    .registers 1

    .line 324
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraSwitchState:Z

    return p0
.end method

.method public isSupportWhileBalance(Lcom/ss/android/ttvecamera/TECameraCapture;)Z
    .registers 4

    .line 1846
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1849
    :cond_8
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1850
    :try_start_b
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v1, :cond_1b

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->isSupportWhileBalance()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_1d

    :cond_1b
    :goto_1b
    monitor-exit p1

    return v0

    .line 1851
    :goto_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_19

    throw p0
.end method

.method public isSupportedExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;)Z
    .registers 4

    .line 1654
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1658
    :cond_8
    iget p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2b

    iget p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2b

    .line 1659
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not set ec on state : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraServer"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1663
    :cond_2b
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->isSupportedExposureCompensation()Z

    move-result p0

    return p0
.end method

.method public isTorchSupported(Lcom/ss/android/ttvecamera/TECameraCapture;)Z
    .registers 3

    .line 2040
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 2043
    :cond_8
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz p0, :cond_14

    .line 2044
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->isTorchSupported()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v0
.end method

.method public notifyHostForegroundVisible(Lcom/ss/android/ttvecamera/TECameraCapture;Z)V
    .registers 3

    .line 1351
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1352
    iput-boolean p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsForegroundVisible:Z

    .line 1353
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "is foreground visible: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraServer"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public process(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)I
    .registers 5

    .line 1598
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 1601
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 1602
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$29;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$29;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 1609
    :cond_20
    const-string p1, "TECameraServer"

    const-string v0, "setFeatureParameters..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1611
    :try_start_2a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_36

    .line 1612
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->process(Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_39

    .line 1614
    :cond_36
    :goto_36
    monitor-exit p1

    :goto_37
    const/4 p0, 0x0

    return p0

    :goto_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_34

    throw p0
.end method

.method public processAlgorithm(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/ttvecamera/TECameraFrame;
    .registers 3

    .line 2787
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez v0, :cond_d

    .line 2788
    const-string p0, "TECameraServer"

    const-string p1, "processAlgorithm failed mCameraInstance is null!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2791
    :cond_d
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->processAlgorithm(Lcom/ss/android/ttvecamera/TECameraFrame;)Lcom/ss/android/ttvecamera/TECameraFrame;

    move-result-object p0

    return-object p0
.end method

.method public queryFeatures(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 2097
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    const-string v1, "TECameraServer"

    if-eqz v0, :cond_b6

    .line 2098
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->getFeatures(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_14

    .line 2100
    const-string p0, "queryFeatures: getFeatures is null"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2107
    :cond_14
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2108
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2109
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraSettings$Features;->getFeatureType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2110
    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_3e

    .line 2111
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1c

    .line 2112
    :cond_3e
    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_4a

    .line 2113
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1c

    .line 2114
    :cond_4a
    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_56

    .line 2115
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1c

    .line 2116
    :cond_56
    const-class v3, Ljava/lang/Float;

    if-ne v2, v3, :cond_62

    .line 2117
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1c

    .line 2118
    :cond_62
    const-class v3, Ljava/lang/Double;

    if-ne v2, v3, :cond_6e

    .line 2119
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1c

    .line 2120
    :cond_6e
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_7a

    .line 2121
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 2122
    :cond_7a
    const-class v3, Ljava/util/ArrayList;

    if-ne v2, v3, :cond_86

    .line 2123
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1c

    .line 2124
    :cond_86
    const-class v3, Lcom/ss/android/ttvecamera/TEFrameSizei;

    if-ne v2, v3, :cond_92

    .line 2125
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1c

    .line 2126
    :cond_92
    const-class v3, Lcom/ss/android/ttvecamera/TEFocusParameters;

    if-ne v2, v3, :cond_9f

    .line 2127
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1c

    .line 2129
    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not supported key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c

    :cond_b5
    return-void

    .line 2104
    :cond_b6
    const-string p0, "queryFeatures: camera instance null"

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryShaderZoomStep(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;)F
    .registers 5

    .line 1472
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/high16 p0, -0x3d280000    # -108.0f

    return p0

    .line 1475
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 1476
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$25;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$25;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 1483
    :cond_20
    const-string p1, "TECameraServer"

    const-string v0, "queryShaderZoomStep..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1485
    :try_start_2a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_36

    .line 1486
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->queryShaderZoomStep(Lcom/ss/android/ttvecamera/TECameraSettings$ShaderZoomCallback;)V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_39

    .line 1488
    :cond_36
    :goto_36
    monitor-exit p1

    :goto_37
    const/4 p0, 0x0

    return p0

    :goto_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_34

    throw p0
.end method

.method public queryZoomAbility(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)I
    .registers 6

    .line 1449
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 1452
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 1453
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$24;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer$24;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 1460
    :cond_20
    const-string p1, "TECameraServer"

    const-string v0, "queryZoomAbility..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1462
    :try_start_2a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_36

    .line 1463
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2, p3}, Lcom/ss/android/ttvecamera/TECameraBase;->queryZoomAbility(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;Z)V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_39

    .line 1465
    :cond_36
    :goto_36
    monitor-exit p1

    :goto_37
    const/4 p0, 0x0

    return p0

    :goto_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_34

    throw p0
.end method

.method public registerFpsConfigListener(Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFpsConfigCallback:Lcom/ss/android/ttvecamera/TECameraCapture$CameraFpsConfigCallback;

    return-void
.end method

.method public registerPreviewSizeListener(Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    return-void
.end method

.method public removeCameraAlgorithm(I)V
    .registers 3

    .line 2771
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez v0, :cond_c

    .line 2772
    const-string p0, "TECameraServer"

    const-string p1, "removeCameraAlgorithm failed mCameraInstance is null!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2775
    :cond_c
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->removeCameraAlgorithm(I)V

    return-void
.end method

.method public removeCameraProvider(Lcom/ss/android/ttvecamera/TECameraCapture;)I
    .registers 4

    .line 662
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 665
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 666
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$6;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer$6;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_30

    .line 673
    :cond_20
    const-string p1, "TECameraServer"

    const-string v0, "removeCameraProvider"

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 675
    :try_start_2a
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mProviderManager:Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/provider/TECameraProviderManager;->removeProvider()V

    .line 676
    monitor-exit p1

    :goto_30
    const/4 p0, 0x0

    return p0

    :catchall_32
    move-exception p0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw p0
.end method

.method public setAperture(Lcom/ss/android/ttvecamera/TECameraCapture;F)V
    .registers 5

    .line 2019
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2022
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 2023
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$42;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$42;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 2030
    :cond_1e
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2031
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_2d

    .line 2032
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->setAperture(F)V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 2034
    :cond_2d
    :goto_2d
    monitor-exit p1

    return-void

    :goto_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public setAutoExposureLock(Lcom/ss/android/ttvecamera/TECameraCapture;Z)V
    .registers 5

    .line 1770
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1773
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 1774
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$33;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$33;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1781
    :cond_1e
    const-string p1, "TECameraServer"

    const-string v0, "setAutoExposureLock..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1783
    :try_start_28
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_50

    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    .line 1784
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not set auto exposure lock on state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, -0x69

    invoke-interface {p2, v0, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1785
    monitor-exit p1

    return-void

    :catchall_4e
    move-exception p0

    goto :goto_57

    .line 1788
    :cond_50
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->setAutoExposureLock(Z)V

    .line 1789
    monitor-exit p1

    return-void

    :goto_57
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_28 .. :try_end_58} :catchall_4e

    throw p0
.end method

.method public setAutoFocusLock(Lcom/ss/android/ttvecamera/TECameraCapture;Z)V
    .registers 5

    .line 1808
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1811
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 1812
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$34;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$34;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1819
    :cond_1e
    const-string p1, "TECameraServer"

    const-string v0, "setAutoExposureLock..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1821
    :try_start_28
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_50

    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    .line 1822
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not set auto exposure lock on state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, -0x69

    invoke-interface {p2, v0, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1823
    monitor-exit p1

    return-void

    :catchall_4e
    move-exception p0

    goto :goto_57

    .line 1826
    :cond_50
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->setAutoFocusLock(Z)V

    .line 1827
    monitor-exit p1

    return-void

    :goto_57
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_28 .. :try_end_58} :catchall_4e

    throw p0
.end method

.method public setDeviceRotation(I)V
    .registers 3

    .line 2709
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_9

    .line 2710
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->setDeviceRotation(I)V

    :cond_9
    return-void
.end method

.method public setExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;I)V
    .registers 4

    .line 1688
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_b

    goto :goto_14

    .line 1693
    :cond_b
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraServer$30;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/ttvecamera/TECameraServer$30;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1689
    :cond_14
    :goto_14
    const-string p0, "TECameraServer"

    const-string p1, "setExposureCompensation failed"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFeatureParameters(Lcom/ss/android/ttvecamera/TECameraCapture;Landroid/os/Bundle;)I
    .registers 5

    .line 1576
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 1579
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 1580
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$28;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$28;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 1587
    :cond_20
    const-string p1, "TECameraServer"

    const-string v0, "setFeatureParameters..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1589
    :try_start_2a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_36

    .line 1590
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->setFeatureParameters(Landroid/os/Bundle;)V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_39

    .line 1592
    :cond_36
    :goto_36
    monitor-exit p1

    :goto_37
    const/4 p0, 0x0

    return p0

    :goto_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_34

    throw p0
.end method

.method public setISO(Lcom/ss/android/ttvecamera/TECameraCapture;I)V
    .registers 5

    .line 1902
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1905
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 1906
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$37;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$37;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1913
    :cond_1e
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1914
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_2d

    .line 1915
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->setISO(I)V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 1917
    :cond_2d
    :goto_2d
    monitor-exit p1

    return-void

    :goto_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public setManualFocusDistance(Lcom/ss/android/ttvecamera/TECameraCapture;F)V
    .registers 5

    .line 1331
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1334
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 1335
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$21;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1342
    :cond_1e
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1343
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_2d

    .line 1344
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->setManualFocusDistance(F)V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 1346
    :cond_2d
    :goto_2d
    monitor-exit p1

    return-void

    :goto_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public setPictureSize(Lcom/ss/android/ttvecamera/TECameraCapture;II)V
    .registers 5

    .line 1358
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1359
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_12

    .line 1360
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraServer$22;

    invoke-direct {v0, p0, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer$22;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void

    .line 1374
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "set picture size failed, w: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", h: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraServer"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPreviewFpsRange(Lcom/ss/android/ttvecamera/TEFrameRateRange;)V
    .registers 4

    .line 2695
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez v0, :cond_9

    goto :goto_1f

    .line 2698
    :cond_9
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput-object p1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    const/4 p1, 0x1

    .line 2700
    iput p1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    .line 2701
    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    if-ne v1, p1, :cond_1a

    const/4 p1, 0x4

    .line 2702
    iput p1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraFrameRateStrategy:I

    const/4 p1, 0x0

    .line 2703
    iput-boolean p1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mOptCameraSceneFps:Z

    .line 2705
    :cond_1a
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->setPreviewFpsRange()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public setSATZoomCallback(Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;)V
    .registers 2

    .line 747
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;

    return-void
.end method

.method public setSceneMode(Lcom/ss/android/ttvecamera/TECameraCapture;I)V
    .registers 4

    .line 1423
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1424
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_12

    .line 1425
    new-instance v0, Lcom/ss/android/ttvecamera/TECameraServer$23;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/ttvecamera/TECameraServer$23;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void

    .line 1435
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "set scnen failed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraServer"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setShutterTime(Lcom/ss/android/ttvecamera/TECameraCapture;J)V
    .registers 6

    .line 1973
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1976
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 1977
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$40;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer$40;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1984
    :cond_1e
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1985
    :try_start_21
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_2d

    .line 1986
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2, p3}, Lcom/ss/android/ttvecamera/TECameraBase;->setShutterTime(J)V

    goto :goto_2d

    :catchall_2b
    move-exception p0

    goto :goto_2f

    .line 1988
    :cond_2d
    :goto_2d
    monitor-exit p1

    return-void

    :goto_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_2b

    throw p0
.end method

.method public setWhileBalance(Lcom/ss/android/ttvecamera/TECameraCapture;ZLjava/lang/String;)V
    .registers 6

    .line 1855
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1858
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 1859
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$35;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer$35;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1866
    :cond_1e
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1867
    :try_start_21
    const-string v0, "TECameraServer"

    const-string v1, "setWhileBalance..."

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_34

    .line 1869
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2, p3}, Lcom/ss/android/ttvecamera/TECameraBase;->setWhileBalance(ZLjava/lang/String;)V

    goto :goto_34

    :catchall_32
    move-exception p0

    goto :goto_36

    .line 1871
    :cond_34
    :goto_34
    monitor-exit p1

    return-void

    :goto_36
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_32

    throw p0
.end method

.method public start(Lcom/ss/android/ttvecamera/TECameraCapture;)I
    .registers 8

    .line 682
    const-string v0, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start: client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 p0, -0x6c

    return p0

    .line 686
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-eqz v0, :cond_13e

    iget-object v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mContext:Landroid/content/Context;

    if-nez v0, :cond_29

    goto/16 :goto_13e

    .line 692
    :cond_29
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_37

    .line 694
    const-string p0, "TECameraServer"

    const-string p1, "start, mHandler is null!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 698
    :cond_37
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_82

    .line 699
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$7;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer$7;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 709
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-boolean p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz p1, :cond_13b

    .line 710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 711
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClientCondition:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 712
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClientCondition:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    .line 713
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 714
    const-string v0, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera start cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13b

    .line 717
    :cond_82
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 718
    :try_start_85
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_ba

    .line 719
    const-string v0, "TECameraServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start, no need to start capture, state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraProviderChanged:Z

    if-nez v0, :cond_b0

    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStartPreviewError:Z

    if-nez v0, :cond_b0

    .line 721
    monitor-exit p1

    return v3

    :catchall_ad
    move-exception p0

    goto/16 :goto_13c

    .line 723
    :cond_b0
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraBase;->stopCapture()V

    .line 724
    invoke-virtual {p0, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 725
    iput-boolean v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraProviderChanged:Z

    .line 728
    :cond_ba
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    if-eq v0, v1, :cond_e2

    .line 729
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalidate state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ==> "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x69

    invoke-interface {v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 730
    monitor-exit p1

    return v1

    .line 733
    :cond_e2
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const-string v4, "Camera state: opened"

    invoke-interface {v0, v2, v1, v4}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onInfo(IILjava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraBase;->startCapture()V

    .line 735
    invoke-virtual {p0, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 736
    const-string v0, "te_record_camera_type"

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TECameraBase;->getCameraType()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 737
    const-string v0, "te_preview_camera_resolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v2, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    iget v2, v2, Lcom/ss/android/ttvecamera/TEFrameSizei;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v0, "te_record_camera_frame_rate"

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFPSRange:Lcom/ss/android/ttvecamera/TEFrameRateRange;

    iget v1, v1, Lcom/ss/android/ttvecamera/TEFrameRateRange;->max:I

    int-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfDouble(Ljava/lang/String;D)V

    .line 739
    const-string v0, "te_record_camera_direction"

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraMonitor;->perfLong(Ljava/lang/String;J)V

    .line 740
    monitor-exit p1

    :cond_13b
    :goto_13b
    return v3

    :goto_13c
    monitor-exit p1
    :try_end_13d
    .catchall {:try_start_85 .. :try_end_13d} :catchall_ad

    throw p0

    .line 687
    :cond_13e
    :goto_13e
    const-string p0, "TECameraServer"

    const-string p1, "mCameraSettings has some error"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x64

    return p0
.end method

.method public startRecording()I
    .registers 1

    .line 602
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->startRecording()I

    move-result p0

    return p0
.end method

.method public startZoom(Lcom/ss/android/ttvecamera/TECameraCapture;FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I
    .registers 8

    .line 1495
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    const-string v0, "TECameraServer"

    if-nez p1, :cond_10

    .line 1496
    const-string p0, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -108. Reason: invalid CameraClient"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 1499
    :cond_10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 1500
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez p1, :cond_29

    .line 1502
    const-string p0, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -105. Reason: mCameraInstance is null"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string p0, "camera is null, no need to start zoom"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x69

    return p0

    .line 1507
    :cond_29
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentZoom:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1508
    iget v1, p1, Lcom/ss/android/ttvecamera/TECameraBase;->mMaxZoom:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    const/4 v3, 0x0

    if-gez v1, :cond_44

    .line 1509
    iget p2, p1, Lcom/ss/android/ttvecamera/TECameraBase;->mMaxZoom:F

    goto :goto_53

    .line 1510
    :cond_44
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_4e

    const/4 p2, 0x0

    goto :goto_53

    :cond_4e
    cmpg-float p1, v0, v2

    if-gez p1, :cond_53

    return v3

    .line 1515
    :cond_53
    :goto_53
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentZoom:F

    .line 1516
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->createMessage(IZLandroid/os/Handler;)Landroid/os/Message;

    move-result-object p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 1517
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 1518
    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1519
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v3
.end method

.method public stop(Lcom/ss/android/ttvecamera/TECameraCapture;)I
    .registers 3

    const/4 v0, 0x0

    .line 824
    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttvecamera/TECameraServer;->stop(Lcom/ss/android/ttvecamera/TECameraCapture;Z)I

    move-result p0

    return p0
.end method

.method public stop(Lcom/ss/android/ttvecamera/TECameraCapture;Z)I
    .registers 7

    .line 774
    const-string v0, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 p0, -0x6c

    return p0

    .line 779
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2d

    .line 781
    const-string p0, "TECameraServer"

    const-string p1, "stop, mHandler is null!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x70

    return p0

    .line 785
    :cond_2d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5b

    if-eqz p2, :cond_3f

    .line 787
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClientCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 789
    :cond_3f
    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$9;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_b1

    .line 799
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClientCondition:Landroid/os/ConditionVariable;

    const-wide/16 p1, 0x5dc

    invoke-virtual {p0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result p0

    if-nez p0, :cond_b1

    .line 801
    const-string p0, "TECameraServer"

    const-string p1, "Camera stop timeout!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b1

    .line 805
    :cond_5b
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 806
    :try_start_5e
    iget p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_7f

    .line 807
    const-string p2, "TECameraServer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop, no need to stop capture, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    monitor-exit p1

    return v3

    :catchall_7d
    move-exception p0

    goto :goto_b2

    .line 809
    :cond_7f
    iget p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x3

    if-eq p2, v1, :cond_a8

    .line 810
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalidate state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ==> "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, -0x69

    invoke-interface {p2, v0, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 811
    monitor-exit p1

    return v0

    .line 814
    :cond_a8
    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 815
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->stopCapture()V

    .line 816
    monitor-exit p1

    :cond_b1
    :goto_b1
    return v3

    :goto_b2
    monitor-exit p1
    :try_end_b3
    .catchall {:try_start_5e .. :try_end_b3} :catchall_7d

    throw p0
.end method

.method public stopRecording()I
    .registers 1

    .line 606
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TECameraBase;->stopRecording()I

    move-result p0

    return p0
.end method

.method public stopZoom(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I
    .registers 5

    .line 1526
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1527
    const-string p0, "TECameraServer"

    const-string p1, "[VE_UI_TEST]Failed event: STOP_ZOOM. Code: -108. Reason: invalid CameraClient"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 1530
    :cond_10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1531
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$26;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3e

    .line 1538
    :cond_27
    const-string p1, "TECameraServer"

    const-string v0, "stopZoom..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1540
    :try_start_31
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_3d

    .line 1541
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->stopZoom(Lcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V

    goto :goto_3d

    :catchall_3b
    move-exception p0

    goto :goto_40

    .line 1543
    :cond_3d
    :goto_3d
    monitor-exit p1

    :goto_3e
    const/4 p0, 0x0

    return p0

    :goto_40
    monitor-exit p1
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_3b

    throw p0
.end method

.method public switchCamera(Lcom/ss/android/ttvecamera/TECameraCapture;ILcom/bytedance/bpea/basics/Cert;)I
    .registers 8

    .line 946
    const-string v0, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    const/16 v1, -0x6c

    if-nez v0, :cond_1f

    return v1

    .line 951
    :cond_1f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    if-nez v0, :cond_3a

    .line 952
    const-string p0, "TECameraServer"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "switchCamera failed: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 956
    :cond_3a
    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    if-ne v0, p2, :cond_41

    const/16 p0, -0x1a7

    return p0

    :cond_41
    const/4 v0, 0x1

    .line 960
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraSwitchState:Z

    .line 961
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5d

    .line 962
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer$11;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;ILcom/bytedance/bpea/basics/Cert;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_110

    .line 969
    :cond_5d
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 970
    :try_start_60
    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    if-ne v1, v0, :cond_74

    .line 971
    iput-boolean v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraSwitchState:Z

    .line 972
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const-string p2, "Camera is opening, ignore this switch request."

    const/16 p3, -0x69

    invoke-interface {p0, p3, p2}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 973
    monitor-exit p1

    return p3

    :catchall_71
    move-exception p0

    goto/16 :goto_111

    .line 976
    :cond_74
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iput p2, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const/4 p2, 0x0

    .line 977
    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentZoom:F

    .line 978
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez p2, :cond_aa

    .line 979
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->createCameraInstance()Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    .line 980
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez p2, :cond_aa

    .line 981
    iput v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    .line 982
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 p3, 0xb

    if-ne p2, p3, :cond_9c

    .line 983
    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v0, -0x1ac

    const/4 v1, 0x0

    invoke-interface {p3, p2, v0, v1, v1}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    goto :goto_a5

    .line 985
    :cond_9c
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const-string p3, "open : mCameraInstance is null."

    const/16 v0, -0x64

    invoke-interface {p2, v0, p3}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 987
    :goto_a5
    iput-boolean v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraSwitchState:Z

    const/4 p0, -0x1

    .line 988
    monitor-exit p1

    return p0

    .line 992
    :cond_aa
    iget p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    if-eqz p2, :cond_ba

    const/4 p2, 0x4

    .line 993
    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 994
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p2, p3}, Lcom/ss/android/ttvecamera/TECameraBase;->close(Lcom/bytedance/bpea/basics/Cert;)V

    .line 995
    invoke-virtual {p0, v3}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 998
    :cond_ba
    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 999
    iput-boolean v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mIsCameraSwitchState:Z

    .line 1000
    iget p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    if-gez p2, :cond_c9

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p2, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    .line 1001
    :cond_c9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mBeginTime:J

    .line 1002
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {p2, v0, p3}, Lcom/ss/android/ttvecamera/TECameraBase;->open(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p2

    if-eqz p2, :cond_10f

    .line 1004
    iget-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switch camera failed @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",face:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1007
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TEFrameSizei;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1004
    invoke-interface {p3, p2, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1009
    :cond_10f
    monitor-exit p1

    :goto_110
    return v3

    :goto_111
    monitor-exit p1
    :try_end_112
    .catchall {:try_start_60 .. :try_end_112} :catchall_71

    throw p0
.end method

.method public switchCamera(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
    .registers 10

    .line 1017
    const-string v0, "TECameraServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 p0, -0x6c

    return p0

    .line 1023
    :cond_1f
    invoke-direct {p0, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->shouldReOpenCamera(Lcom/ss/android/ttvecamera/TECameraSettings;)Z

    move-result v0

    if-nez v0, :cond_28

    const/16 p0, -0x1a7

    return p0

    .line 1027
    :cond_28
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_41

    .line 1028
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer$12;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_145

    .line 1035
    :cond_41
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1036
    :try_start_44
    invoke-direct {p0, p2}, Lcom/ss/android/ttvecamera/TECameraServer;->onlySwitchSession(Lcom/ss/android/ttvecamera/TECameraSettings;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1037
    monitor-exit v0

    return v2

    :catchall_4c
    move-exception p0

    goto/16 :goto_146

    .line 1040
    :cond_4f
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    iget v3, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    const/4 v4, 0x1

    if-eq v1, v3, :cond_5a

    move v1, v4

    goto :goto_5b

    :cond_5a
    move v1, v2

    .line 1041
    :goto_5b
    iget v3, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    if-ne v3, v4, :cond_71

    if-nez v1, :cond_71

    .line 1042
    const-string p1, "Camera is opening, ignore this switch request..."

    .line 1043
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const/16 p2, -0x69

    invoke-interface {p0, p2, p1}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1044
    const-string p0, "TECameraServer"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    monitor-exit v0

    return p2

    .line 1048
    :cond_71
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v3, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    iget v5, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    if-ne v3, v5, :cond_13e

    .line 1049
    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    iget v3, p2, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    if-ne v1, v3, :cond_13e

    .line 1050
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez p1, :cond_ba

    .line 1051
    const-string p1, "TECameraServer"

    const-string v1, "switch camera, create instance..."

    invoke-static {p1, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->createCameraInstance()Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    .line 1053
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez p1, :cond_b3

    .line 1054
    iput v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    .line 1055
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/16 p2, 0xb

    if-ne p1, p2, :cond_a7

    .line 1056
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 p2, -0x1ac

    const/4 p3, 0x0

    invoke-interface {p0, p1, p2, p3, p3}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraOpened(IILcom/ss/android/ttvecamera/TECameraBase;Ljava/lang/Object;)V

    goto :goto_b0

    .line 1058
    :cond_a7
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const-string p1, "open : mCameraInstance is null."

    const/16 p2, -0x64

    invoke-interface {p0, p2, p1}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    :goto_b0
    const/4 p0, -0x1

    .line 1060
    monitor-exit v0

    return p0

    .line 1062
    :cond_b3
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->satZoomCallback:Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;

    invoke-virtual {p1, v1}, Lcom/ss/android/ttvecamera/TECameraBase;->setSATZoomCallback(Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;)V

    .line 1065
    :cond_ba
    iget p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    if-eqz p1, :cond_ca

    const/4 p1, 0x4

    .line 1066
    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 1067
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p1, p3}, Lcom/ss/android/ttvecamera/TECameraBase;->close(Lcom/bytedance/bpea/basics/Cert;)V

    .line 1068
    invoke-virtual {p0, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 1070
    :cond_ca
    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    const/4 p1, 0x0

    .line 1071
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentZoom:F

    .line 1073
    invoke-virtual {p0, v4}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 1074
    iget p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    if-gez p1, :cond_dc

    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget p1, p1, Lcom/ss/android/ttvecamera/TECameraSettings;->mRetryCnt:I

    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mRetryCnt:I

    .line 1075
    :cond_dc
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mBeginTime:J

    .line 1076
    const-string p1, "TECameraServer"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch mode = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/android/ttvecamera/TELogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    invoke-virtual {p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraBase;->open(Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    move-result p1

    if-eqz p1, :cond_13c

    .line 1079
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switch camera failed @"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",face:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mPreviewSize:Lcom/ss/android/ttvecamera/TEFrameSizei;

    .line 1082
    invoke-virtual {p0}, Lcom/ss/android/ttvecamera/TEFrameSizei;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1079
    invoke-interface {p2, p1, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1084
    :cond_13c
    monitor-exit v0

    return v2

    .line 1087
    :cond_13e
    monitor-exit v0
    :try_end_13f
    .catchall {:try_start_44 .. :try_end_13f} :catchall_4c

    .line 1089
    invoke-direct {p0, p3}, Lcom/ss/android/ttvecamera/TECameraServer;->close(Lcom/bytedance/bpea/basics/Cert;)I

    .line 1090
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer;->open(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I

    :goto_145
    return v2

    .line 1087
    :goto_146
    :try_start_146
    monitor-exit v0
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_4c

    throw p0
.end method

.method public switchCameraMode(Lcom/ss/android/ttvecamera/TECameraCapture;I)I
    .registers 6

    .line 566
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 570
    :cond_9
    iget-object v0, p1, Lcom/ss/android/ttvecamera/TECameraCapture;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mCameraType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_73

    if-eq p2, v2, :cond_18

    if-eqz p2, :cond_18

    const/4 v1, 0x2

    if-eq p2, v1, :cond_18

    goto :goto_73

    .line 576
    :cond_18
    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mMode:I

    const/4 v1, 0x0

    if-ne v0, p2, :cond_1e

    return v1

    .line 580
    :cond_1e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v0, v2, :cond_35

    .line 581
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/ss/android/ttvecamera/TECameraServer$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$4;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_70

    .line 588
    :cond_35
    const-string p1, "TECameraServer"

    const-string v0, "switchCameraMode"

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 590
    :try_start_3f
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6a

    .line 591
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalidate state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ==> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, -0x69

    invoke-interface {p2, v0, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 592
    monitor-exit p1

    return v0

    :catchall_68
    move-exception p0

    goto :goto_71

    .line 595
    :cond_6a
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->switchCameraMode(I)V

    .line 596
    monitor-exit p1

    :goto_70
    return v1

    :goto_71
    monitor-exit p1
    :try_end_72
    .catchall {:try_start_3f .. :try_end_72} :catchall_68

    throw p0

    :cond_73
    :goto_73
    const/16 p0, -0x64

    return p0
.end method

.method public switchFlashMode(Lcom/ss/android/ttvecamera/TECameraCapture;I)I
    .registers 6
    .param p2    # I
        .annotation build Lcom/ss/android/ttvecamera/TECameraSettings$FlashMode;
        .end annotation
    .end param

    .line 2072
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 2075
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_20

    .line 2076
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$44;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$44;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_51

    .line 2083
    :cond_20
    const-string p1, "TECameraServer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchFlashMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2085
    :try_start_39
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_50

    .line 2086
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->switchFlashMode(I)V

    .line 2087
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string v1, ""

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    const/16 v2, 0x74

    invoke-interface {v0, v2, p2, v1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_50

    :catchall_4e
    move-exception p0

    goto :goto_53

    .line 2089
    :cond_50
    :goto_50
    monitor-exit p1

    :goto_51
    const/4 p0, 0x0

    return p0

    :goto_53
    monitor-exit p1
    :try_end_54
    .catchall {:try_start_39 .. :try_end_54} :catchall_4e

    throw p0
.end method

.method public takePicture(Lcom/ss/android/ttvecamera/TECameraCapture;IILcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I
    .registers 6

    .line 1165
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 1169
    :cond_9
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ss/android/ttvecamera/TECameraServer$15;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer$15;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;II)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public takePicture(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)I
    .registers 4

    .line 1194
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result p1

    if-nez p1, :cond_9

    const/16 p0, -0x6c

    return p0

    .line 1198
    :cond_9
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ss/android/ttvecamera/TECameraServer$16;

    invoke-direct {v0, p0, p2}, Lcom/ss/android/ttvecamera/TECameraServer$16;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraSettings$PictureCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public toggleTorch(Lcom/ss/android/ttvecamera/TECameraCapture;Z)I
    .registers 5

    .line 2048
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2049
    const-string p0, "TECameraServer"

    const-string p1, "[VE_UI_TEST]Failed event: TOGGLE_TORCH. Code: -108. Reason: invalid CameraClient"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 2052
    :cond_10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 2053
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$43;

    invoke-direct {v1, p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraServer$43;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4d

    .line 2060
    :cond_27
    const-string p1, "TECameraServer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toggleTorch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2062
    :try_start_40
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_4c

    .line 2063
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p2}, Lcom/ss/android/ttvecamera/TECameraBase;->toggleTorch(Z)V

    goto :goto_4c

    :catchall_4a
    move-exception p0

    goto :goto_4f

    .line 2065
    :cond_4c
    :goto_4c
    monitor-exit p1

    :goto_4d
    const/4 p0, 0x0

    return p0

    :goto_4f
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_40 .. :try_end_50} :catchall_4a

    throw p0
.end method

.method public upExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;)V
    .registers 5

    .line 1711
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1714
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1e

    .line 1715
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$31;

    invoke-direct {v1, p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer$31;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1722
    :cond_1e
    const-string p1, "TECameraServer"

    const-string v0, "upExposureCompensation..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1724
    :try_start_28
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_50

    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    .line 1725
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not set ec on state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, -0x69

    invoke-interface {v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1726
    monitor-exit p1

    return-void

    :catchall_4e
    move-exception p0

    goto :goto_6e

    .line 1729
    :cond_50
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TECameraBase;->getCameraECInfo()Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;

    move-result-object v0

    if-nez v0, :cond_63

    .line 1731
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraObserver:Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;

    const-string v0, "upExposureCompensation get ec info failed"

    const/16 v1, -0x70

    invoke-interface {p0, v1, v0}, Lcom/ss/android/ttvecamera/TECameraCapture$CameraObserver;->onError(ILjava/lang/String;)V

    .line 1732
    monitor-exit p1

    return-void

    .line 1734
    :cond_63
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    iget v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings$ExposureCompensationInfo;->exposure:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraBase;->setExposureCompensation(I)Z

    .line 1735
    monitor-exit p1

    return-void

    :goto_6e
    monitor-exit p1
    :try_end_6f
    .catchall {:try_start_28 .. :try_end_6f} :catchall_4e

    throw p0
.end method

.method public updateCameraAlgorithmParam(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)V
    .registers 3

    .line 2779
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-nez v0, :cond_c

    .line 2780
    const-string p0, "TECameraServer"

    const-string p1, "updateCameraAlgorithmParam failed mCameraInstance is null!"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2783
    :cond_c
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {p0, p1}, Lcom/ss/android/ttvecamera/TECameraBase;->updateCameraAlgorithmParam(Lcom/ss/android/ttvecamera/cameraalgorithm/TECameraAlgorithmParam;)V

    return-void
.end method

.method public updateCameraState(I)V
    .registers 5

    .line 362
    iget v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    const-string v1, "TECameraServer"

    if-ne v0, p1, :cond_1b

    .line 363
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No need update state: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 367
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateCameraState]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iput p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I

    return-void
.end method

.method public zoomV2(Lcom/ss/android/ttvecamera/TECameraCapture;FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)I
    .registers 7

    .line 1549
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/TECameraServer;->assertClient(Lcom/ss/android/ttvecamera/TECameraCapture;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1550
    const-string p0, "TECameraServer"

    const-string p1, "[VE_UI_TEST]Failed event: START_ZOOM. Code: -108. Reason: invalid CameraClient"

    invoke-static {p0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x6c

    return p0

    .line 1553
    :cond_10
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_28

    .line 1554
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ss/android/ttvecamera/TECameraServer$27;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ss/android/ttvecamera/TECameraServer$27;-><init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_50

    .line 1561
    :cond_28
    const-string p1, "TECameraServer"

    const-string v0, "zoomV2..."

    invoke-static {p1, v0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1563
    :try_start_32
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    if-eqz v0, :cond_3e

    .line 1564
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    invoke-virtual {v0, p2, p3}, Lcom/ss/android/ttvecamera/TECameraBase;->zoomV2(FLcom/ss/android/ttvecamera/TECameraSettings$ZoomCallback;)V

    goto :goto_3e

    :catchall_3c
    move-exception p0

    goto :goto_51

    .line 1566
    :cond_3e
    :goto_3e
    iget-boolean p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFirstZoom:Z

    if-eqz p2, :cond_4f

    .line 1567
    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraEvent:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const-string p3, "zoomV2"

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;

    const/16 v1, 0x72

    invoke-interface {p2, v1, v2, p3, v0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1568
    iput-boolean v2, p0, Lcom/ss/android/ttvecamera/TECameraServer;->mFirstZoom:Z

    .line 1570
    :cond_4f
    monitor-exit p1

    :goto_50
    return v2

    :goto_51
    monitor-exit p1
    :try_end_52
    .catchall {:try_start_32 .. :try_end_52} :catchall_3c

    throw p0
.end method
