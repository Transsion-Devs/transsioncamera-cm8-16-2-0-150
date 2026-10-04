.class public Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/transsion/camera/app/common/IPrivacyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;,
        Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;,
        Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isSetBackground:Z

.field private mBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mCount:I

.field private volatile mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

.field private mDrawFrameCount:I

.field private mEnablePreReadIOSize:I

.field private mFirstFrameTime:J

.field private volatile mFrameDrawState:I

.field private mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

.field private mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

.field private volatile mIsGotoGalleryShare:Z

.field private mIsNeedReCreateSurface:Z

.field private final mIsPrivacyModeEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mIsTopResumedActivity:Z

.field private mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

.field private final mLockObj:Ljava/lang/Object;

.field private final mMaxPrivacyModeFrameNumber:I

.field private volatile mNeedToStopRequest:Z

.field private mOESTextureId:I

.field public mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

.field private final mPrivacyModeFrameNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field private volatile mRenderedCallbackHandler:Landroid/os/Handler;

.field private final mRenderedCallbackRunnable:Ljava/lang/Runnable;

.field private mRendererRequestHandler:Landroid/os/Handler;

.field private mRendererRequestThread:Landroid/os/HandlerThread;

.field public final mStateLock:Lcom/transsion/camera/utils/StateWait;

.field private mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceWidth:I

.field private mTime:J

.field private mTmpCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

.field private final mTransformMatrix:[F

.field private final mWindowSurfaceFactory:Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;


# direct methods
.method public static synthetic $r8$lambda$7CGqkfSS9uvRDSfaMf__5W8vWZY()V
    .registers 2

    .line 711
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setRendererRequestTranSched(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8kWS8cxm-sqbiEb_9VroH4FiaNE(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->lambda$onDrawFrame$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$N2HS2VRfgaVcpL5d6sUEr_wRL-I()V
    .registers 2

    .line 314
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setGLTranSched(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WJPiaPWiA25dynf41QjqvqnWTkE()V
    .registers 2

    .line 719
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelRendererRequestTranSched(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gRqXu1STE52F-oI1jeqIMy-sLj4()V
    .registers 1

    .line 394
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelGLTranSched()V

    return-void
.end method

.method public static synthetic $r8$lambda$iEIaeJx583i80PZjOBdSpA3kuwQ()V
    .registers 2

    .line 390
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setGLTranSched(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rm2d_WS9neaN91fUvaJ2hLX-vvQ()V
    .registers 2

    .line 329
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setGLTranSched(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgkqJupY2tMEoX2RtRyMFO-cunU(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->lambda$onSurfaceDestroyCallback$5(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t_WljHqYGbCuRPYdlOxi5Avqtvk(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->lambda$onDrawFrameDone$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$ueTnfXagS27bWdFlB0WJ81Ci0Pg()V
    .registers 1

    .line 365
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelGLTranSched()V

    return-void
.end method

.method public static synthetic $r8$lambda$vPb0jF556BVkydGrTpoNo1EoPTY(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Ljava/util/concurrent/atomic/AtomicReference;IILandroid/graphics/Rect;Ljava/util/concurrent/CountDownLatch;)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->lambda$getBitmap$10(Ljava/util/concurrent/atomic/AtomicReference;IILandroid/graphics/Rect;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentPreviewCallback(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGLProgram(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAlgoRenderer(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockObj(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRenderedCallbacker(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgramType(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenderedCallbackHandler(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSurfaceTexture(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTmpCallback(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTmpCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowSurfaceFactory(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mWindowSurfaceFactory:Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFirstFrameTime(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFirstFrameTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGLProgram(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPreviewRenderedCallbacker(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProgramType(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTmpCallback(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTmpCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateGLProgram(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->createGLProgram()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyGLProgram(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->destroyGLProgram()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroySurfaceTexture(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->destroySurfaceTexture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$moffscreenRenderForShot(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;II)Landroid/graphics/Bitmap;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->offscreenRenderForShot(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 65
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GLPreviewView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 453
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 69
    iput p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 71
    iput p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    .line 79
    new-instance v0, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v0}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    .line 82
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsGotoGalleryShare:Z

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    const/16 v0, 0x10

    .line 93
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTransformMatrix:[F

    .line 95
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 96
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->isSetBackground:Z

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsTopResumedActivity:Z

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsPrivacyModeEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPrivacyModeFrameNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 100
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPrivacyModeMaxFrameNumber:I

    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mMaxPrivacyModeFrameNumber:I

    .line 101
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$1;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackRunnable:Ljava/lang/Runnable;

    .line 121
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnablePreReadIOSize:I

    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mEnablePreReadIOSize:I

    const/4 v0, 0x2

    .line 454
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 455
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$GLPreviewContextFactory;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;I)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 456
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$MyConfigChooser;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 458
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mWindowSurfaceFactory:Lcom/transsion/camera/app/ui/opengl/WindowSurfaceFactory;

    .line 460
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V

    .line 462
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 463
    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 464
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    return-void
.end method

.method private createGLProgram()V
    .registers 4

    .line 665
    const-string v0, "createGLProgram"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 666
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGLProgram, mProgramType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_24

    .line 668
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->release()V

    .line 670
    :cond_24
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;-><init>(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    .line 671
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private createSurfaceTexture()V
    .registers 4

    .line 637
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PreviewPerformance] createSurfaceTexture run in thread : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 638
    const-string v0, "createSurfaceTexture"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 639
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->startRendererRequestThread()V

    .line 640
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createOESTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    .line 641
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 642
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 643
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz v0, :cond_47

    .line 644
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-interface {v0, v1, v2, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 646
    :cond_47
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method private destroyGLProgram()V
    .registers 1

    .line 675
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->stopRenderRequestThread()V

    return-void
.end method

.method private destroySurfaceTexture()V
    .registers 4

    .line 679
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySurfaceTexture mSurfaceTexture = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",currThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3b

    .line 681
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz v1, :cond_33

    .line 682
    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    .line 684
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 685
    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_3b
    return-void
.end method

.method private eventTrack()V
    .registers 3

    .line 901
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCameraLaunchEndTime()V

    .line 902
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object p0

    const-string v0, "CAM_START"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->end(Ljava/lang/String;)V

    .line 905
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    const/16 v0, 0x3e8

    invoke-interface {p0, v0}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->isTargetActionExists(I)Z

    move-result p0

    const/16 v1, 0x3e9

    if-eqz p0, :cond_2d

    .line 906
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionCancel(I)V

    .line 907
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionEnd(I)V

    return-void

    .line 908
    :cond_2d
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->isTargetActionExists(I)Z

    move-result p0

    if-eqz p0, :cond_3e

    .line 909
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionEnd(I)V

    :cond_3e
    return-void
.end method

.method private synthetic lambda$getBitmap$10(Ljava/util/concurrent/atomic/AtomicReference;IILandroid/graphics/Rect;Ljava/util/concurrent/CountDownLatch;)V
    .registers 6

    .line 987
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->offscreenRenderForGetPixel(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_d
    .catchall {:try_start_0 .. :try_end_7} :catchall_b

    .line 991
    invoke-virtual {p5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_b
    move-exception p0

    goto :goto_19

    :catch_d
    move-exception p0

    .line 989
    :try_start_e
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "offscreenRenderForGetPixel err"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_b

    .line 991
    invoke-virtual {p5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_19
    invoke-virtual {p5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 992
    throw p0
.end method

.method private synthetic lambda$onDrawFrame$8()V
    .registers 2

    const/4 v0, 0x4

    .line 848
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 849
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onDrawFrameDone$9()V
    .registers 2

    const/4 v0, 0x0

    .line 880
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceDestroyCallback$5(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .registers 4

    .line 592
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "do onSurfaceDestroyCallback."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 593
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private offscreenRenderForGetPixel(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 15

    .line 940
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offscreenRenderForGetPixel: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 941
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 942
    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v2, :cond_29

    goto :goto_86

    :cond_29
    const/4 v2, 0x0

    .line 947
    invoke-static {v2, v2, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 949
    :try_start_2d
    iget-object v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 950
    iget-object v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v6, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget-object v9, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    iget-object v10, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move v7, p1

    move v8, p2

    invoke-virtual/range {v4 .. v10}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->getPreviewBitmapByFBO(Landroid/graphics/SurfaceTexture;IIILcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_69

    if-eqz p3, :cond_69

    .line 951
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 952
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iget p2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {v1, p1, p2, v2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 953
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, p1

    goto :goto_69

    :catch_66
    move-exception v0

    move-object p0, v0

    goto :goto_82

    .line 956
    :cond_69
    :goto_69
    iput-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "offscreenRenderForGetPixel: mPreviewBitmap = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_81} :catch_66

    return-object v1

    .line 959
    :goto_82
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    .line 943
    :cond_86
    :goto_86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "offscreenRenderForGetPixel, mSurfaceTexture: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mGLProgram: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method

.method private offscreenRenderForShot(II)Landroid/graphics/Bitmap;
    .registers 13

    .line 965
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offscreenRenderForShot: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez v1, :cond_28

    goto :goto_48

    :cond_28
    const/4 v0, 0x0

    .line 971
    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 974
    :try_start_2c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 975
    iget-object v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v5, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget-object v8, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->getPreviewBitmapByFBO(Landroid/graphics/SurfaceTexture;IIILcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_41} :catch_42

    return-object p0

    :catch_42
    move-exception v0

    move-object p0, v0

    .line 977
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v2

    .line 967
    :cond_48
    :goto_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "offscreenRenderForShot, mSurfaceTexture: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mGLProgram: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method private onDrawFrameDone()V
    .registers 5

    .line 867
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    if-eqz v0, :cond_c

    .line 868
    sget-object p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onDrawFrameDone return because NeedToStopRequest, blur cover is showing."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 872
    :cond_c
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_59

    .line 873
    iput v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 874
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    if-eqz v0, :cond_24

    .line 875
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 876
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "add mRenderedCallbackRunnable event"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 878
    :cond_24
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mGLSurfaceViewSetBackgroundOnPause:Z

    if-eqz v0, :cond_44

    .line 879
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "surface setBackground, onDrawFrame"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v3, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 881
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->isSetBackground:Z

    .line 883
    :cond_44
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[PreviewPerformance] onDrawFrame done."

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz v0, :cond_52

    .line 885
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureDrawn()V

    .line 888
    :cond_52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/CameraUtil;->putFbCameraState(Landroid/content/Context;I)V

    .line 890
    :cond_59
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    if-ne v0, v1, :cond_8f

    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_8f

    .line 891
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[PreviewPerformance] onDrawFrame "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frame done."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 892
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    if-ne v0, v2, :cond_8f

    .line 893
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->eventTrack()V

    .line 894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFirstFrameTime:J

    .line 897
    :cond_8f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->showFps()V

    return-void
.end method

.method private pauseGLPreview()V
    .registers 3

    .line 379
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pauseGLPreview"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 380
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method private showFps()V
    .registers 11

    .line 918
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 919
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-ltz v2, :cond_6f

    .line 920
    sget-object v2, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frame :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 921
    iget-wide v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFirstFrameTime:J

    sub-long v6, v0, v4

    const-wide/16 v8, 0x1388

    cmp-long v2, v6, v8

    const-wide/16 v6, 0x0

    if-ltz v2, :cond_5a

    cmp-long v2, v4, v6

    if-eqz v2, :cond_5a

    .line 922
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object v2

    iget v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCount:I

    int-to-long v4, v4

    const-string v8, "CAM_LOW_FRAME_RATE"

    invoke-virtual {v2, v8, v4, v5, v3}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->monitor(Ljava/lang/String;JI)V

    .line 923
    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCount:I

    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsion/camera/utils/dfx/inter/IExInjection;->getMinDrawFrames()I

    move-result v3

    if-gt v2, v3, :cond_5a

    .line 924
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object v2

    const/16 v3, 0x3ef

    const/16 v4, 0x44c

    invoke-interface {v2, v3, v4}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->logAction(II)V

    .line 927
    :cond_5a
    iget-wide v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFirstFrameTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_69

    .line 928
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v2

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCount:I

    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateFps(I)V

    .line 930
    :cond_69
    iput-wide v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTime:J

    const/4 v0, 0x0

    .line 931
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCount:I

    return-void

    .line 933
    :cond_6f
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCount:I

    return-void
.end method

.method private startRendererRequestThread()V
    .registers 3

    .line 707
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RendererRequestThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    .line 708
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 709
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestHandler:Landroid/os/Handler;

    .line 710
    new-instance p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopRenderRequestThread()V
    .registers 3

    .line 716
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1a

    .line 717
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRenderRequestThread"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 721
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRendererRequestThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1a
    return-void
.end method


# virtual methods
.method public cameraOperateAction(I)V
    .registers 8

    const/16 v0, 0x12f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_9

    .line 190
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsGotoGalleryShare:Z

    goto :goto_f

    :cond_9
    const/16 v0, 0x130

    if-ne p1, v0, :cond_f

    .line 192
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsGotoGalleryShare:Z

    :cond_f
    :goto_f
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_15

    .line 196
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    :cond_15
    const/16 v0, 0x20

    if-ne p1, v0, :cond_52

    .line 200
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    if-eqz v0, :cond_52

    .line 201
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "SurfaceError"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    .line 205
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4b

    .line 206
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 207
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_44

    .line 210
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 214
    :cond_44
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 215
    invoke-virtual {v0, p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_52

    :cond_4b
    const/4 v0, 0x4

    .line 217
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_52
    :goto_52
    const/16 v0, 0x126

    const/4 v3, 0x0

    if-ne p1, v0, :cond_c0

    .line 223
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mGLSurfaceViewSetBackgroundOnPause:Z

    if-eqz p1, :cond_d4

    .line 224
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "surface setBackground, mFrameDrawState:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_b8

    .line 226
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-virtual {p0, v0, v4, v3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "surface setBackground, background:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_91

    move v2, v1

    :cond_91
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_b2

    .line 228
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_b2

    .line 229
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 230
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_bd

    :cond_b2
    const/high16 p1, -0x1000000

    .line 232
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_bd

    :cond_b8
    const/16 p1, 0x8

    .line 235
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :goto_bd
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->isSetBackground:Z

    return-void

    :cond_c0
    const/16 v0, 0xd4

    if-ne p1, v0, :cond_d4

    .line 240
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->isSetBackground:Z

    if-eqz p1, :cond_cb

    .line 241
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_cb
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_d4

    .line 244
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d4
    return-void
.end method

.method public executeInGLThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 171
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 11

    .line 983
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 984
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 985
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Ljava/util/concurrent/atomic/AtomicReference;IILandroid/graphics/Rect;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 995
    :try_start_19
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x1f4

    invoke-virtual {v6, p1, p2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    .line 996
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getBitmap, result: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_43} :catch_44

    goto :goto_54

    :catch_44
    move-exception v0

    move-object p0, v0

    .line 998
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 999
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "latch.await err"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1001
    :goto_54
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 1

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public isNeedResetPrivacyMode()Z
    .registers 2

    .line 1036
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsPrivacyModeEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPrivacyModeFrameNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mMaxPrivacyModeFrameNumber:I

    if-lt v0, p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public loadGLResource(ZI)V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz v0, :cond_21

    .line 251
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$3;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;IZ)V

    if-eqz p1, :cond_1e

    .line 267
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 268
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 270
    :try_start_13
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->waitState()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 272
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 275
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_21
    return-void
.end method

.method public loadGLResources(Z[II)V
    .registers 5

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz v0, :cond_23

    .line 282
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$4;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;[IIZ)V

    if-eqz p1, :cond_20

    .line 298
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 299
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 301
    :try_start_13
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    .line 303
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    .line 306
    :cond_20
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_23
    return-void
.end method

.method public modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_6
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 505
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_12

    .line 506
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$6;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 529
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :catchall_12
    move-exception p0

    .line 505
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public modePause()V
    .registers 3

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_5

    return-void

    .line 576
    :cond_5
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$9;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$9;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 582
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modeReload()V
    .registers 3

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_5

    return-void

    .line 603
    :cond_5
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$10;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$10;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 609
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modeResume()V
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_5

    return-void

    .line 562
    :cond_5
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$8;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$8;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 568
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public modeUninit()V
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_5

    return-void

    .line 537
    :cond_5
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$7;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$7;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 551
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 553
    :try_start_11
    iput-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 554
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 11

    .line 792
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_142

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz v0, :cond_142

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result p1

    if-eqz p1, :cond_10

    goto/16 :goto_142

    .line 796
    :cond_10
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsTopResumedActivity:Z

    if-nez p1, :cond_1c

    .line 797
    sget-object p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onDrawFrame isTopResumedActivity return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 801
    :cond_1c
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    const/4 v1, 0x0

    invoke-static {v1, v1, p1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 803
    :try_start_24
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_29} :catch_136

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 809
    invoke-static {v0, v0, v0, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4500

    .line 810
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 812
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsPrivacyModeEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPrivacyModeFrameNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mMaxPrivacyModeFrameNumber:I

    if-ge p1, v0, :cond_68

    .line 813
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPrivacyModeFrameNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 814
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrawFrame PrivacyMode return, mPrivacyModeFrameNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPrivacyModeFrameNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 818
    :cond_68
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTransformMatrix:[F

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 822
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    if-eqz p1, :cond_9e

    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_82

    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsGotoGalleryShare:Z

    .line 824
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;->algoAvoidFrameHasDrawCheck(Z)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 825
    :cond_82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    iget-object v5, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mTransformMatrix:[F

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v6

    iget v8, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    invoke-interface/range {v0 .. v8}, Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;->algorithmRender(Landroid/graphics/SurfaceTexture;III[FJI)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 826
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onDrawFrameDone()V

    return-void

    .line 830
    :cond_9e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz p1, :cond_c5

    .line 831
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mLockObj:Ljava/lang/Object;

    monitor-enter p1

    .line 832
    :try_start_a5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v4, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    .line 833
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->draw(Landroid/graphics/SurfaceTexture;III)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 834
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onDrawFrameDone()V

    .line 835
    monitor-exit p1

    return-void

    :catchall_be
    move-exception v0

    move-object p0, v0

    goto :goto_c3

    .line 837
    :cond_c1
    monitor-exit p1

    goto :goto_c5

    :goto_c3
    monitor-exit p1
    :try_end_c4
    .catchall {:try_start_a5 .. :try_end_c4} :catchall_be

    throw p0

    .line 839
    :cond_c5
    :goto_c5
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p1

    if-eqz p1, :cond_101

    .line 841
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFrame: glError 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 842
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_f8

    .line 843
    const-string p0, "onDrawFrame, Monkey scene,exit process"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 844
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 847
    :cond_f8
    new-instance p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 853
    :cond_101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-eqz p1, :cond_132

    .line 854
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;->draw(Landroid/graphics/SurfaceTexture;I)V

    .line 855
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    .line 856
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportShutterUiNewStyle:Z

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    if-eqz v0, :cond_125

    if-nez p1, :cond_125

    .line 857
    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;->onRecording(III)V

    :cond_125
    if-eqz p1, :cond_132

    .line 860
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mOESTextureId:I

    iget v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    iget v3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->drawExtra(Landroid/graphics/SurfaceTexture;III)V

    .line 863
    :cond_132
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->onDrawFrameDone()V

    return-void

    :catch_136
    move-exception v0

    move-object p0, v0

    .line 805
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 806
    sget-object p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onDrawFrame Exception return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_142
    :goto_142
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    .line 691
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    if-eqz v0, :cond_b

    .line 692
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[PreviewPerformance] onFrameAvailable NeedToStopRequest."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 695
    :cond_b
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    if-nez v0, :cond_33

    const/4 v0, 0x1

    .line 696
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    const/4 v0, 0x0

    .line 697
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mDrawFrameCount:I

    .line 698
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PreviewPerformance] onFrameAvailable thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 700
    :cond_33
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 701
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz p0, :cond_3d

    .line 702
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_3d
    return-void
.end method

.method public onOfflineSwitchFinish()V
    .registers 3

    .line 400
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onOfflineSwitchFinish"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->pauseGLPreview()V

    return-void
.end method

.method public onPause(Z)V
    .registers 5

    .line 341
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause+ isSwitchingOffline:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mEnablePreReadIOSize:I

    if-lez v1, :cond_22

    .line 343
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->getInstance()Lcom/transsion/camera/utils/manager/PreReadManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/camera/utils/manager/PreReadManager;->setNeedInterrupt(Z)V

    .line 346
    :cond_22
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$5;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_32

    .line 360
    const-string p0, "should not pauseGLPreview because of switching offline"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 363
    :cond_32
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->pauseGLPreview()V

    .line 364
    new-instance p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 367
    const-string p0, "onPause-"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewShot(Z)Landroid/graphics/Bitmap;
    .registers 8

    .line 1005
    new-instance v5, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v5}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    .line 1006
    invoke-virtual {v5}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    if-eqz p1, :cond_11

    .line 1010
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    .line 1011
    iget v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    :goto_e
    move v3, p1

    move v4, v0

    goto :goto_1a

    .line 1013
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 1014
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_e

    :goto_1a
    const/4 p1, 0x1

    .line 1016
    new-array v2, p1, [Landroid/graphics/Bitmap;

    .line 1017
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$12;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;[Landroid/graphics/Bitmap;IILcom/transsion/camera/utils/StateWait;)V

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const-wide/16 p0, 0x1f4

    .line 1026
    :try_start_28
    invoke-virtual {v5, p0, p1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_31

    :catch_2c
    move-exception v0

    move-object p0, v0

    .line 1028
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1030
    :goto_31
    sget-object p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewShot, Bitmap: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1031
    aget-object p0, v2, v0

    return-object p0
.end method

.method public onPrivacyModeChange(ZF)V
    .registers 5

    .line 1041
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPrivacyModeChange["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 1042
    sget-object p2, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrivacyModeChange: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1043
    iget-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsPrivacyModeEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    if-nez p1, :cond_3c

    .line 1045
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPrivacyModeFrameNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 1047
    :cond_3c
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 326
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 327
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 328
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 331
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsTopResumedActivity:Z

    .line 333
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mGLSurfaceViewSetBackgroundOnPause:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->isSetBackground:Z

    if-eqz v1, :cond_2b

    .line 334
    const-string v1, "surface setBackground, onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 v0, -0x1000000

    .line 335
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2b
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 312
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onStart+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 321
    const-string p0, "onStart-"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 371
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mGLSurfaceViewSetBackgroundOnPause:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->isSetBackground:Z

    if-eqz v1, :cond_1d

    .line 373
    const-string v1, "surface setBackground, onStop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 v0, -0x1000000

    .line 374
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1d
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 6

    .line 747
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PreviewPerformance] onSurfaceChanged width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mSurfaceWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mSurfaceHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 749
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    if-ne p1, p2, :cond_3b

    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    if-ne p1, p3, :cond_3b

    return-void

    .line 752
    :cond_3b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mGLProgram:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;

    if-nez p1, :cond_42

    .line 753
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->createGLProgram()V

    .line 755
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    if-eqz p1, :cond_49

    .line 756
    invoke-interface {p1}, Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;->onSurfaceCreated()V

    .line 758
    :cond_49
    iput p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    .line 759
    iput p3, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    .line 760
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->setSurfaceSize(II)V

    const/4 p1, 0x0

    .line 761
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 762
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPrivacyModeFrameNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    .line 727
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[PreviewPerformance] onSurfaceCreated"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 728
    iget p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mEnablePreReadIOSize:I

    if-lez p1, :cond_13

    .line 729
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager;->getInstance()Lcom/transsion/camera/utils/manager/PreReadManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/manager/PreReadManager;->setNeedInterrupt(Z)V

    .line 732
    :cond_13
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->createSurfaceTexture()V

    .line 733
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->createGLProgram()V

    .line 734
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    if-eqz p1, :cond_20

    .line 735
    invoke-interface {p1}, Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;->onSurfaceCreated()V

    .line 737
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-eqz p1, :cond_29

    .line 739
    iget-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V

    :cond_29
    const/4 p1, 0x0

    .line 741
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 742
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPrivacyModeFrameNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    return-void
.end method

.method public onSurfaceDestroyCallback()V
    .registers 4

    .line 586
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceDestroyCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_1d

    return-void

    .line 591
    :cond_1d
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda10;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 595
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTopChanged(Z)V
    .registers 5

    .line 385
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTopChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 386
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsTopResumedActivity:Z

    if-eqz p1, :cond_26

    .line 388
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 389
    new-instance p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 393
    :cond_26
    new-instance p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2f

    .line 779
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 780
    sget-object v1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "GLPreview will gone so need cache bitmap for hot start."

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    .line 782
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v0

    .line 783
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->translateToMultiple2(I)I

    move-result v0

    .line 784
    invoke-static {v2}, Lcom/transsion/camera/utils/CameraUtil;->translateToMultiple2(I)I

    move-result v1

    const/4 v2, 0x0

    .line 785
    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->getBitmap(IILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 787
    :cond_2f
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public releaseResource()V
    .registers 2

    .line 445
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mGLSurfaceViewSetBackgroundOnPause:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_19

    .line 446
    invoke-static {v0}, Lcom/transsion/camera/utils/BitmapUtils;->releaseBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mBackgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 448
    sget-object p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "surface setBackground, release"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public setAlgoRenderer(Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIAlgoRenderer:Lcom/transsion/camera/app/common/preview/algorithm/IAlgoRenderer;

    return-void
.end method

.method public setSurfaceSize(II)V
    .registers 6

    .line 622
    const-string v0, "setSurfaceSize"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 623
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceSize width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_2e

    .line 625
    invoke-interface {v0, v1, p1, p2}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 627
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mCurrentPreviewCallback:Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;

    if-nez v0, :cond_36

    .line 629
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void

    .line 632
    :cond_36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;->surfaceChangedCallback(Landroid/graphics/SurfaceTexture;II)V

    .line 633
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public setSurfaceTextureListener(Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;)V
    .registers 4

    .line 613
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setSurfaceTextureListener"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 614
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mListener:Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;

    return-void
.end method

.method public startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
    .registers 6

    .line 149
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRenderRequest callbacker = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",handler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    const-string v0, "startRenderRequest"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPreviewRenderedCallbacker:Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;

    .line 152
    iput-object p2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mRenderedCallbackHandler:Landroid/os/Handler;

    .line 154
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    const/4 v0, 0x0

    if-nez p1, :cond_2e

    .line 155
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 157
    :cond_2e
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    .line 158
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isQcomCaptureFlow()Z

    move-result p1

    if-eqz p1, :cond_47

    if-eqz p2, :cond_47

    .line 159
    new-instance p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$$ExternalSyntheticLambda9;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;)V

    const-wide/16 v0, 0xf

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4a

    .line 161
    :cond_47
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 163
    :goto_4a
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public stopRenderRequest()V
    .registers 3

    .line 124
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopRenderRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mNeedToStopRequest:Z

    const/4 v0, 0x0

    .line 126
    iput v0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 767
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 768
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[PreviewPerformance] surfaceDestroyed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 769
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsNeedReCreateSurface:Z

    .line 770
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mIsGotoGalleryShare:Z

    .line 771
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceWidth:I

    .line 772
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mSurfaceHeight:I

    .line 773
    iput p1, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mFrameDrawState:I

    .line 774
    iget-object p0, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mPrivacyModeFrameNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    return-void
.end method

.method public updateGLProgramType(Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V
    .registers 5

    .line 650
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGLProgramType programType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , mProgramType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->mProgramType:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView$11;-><init>(Lcom/transsion/camera/app/ui/opengl/GLPreviewView;Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/opengl/GLPreviewView;->executeInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
