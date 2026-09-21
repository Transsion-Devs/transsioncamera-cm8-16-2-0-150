.class public Lcom/transsion/camera/utils/dfx/mgr/ExManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/dfx/inter/IExDetection;


# static fields
.field public static final INSTANCE:Lcom/transsion/camera/utils/dfx/inter/IExDetection;


# instance fields
.field private mCamErrors:Lcom/transsion/camera/utils/dfx/inter/ICamError;

.field protected mDetectionThread:Landroid/os/HandlerThread;

.field protected mDfxHandler:Landroid/os/Handler;

.field private mExInjection:Lcom/transsion/camera/utils/dfx/inter/IExInjection;

.field private mExMemory:Lcom/transsion/camera/utils/dfx/inter/IExMemory;

.field private mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

.field private mTpms:Lcom/transsion/camera/utils/dfx/tpms/Tpms;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;

    invoke-direct {v0}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->INSTANCE:Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;
    .registers 1

    .line 41
    sget-object v0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->INSTANCE:Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    return-object v0
.end method


# virtual methods
.method public begin(Landroid/view/View;I)V
    .registers 3

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz p0, :cond_7

    .line 158
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->begin(Landroid/view/View;I)V

    :cond_7
    return-void
.end method

.method public cancel(II)V
    .registers 3

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz p0, :cond_7

    .line 208
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->cancel(II)V

    :cond_7
    return-void
.end method

.method public end(I)V
    .registers 2

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz p0, :cond_7

    .line 165
    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->end(I)V

    :cond_7
    return-void
.end method

.method public getDfxHandler()Landroid/os/Handler;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mDfxHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getMaxExTemperature()I
    .registers 1

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExInjection:Lcom/transsion/camera/utils/dfx/inter/IExInjection;

    if-eqz p0, :cond_9

    .line 223
    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IExInjection;->getMaxExTemperature()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getMinDrawFrames()I
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExInjection:Lcom/transsion/camera/utils/dfx/inter/IExInjection;

    if-eqz p0, :cond_9

    .line 255
    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IExInjection;->getMinDrawFrames()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getPhotoTimeout()I
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExInjection:Lcom/transsion/camera/utils/dfx/inter/IExInjection;

    if-eqz p0, :cond_9

    .line 231
    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IExInjection;->getPhotoTimeout()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getSaverTimeout()I
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExInjection:Lcom/transsion/camera/utils/dfx/inter/IExInjection;

    if-eqz p0, :cond_9

    .line 215
    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IExInjection;->getSaverTimeout()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mDetectionThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1d

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dfx_detection"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mDetectionThread:Landroid/os/HandlerThread;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mDetectionThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mDfxHandler:Landroid/os/Handler;

    .line 66
    :cond_1d
    new-instance v0, Lcom/transsion/camera/utils/dfx/tpms/Tpms;

    invoke-direct {v0}, Lcom/transsion/camera/utils/dfx/tpms/Tpms;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mTpms:Lcom/transsion/camera/utils/dfx/tpms/Tpms;

    .line 67
    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/dfx/tpms/Tpms;->init(Landroid/content/Context;)V

    .line 68
    new-instance v0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;

    iget-object v1, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mTpms:Lcom/transsion/camera/utils/dfx/tpms/Tpms;

    iget-object v2, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mDfxHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/dfx/impl/CamErrors;-><init>(Lcom/transsion/camera/utils/dfx/tpms/Tpms;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mCamErrors:Lcom/transsion/camera/utils/dfx/inter/ICamError;

    .line 69
    new-instance v0, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;

    iget-object v1, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mDfxHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/dfx/impl/PerformanceDfxWrapper;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    .line 70
    new-instance v0, Lcom/transsion/camera/utils/dfx/impl/ExInjection;

    invoke-direct {v0}, Lcom/transsion/camera/utils/dfx/impl/ExInjection;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExInjection:Lcom/transsion/camera/utils/dfx/inter/IExInjection;

    .line 71
    new-instance v0, Lcom/transsion/camera/utils/dfx/impl/CamMemory;

    iget-object v1, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mTpms:Lcom/transsion/camera/utils/dfx/tpms/Tpms;

    iget-object v2, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mDfxHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/dfx/impl/CamMemory;-><init>(Lcom/transsion/camera/utils/dfx/tpms/Tpms;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExMemory:Lcom/transsion/camera/utils/dfx/inter/IExMemory;

    .line 72
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/dfx/inter/IExCommon;->init(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mCamErrors:Lcom/transsion/camera/utils/dfx/inter/ICamError;

    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/dfx/inter/IExCommon;->init(Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExInjection:Lcom/transsion/camera/utils/dfx/inter/IExInjection;

    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/dfx/inter/IExCommon;->init(Landroid/content/Context;)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExMemory:Lcom/transsion/camera/utils/dfx/inter/IExMemory;

    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/IExCommon;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isTargetActionExists(I)Z
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz p0, :cond_9

    .line 115
    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->isTargetActionExists(I)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public logAction(II)V
    .registers 3

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz p0, :cond_7

    .line 172
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->logAction(II)V

    :cond_7
    return-void
.end method

.method public onActionCancel(I)V
    .registers 2

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz p0, :cond_7

    .line 179
    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionCancel(I)V

    :cond_7
    return-void
.end method

.method public onActionEnd(I)V
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz p0, :cond_7

    .line 137
    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionEnd(I)V

    :cond_7
    return-void
.end method

.method public onActionEnd(ILjava/lang/String;)V
    .registers 3

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz p0, :cond_7

    .line 144
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionEnd(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onActionStart(ILjava/lang/String;)V
    .registers 3

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz p0, :cond_7

    .line 130
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;->onActionStart(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onCamError(I)V
    .registers 2

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mCamErrors:Lcom/transsion/camera/utils/dfx/inter/ICamError;

    if-eqz p0, :cond_7

    .line 52
    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    :cond_7
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mCamErrors:Lcom/transsion/camera/utils/dfx/inter/ICamError;

    if-eqz v0, :cond_7

    .line 340
    invoke-interface {v0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onDestroy()V

    .line 343
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExMemory:Lcom/transsion/camera/utils/dfx/inter/IExMemory;

    if-eqz v0, :cond_e

    .line 344
    invoke-interface {v0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onDestroy()V

    .line 347
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz p0, :cond_15

    .line 348
    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onDestroy()V

    :cond_15
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mCamErrors:Lcom/transsion/camera/utils/dfx/inter/ICamError;

    if-eqz v0, :cond_7

    .line 309
    invoke-interface {v0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onPause()V

    .line 313
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExMemory:Lcom/transsion/camera/utils/dfx/inter/IExMemory;

    if-eqz v0, :cond_e

    .line 314
    invoke-interface {v0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onPause()V

    .line 317
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz p0, :cond_15

    .line 318
    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onPause()V

    :cond_15
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mCamErrors:Lcom/transsion/camera/utils/dfx/inter/ICamError;

    if-eqz v0, :cond_7

    .line 296
    invoke-interface {v0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onResume()V

    .line 300
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExMemory:Lcom/transsion/camera/utils/dfx/inter/IExMemory;

    if-eqz p0, :cond_e

    .line 301
    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onResume()V

    :cond_e
    return-void
.end method

.method public varargs updateLocalSupports([Z)V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mPerformanceDfx:Lcom/transsion/camera/utils/dfx/inter/IPerformanceDfx;

    if-eqz v0, :cond_7

    .line 279
    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/dfx/inter/IExCommon;->updateLocalSupports([Z)V

    .line 282
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mCamErrors:Lcom/transsion/camera/utils/dfx/inter/ICamError;

    if-eqz v0, :cond_e

    .line 283
    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/dfx/inter/IExCommon;->updateLocalSupports([Z)V

    .line 286
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->mExMemory:Lcom/transsion/camera/utils/dfx/inter/IExMemory;

    if-eqz p0, :cond_15

    .line 287
    invoke-interface {p0, p1}, Lcom/transsion/camera/utils/dfx/inter/IExCommon;->updateLocalSupports([Z)V

    :cond_15
    return-void
.end method
