.class public final Lcom/bytedance/ugc/recorder/camera/CameraLifeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isResume:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isResume()Z
    .registers 1

    .line 14
    iget-boolean p0, p0, Lcom/bytedance/ugc/recorder/camera/CameraLifeManager;->isResume:Z

    return p0
.end method

.method public final onPause()V
    .registers 2

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraLifeManager;->isResume:Z

    return-void
.end method

.method public final onResume()V
    .registers 2

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/ugc/recorder/camera/CameraLifeManager;->isResume:Z

    return-void
.end method
