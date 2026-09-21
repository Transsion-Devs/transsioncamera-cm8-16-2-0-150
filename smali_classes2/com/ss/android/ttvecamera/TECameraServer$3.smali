.class Lcom/ss/android/ttvecamera/TECameraServer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->open(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings;Lcom/bytedance/bpea/basics/Cert;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;)V
    .registers 2

    .line 420
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5d

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_5d

    .line 423
    const-string v0, "TECameraServer"

    const-string v1, "close camera in main thread"

    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mIsForceCloseCamera:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 425
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-virtual {v0, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    .line 426
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->cachedClosePrivacyCert:Lcom/bytedance/bpea/basics/Cert;
    invoke-static {v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$400(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/bytedance/bpea/basics/Cert;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TECameraBase;->forceCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V

    .line 427
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->updateCameraState(I)V

    goto :goto_4f

    .line 429
    :cond_46
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->cachedClosePrivacyCert:Lcom/bytedance/bpea/basics/Cert;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$400(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/bytedance/bpea/basics/Cert;

    move-result-object v1

    # invokes: Lcom/ss/android/ttvecamera/TECameraServer;->realCloseCamera(Lcom/bytedance/bpea/basics/Cert;)V
    invoke-static {v0, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->access$500(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/bytedance/bpea/basics/Cert;)V

    .line 431
    :goto_4f
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # invokes: Lcom/ss/android/ttvecamera/TECameraServer;->decreaseClientCount()I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$600(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v0

    if-nez v0, :cond_70

    .line 432
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # invokes: Lcom/ss/android/ttvecamera/TECameraServer;->destroy()I
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$700(Lcom/ss/android/ttvecamera/TECameraServer;)I

    return-void

    .line 434
    :cond_5d
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v0

    if-ne v0, v1, :cond_70

    .line 435
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$3;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$800(Lcom/ss/android/ttvecamera/TECameraServer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_70
    return-void
.end method
