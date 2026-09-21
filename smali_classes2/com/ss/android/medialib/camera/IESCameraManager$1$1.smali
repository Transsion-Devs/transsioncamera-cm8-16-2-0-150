.class Lcom/ss/android/medialib/camera/IESCameraManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/camera/provider/ICameraProvider$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/IESCameraManager$1;->onOpenGLCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/IESCameraManager$1;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable()V
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    iget-object v0, v0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mOnFrameRefreshListener:Lcom/ss/android/medialib/camera/IESCameraManager$OnFrameRefreshListener;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$200(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraManager$OnFrameRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 104
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    iget-object v0, v0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mOnFrameRefreshListener:Lcom/ss/android/medialib/camera/IESCameraManager$OnFrameRefreshListener;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$200(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraManager$OnFrameRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ss/android/medialib/camera/IESCameraManager$OnFrameRefreshListener;->onFrameRefresh()V

    .line 107
    :cond_15
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    iget-object v0, v0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # ++operator for: Lcom/ss/android/medialib/camera/IESCameraManager;->miFrameCount:I
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$304(Lcom/ss/android/medialib/camera/IESCameraManager;)I

    .line 108
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    iget-object v0, v0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->miFrameCount:I
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$300(Lcom/ss/android/medialib/camera/IESCameraManager;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_87

    .line 109
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    iget-object v0, v0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mlCurTimeMS:J
    invoke-static {v0, v1, v2}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$402(Lcom/ss/android/medialib/camera/IESCameraManager;J)J

    .line 110
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    iget-object v0, v0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mlCurTimeMS:J
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$400(Lcom/ss/android/medialib/camera/IESCameraManager;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    iget-object v2, v2, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mlLastTimeMS:J
    invoke-static {v2}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$500(Lcom/ss/android/medialib/camera/IESCameraManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x46ea6000    # 30000.0f

    div-float/2addr v1, v0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Render FPS = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IESCameraManager"

    invoke-static {v2, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    iget-object v0, v0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mlCurTimeMS:J
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$400(Lcom/ss/android/medialib/camera/IESCameraManager;)J

    move-result-wide v2

    # setter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mlLastTimeMS:J
    invoke-static {v0, v2, v3}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$502(Lcom/ss/android/medialib/camera/IESCameraManager;J)J

    .line 113
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    iget-object v0, v0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    const/4 v2, 0x0

    # setter for: Lcom/ss/android/medialib/camera/IESCameraManager;->miFrameCount:I
    invoke-static {v0, v2}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$302(Lcom/ss/android/medialib/camera/IESCameraManager;I)I

    .line 114
    iget-object v0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    iget-object v0, v0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mOnFPSUpdateListener:Lcom/ss/android/medialib/camera/IESCameraManager$OnFPSUpdateListener;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$600(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraManager$OnFPSUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 115
    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1$1;->this$1:Lcom/ss/android/medialib/camera/IESCameraManager$1;

    iget-object p0, p0, Lcom/ss/android/medialib/camera/IESCameraManager$1;->this$0:Lcom/ss/android/medialib/camera/IESCameraManager;

    # getter for: Lcom/ss/android/medialib/camera/IESCameraManager;->mOnFPSUpdateListener:Lcom/ss/android/medialib/camera/IESCameraManager$OnFPSUpdateListener;
    invoke-static {p0}, Lcom/ss/android/medialib/camera/IESCameraManager;->access$600(Lcom/ss/android/medialib/camera/IESCameraManager;)Lcom/ss/android/medialib/camera/IESCameraManager$OnFPSUpdateListener;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/ss/android/medialib/camera/IESCameraManager$OnFPSUpdateListener;->onFPSUpdateListener(F)V

    :cond_87
    return-void
.end method
