.class public Lcom/transsion/camera/utils/manager/PreReadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/manager/PreReadManager$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private volatile mNeedInterrupt:Z

.field private final mPreReadExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile mPreReadFuture:Ljava/util/concurrent/Future;


# direct methods
.method public static synthetic $r8$lambda$XnLbbro-91DhAPeDZBugtL-zPo8(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 24
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "mali-so-pre-read"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedInterrupt(Lcom/transsion/camera/utils/manager/PreReadManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mNeedInterrupt:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/utils/manager/PreReadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreReadManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/manager/PreReadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mNeedInterrupt:Z

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/manager/PreReadManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/utils/manager/PreReadManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mPreReadExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mPreReadFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/manager/PreReadManager-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/utils/manager/PreReadManager;-><init>()V

    return-void
.end method

.method private buildPreReadTask(Ljava/lang/String;I)Ljava/lang/Runnable;
    .registers 4

    .line 55
    new-instance v0, Lcom/transsion/camera/utils/manager/PreReadManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/camera/utils/manager/PreReadManager$1;-><init>(Lcom/transsion/camera/utils/manager/PreReadManager;ILjava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/transsion/camera/utils/manager/PreReadManager;
    .registers 1

    .line 28
    invoke-static {}, Lcom/transsion/camera/utils/manager/PreReadManager$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/camera/utils/manager/PreReadManager;

    move-result-object v0

    return-object v0
.end method

.method private getMaliSoPathByPlatform()Ljava/lang/String;
    .registers 3

    .line 41
    sget-object p0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_a
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/vendor/lib64/egl/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/libGLES_mali.so"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 48
    :cond_2b
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p0

    if-eqz p0, :cond_34

    .line 49
    const-string p0, "/vendor/lib64/egl/libGLES_mali.so"

    return-object p0

    .line 51
    :cond_34
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public doPreReadMaliSO(I)V
    .registers 5

    if-gtz p1, :cond_a

    .line 96
    sget-object p0, Lcom/transsion/camera/utils/manager/PreReadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doPreRead invalid size."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 100
    :cond_a
    invoke-direct {p0}, Lcom/transsion/camera/utils/manager/PreReadManager;->getMaliSoPathByPlatform()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 102
    sget-object p0, Lcom/transsion/camera/utils/manager/PreReadManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "doPreRead skip. invalid so path"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_1c
    iget-object v1, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mPreReadFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mPreReadFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 107
    iget-object v1, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mPreReadFuture:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2e
    const/4 v1, 0x0

    .line 110
    iput-boolean v1, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mNeedInterrupt:Z

    const/high16 v1, 0x100000

    mul-int/2addr p1, v1

    .line 112
    iget-object v1, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mPreReadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/utils/manager/PreReadManager;->buildPreReadTask(Ljava/lang/String;I)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mPreReadFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method public setNeedInterrupt(Z)V
    .registers 2

    .line 116
    iput-boolean p1, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mNeedInterrupt:Z

    if-eqz p1, :cond_12

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/utils/manager/PreReadManager;->mPreReadFuture:Ljava/util/concurrent/Future;

    if-eqz p0, :cond_12

    .line 119
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    .line 120
    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_12
    return-void
.end method
