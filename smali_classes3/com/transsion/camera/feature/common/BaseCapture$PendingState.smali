.class abstract Lcom/transsion/camera/feature/common/BaseCapture$PendingState;
.super Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PendingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;)V
    .registers 4

    .line 598
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v0, 0x0

    .line 599
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected captureFinished()V
    .registers 3

    .line 618
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmPendingDestroy(Lcom/transsion/camera/feature/common/BaseCapture;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fputmPendingDestroy(Lcom/transsion/camera/feature/common/BaseCapture;Z)V

    .line 620
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmPendingAvailable(Lcom/transsion/camera/feature/common/BaseCapture;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fputmPendingAvailable(Lcom/transsion/camera/feature/common/BaseCapture;Z)V

    .line 622
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCaptureEnableState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void

    .line 624
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmIdleState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void

    .line 627
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCaptureEnableState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method

.method protected createStream()V
    .registers 2

    .line 604
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fputmPendingCreate(Lcom/transsion/camera/feature/common/BaseCapture;Z)V

    return-void
.end method

.method protected destroyStream()V
    .registers 2

    .line 614
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fputmPendingDestroy(Lcom/transsion/camera/feature/common/BaseCapture;Z)V

    return-void
.end method

.method protected onStreamAvailable()V
    .registers 2

    .line 609
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fputmPendingAvailable(Lcom/transsion/camera/feature/common/BaseCapture;Z)V

    return-void
.end method
