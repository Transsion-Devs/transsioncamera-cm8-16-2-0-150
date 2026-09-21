.class public final Lcom/ss/android/medialib/camera/IESCameraManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/camera/IESCameraManager$OnFPSUpdateListener;,
        Lcom/ss/android/medialib/camera/IESCameraManager$OnFrameRefreshListener;
    }
.end annotation


# static fields
.field private static final NUM_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "IESCameraManager"

.field public static misPrintMVP:Z = true

.field public static resolutionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/ss/android/medialib/camera/IESCameraManager;


# instance fields
.field private glCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

.field private iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

.field private isInited:Z

.field private mBodyBeautyEnabled:Z

.field private mBodyBeautyLevel:I

.field private volatile mCameraChanging:Z

.field private mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

.field private mCameraPreviewSizeInterface:Lcom/ss/android/medialib/presenter/CameraPreviewSizeInterface;

.field private mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;

.field private mCameraRotationInterface:Lcom/ss/android/medialib/presenter/CameraRotationInterface;

.field private mClientListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

.field private mIsPreventRender:Z

.field private mLastChangeCameraDoneTime:J

.field private mOnFPSUpdateListener:Lcom/ss/android/medialib/camera/IESCameraManager$OnFPSUpdateListener;

.field private mOnFrameRefreshListener:Lcom/ss/android/medialib/camera/IESCameraManager$OnFrameRefreshListener;

.field private mRotation:I

.field private mShaderZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;

.field private final mStateLock:Ljava/lang/Object;

.field private mUpdateCameraRotation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

.field private miFrameCount:I

.field private mlCurTimeMS:J

.field private mlLastTimeMS:J

.field myListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

.field private presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

.field private previewSize:[I

.field private torchSupportedFlag:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->torchSupportedFlag:I

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraChanging:Z

    .line 60
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mBodyBeautyEnabled:Z

    .line 61
    iput v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mBodyBeautyLevel:I

    .line 63
    iput v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->miFrameCount:I

    const-wide/16 v1, 0x0

    .line 64
    iput-wide v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mlCurTimeMS:J

    .line 65
    iput-wide v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mlLastTimeMS:J

    .line 67
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    .line 68
    iput-wide v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mLastChangeCameraDoneTime:J

    .line 70
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mIsPreventRender:Z

    .line 73
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mUpdateCameraRotation:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Lcom/ss/android/medialib/camera/IESCameraManager$1;

    invoke-direct {v0, p0}, Lcom/ss/android/medialib/camera/IESCameraManager$1;-><init>(Lcom/ss/android/medialib/camera/IESCameraManager;)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->glCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    const/4 v0, 0x2

    .line 153
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->previewSize:[I

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/presenter/IMediaPresenter;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/provider/ICameraProvider;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraInterface;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/ss/android/medialib/camera/IESCameraManager;Lcom/ss/android/medialib/camera/IESCameraInterface;)Lcom/ss/android/medialib/camera/IESCameraInterface;
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ss/android/medialib/camera/IESCameraManager;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mIsPreventRender:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/ss/android/medialib/camera/IESCameraManager;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mBodyBeautyEnabled:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/ss/android/medialib/camera/IESCameraManager;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mBodyBeautyLevel:I

    return p0
.end method

.method static synthetic access$1402(Lcom/ss/android/medialib/camera/IESCameraManager;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraChanging:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/ss/android/medialib/camera/IESCameraManager;J)J
    .registers 3

    .line 40
    iput-wide p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mLastChangeCameraDoneTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/ss/android/medialib/camera/IESCameraManager;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/ss/android/medialib/camera/IESCameraManager;->getCameraProvider()V

    return-void
.end method

.method static synthetic access$1700(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/CameraOpenListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mClientListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ss/android/medialib/camera/IESCameraManager;)Ljava/lang/Object;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraManager$OnFrameRefreshListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mOnFrameRefreshListener:Lcom/ss/android/medialib/camera/IESCameraManager$OnFrameRefreshListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/android/medialib/camera/IESCameraManager;)I
    .registers 1

    .line 40
    iget p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->miFrameCount:I

    return p0
.end method

.method static synthetic access$302(Lcom/ss/android/medialib/camera/IESCameraManager;I)I
    .registers 2

    .line 40
    iput p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->miFrameCount:I

    return p1
.end method

.method static synthetic access$304(Lcom/ss/android/medialib/camera/IESCameraManager;)I
    .registers 2

    .line 40
    iget v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->miFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->miFrameCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/ss/android/medialib/camera/IESCameraManager;)J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mlCurTimeMS:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/ss/android/medialib/camera/IESCameraManager;J)J
    .registers 3

    .line 40
    iput-wide p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mlCurTimeMS:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/ss/android/medialib/camera/IESCameraManager;)J
    .registers 3

    .line 40
    iget-wide v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mlLastTimeMS:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/ss/android/medialib/camera/IESCameraManager;J)J
    .registers 3

    .line 40
    iput-wide p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mlLastTimeMS:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraManager$OnFPSUpdateListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mOnFPSUpdateListener:Lcom/ss/android/medialib/camera/IESCameraManager$OnFPSUpdateListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ss/android/medialib/camera/IESCameraManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mUpdateCameraRotation:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/CameraParams;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ss/android/medialib/camera/IESCameraManager;Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->setCameraDisplayOrientation(Landroid/content/Context;)V

    return-void
.end method

.method private getCameraProvider()V
    .registers 3

    .line 241
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v0, v0, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 242
    new-instance v0, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-direct {v0, v1}, Lcom/ss/android/medialib/camera/provider/SurfaceTextureCameraProvider;-><init>(Lcom/ss/android/medialib/camera/IESCameraInterface;)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    goto :goto_1a

    .line 244
    :cond_11
    new-instance v0, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-direct {v0, v1}, Lcom/ss/android/medialib/camera/provider/ImageCameraProvider;-><init>(Lcom/ss/android/medialib/camera/IESCameraInterface;)V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    .line 246
    :goto_1a
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    invoke-interface {v0, p0}, Lcom/ss/android/medialib/camera/provider/ICameraProvider;->bind(Lcom/ss/android/medialib/presenter/IMediaPresenter;)V

    return-void
.end method

.method public static getInstance()Lcom/ss/android/medialib/camera/IESCameraManager;
    .registers 2

    .line 183
    sget-object v0, Lcom/ss/android/medialib/camera/IESCameraManager;->sInstance:Lcom/ss/android/medialib/camera/IESCameraManager;

    if-nez v0, :cond_19

    .line 184
    const-class v0, Lcom/ss/android/medialib/camera/IESCameraManager;

    monitor-enter v0

    .line 185
    :try_start_7
    sget-object v1, Lcom/ss/android/medialib/camera/IESCameraManager;->sInstance:Lcom/ss/android/medialib/camera/IESCameraManager;

    if-nez v1, :cond_15

    .line 186
    new-instance v1, Lcom/ss/android/medialib/camera/IESCameraManager;

    invoke-direct {v1}, Lcom/ss/android/medialib/camera/IESCameraManager;-><init>()V

    sput-object v1, Lcom/ss/android/medialib/camera/IESCameraManager;->sInstance:Lcom/ss/android/medialib/camera/IESCameraManager;

    goto :goto_15

    :catchall_13
    move-exception v1

    goto :goto_17

    .line 187
    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v1

    .line 189
    :cond_19
    :goto_19
    sget-object v0, Lcom/ss/android/medialib/camera/IESCameraManager;->sInstance:Lcom/ss/android/medialib/camera/IESCameraManager;

    return-object v0
.end method

.method public static isSupportAntiShake(Landroid/content/Context;II)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public static isSupportWideAngle(Landroid/content/Context;I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static release()V
    .registers 1

    const/4 v0, 0x0

    .line 193
    sput-object v0, Lcom/ss/android/medialib/camera/IESCameraManager;->sInstance:Lcom/ss/android/medialib/camera/IESCameraManager;

    return-void
.end method

.method private declared-synchronized setCameraDisplayOrientation(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    .line 563
    :try_start_1
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    const/4 v1, 0x1

    if-eq p1, v1, :cond_24

    const/4 v1, 0x2

    if-eq p1, v1, :cond_21

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1e

    goto :goto_26

    :cond_1e
    const/16 v0, 0x10e

    goto :goto_26

    :cond_21
    const/16 v0, 0xb4

    goto :goto_26

    :cond_24
    const/16 v0, 0x5a

    .line 580
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_52

    .line 581
    :try_start_29
    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v1, v0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->setOrientationDegrees(I)I

    move-result v0

    .line 582
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_56

    .line 583
    :try_start_30
    iput v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mRotation:I

    .line 584
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraRotationInterface:Lcom/ss/android/medialib/presenter/CameraRotationInterface;

    if-eqz p1, :cond_54

    .line 585
    const-string p1, "IESCameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera deflection angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraRotationInterface:Lcom/ss/android/medialib/presenter/CameraRotationInterface;

    invoke-interface {p1, v0}, Lcom/ss/android/medialib/presenter/CameraRotationInterface;->onCameraRotationChanged(I)V
    :try_end_51
    .catchall {:try_start_30 .. :try_end_51} :catchall_52

    goto :goto_54

    :catchall_52
    move-exception p1

    goto :goto_59

    .line 588
    :cond_54
    :goto_54
    monitor-exit p0

    return-void

    :catchall_56
    move-exception v0

    .line 582
    :try_start_57
    monitor-exit p1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    :try_start_58
    throw v0

    :goto_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_52

    throw p1
.end method

.method private declared-synchronized startPreview(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    monitor-enter p0

    .line 452
    :try_start_1
    const-string v0, "IESCameraManager"

    const-string v1, "startPreview..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1c

    .line 454
    :try_start_b
    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-nez v1, :cond_14

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    goto :goto_1a

    .line 455
    :cond_14
    :try_start_14
    invoke-interface {v1, p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->startPreview(Landroid/graphics/SurfaceTexture;)V

    .line 456
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_12

    .line 457
    monitor-exit p0

    return-void

    .line 456
    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_12

    :try_start_1b
    throw p1

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1c

    throw p1
.end method


# virtual methods
.method public declared-synchronized attach(Lcom/ss/android/medialib/presenter/IMediaPresenter;)V
    .registers 3

    monitor-enter p0

    .line 544
    :try_start_1
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    .line 545
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->glCallback:Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;

    invoke-interface {p1, v0}, Lcom/ss/android/medialib/presenter/IMediaPresenter;->setOnOpenGLCallback(Lcom/ss/android/medialib/common/Common$IOnOpenGLCallback;)V

    .line 546
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    if-eqz p1, :cond_14

    .line 547
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;

    invoke-interface {p1, v0}, Lcom/ss/android/medialib/camera/provider/ICameraProvider;->bind(Lcom/ss/android/medialib/presenter/IMediaPresenter;)V

    goto :goto_1b

    :catchall_12
    move-exception p1

    goto :goto_1d

    .line 549
    :cond_14
    const-string p1, "IESCameraManager"

    const-string v0, "attach::CameraProvider is null!"

    invoke-static {p1, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_12

    .line 551
    :goto_1b
    monitor-exit p0

    return-void

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_12

    throw p1
.end method

.method public declared-synchronized cancelAutoFocus()V
    .registers 3

    monitor-enter p0

    .line 425
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_15

    .line 427
    :try_start_4
    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->cancelAutoFocus()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_c
    .catchall {:try_start_4 .. :try_end_9} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v1

    goto :goto_13

    :catch_c
    move-exception v1

    .line 429
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 431
    :goto_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_a

    .line 432
    monitor-exit p0

    return-void

    .line 431
    :goto_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_a

    :try_start_14
    throw v1

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public declared-synchronized changeCamera(Landroid/content/Context;ILcom/ss/android/medialib/camera/CameraOpenListener;)V
    .registers 12

    monitor-enter p0

    .line 281
    :try_start_1
    const-string v0, "IESCameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCamera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraChanging:Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_56

    if-eqz v0, :cond_28

    .line 283
    :try_start_1b
    const-string p1, "IESCameraManager"

    const-string p2, "changeCamera: return"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_24

    .line 284
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_59

    :cond_28
    const/4 v0, 0x1

    .line 286
    :try_start_29
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraChanging:Z

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 289
    sput-wide v3, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeSwitchCameraTimeStamp:J

    .line 290
    iget-object v7, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_56

    .line 291
    :try_start_34
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    new-instance v1, Lcom/ss/android/medialib/camera/IESCameraManager$2;
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_4e

    move-object v2, p0

    move-object v5, p1

    move-object v6, p3

    :try_start_3b
    invoke-direct/range {v1 .. v6}, Lcom/ss/android/medialib/camera/IESCameraManager$2;-><init>(Lcom/ss/android/medialib/camera/IESCameraManager;JLandroid/content/Context;Lcom/ss/android/medialib/camera/CameraOpenListener;)V

    invoke-interface {v0, p2, v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->changeCamera(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z

    move-result p0

    if-nez p0, :cond_4b

    const/4 p0, 0x0

    .line 324
    iput-boolean p0, v2, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraChanging:Z

    goto :goto_4b

    :catchall_48
    move-exception v0

    :goto_49
    move-object p0, v0

    goto :goto_51

    .line 326
    :cond_4b
    :goto_4b
    monitor-exit v7
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_48

    .line 327
    monitor-exit v2

    return-void

    :catchall_4e
    move-exception v0

    move-object v2, p0

    goto :goto_49

    .line 326
    :goto_51
    :try_start_51
    monitor-exit v7
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_48

    :try_start_52
    throw p0

    :catchall_53
    move-exception v0

    :goto_54
    move-object p1, v0

    goto :goto_59

    :catchall_56
    move-exception v0

    move-object v2, p0

    goto :goto_54

    :goto_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_53

    throw p1
.end method

.method public declared-synchronized close()V
    .registers 3

    monitor-enter p0

    .line 254
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_19

    .line 255
    :try_start_4
    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-eqz v1, :cond_e

    .line 256
    invoke-interface {v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->close()V

    goto :goto_e

    :catchall_c
    move-exception v1

    goto :goto_1b

    .line 258
    :cond_e
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_c

    const/4 v0, 0x0

    .line 259
    :try_start_10
    iput-boolean v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mBodyBeautyEnabled:Z

    .line 260
    iput v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mBodyBeautyLevel:I

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mClientListener:Lcom/ss/android/medialib/camera/CameraOpenListener;
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_19

    .line 262
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    goto :goto_1d

    .line 258
    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_c

    :try_start_1c
    throw v1

    :goto_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_19

    throw v0
.end method

.method public declared-synchronized currentValid()Z
    .registers 3

    monitor-enter p0

    .line 435
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_18

    .line 436
    :try_start_4
    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->currentValid()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :catchall_10
    move-exception v1

    goto :goto_16

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_10

    monitor-exit p0

    return v1

    .line 437
    :goto_16
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_10

    :try_start_17
    throw v1

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public declared-synchronized detach()V
    .registers 3

    monitor-enter p0

    .line 554
    :try_start_1
    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/IESCameraManager;->close()V

    .line 556
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraProvider:Lcom/ss/android/medialib/camera/provider/ICameraProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 557
    invoke-interface {v0, v1}, Lcom/ss/android/medialib/camera/provider/ICameraProvider;->bind(Lcom/ss/android/medialib/presenter/IMediaPresenter;)V

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_13

    .line 559
    :cond_f
    :goto_f
    iput-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->presenter:Lcom/ss/android/medialib/presenter/IMediaPresenter;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_d

    .line 560
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_d

    throw v0
.end method

.method public declared-synchronized enableTorch(Z)V
    .registers 4

    monitor-enter p0

    .line 412
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_15

    .line 413
    :try_start_4
    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-nez v1, :cond_d

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    goto :goto_13

    .line 414
    :cond_d
    :try_start_d
    invoke-interface {v1, p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->enableTorch(Z)V

    .line 415
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_b

    .line 416
    monitor-exit p0

    return-void

    .line 415
    :goto_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_b

    :try_start_14
    throw p1

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public getCam2720pSupports(Landroid/content/Context;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 636
    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 640
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 642
    :try_start_e
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_4d

    aget-object v4, v0, v3

    .line 644
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 645
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 646
    const-class v6, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v5

    .line 647
    array-length v6, v5

    move v7, v2

    :goto_2d
    if-ge v7, v6, :cond_45

    aget-object v8, v5, v7

    .line 648
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v9

    const/16 v10, 0x2d0

    if-ne v9, v10, :cond_42

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x438

    if-ne v8, v9, :cond_42

    goto :goto_45

    :cond_42
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 650
    :cond_45
    :goto_45
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4a} :catch_4d

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :catch_4d
    :cond_4d
    return-object p0
.end method

.method public getCam2HardwareSupportLevels(Landroid/content/Context;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 616
    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 620
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 622
    :try_start_e
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    .line 624
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    .line 623
    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :catch_28
    :cond_28
    return-object p0
.end method

.method public getCameraParams()Lcom/ss/android/medialib/camera/CameraParams;
    .registers 1

    .line 610
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    return-object p0
.end method

.method public getCameraPosition()I
    .registers 1

    .line 596
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-nez p0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    invoke-interface {p0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getCameraPosition()I

    move-result p0

    return p0
.end method

.method public getCameraType()I
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    if-eqz p0, :cond_7

    iget p0, p0, Lcom/ss/android/medialib/camera/CameraParams;->mType:I

    return p0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public getDeviceHardwareSupportedLevel()I
    .registers 2

    .line 659
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    instance-of v0, p0, Lcom/ss/android/medialib/camera/Camera2;

    if-eqz v0, :cond_d

    .line 660
    check-cast p0, Lcom/ss/android/medialib/camera/Camera2;

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera2;->getDeviceHardwareSupportedLevel()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized getMaxZoom()F
    .registers 6

    monitor-enter p0

    .line 363
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getMaxZoom()F

    move-result v0

    .line 364
    const-string v1, "te_preview_camera_zoom"

    float-to-double v2, v0

    const/4 v4, 0x0

    invoke-static {v4, v1, v2, v3}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfDouble(ILjava/lang/String;D)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 365
    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getPreviewWH()[I
    .registers 1

    .line 442
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {p0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getPreviewWH()[I

    move-result-object p0

    return-object p0
.end method

.method public getRotation()I
    .registers 1

    .line 591
    iget p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mRotation:I

    return p0
.end method

.method public declared-synchronized getShaderStep()F
    .registers 2

    monitor-enter p0

    .line 369
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getShaderStep()F

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 370
    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getsHeight()I
    .registers 2

    .line 201
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->previewSize:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public getsWidth()I
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->previewSize:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public declared-synchronized init(Lcom/ss/android/medialib/camera/CameraParams;)V
    .registers 6

    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-eqz v0, :cond_b

    .line 206
    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->release()V

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_58

    .line 208
    :cond_b
    :goto_b
    iget v0, p1, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_17

    .line 210
    iget v0, p1, Lcom/ss/android/medialib/camera/CameraParams;->mType:I

    if-eq v0, v2, :cond_17

    .line 211
    iput v2, p1, Lcom/ss/android/medialib/camera/CameraParams;->mOutputType:I

    .line 214
    :cond_17
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    .line 215
    iget v0, p1, Lcom/ss/android/medialib/camera/CameraParams;->mType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_28

    .line 217
    new-instance v0, Lcom/ss/android/medialib/camera/Camera2;

    invoke-direct {v0}, Lcom/ss/android/medialib/camera/Camera2;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    .line 218
    iput v3, p1, Lcom/ss/android/medialib/camera/CameraParams;->mType:I

    goto :goto_48

    :cond_28
    if-ne v0, v1, :cond_32

    .line 221
    new-instance v0, Lcom/ss/android/medialib/camera/Camera2;

    invoke-direct {v0}, Lcom/ss/android/medialib/camera/Camera2;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    goto :goto_48

    :cond_32
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f

    .line 224
    new-instance v0, Lcom/ss/android/medialib/camera/Camera2;

    invoke-direct {v0}, Lcom/ss/android/medialib/camera/Camera2;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    .line 225
    iput v1, p1, Lcom/ss/android/medialib/camera/CameraParams;->mType:I

    goto :goto_48

    .line 227
    :cond_3f
    new-instance v0, Lcom/ss/android/medialib/camera/Camera1;

    invoke-direct {v0}, Lcom/ss/android/medialib/camera/Camera1;-><init>()V

    iput-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    .line 228
    iput v2, p1, Lcom/ss/android/medialib/camera/CameraParams;->mType:I

    .line 231
    :goto_48
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_9

    .line 232
    :try_start_4b
    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v1, p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->init(Lcom/ss/android/medialib/camera/CameraParams;)V

    .line 233
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_55

    .line 235
    :try_start_51
    iput-boolean v2, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->isInited:Z
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_9

    .line 237
    monitor-exit p0

    return-void

    :catchall_55
    move-exception p1

    .line 233
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    throw p1

    :goto_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_57 .. :try_end_59} :catchall_9

    throw p1
.end method

.method public declared-synchronized isChangingCamera()Z
    .registers 2

    monitor-enter p0

    .line 269
    :try_start_1
    iget-boolean v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraChanging:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public isInit()Z
    .registers 1

    .line 250
    iget-boolean p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->isInited:Z

    return p0
.end method

.method public declared-synchronized isTorchSupported()Z
    .registers 3

    monitor-enter p0

    .line 405
    :try_start_1
    iget v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->torchSupportedFlag:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-eqz v0, :cond_13

    .line 406
    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->isTorchSupported()Z

    move-result v0

    iput v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->torchSupportedFlag:I

    goto :goto_13

    :catchall_11
    move-exception v0

    goto :goto_1c

    .line 408
    :cond_13
    :goto_13
    iget v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->torchSupportedFlag:I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_11

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    monitor-exit p0

    return v1

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_11

    throw v0
.end method

.method public isVideoStabilizationSupported()Z
    .registers 1

    .line 600
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-interface {p0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->isVideoStabilizationSupported()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z
    .registers 7

    monitor-enter p0

    .line 488
    :try_start_1
    const-string v0, "IESCameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: thread id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/medialib/log/VEMonitorUtils;->sbeforeCameraOpenTimeStamp:J

    .line 491
    const-string v0, "te_record_camera_direction"

    int-to-long v1, p1

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 492
    iput-object p2, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mClientListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    .line 493
    new-instance p2, Lcom/ss/android/medialib/camera/IESCameraManager$3;

    invoke-direct {p2, p0, p1}, Lcom/ss/android/medialib/camera/IESCameraManager$3;-><init>(Lcom/ss/android/medialib/camera/IESCameraManager;I)V

    iput-object p2, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->myListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    .line 526
    iget-object p2, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_46

    .line 527
    :try_start_38
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->myListener:Lcom/ss/android/medialib/camera/CameraOpenListener;

    invoke-interface {v0, p1, v1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z

    move-result p1

    .line 528
    monitor-exit p2
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_43

    .line 530
    monitor-exit p0

    return p1

    :catchall_43
    move-exception p1

    .line 528
    :try_start_44
    monitor-exit p2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw p1

    :catchall_46
    move-exception p1

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public open(Lcom/ss/android/medialib/camera/CameraOpenListener;)Z
    .registers 3

    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0, v0, p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized preventTextureRender(Z)V
    .registers 2

    monitor-enter p0

    .line 671
    :try_start_1
    iput-boolean p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mIsPreventRender:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 672
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public setCameraPreviewListener(Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;)V
    .registers 2

    .line 679
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {p0, p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->setCameraPreviewListener(Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;)V

    return-void
.end method

.method public setCameraPreviewSizeInterface(Lcom/ss/android/medialib/presenter/CameraPreviewSizeInterface;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraPreviewSizeInterface:Lcom/ss/android/medialib/presenter/CameraPreviewSizeInterface;

    return-void
.end method

.method public setCameraRotationInterface(Lcom/ss/android/medialib/presenter/CameraRotationInterface;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraRotationInterface:Lcom/ss/android/medialib/presenter/CameraRotationInterface;

    return-void
.end method

.method public setEnableAntiShake(Z)V
    .registers 2

    return-void
.end method

.method public declared-synchronized setFocusAreas(IIF[FI)Z
    .registers 14

    monitor-enter p0

    .line 446
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_16

    .line 447
    :try_start_4
    iget-object v2, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/medialib/camera/IESCameraInterface;->setFocusAreas(IIF[FI)Z

    move-result p1

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_12

    monitor-exit p0

    return p1

    :catchall_12
    move-exception v0

    move-object p1, v0

    .line 448
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_12

    :try_start_15
    throw p1

    :catchall_16
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_16

    throw p1
.end method

.method public setOnFPSUpdateListener(Lcom/ss/android/medialib/camera/IESCameraManager$OnFPSUpdateListener;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mOnFPSUpdateListener:Lcom/ss/android/medialib/camera/IESCameraManager$OnFPSUpdateListener;

    return-void
.end method

.method public setOnFrameRefreshListener(Lcom/ss/android/medialib/camera/IESCameraManager$OnFrameRefreshListener;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mOnFrameRefreshListener:Lcom/ss/android/medialib/camera/IESCameraManager$OnFrameRefreshListener;

    return-void
.end method

.method public declared-synchronized setPreviewRatio(F)V
    .registers 3

    monitor-enter p0

    .line 472
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v0, p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->setPreviewRatio(F)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 473
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

.method public declared-synchronized setShaderListener(Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;)V
    .registers 3

    monitor-enter p0

    .line 393
    :try_start_1
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mShaderZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;

    .line 394
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-eqz v0, :cond_d

    .line 395
    invoke-interface {v0, p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->setShaderZoomListener(Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_f

    .line 397
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw p1
.end method

.method public setVideoStabilization(Z)Z
    .registers 3

    .line 604
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_3
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    :cond_9
    invoke-interface {p0, p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->setVideoStabilization(Z)Z

    move-result p0

    :goto_d
    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 606
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public declared-synchronized setZoom(F)V
    .registers 4

    monitor-enter p0

    .line 356
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    .line 357
    :try_start_4
    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v1, p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->setZoom(F)V

    .line 358
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_c

    .line 359
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    .line 358
    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    :try_start_e
    throw p1

    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized setZoomListener(Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;)V
    .registers 3

    monitor-enter p0

    .line 386
    :try_start_1
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mZoomListener:Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;

    .line 387
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-eqz v0, :cond_d

    .line 388
    invoke-interface {v0, p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->setZoomListener(Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception p1

    goto :goto_f

    .line 390
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_b

    throw p1
.end method

.method public declared-synchronized start(Landroid/content/Context;)V
    .registers 8

    monitor-enter p0

    .line 330
    :try_start_1
    const-string v0, "IESCameraManager"

    const-string v1, "start: "

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "te_record_camera_type"

    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraParams:Lcom/ss/android/medialib/camera/CameraParams;

    iget v1, v1, Lcom/ss/android/medialib/camera/CameraParams;->mType:I

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfLong(ILjava/lang/String;J)V

    .line 333
    invoke-direct {p0, p1}, Lcom/ss/android/medialib/camera/IESCameraManager;->setCameraDisplayOrientation(Landroid/content/Context;)V

    .line 334
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_5b

    .line 335
    :try_start_19
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->initCameraParam()[I

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->previewSize:[I

    .line 336
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_95

    .line 337
    :try_start_22
    sget-object p1, Lcom/ss/android/medialib/camera/IESCameraManager;->resolutionList:Ljava/util/LinkedList;

    const/4 v0, 0x1

    if-nez p1, :cond_5d

    .line 338
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    .line 339
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/ss/android/medialib/camera/IESCameraManager;->resolutionList:Ljava/util/LinkedList;

    .line 340
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_38
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 341
    sget-object v2, Lcom/ss/android/medialib/camera/IESCameraManager;->resolutionList:Ljava/util/LinkedList;

    new-instance v4, Landroid/util/Pair;

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :catchall_5b
    move-exception p1

    goto :goto_98

    .line 344
    :cond_5d
    iget-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mCameraPreviewSizeInterface:Lcom/ss/android/medialib/presenter/CameraPreviewSizeInterface;

    if-eqz p1, :cond_6b

    .line 345
    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->previewSize:[I

    aget v2, v1, v3

    aget v1, v1, v0

    invoke-interface {p1, v2, v1}, Lcom/ss/android/medialib/presenter/CameraPreviewSizeInterface;->previewSize(II)V

    goto :goto_72

    .line 347
    :cond_6b
    const-string p1, "IESCameraManager"

    const-string v1, "mCameraPreviewSizeInterface is null!"

    invoke-static {p1, v1}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_72
    const-string p1, "te_preview_camera_resolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->previewSize:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->previewSize:[I

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p1, v0}, Lcom/ss/android/ttve/monitor/TEMonitor;->perfString(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catchall {:try_start_22 .. :try_end_93} :catchall_5b

    .line 352
    monitor-exit p0

    return-void

    :catchall_95
    move-exception v0

    .line 336
    :try_start_96
    monitor-exit p1
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    :try_start_97
    throw v0

    :goto_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_97 .. :try_end_99} :catchall_5b

    throw p1
.end method

.method public startPreview()V
    .registers 3

    .line 464
    const-string v0, "IESCameraManager"

    const-string v1, "re-startPreview..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_a
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    if-nez p0, :cond_12

    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    goto :goto_17

    .line 467
    :cond_12
    invoke-interface {p0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->startPreview()V

    .line 468
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_10

    throw p0
.end method

.method public declared-synchronized startZoom(F)V
    .registers 3

    monitor-enter p0

    .line 374
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v0, p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->startZoom(F)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 375
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

.method public stopPreview()V
    .registers 3

    .line 479
    const-string v0, "IESCameraManager"

    const-string v1, "stopPreview..."

    invoke-static {v0, v1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_a
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {p0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->stopPreview()V

    .line 482
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw p0
.end method

.method public declared-synchronized stopZoom()V
    .registers 2

    monitor-enter p0

    .line 382
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraInterface;->stopZoom()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 383
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

.method public declared-synchronized switchFlashMode(I)Z
    .registers 4
    .param p1    # I
        .annotation build Lcom/ss/android/medialib/camera/IESCameraInterface$FlashMode;
        .end annotation
    .end param

    monitor-enter p0

    .line 419
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mStateLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    .line 420
    :try_start_4
    iget-object v1, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v1, p1}, Lcom/ss/android/medialib/camera/IESCameraInterface;->switchFlashMode(I)Z

    move-result p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit p0

    return p1

    :catchall_d
    move-exception p1

    .line 421
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    :try_start_f
    throw p1

    :catchall_10
    move-exception p1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_10

    throw p1
.end method

.method public declared-synchronized takePicture(IILcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;)V
    .registers 5

    monitor-enter p0

    .line 667
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->iesCamera:Lcom/ss/android/medialib/camera/IESCameraInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/ss/android/medialib/camera/IESCameraInterface;->takePicture(IILcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 668
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

.method public updateCameraOrientation()V
    .registers 2

    .line 683
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager;->mUpdateCameraRotation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
