.class Lcom/ss/android/medialib/camera/Camera2$10;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


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

    .line 1198
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;Z)V
    .registers 8

    .line 1201
    iget-object v0, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # getter for: Lcom/ss/android/medialib/camera/Camera2;->mState:I
    invoke-static {v0}, Lcom/ss/android/medialib/camera/Camera2;->access$1800(Lcom/ss/android/medialib/camera/Camera2;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v1, :cond_56

    const/4 p2, 0x3

    if-eq v0, v2, :cond_2e

    if-eq v0, p2, :cond_13

    goto/16 :goto_82

    .line 1240
    :cond_13
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_23

    .line 1241
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_82

    .line 1242
    :cond_23
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mState:I
    invoke-static {p1, v4}, Lcom/ss/android/medialib/camera/Camera2;->access$1802(Lcom/ss/android/medialib/camera/Camera2;I)I

    .line 1243
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->captureStillPicture()V
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera2;->access$1900(Lcom/ss/android/medialib/camera/Camera2;)V

    return-void

    .line 1229
    :cond_2e
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_4b

    .line 1230
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3f

    goto :goto_4b

    .line 1233
    :cond_3f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_82

    .line 1234
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mState:I
    invoke-static {p0, p2}, Lcom/ss/android/medialib/camera/Camera2;->access$1802(Lcom/ss/android/medialib/camera/Camera2;I)I

    return-void

    .line 1231
    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->captureStillPicture()V
    invoke-static {p1}, Lcom/ss/android/medialib/camera/Camera2;->access$1900(Lcom/ss/android/medialib/camera/Camera2;)V

    .line 1232
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mState:I
    invoke-static {p0, v4}, Lcom/ss/android/medialib/camera/Camera2;->access$1802(Lcom/ss/android/medialib/camera/Camera2;I)I

    return-void

    .line 1207
    :cond_56
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a5

    .line 1208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_67

    goto :goto_a5

    .line 1210
    :cond_67
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v4, v1, :cond_83

    .line 1211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_74

    goto :goto_83

    :cond_74
    if-eqz p2, :cond_82

    .line 1222
    const-string p1, "Camera2"

    const-string p2, "No Focus"

    invoke-static {p1, p2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->captureStillPicture()V
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera2;->access$1900(Lcom/ss/android/medialib/camera/Camera2;)V

    :cond_82
    :goto_82
    return-void

    .line 1213
    :cond_83
    :goto_83
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_9a

    .line 1215
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_94

    goto :goto_9a

    .line 1219
    :cond_94
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->runPrecaptureSequence()V
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera2;->access$2000(Lcom/ss/android/medialib/camera/Camera2;)V

    return-void

    .line 1216
    :cond_9a
    :goto_9a
    iget-object p1, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # setter for: Lcom/ss/android/medialib/camera/Camera2;->mState:I
    invoke-static {p1, v4}, Lcom/ss/android/medialib/camera/Camera2;->access$1802(Lcom/ss/android/medialib/camera/Camera2;I)I

    .line 1217
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->captureStillPicture()V
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera2;->access$1900(Lcom/ss/android/medialib/camera/Camera2;)V

    return-void

    .line 1209
    :cond_a5
    :goto_a5
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera2$10;->this$0:Lcom/ss/android/medialib/camera/Camera2;

    # invokes: Lcom/ss/android/medialib/camera/Camera2;->captureStillPicture()V
    invoke-static {p0}, Lcom/ss/android/medialib/camera/Camera2;->access$1900(Lcom/ss/android/medialib/camera/Camera2;)V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    const/4 p1, 0x1

    .line 1261
    invoke-direct {p0, p3, p1}, Lcom/ss/android/medialib/camera/Camera2$10;->process(Landroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    const/4 p1, 0x0

    .line 1254
    invoke-direct {p0, p3, p1}, Lcom/ss/android/medialib/camera/Camera2$10;->process(Landroid/hardware/camera2/CaptureResult;Z)V

    return-void
.end method
