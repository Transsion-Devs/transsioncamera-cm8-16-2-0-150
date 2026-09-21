.class Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ICameraControl$ICameraStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 2

    .line 2431
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Lcom/transsion/camera/app/BaseCameraActivity-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    return-void
.end method


# virtual methods
.method public onCameraStateChanged(I)V
    .registers 3

    .line 2434
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz v0, :cond_9

    .line 2435
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->onCameraStateChanged(I)V

    .line 2437
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz v0, :cond_12

    .line 2438
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateCameraState(I)V

    :cond_12
    const/4 v0, 0x3

    if-ne p1, v0, :cond_26

    .line 2441
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 2442
    iput v0, p1, Landroid/os/Message;->what:I

    .line 2443
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/BaseCameraActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_26
    const/4 v0, 0x6

    if-ne p1, v0, :cond_38

    .line 2445
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->getInstance()Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/algorithm/taintdetection/TaintAlgorithm;->algorithmSupport()Z

    move-result p1

    if-nez p1, :cond_38

    .line 2446
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$mshowLensDirtyTipIfNeed(Lcom/transsion/camera/app/BaseCameraActivity;)V

    :cond_38
    return-void
.end method

.method public onModeChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2453
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged oldModeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newModeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2454
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmSeparateItemArray(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    if-nez v0, :cond_46

    .line 2455
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_64

    .line 2456
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmSeparateItemArray(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_64

    .line 2458
    :cond_46
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 2459
    :cond_52
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_64

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_64

    .line 2460
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->loadLatestThumbnail(Z)V

    .line 2462
    :cond_64
    :goto_64
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mThumbnailTransitionManager:Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;

    if-eqz p1, :cond_6d

    .line 2463
    invoke-virtual {p1}, Lcom/transsion/camera/feature/thumbnailtransition/ThumbnailTransitionManager;->onModeChanged()V

    .line 2465
    :cond_6d
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_89

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmSeparateItemArray(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_89

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p1, :cond_89

    const/4 p2, 0x0

    .line 2466
    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI;->updateThumbnail(Landroid/graphics/Bitmap;)V

    .line 2468
    :cond_89
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p2, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    if-eqz p2, :cond_ab

    .line 2469
    iget-object p2, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    if-eqz p2, :cond_ab

    .line 2470
    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmSeparateItemArray(Lcom/transsion/camera/app/BaseCameraActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/BaseAppUI;->setSeparateCaptureNumber(I)V

    .line 2471
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$CameraStateCallbackImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->getSeparateCaptureNumber()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateCapturedNumber(I)V

    :cond_ab
    return-void
.end method
