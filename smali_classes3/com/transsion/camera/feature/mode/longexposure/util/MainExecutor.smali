.class public Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sInstance:Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$mCBpKSr8MyzXnyfp4tjJL1_jj00(Ljava/lang/Runnable;)V
    .registers 3

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "execute start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 42
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 43
    const-string p0, "execute end"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 23
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->sInstance:Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private doExecute(Ljava/lang/Runnable;)V
    .registers 3

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 2

    if-nez p0, :cond_a

    .line 33
    sget-object p0, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "runnable is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 36
    :cond_a
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->sInstance:Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->doExecute(Ljava/lang/Runnable;)V

    return-void
.end method
