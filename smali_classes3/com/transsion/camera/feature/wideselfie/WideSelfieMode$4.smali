.class Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;


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

    .line 176
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamReady()V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$2300(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onStreamReady"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;->readyUI()V

    .line 183
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfiePreview(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$4;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfiePreview(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfiePreview;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BasePreview;->readyUI()V

    :cond_2d
    return-void
.end method
