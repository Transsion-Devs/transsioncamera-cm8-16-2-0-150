.class Lcom/transsion/camera/feature/common/BaseCapture$CaptureEnableState;
.super Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureEnableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .registers 4

    .line 511
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureEnableState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    .line 512
    const-string v0, "CaptureAvailableState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture-IA;)V

    return-void
.end method


# virtual methods
.method protected shutterClick()V
    .registers 1

    .line 517
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureEnableState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCaptureStartingState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method
