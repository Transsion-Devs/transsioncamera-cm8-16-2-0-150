.class Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/wideselfie/IWideSelfieCapture$IDirectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V
    .registers 2

    .line 212
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private shouldExchangeDirection()Z
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$2700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    .line 227
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_14

    return v1

    .line 230
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$2800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    .line 231
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_34

    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_35

    :cond_34
    return v1

    :cond_35
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onDirectionUpdate(I)V
    .registers 4

    .line 215
    invoke-direct {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->shouldExchangeDirection()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    move p1, v0

    goto :goto_f

    :cond_c
    if-ne p1, v0, :cond_f

    move p1, v1

    .line 222
    :cond_f
    :goto_f
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$6;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->onDirectionUpdate(I)V

    return-void
.end method
