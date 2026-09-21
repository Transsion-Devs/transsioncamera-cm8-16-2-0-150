.class public Lcom/transsion/camera/feature/tzservice/TZServiceProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/tzservice/ITZService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;
    }
.end annotation


# static fields
.field private static final RELINK_TIME:I = 0xc8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sRetry:Z


# instance fields
.field private final mDeathRecipient:Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;

.field private final mStorageInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mStorageReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

.field private final mTZCaptureCallback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;

.field private final mTZCaptureJpegCallback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;

.field private mTZServiceCallback:Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

.field private final mTZServiceLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$-gwSNXHMsyiIa0Kai6Hsm5rABbM(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->lambda$onBackgroundStorageInit$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$Gj9Ldb2xHQRqjyGJF9L0F8k79rc(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->lambda$setScreenState$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$I7XCa_sHx_ZVyPWN_lET-zr_1Vo(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->lambda$onStorageReady$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$NB097LMQ15trx9zL7-1K-6Fp4z0(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->lambda$setAppIOOperationStart$3(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$_mz8mm1NLI7qf3tyTF8U56ftY70(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->lambda$setBatteryState$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nBSKangZG6A_SK0Zc89UEqgnbXE(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->lambda$createTZAidlService$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$sSXxvIgzDUtZL0ZdAQY9YkUX5zU(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->lambda$setMappingInfo$2(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmTZAIDLService(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Lcom/transsion/camera/feature/tzservice/TZService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTZServiceCallback(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZServiceCallback:Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTZServiceLock(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZServiceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTZAIDLService(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;Lcom/transsion/camera/feature/tzservice/TZService;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTZAidlService(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Lcom/transsion/camera/feature/tzservice/TZService;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->getTZAidlService()Lcom/transsion/camera/feature/tzservice/TZService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TZServiceProxy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    .line 41
    iput-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZServiceCallback:Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

    .line 42
    new-instance v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;-><init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mDeathRecipient:Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mStorageInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mStorageReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZServiceLock:Ljava/lang/Object;

    .line 178
    new-instance v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$1;-><init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZCaptureCallback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;

    .line 217
    new-instance v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$2;-><init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZCaptureJpegCallback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->createTZAidlService()Lcom/transsion/camera/feature/tzservice/TZService;

    return-void
.end method

.method private createTZAidlService()Lcom/transsion/camera/feature/tzservice/TZService;
    .registers 6

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->sRetry:Z

    if-eqz v1, :cond_40

    goto :goto_e

    :catchall_c
    move-exception p0

    goto :goto_52

    .line 315
    :cond_e
    :goto_e
    sget-object v1, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTZAidlService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " retry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->sRetry:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_c

    .line 317
    :try_start_30
    new-instance v1, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)V

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    .line 331
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_40} :catch_44
    .catchall {:try_start_30 .. :try_end_40} :catchall_c

    .line 338
    :cond_40
    :try_start_40
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    monitor-exit v0

    return-object p0

    :catch_44
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    sget-object p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createTZAidlService init occurs timeout exception."

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 339
    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_40 .. :try_end_53} :catchall_c

    throw p0
.end method

.method private doIPCAction(Ljava/lang/Runnable;)V
    .registers 3

    .line 106
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_e

    .line 107
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    return-void

    .line 109
    :cond_e
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private getTZAidlService()Lcom/transsion/camera/feature/tzservice/TZService;
    .registers 1

    .line 124
    invoke-direct {p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->createTZAidlService()Lcom/transsion/camera/feature/tzservice/TZService;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createTZAidlService$6()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 319
    :try_start_2
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/tzservice/TZService;->getService(Ljava/lang/String;Z)Lcom/transsion/camera/feature/tzservice/TZService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    iget-object v1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mDeathRecipient:Lcom/transsion/camera/feature/tzservice/TZServiceProxy$DeathRecipient;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/tzservice/TZService;->linkToDeath(Lcom/transsion/camera/feature/tzservice/TZService$HwBinderDeathRecipient;I)V

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mStorageInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    iget-object v1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZCaptureCallback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/tzservice/TZService;->setTZCaptureCallback(Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;)V

    .line 324
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mStorageReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    iget-object v1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZCaptureJpegCallback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/tzservice/TZService;->setTZCaptureJpegCallback(Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;)V

    .line 327
    :cond_2e
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTZAidlService init..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_46} :catch_47

    return-void

    .line 329
    :catch_47
    sget-object p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "TZAIDLConnection NoSuchElementException ..."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onBackgroundStorageInit$4()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    if-eqz v0, :cond_12

    .line 133
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBackgroundStorageInit: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZCaptureCallback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/tzservice/TZService;->setTZCaptureCallback(Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$onStorageReady$5()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    if-eqz v0, :cond_12

    .line 148
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBackgroundStorageReady: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZCaptureJpegCallback:Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/tzservice/TZService;->setTZCaptureJpegCallback(Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$setAppIOOperationStart$3(II)V
    .registers 6

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    if-eqz v0, :cond_2c

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppIOOperationStart: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/tzservice/TZService;->setAppIOOperationStart(II)V

    :cond_2c
    return-void
.end method

.method private synthetic lambda$setBatteryState$0(I)V
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    if-eqz v0, :cond_24

    .line 69
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBatteryState: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/tzservice/TZService;->setBatteryState(I)V

    :cond_24
    return-void
.end method

.method private synthetic lambda$setMappingInfo$2(JLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    if-eqz v0, :cond_32

    .line 89
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMappingInfo: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/tzservice/TZService;->setMappingInfo(JLjava/lang/String;Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method private synthetic lambda$setScreenState$1(I)V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    if-eqz v0, :cond_24

    .line 79
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenState: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/tzservice/TZService;->setScreenState(I)V

    :cond_24
    return-void
.end method

.method private static setsRetry(Z)V
    .registers 4

    .line 343
    sput-boolean p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->sRetry:Z

    .line 344
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setsRetry: sRetry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOffPeakModeSupportCfg()[I
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    if-eqz v0, :cond_25

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/tzservice/TZService;->getOffPeakModeSupportCfg()[I

    move-result-object p0

    .line 117
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOffPeakModeSupportCfg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    :cond_25
    const/4 p0, 0x0

    .line 120
    new-array p0, p0, [I

    return-object p0
.end method

.method public hasTZService()Z
    .registers 2

    const/4 v0, 0x1

    .line 303
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->hasTZService(Z)Z

    move-result p0

    return p0
.end method

.method public hasTZService(Z)Z
    .registers 2

    if-eqz p1, :cond_7

    .line 308
    invoke-direct {p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->getTZAidlService()Lcom/transsion/camera/feature/tzservice/TZService;

    move-result-object p0

    goto :goto_9

    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    :goto_9
    if-eqz p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public onBackgroundStorageInit()V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mStorageInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 131
    :try_start_6
    new-instance v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    .line 136
    invoke-virtual {p0, v1, v2, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_16} :catch_17
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_16} :catch_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_16} :catch_17

    return-void

    .line 138
    :catch_17
    sget-object p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setTZCaptureCallback failed."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onStorageReady()Z
    .registers 5

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mStorageReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    :try_start_6
    new-instance v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    .line 151
    invoke-virtual {p0, v2, v3, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_16} :catch_17
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_16} :catch_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 153
    :catch_17
    sget-object p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setTZCaptureJpegCallback failed."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setAppIOOperationStart(II)V
    .registers 4

    .line 97
    new-instance v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;II)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->doIPCAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBatteryState(I)V
    .registers 3

    .line 67
    new-instance v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;I)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->doIPCAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMappingInfo(JLjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 87
    new-instance v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda3;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;JLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->doIPCAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScreenState(I)V
    .registers 3

    .line 77
    new-instance v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;I)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->doIPCAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTZCapConfig(JII)V
    .registers 8

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    if-eqz v0, :cond_32

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTZCapConfig: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZAIDLService:Lcom/transsion/camera/feature/tzservice/TZService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/tzservice/TZService;->setTZCapConfig(JII)V

    :cond_32
    return-void
.end method

.method public setTZServiceCallback(Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->mTZServiceCallback:Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

    return-void
.end method
