.class public Lcom/transsion/nvstream/NVStreamAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/nvstream/NVStreamAlgorithm$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

.field private static sCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "NVStreamAlgorithm"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/nvstream/NVStreamAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 13
    sput v0, Lcom/transsion/nvstream/NVStreamAlgorithm;->sCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/transsion/nvstream/NVStreamAlgorithm;
    .registers 1

    .line 23
    invoke-static {}, Lcom/transsion/nvstream/NVStreamAlgorithm$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/transsion/nvstream/NVStreamAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method private initEffectSdkContext(Landroid/content/Context;)V
    .registers 3

    .line 64
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object p0

    sput-object p0, Lcom/transsion/nvstream/NVStreamAlgorithm;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    if-nez p0, :cond_15

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "assets:/meishesdk.lic"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object p0

    sput-object p0, Lcom/transsion/nvstream/NVStreamAlgorithm;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    :cond_15
    return-void
.end method

.method private initStreamingContext(Landroid/content/Context;)V
    .registers 3

    .line 56
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object p0

    if-nez p0, :cond_10

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "assets:/meishesdk.lic"

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    :cond_10
    return-void
.end method


# virtual methods
.method public declared-synchronized destroyNVStreamingContext()V
    .registers 4

    monitor-enter p0

    .line 35
    :try_start_1
    sget-object v0, Lcom/transsion/nvstream/NVStreamAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyNVStreamingContext current sCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/transsion/nvstream/NVStreamAlgorithm;->sCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 36
    sget v1, Lcom/transsion/nvstream/NVStreamAlgorithm;->sCount:I

    if-lez v1, :cond_24

    add-int/lit8 v1, v1, -0x1

    .line 37
    sput v1, Lcom/transsion/nvstream/NVStreamAlgorithm;->sCount:I

    goto :goto_24

    :catchall_22
    move-exception v0

    goto :goto_3d

    .line 39
    :cond_24
    :goto_24
    sget v1, Lcom/transsion/nvstream/NVStreamAlgorithm;->sCount:I

    if-nez v1, :cond_3b

    .line 40
    const-string v1, "destroyNVStreamingContext start."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 41
    sput-object v1, Lcom/transsion/nvstream/NVStreamAlgorithm;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    .line 42
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->close()V

    .line 43
    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->close()V

    .line 44
    const-string v1, "destroyNVStreamingContext end."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_22

    .line 46
    :cond_3b
    monitor-exit p0

    return-void

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_22

    throw v0
.end method

.method public declared-synchronized getNvsEffectSdkContext(Landroid/content/Context;)Lcom/meicam/effect/sdk/NvsEffectSdkContext;
    .registers 3

    monitor-enter p0

    .line 49
    :try_start_1
    sget-object v0, Lcom/transsion/nvstream/NVStreamAlgorithm;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    if-nez v0, :cond_b

    .line 50
    invoke-virtual {p0, p1}, Lcom/transsion/nvstream/NVStreamAlgorithm;->initStreamAndEffectSDK(Landroid/content/Context;)V

    goto :goto_b

    :catchall_9
    move-exception p1

    goto :goto_f

    .line 52
    :cond_b
    :goto_b
    sget-object p1, Lcom/transsion/nvstream/NVStreamAlgorithm;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_9

    monitor-exit p0

    return-object p1

    :goto_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_9

    throw p1
.end method

.method public declared-synchronized initStreamAndEffectSDK(Landroid/content/Context;)V
    .registers 4

    monitor-enter p0

    .line 27
    :try_start_1
    sget-object v0, Lcom/transsion/nvstream/NVStreamAlgorithm;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initStreamAndEffectSDK start."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 28
    sget v1, Lcom/transsion/nvstream/NVStreamAlgorithm;->sCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/transsion/nvstream/NVStreamAlgorithm;->sCount:I

    .line 29
    invoke-direct {p0, p1}, Lcom/transsion/nvstream/NVStreamAlgorithm;->initStreamingContext(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/nvstream/NVStreamAlgorithm;->initEffectSdkContext(Landroid/content/Context;)V

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initStreamAndEffectSDK end sCount "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/transsion/nvstream/NVStreamAlgorithm;->sCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 32
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method
