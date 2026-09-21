.class Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;)V
    .registers 2

    .line 300
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->-$$Nest$fgetmRelease(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage discard the message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " after unInit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 308
    :cond_28
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_49

    const/16 v1, 0x65

    if-eq v0, v1, :cond_33

    return-void

    .line 313
    :cond_33
    invoke-static {}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->values()[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    .line 314
    invoke-static {}, Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;->values()[Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    aget-object p1, v1, p1

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->-$$Nest$monUIStateChanged(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;Lcom/transsion/camera/app/common/ui/IVideoUI$VideoUIState;)V

    return-void

    .line 310
    :cond_49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;->-$$Nest$mupdateRecordingTime(Lcom/transsion/camera/feature/mode/dualvideo/CommonDualVideoUI;)V

    return-void
.end method
