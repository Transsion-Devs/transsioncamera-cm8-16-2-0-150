.class public abstract Lcom/transsion/camera/featurelibs/aicommon/AICommon;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AICommon"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/aicommon/AICommon;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/transsion/camera/featurelibs/aicommon/AICommon;

    monitor-enter v0

    if-nez p0, :cond_10

    .line 28
    :try_start_5
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/AICommon;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init context is null!"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    .line 29
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_23

    .line 31
    :cond_10
    :try_start_10
    sget-boolean v1, Lcom/transsion/camera/featurelibs/aicommon/AICommon;->sInitialized:Z

    if-nez v1, :cond_21

    .line 32
    invoke-static {p0}, Lcom/gallery20/base/base_app/BaseSdkKt;->initBaseSdk(Landroid/content/Context;)V

    .line 33
    sget-object p0, Lcom/transsion/camera/featurelibs/aicommon/AICommon;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initBaseSdk"

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 34
    sput-boolean p0, Lcom/transsion/camera/featurelibs/aicommon/AICommon;->sInitialized:Z
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_e

    .line 36
    :cond_21
    monitor-exit v0

    return-void

    :goto_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_e

    throw p0
.end method
