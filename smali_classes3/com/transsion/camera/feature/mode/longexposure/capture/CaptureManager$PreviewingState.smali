.class Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$PreviewingState;
.super Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V
    .registers 4

    .line 317
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    .line 318
    const-string v0, "PreviewingState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Ljava/lang/String;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$PreviewingState;-><init>(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)V

    return-void
.end method


# virtual methods
.method protected onEntry()V
    .registers 1

    .line 323
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->onEntry()V

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmParamConfigurator(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ParamConfigurator;->captureReady()V

    return-void
.end method

.method public shutterClick()Z
    .registers 4

    .line 334
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fputmShutterClickTime(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;J)V

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCapturingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->entry()V

    const/4 p0, 0x1

    return p0
.end method

.method public shutterDown()V
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$PreviewingState;->this$0:Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;->-$$Nest$fgetmCapturingState(Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager;)Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/CaptureManager$BaseState;->shutterDown()V

    return-void
.end method
