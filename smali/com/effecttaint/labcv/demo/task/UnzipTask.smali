.class public Lcom/effecttaint/labcv/demo/task/UnzipTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mResume:Z


# direct methods
.method public static synthetic $r8$lambda$DKR4UGGy139o1gAV4T-l75kV8LY(Lcom/effecttaint/labcv/demo/task/UnzipTask;Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/effecttaint/labcv/demo/task/UnzipTask;->lambda$execute$2(Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L4-NyPgQFr1k-SZwVeIZWE0MBs0(Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;Z)V
    .registers 2

    .line 59
    invoke-interface {p0, p1}, Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;->onEndTask(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$fUAUeBkG7-iwHGDFgHzWn7Vx_MM(Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;)V
    .registers 2

    const/4 v0, 0x0

    .line 63
    invoke-interface {p0, v0}, Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;->onEndTask(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "UnzipTask"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mResume:Z

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private doInBackground(Ljava/lang/String;)Z
    .registers 6

    .line 78
    iget-object p0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 81
    :cond_c
    invoke-interface {p0}, Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "assets"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/effecttaint/labcv/common/utils/FileUtils;->clearDir(Ljava/io/File;)Z

    .line 84
    :try_start_1e
    invoke-interface {p0}, Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 85
    new-instance v2, Lcom/effecttaint/labcv/core/effect/EffectResourceHelper;

    invoke-interface {p0}, Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/effecttaint/labcv/core/effect/EffectResourceHelper;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mTonesAssetSupport:Z

    if-nez p0, :cond_43

    .line 87
    const-string p0, "ModelResource_bundle"

    invoke-virtual {v2}, Lcom/effecttaint/labcv/core/effect/EffectResourceHelper;->getModelPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, p0, v3}, Lcom/effecttaint/labcv/common/utils/FileUtils;->copyAssetsContent(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :catch_41
    move-exception p0

    goto :goto_4e

    .line 89
    :cond_43
    :goto_43
    const-string p0, "LicenseBag_bundle"

    invoke-virtual {v2}, Lcom/effecttaint/labcv/core/effect/EffectResourceHelper;->getResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, p0, v2}, Lcom/effecttaint/labcv/common/utils/FileUtils;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_4c} :catch_41

    const/4 p0, 0x1

    return p0

    .line 92
    :goto_4e
    sget-object p1, Lcom/effecttaint/labcv/demo/task/UnzipTask;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "UnzipTask"

    invoke-static {p1, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method private synthetic lambda$execute$2(Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;Ljava/lang/String;)V
    .registers 5

    .line 54
    sget-object v0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Unzip execute thread"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    invoke-interface {p1}, Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    iget-boolean v1, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mResume:Z

    if-eqz v1, :cond_27

    .line 57
    invoke-direct {p0, p2}, Lcom/effecttaint/labcv/demo/task/UnzipTask;->doInBackground(Ljava/lang/String;)Z

    move-result p0

    if-eqz v0, :cond_3a

    .line 59
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda1;-><init>(Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_27
    if-eqz v0, :cond_3a

    .line 63
    new-instance p0, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda2;-><init>(Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3a
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .registers 5

    .line 47
    iget-object v0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;

    if-eqz v0, :cond_21

    .line 49
    invoke-interface {v0}, Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;->onStartTask()V

    .line 50
    iget-object v1, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_17

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 53
    :cond_17
    iget-object v1, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/effecttaint/labcv/demo/task/UnzipTask$$ExternalSyntheticLambda0;-><init>(Lcom/effecttaint/labcv/demo/task/UnzipTask;Lcom/effecttaint/labcv/demo/task/UnzipTask$IUnzipViewCallback;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_21
    return-void
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mResume:Z

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mResume:Z

    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_12

    .line 72
    iget-object v0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/effecttaint/labcv/demo/task/UnzipTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_12
    return-void
.end method
