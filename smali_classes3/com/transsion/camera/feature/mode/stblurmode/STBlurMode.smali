.class public Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;,
        Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode;"
    }
.end annotation


# static fields
.field private static final FLASH_SUPPORT_ALL:I = 0x3

.field private static final FLASH_SUPPORT_BACK:I = 0x2

.field private static final FLASH_SUPPORT_FRONT:I = 0x1

.field private static final HUMAN_EFFECT_INDEX_DEFAULT:Ljava/lang/String; = "0"

.field private static final STBLUR_CLIENT_IMPL_CLASS:Ljava/lang/String; = "com.transsion.algorithm.STBlurClientImpl"

.field private static final STBLUR_WORK_THREAD:Ljava/lang/String; = "stblur_work_thread"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mAlgoProcessed:Z

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAsdSupport:Z

.field private mBackFakeDualLensSupport:Z

.field private volatile mFacelightingClient:Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

.field private mFrameData:[B

.field private mFrontFakeDualLensSupport:Z

.field private mHasFace:Z

.field private mHdrSupport:Z

.field private volatile mHumanEffectFaceChecked:Z

.field private mHumanEffectIndex:Ljava/lang/String;

.field private mHumanEffectInited:Z

.field private mIsFirstAlgoFrame:Z

.field private mIsPause:Z

.field private mLastCaptureTime:J

.field private mMFNRSupport:Z

.field private volatile mModeInit:Z

.field private mRotation:I

.field private volatile mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

.field private mSTBlurClientHandler:Landroid/os/Handler;

.field private mSTBlurClientOn:Z

.field private mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private volatile mSTBlurClientValid:Z

.field private mSTBlurLensCovered:Z

.field private final mSupportFlashType:I

.field private mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

.field private mZoomSupport:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlgoProcessed(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAlgoProcessed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacelightingClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;
    .registers 1

    .line 0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)[B
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrameData:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFirstAlgoFrame(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mIsFirstAlgoFrame:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPause(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mIsPause:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeInit(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mModeInit:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSTBlurClient(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSTBlurClientValid(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientValid:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAlgoProcessed(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAlgoProcessed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFrameData(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;[B)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrameData:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFirstAlgoFrame(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mIsFirstAlgoFrame:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateFacelighting(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->createFacelighting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroyFacelighting(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->destroyFacelighting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleChangeConfig(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleChangeConfig(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleChangeKernel(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleChangeKernel(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleChangeLevel(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleChangeLevel(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInitFacelighting(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleInitFacelighting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInitRender(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleInitRender()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInitSTBlur(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleInitSTBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePauseSTBlur(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handlePauseSTBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResumeSTBlur(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleResumeSTBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUnInitSTBlur(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->handleUnInitSTBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misHumanEffectSupported(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 85
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "STBlurMode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .registers 6

    .line 129
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurLensCovered:Z

    .line 108
    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mRotation:I

    .line 109
    const-string v1, "0"

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 121
    iput-wide v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mLastCaptureTime:J

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mIsFirstAlgoFrame:Z

    .line 123
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mIsPause:Z

    .line 499
    new-instance p1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$1;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    .line 130
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->readFakeDualLensSupport(Landroid/content/res/Resources;)V

    .line 131
    sget p1, Lcom/transsion/camera/feature/mode/stblurmode/R$integer;->stblur_flash_support_type:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSupportFlashType:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Ljava/lang/String;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method private changeSTBlurConfig(ZZ)V
    .registers 4

    .line 334
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;-><init>()V

    .line 335
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->hasFace(Z)Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->stBlurOn(Z)Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->build()Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;

    move-result-object p1

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 337
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private changeSTBlurLevel(I)V
    .registers 3

    .line 322
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 322
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 323
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private createFacelighting()V
    .registers 3

    .line 854
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    if-nez v0, :cond_1f

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 855
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createFacelighting"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 856
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->getFacelightingClient()Lcom/transsion/camera/app/common/algorithm/facelighting/IFacelightingClient;

    .line 860
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectInited:Z

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    if-nez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    .line 861
    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method

.method private destroyFacelighting()V
    .registers 1

    return-void
.end method

.method private handleChangeConfig(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;)V
    .registers 3

    .line 899
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    if-eqz v0, :cond_9

    .line 900
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;->changeConfigs(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;)V

    .line 902
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz p0, :cond_16

    .line 903
    check-cast p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;->isSTBlurOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->updateSTBlurValue(Z)V

    :cond_16
    return-void
.end method

.method private handleChangeKernel(I)V
    .registers 3

    .line 914
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    if-eqz v0, :cond_9

    .line 915
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview;->updateKernel(I)V

    :cond_9
    return-void
.end method

.method private handleChangeLevel(I)V
    .registers 3

    .line 908
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    if-eqz v0, :cond_9

    .line 909
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview;->updateBlurLevel(I)V

    :cond_9
    return-void
.end method

.method private handleInitFacelighting()V
    .registers 3

    .line 845
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    new-instance v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$2;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleInitRender()V
    .registers 2

    .line 893
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    if-eqz v0, :cond_9

    .line 894
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview;->initRender()V

    :cond_9
    return-void
.end method

.method private handleInitSTBlur()V
    .registers 4

    .line 828
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 829
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "handleInitSTBlur mContext is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 833
    :cond_c
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 834
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isFrontCamera(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->frontCamera(Z)Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->build()Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;

    move-result-object v0

    .line 835
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "com.transsion.algorithm.STBlurClientImpl"

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    .line 836
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;->configSTBlur(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;)V

    .line 837
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview;->initSTBlur()V

    const/4 v0, 0x1

    .line 838
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientValid:Z

    .line 840
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;->getSTBlurCapture()Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->setSTBlurCapture(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;)V

    .line 841
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;->initSTBlurCapture()V

    return-void
.end method

.method private handlePauseSTBlur()V
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    if-eqz v0, :cond_9

    .line 881
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview;->unInitSTBlur()V

    :cond_9
    return-void
.end method

.method private handleResumeSTBlur()V
    .registers 2

    .line 874
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    if-eqz v0, :cond_9

    .line 875
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview;->initSTBlur()V

    :cond_9
    return-void
.end method

.method private handleUnInitSTBlur()V
    .registers 2

    const/4 v0, 0x0

    .line 886
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientValid:Z

    .line 887
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    if-eqz v0, :cond_c

    .line 888
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClient:Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurClient;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/stblur/ISTBlurPreview;->unInitSTBlur()V

    :cond_c
    return-void
.end method

.method private initSTBlurThread()V
    .registers 4

    .line 171
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "stblur_work_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 173
    new-instance v1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurHandler;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    return-void
.end method

.method private isFakeDualLens()Z
    .registers 3

    .line 750
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_e
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 753
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBackFakeDualCameraId()Ljava/lang/String;

    move-result-object v1

    .line 752
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_26
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    if-eqz v0, :cond_36

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "1"

    .line 754
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_36

    :cond_34
    const/4 p0, 0x1

    return p0

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method private isFrontCamera(Ljava/lang/String;)Z
    .registers 2

    .line 204
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p0

    .line 205
    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_14

    return p1

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private isHumanEffectSupported()Z
    .registers 2

    .line 920
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/facelighting/FacelightingFactory;->isFacelightingSupport()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "com.transsion.camera.ui.setting.humaneffect.HumanEffectSettingUIEntry"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->isFeatureConfiged(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportFlash()Z
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isFrontCamera(Ljava/lang/String;)Z

    move-result v0

    .line 192
    iget p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSupportFlashType:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_12

    if-eqz v0, :cond_12

    return v1

    :cond_12
    const/4 v2, 0x2

    if-ne p0, v2, :cond_18

    if-nez v0, :cond_18

    return v1

    :cond_18
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1c

    return v1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private readFakeDualLensSupport(Landroid/content/res/Resources;)V
    .registers 4

    .line 732
    sget v0, Lcom/transsion/camera/feature/mode/stblurmode/R$integer;->stblur_fake_dual_lens_type:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v1, 0x2

    if-eq p1, v1, :cond_15

    const/4 v1, 0x3

    if-eq p1, v1, :cond_10

    return-void

    .line 741
    :cond_10
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    .line 742
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    return-void

    .line 738
    :cond_15
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    return-void

    .line 735
    :cond_18
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .registers 4

    .line 760
    new-instance v0, Lcom/transsion/camera/app/common/mode/CaptureInfo;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mCaptureOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->needMirror()Z

    move-result v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->autoWatermark()Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/mode/CaptureInfo;-><init>(IZZ)V

    return-object v0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .registers 1

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->createImageProcessor()Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;
    .registers 2

    .line 765
    new-instance v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;

    invoke-direct {v0, p0, p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;Lcom/transsion/camera/app/common/ICameraControl$IContinuousShotCallback;)V

    return-object v0
.end method

.method protected getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 925
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x2

    .line 929
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ZoomConfig;->setSupportedZoomTypes([I)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .registers 2

    .line 487
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->algorithmMigrate()Z

    move-result p0

    const/4 v0, 0x4

    if-eqz p0, :cond_d

    const/4 p0, 0x2

    .line 488
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0

    .line 491
    :cond_d
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x3

    .line 492
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x1

    .line 495
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getFpsRange()Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 363
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getFpsRange()Landroid/util/Range;

    move-result-object v0

    .line 364
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mFpsRangeReduce:Z

    if-eqz v1, :cond_21

    .line 366
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->supportPostAlgo()Z

    move-result p0

    if-eqz p0, :cond_11

    const/16 p0, 0x1c

    goto :goto_13

    :cond_11
    const/16 p0, 0x1a

    .line 369
    :goto_13
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    :cond_21
    return-object v0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .line 381
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    const-string v0, "key_shutter_sound_optional"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    const-string v0, "key_st_blur"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    const-string v0, "key_mood_light"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    const-string v0, "key_tran_plugin"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    const-string v0, "key_smile_detection"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v0, "key_edit_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const-string v0, "key_gold_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v0, "key_pro_watermark"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    const-string v0, "key_super_flash"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    const-string v0, "key_night_3dnr"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    const-string v1, "key_fingerprint_capture"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    const-string v1, "key_touch_capture"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    const-string v1, "key_activity_orientation"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mAiRawSprdSupport:Z

    if-eqz v1, :cond_53

    .line 396
    const-string v1, "key_portraitmode_enhance"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_53
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAsdSupport:Z

    if-eqz v1, :cond_65

    .line 399
    const-string v1, "key_asd"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHdrSupport:Z

    if-eqz v1, :cond_65

    .line 401
    const-string v1, "key_hdr"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_65
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mMFNRSupport:Z

    if-eqz v1, :cond_6e

    .line 405
    const-string v1, "key_setting_smart_denoise"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_6e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isFakeDualLens()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 408
    const-string v1, "key_is_stblur_fake"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_79
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->algorithmMigrate()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 411
    const-string v1, "key_algorithm_migrate"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_84
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mMildBeautyType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_90

    const/4 v2, 0x3

    if-ne v1, v2, :cond_95

    .line 415
    :cond_90
    const-string v1, "key_mild_beauty"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_95
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 418
    const-string v1, "key_human_effect_index"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    :cond_a0
    const-string v1, "key_auto_color_level"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    const-string v1, "key_taint_detection"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mZoomSupport:Z

    if-eqz p0, :cond_b6

    .line 423
    const-string p0, "key_camera_click_zoom"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_b6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 428
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .registers 8

    .line 463
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isSupportFlash()Z

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->getRestriction(Z)Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v0

    const/4 v1, 0x1

    .line 464
    const-string v2, "on"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 466
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mZoomSupport:Z

    const-string v3, "key_volume_key"

    const-string v4, "0"

    const-string v5, "Shutter"

    if-eqz v1, :cond_25

    .line 468
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 469
    invoke-virtual {v0, v3, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 472
    :cond_25
    const-string v1, "key_camera_zoom"

    sget-object v6, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_INIT_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v6, v6}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, v3, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_2f
    :goto_2f
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mMFNRSupport:Z

    if-eqz p0, :cond_3d

    .line 477
    const-string p0, "key_setting_smart_denoise"

    invoke-virtual {v0, p0, v2, v2}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string p0, "key_asd"

    invoke-virtual {v0, p0, v4, v4}, Lcom/transsion/camera/app/common/relation/Relation;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_3d
    invoke-static {}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurModeRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object v0
.end method

.method protected getOpenCamerId(Ljava/lang/String;Landroid/content/Context;ZLcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 8

    .line 445
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isSupportFrontFakeDualLens()Z

    move-result p2

    if-eqz p2, :cond_17

    const-string p2, "1"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 446
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontFakeDualCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 447
    :cond_17
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isSupportBackFakeDualLens()Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "0"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 448
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackFakeDualCamera()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    return-object p5
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

    .line 258
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getTargetRatio()D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-super {p0, p1, v0, v1, v2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getPreviewSizeMatch64(Ljava/util/List;DZ)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSettingGroup()J
    .registers 5

    .line 376
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->getSettingGroup()J

    move-result-wide v0

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected getShutterTypeSelftimerOff()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public getThumbnailSource()I
    .registers 2

    .line 455
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 458
    :cond_8
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getThumbnailSource()I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .registers 8

    .line 138
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 139
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 140
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->initSTBlurThread()V

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/app/common/R$bool;->stblur_algo_support:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_39

    const-string p2, "com.transsion.algorithm.STBlurClientImpl"

    .line 142
    invoke-static {p2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_39

    .line 144
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 145
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz p2, :cond_39

    .line 147
    new-instance p4, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode$STBlurPreviewCallback;-><init>(Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode-IA;)V

    invoke-interface {p2, p4}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V

    .line 150
    :cond_39
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 151
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p4, 0x7

    const-wide/16 p5, 0xc8

    invoke-virtual {p2, p4, p5, p6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    :cond_47
    const-string p2, "key_has_valid_face"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 155
    const-string p2, "key_st_blur"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 156
    const-string p2, "key_lens_warning"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->isHumanEffectSupported()Z

    move-result p2

    if-eqz p2, :cond_78

    .line 158
    const-string p2, "key_human_effect_index"

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 159
    const-string p4, "key_human_effect_face_checked"

    invoke-virtual {p0, p4}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 160
    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p4

    .line 161
    const-string p5, "0"

    invoke-virtual {p4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p2, p5, p6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    .line 163
    :cond_78
    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mModeInit:Z

    .line 164
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mStblurModeAsdSupport:Z

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAsdSupport:Z

    .line 165
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mStblurModeHDRSupport:Z

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHdrSupport:Z

    .line 166
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mStblurModeMFNRSupport:Z

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mMFNRSupport:Z

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/stblurmode/R$bool;->stblur_zoom_support:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mZoomSupport:Z

    return-void
.end method

.method public isSupportBackFakeDualLens()Z
    .registers 1

    .line 438
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mBackFakeDualLensSupport:Z

    return p0
.end method

.method public isSupportFrontFakeDualLens()Z
    .registers 1

    .line 433
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mFrontFakeDualLensSupport:Z

    return p0
.end method

.method public onFirstSteadyFrame()V
    .registers 3

    .line 354
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onFirstSteadyFrame()V

    .line 355
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onFirstSteadyFrame"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 356
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    if-eqz p0, :cond_16

    const/4 v0, 0x5

    .line 357
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_16
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    .line 328
    const-string v0, "key_human_effect_face_checked"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 329
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectFaceChecked:Z

    :cond_e
    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 268
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "key_has_valid_face"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 273
    const-string v0, "face_valid"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 274
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    goto :goto_1a

    .line 276
    :cond_18
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    :goto_1a
    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    .line 280
    :goto_1d
    const-string v3, "key_lens_warning"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 282
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 283
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    .line 284
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurLensCovered:Z

    goto :goto_38

    .line 286
    :cond_34
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    .line 287
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurLensCovered:Z

    :goto_38
    move v0, v1

    .line 291
    :cond_39
    const-string v3, "key_st_blur"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 293
    const-string v0, "f0.0"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 294
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    .line 295
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->changeSTBlurLevel(I)V

    goto :goto_60

    .line 298
    :cond_5e
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    .line 300
    :goto_60
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurLensCovered:Z

    if-eqz v0, :cond_68

    .line 301
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    goto :goto_68

    :cond_67
    move v1, v0

    :cond_68
    :goto_68
    if-eqz v1, :cond_71

    .line 306
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->changeSTBlurConfig(ZZ)V

    .line 309
    :cond_71
    const-string v0, "key_human_effect_index"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7a

    return-void

    .line 318
    :cond_7a
    sget-object p1, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onSettingChanged] mHasFace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHasFace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mSTBlurClientOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; mHumanEffectIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectIndex:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; value: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onSettingReady()V
    .registers 4

    .line 342
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_st_blur"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    const-string v1, "f0.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    .line 346
    sget-object v0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onSettingReady] mSTBlurClientOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_3a

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    :cond_3a
    return-void
.end method

.method protected onShutterClickBefore(I)Z
    .registers 8

    .line 178
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mAsdModeShutterDelaySupport:Z

    if-eqz v0, :cond_20

    .line 179
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 180
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mLastCaptureTime:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x4b0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1e

    const/4 p0, 0x0

    return p0

    .line 184
    :cond_1e
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mLastCaptureTime:J

    .line 186
    :cond_20
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterClickBefore(I)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_7

    .line 225
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modePause()V

    .line 227
    :cond_7
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mIsPause:Z

    const-wide/16 v0, 0x0

    .line 229
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mLastCaptureTime:J

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 231
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_24

    const/16 v0, 0xd6

    .line 232
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_24
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

    .line 210
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    const-wide/16 v0, 0x0

    .line 211
    iput-wide v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mLastCaptureTime:J

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mIsPause:Z

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v0, :cond_11

    .line 214
    invoke-interface {v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeResume()V

    .line 216
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 217
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_24

    const/16 v0, 0x7b

    .line 218
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_24
    return-void
.end method

.method public unInit()V
    .registers 4

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mModeInit:Z

    .line 239
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    if-eqz v1, :cond_a

    .line 240
    invoke-interface {v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->modeUninit()V

    .line 242
    :cond_a
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    .line 243
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 244
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mSTBlurClientHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 245
    const-string v1, "key_has_valid_face"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 246
    const-string v1, "key_st_blur"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 247
    const-string v1, "key_lens_warning"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 248
    const-string v1, "key_human_effect_index"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 249
    const-string v1, "key_human_effect_face_checked"

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v1, :cond_41

    const/4 v2, 0x0

    .line 251
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 253
    :cond_41
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/stblurmode/STBlurMode;->mHumanEffectFaceChecked:Z

    return-void
.end method
