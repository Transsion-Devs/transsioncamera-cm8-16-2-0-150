.class public Lcom/transsion/algorithm/STBlurAlgorithm;
.super Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;
    }
.end annotation


# static fields
.field private static final STBLUR_WORK_THREAD:Ljava/lang/String; = "stblur_work_thread"


# instance fields
.field private volatile mFrameDetect:Z

.field private mHasFace:Z

.field private volatile mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

.field private mSTBlurClientHandler:Landroid/os/Handler;

.field private mSTBlurClientOn:Z

.field private volatile mSTBlurClientValid:Z

.field private mSTBlurLensCovered:Z


# direct methods
.method static bridge synthetic -$$Nest$mhandleChangeConfig(Lcom/transsion/algorithm/STBlurAlgorithm;Lcom/transsion/algorithm/STBlurConfig;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleChangeConfig(Lcom/transsion/algorithm/STBlurConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleChangeKernel(Lcom/transsion/algorithm/STBlurAlgorithm;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleChangeKernel(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleChangeLevel(Lcom/transsion/algorithm/STBlurAlgorithm;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleChangeLevel(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInitRender(Lcom/transsion/algorithm/STBlurAlgorithm;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleInitRender()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInitSTBlur(Lcom/transsion/algorithm/STBlurAlgorithm;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleInitSTBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandlePauseSTBlur(Lcom/transsion/algorithm/STBlurAlgorithm;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->handlePauseSTBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResumeSTBlur(Lcom/transsion/algorithm/STBlurAlgorithm;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleResumeSTBlur()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleUnInitSTBlur(Lcom/transsion/algorithm/STBlurAlgorithm;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->handleUnInitSTBlur()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mHasFace:Z

    .line 32
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 34
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurLensCovered:Z

    .line 35
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mFrameDetect:Z

    return-void
.end method

.method private changeSTBlurConfig(ZZ)V
    .registers 4

    .line 325
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    .line 326
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "changeSTBlurConfig mSTBlurClientHandler is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 329
    :cond_c
    new-instance v0, Lcom/transsion/algorithm/STBlurConfig$Build;

    invoke-direct {v0}, Lcom/transsion/algorithm/STBlurConfig$Build;-><init>()V

    .line 330
    invoke-virtual {v0, p1}, Lcom/transsion/algorithm/STBlurConfig$Build;->hasFace(Z)Lcom/transsion/algorithm/STBlurConfig$Build;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/algorithm/STBlurConfig$Build;->stBlurOn(Z)Lcom/transsion/algorithm/STBlurConfig$Build;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/algorithm/STBlurConfig$Build;->build()Lcom/transsion/algorithm/STBlurConfig;

    move-result-object p1

    .line 331
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private changeSTBlurLevel(I)V
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "changeSTBlurLevel mSTBlurClientHandler is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 p0, 0x7

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 214
    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleChangeConfig(Lcom/transsion/algorithm/STBlurConfig;)V
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_9

    .line 317
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v0, p1}, Lcom/transsion/algorithm/STBlurClient;->changeConfigs(Lcom/transsion/algorithm/STBlurConfig;)V

    .line 319
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    if-eqz p0, :cond_16

    .line 320
    check-cast p0, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;

    invoke-virtual {p1}, Lcom/transsion/algorithm/STBlurConfig;->isSTBlurOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;->updateSTBlurValue(Z)V

    :cond_16
    return-void
.end method

.method private handleChangeKernel(I)V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_9

    .line 344
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0, p1}, Lcom/transsion/algorithm/STBlurClient;->updateKernel(I)V

    :cond_9
    return-void
.end method

.method private handleChangeLevel(I)V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_9

    .line 338
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0, p1}, Lcom/transsion/algorithm/STBlurClient;->updateBlurLevel(I)V

    :cond_9
    return-void
.end method

.method private handleInitRender()V
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_9

    .line 311
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient;->initRender()V

    :cond_9
    return-void
.end method

.method private handleInitSTBlur()V
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "handleInitSTBlur mContext is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 279
    :cond_c
    new-instance v0, Lcom/transsion/algorithm/STBlurConfig$Build;

    invoke-direct {v0}, Lcom/transsion/algorithm/STBlurConfig$Build;-><init>()V

    .line 280
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/algorithm/STBlurConfig$Build;->frontCamera(Z)Lcom/transsion/algorithm/STBlurConfig$Build;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/algorithm/STBlurConfig$Build;->build()Lcom/transsion/algorithm/STBlurConfig;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/transsion/algorithm/STBlurClient;

    iget-object v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/algorithm/STBlurClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    .line 282
    iget-object v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v1, v0}, Lcom/transsion/algorithm/STBlurClient;->configSTBlur(Lcom/transsion/algorithm/STBlurConfig;)V

    .line 283
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v0}, Lcom/transsion/algorithm/STBlurClient;->initSTBlur()V

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientValid:Z

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast v0, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;

    iget-object v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v1}, Lcom/transsion/algorithm/STBlurClient;->getSTBlurCapture()Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;->setSTBlurCapture(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;)V

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;

    check-cast p0, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/STBlurImageProcessor;->initSTBlurCapture()V

    return-void
.end method

.method private handlePauseSTBlur()V
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_9

    .line 298
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient;->unInitSTBlur()V

    :cond_9
    return-void
.end method

.method private handleResumeSTBlur()V
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_9

    .line 292
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient;->initSTBlur()V

    :cond_9
    return-void
.end method

.method private handleUnInitSTBlur()V
    .registers 2

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientValid:Z

    .line 304
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_c

    .line 305
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurClient;->unInitSTBlur()V

    :cond_c
    return-void
.end method

.method private initSTBlur()V
    .registers 5

    .line 168
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    if-nez v0, :cond_4a

    .line 169
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->initSTBlurThread()V

    .line 170
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 171
    const-string v0, "key_has_valid_face"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 172
    const-string v0, "key_lens_warning"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "key_mu_monomer"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "f0.0"

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    if-nez v1, :cond_4a

    if-eqz v0, :cond_4a

    .line 176
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 177
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4a

    .line 179
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/transsion/algorithm/STBlurAlgorithm;->changeSTBlurLevel(I)V

    :cond_4a
    return-void
.end method

.method private initSTBlurThread()V
    .registers 3

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "stblur_work_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    new-instance v1, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;-><init>(Lcom/transsion/algorithm/STBlurAlgorithm;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    return-void
.end method

.method private isFrontCamera()Z
    .registers 2

    .line 349
    iget p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mLensFacing:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private unInitSTBlur()V
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    if-eqz v0, :cond_24

    .line 187
    const-string v0, "key_has_valid_face"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 188
    const-string v0, "key_lens_warning"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 190
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    :cond_24
    return-void
.end method


# virtual methods
.method public algoProcess(Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;II[FJZI)Z
    .registers 17

    .line 64
    iget-object p5, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz p5, :cond_19

    iget-boolean p5, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mFrameDetect:Z

    if-nez p5, :cond_9

    goto :goto_19

    .line 68
    :cond_9
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    iget v2, p1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    iget v3, p1, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texType:I

    iget v4, p2, Lcom/transsion/camera/app/common/preview/algorithm/MyTexture;->texId:I

    const/4 v1, 0x0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/algorithm/STBlurClient;->drawPreviewBlurGLThread(Landroid/graphics/SurfaceTexture;IIIII)Z

    move-result p0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 86
    const-string p0, "key_mu_monomer"

    return-object p0
.end method

.method public init(II)Z
    .registers 4

    .line 49
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->init(II)Z

    .line 50
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz p1, :cond_2b

    iget-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientValid:Z

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    if-nez p1, :cond_10

    goto :goto_2b

    .line 56
    :cond_10
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p1}, Lcom/transsion/algorithm/STBlurClient;->initPreviewBlurGLThread()V

    .line 57
    iget-object p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 58
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0

    .line 51
    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init mSTBlurClient: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",mSTBlurClientValid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientValid:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mSTBlurClientHandler: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public needPreviewFrame()Z
    .registers 5

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needPreviewFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mModeResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mProcessInited:Z

    if-eqz v0, :cond_38

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mModeResumed:Z

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V
    .registers 6

    .line 146
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeInit(Lcom/transsion/camera/app/common/mode/IImageProcessor;Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->initSTBlur()V

    return-void
.end method

.method public onModeUnInit()V
    .registers 1

    .line 152
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onModeUnInit()V

    .line 153
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->unInitSTBlur()V

    return-void
.end method

.method public onPreviewFrame([BIII)V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-eqz v0, :cond_c

    .line 198
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/algorithm/STBlurClient;->processPreviewBlur([BIII)V

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mFrameDetect:Z

    :cond_c
    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_a4

    goto :goto_4c

    :sswitch_2c
    const-string v0, "key_lens_warning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_4c

    :cond_35
    const/4 v3, 0x2

    goto :goto_4c

    :sswitch_37
    const-string v0, "key_mu_monomer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_4c

    :cond_40
    move v3, v2

    goto :goto_4c

    :sswitch_42
    const-string v0, "key_has_valid_face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v3, v1

    :goto_4c
    packed-switch v3, :pswitch_data_b2

    return-void

    .line 119
    :pswitch_50
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 120
    iput-boolean v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 121
    iput-boolean v2, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurLensCovered:Z

    goto :goto_9b

    .line 123
    :cond_5f
    iput-boolean v2, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 124
    iput-boolean v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurLensCovered:Z

    goto :goto_9b

    .line 104
    :pswitch_64
    const-string p1, "f0.0"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 105
    iput-boolean v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 106
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    goto :goto_87

    .line 108
    :cond_71
    iput-boolean v2, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 109
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    .line 110
    sget-object p1, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/transsion/algorithm/STBlurAlgorithm;->changeSTBlurLevel(I)V

    .line 113
    :goto_87
    iget-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurLensCovered:Z

    if-eqz p1, :cond_9b

    .line 114
    iput-boolean v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    goto :goto_9b

    .line 96
    :pswitch_8e
    const-string p1, "face_valid"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_99

    .line 97
    iput-boolean v2, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mHasFace:Z

    goto :goto_9b

    .line 99
    :cond_99
    iput-boolean v1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mHasFace:Z

    .line 132
    :cond_9b
    :goto_9b
    iget-boolean p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mHasFace:Z

    iget-boolean p2, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    invoke-direct {p0, p1, p2}, Lcom/transsion/algorithm/STBlurAlgorithm;->changeSTBlurConfig(ZZ)V

    return-void

    nop

    :sswitch_data_a4
    .sparse-switch
        -0x38f3fe9b -> :sswitch_42
        0x2093e60 -> :sswitch_37
        0x5f0a773b -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_64
        :pswitch_50
    .end packed-switch
.end method

.method public onSettingReady()V
    .registers 3

    .line 138
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSettingReady()V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-virtual {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "f0.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientOn:Z

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mIsOpenProcess:Z

    return-void
.end method

.method public onSurfaceCreated()V
    .registers 1

    .line 158
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->initSTBlur()V

    return-void
.end method

.method public onSurfaceDestoryed()V
    .registers 1

    .line 163
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->onSurfaceDestoryed()V

    .line 164
    invoke-direct {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->unInitSTBlur()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 73
    invoke-super {p0}, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->unInit()V

    .line 74
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    if-nez v0, :cond_10

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/common/preview/algorithm/AbstractGpuProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "unInit mSTBlurClient is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_10
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClient:Lcom/transsion/algorithm/STBlurClient;

    invoke-virtual {v0}, Lcom/transsion/algorithm/STBlurClient;->unInitPreviewBlurGLThread()V

    .line 80
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mSTBlurClientHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm;->mFrameDetect:Z

    return-void
.end method
