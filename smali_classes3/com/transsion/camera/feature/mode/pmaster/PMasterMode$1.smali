.class Lcom/transsion/camera/feature/mode/pmaster/PMasterMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IModeFeatureConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 558
    :cond_4
    instance-of v0, p1, Lcom/transsion/camera/app/common/IModeFeatureConfig;

    if-eqz v0, :cond_17

    .line 559
    check-cast p1, Lcom/transsion/camera/app/common/IModeFeatureConfig;

    .line 560
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode$1;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IModeFeatureConfig;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->access$200(Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 549
    const-string v0, "front"

    goto :goto_11

    :cond_f
    const-string v0, "back"

    .line 550
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    .registers 2

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->access$000(Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 543
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CameraMode;->getFrontZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->access$100(Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0

    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode$1;->this$0:Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode;->getBackZoomConfig()Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 567
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/PMasterMode$1;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
