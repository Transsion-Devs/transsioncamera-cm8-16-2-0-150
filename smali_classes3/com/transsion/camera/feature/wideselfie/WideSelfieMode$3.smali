.class Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


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

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object v0

    if-nez v0, :cond_14

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$2200(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mWideSelfieUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 171
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$3;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->-$$Nest$fgetmWideSelfieUI(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/feature/wideselfie/WideSelfieUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/common/BaseUI;->notifyCameraOperateAction(I)V

    return-void
.end method
