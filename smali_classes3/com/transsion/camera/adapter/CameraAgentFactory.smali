.class public abstract Lcom/transsion/camera/adapter/CameraAgentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

.field private static sCameraAgentClientCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraAgentFactory"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraAgentFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static declared-synchronized createCameraAgent(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/transsion/camera/adapter/CameraAgentFactory;

    monitor-enter v0

    .line 14
    :try_start_3
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 15
    new-instance v1, Lcom/transsion/camera/adapter/CameraAgent2Impl;

    invoke-direct {v1, p0}, Lcom/transsion/camera/adapter/CameraAgent2Impl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;

    .line 16
    sput v2, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgentClientCount:I

    goto :goto_19

    :catchall_12
    move-exception p0

    goto :goto_1b

    .line 18
    :cond_14
    sget p0, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgentClientCount:I

    add-int/2addr p0, v2

    sput p0, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgentClientCount:I
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_12

    .line 20
    :goto_19
    monitor-exit v0

    return-void

    :goto_1b
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_12

    throw p0
.end method

.method public static declared-synchronized getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;
    .registers 2

    const-class v0, Lcom/transsion/camera/adapter/CameraAgentFactory;

    monitor-enter v0

    .line 23
    :try_start_3
    sget-object v1, Lcom/transsion/camera/adapter/CameraAgentFactory;->sCameraAgent:Lcom/transsion/camera/adapter/CameraAgent;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method
