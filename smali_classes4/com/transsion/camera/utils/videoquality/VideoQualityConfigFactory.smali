.class public abstract Lcom/transsion/camera/utils/videoquality/VideoQualityConfigFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final instance:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/videoquality/VideoQualityConfigFactory;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static createConfig()Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;
    .registers 1

    .line 23
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/videoquality/SprdVideoQualityConfig;

    invoke-direct {v0}, Lcom/transsion/camera/utils/videoquality/SprdVideoQualityConfig;-><init>()V

    return-object v0

    .line 26
    :cond_c
    new-instance v0, Lcom/transsion/camera/utils/videoquality/MtkVideoQualityConfig;

    invoke-direct {v0}, Lcom/transsion/camera/utils/videoquality/MtkVideoQualityConfig;-><init>()V

    return-object v0
.end method

.method public static getConfig()Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;
    .registers 3

    .line 12
    sget-object v0, Lcom/transsion/camera/utils/videoquality/VideoQualityConfigFactory;->instance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 13
    const-class v1, Lcom/transsion/camera/utils/videoquality/VideoQualityConfigFactory;

    monitor-enter v1

    .line 14
    :try_start_b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 15
    invoke-static {}, Lcom/transsion/camera/utils/videoquality/VideoQualityConfigFactory;->createConfig()Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1b

    :catchall_19
    move-exception v0

    goto :goto_1d

    .line 17
    :cond_1b
    :goto_1b
    monitor-exit v1

    goto :goto_1f

    :goto_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_19

    throw v0

    .line 19
    :cond_1f
    :goto_1f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/videoquality/VideoQualityConfig;

    return-object v0
.end method
