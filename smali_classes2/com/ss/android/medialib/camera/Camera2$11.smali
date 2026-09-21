.class Lcom/ss/android/medialib/camera/Camera2$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/camera/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/Camera2;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera2;)V
    .registers 2

    .line 1265
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$11;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1268
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$11;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCurrentAFState:I
    invoke-static {v0}, Lcom/ss/android/medialib/camera/Camera2;->access$1000(Lcom/ss/android/medialib/camera/Camera2;)I

    move-result v0

    if-eqz v0, :cond_20

    .line 1269
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$11;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    const/4 v1, 0x0

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mCurrentAFState:I
    invoke-static {v0, v1}, Lcom/ss/android/medialib/camera/Camera2;->access$1002(Lcom/ss/android/medialib/camera/Camera2;I)I

    .line 1270
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$11;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mFocusTryCount:I
    invoke-static {v0, v1}, Lcom/ss/android/medialib/camera/Camera2;->access$902(Lcom/ss/android/medialib/camera/Camera2;I)I

    .line 1271
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$11;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v0}, Lcom/ss/android/medialib/camera/Camera2;->access$600(Lcom/ss/android/medialib/camera/Camera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1272
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$11;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    invoke-virtual {p0}, Lcom/ss/android/medialib/camera/Camera2;->cancelAutoFocus()V

    :cond_20
    return-void
.end method
