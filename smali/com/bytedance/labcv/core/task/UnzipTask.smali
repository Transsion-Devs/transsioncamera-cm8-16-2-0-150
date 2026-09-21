.class public Lcom/bytedance/labcv/core/task/UnzipTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIR:Ljava/lang/String; = "bemakeup"

.field private static final MAX_RETRY_TIME:I = 0x5

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "UnzipTask"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/bytedance/labcv/core/task/UnzipTask;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;)V
    .registers 3

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/labcv/core/task/UnzipTask;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private tryCopyAssets(Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;Ljava/lang/String;)Z
    .registers 10

    .line 54
    invoke-interface {p1}, Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "assets"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bytedance/labcv/core/util/FileUtils;->clearDir(Ljava/io/File;)Z

    const/4 v1, 0x1

    .line 58
    :try_start_13
    sget-object v2, Lcom/bytedance/labcv/core/task/UnzipTask;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyAssets start in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 61
    invoke-interface {p1}, Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, p2, v0}, Lcom/bytedance/labcv/core/util/FileUtils;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyAssets end, elapseTime: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_5d} :catch_5e

    return v1

    :catch_5e
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    iget v0, p0, Lcom/bytedance/labcv/core/task/UnzipTask;->mRetryTime:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/labcv/core/task/UnzipTask;->mRetryTime:I

    .line 73
    sget-object v0, Lcom/bytedance/labcv/core/task/UnzipTask;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyAssets mRetryTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/labcv/core/task/UnzipTask;->mRetryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/bytedance/labcv/core/task/UnzipTask;->mRetryTime:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_89

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/core/task/UnzipTask;->tryCopyAssets(Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 78
    :cond_89
    invoke-static {}, Lcom/transsion/camera/utils/dfx/mgr/ExManager;->get()Lcom/transsion/camera/utils/dfx/inter/IExDetection;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/utils/dfx/inter/ICamError;->onCamError(I)V

    .line 79
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->onCamError(I)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/bytedance/labcv/core/task/UnzipTask;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;

    if-nez v0, :cond_d

    .line 48
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_d
    const/4 v1, 0x0

    .line 50
    aget-object p1, p1, v1

    invoke-direct {p0, v0, p1}, Lcom/bytedance/labcv/core/task/UnzipTask;->tryCopyAssets(Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 20
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/core/task/UnzipTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 2

    .line 97
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 98
    iget-object p0, p0, Lcom/bytedance/labcv/core/task/UnzipTask;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;

    if-eqz p0, :cond_14

    .line 100
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;->onEndTask(Z)V

    :cond_14
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/core/task/UnzipTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/bytedance/labcv/core/task/UnzipTask;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;

    if-eqz v0, :cond_d

    .line 90
    invoke-interface {v0}, Lcom/bytedance/labcv/core/task/UnzipTask$IUnzipViewCallback;->onStartTask()V

    .line 92
    :cond_d
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
