.class Lcom/transsion/camera/feature/common/BaseCapture$CaptureStoppingState;
.super Lcom/transsion/camera/feature/common/BaseCapture$PendingState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/BaseCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureStoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/common/BaseCapture;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/common/BaseCapture;)V
    .registers 4

    .line 673
    iput-object p1, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStoppingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    .line 674
    const-string v0, "StoppingCaptureState"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;-><init>(Lcom/transsion/camera/feature/common/BaseCapture;Ljava/lang/String;Lcom/transsion/camera/feature/common/BaseCapture-IA;)V

    return-void
.end method


# virtual methods
.method protected captureFail()V
    .registers 4

    .line 679
    invoke-static {}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureFail mPendingDestroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStoppingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {v2}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmPendingDestroy(Lcom/transsion/camera/feature/common/BaseCapture;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$PendingState;->captureFinished()V

    return-void
.end method

.method protected startSaving()V
    .registers 1

    .line 685
    iget-object p0, p0, Lcom/transsion/camera/feature/common/BaseCapture$CaptureStoppingState;->this$0:Lcom/transsion/camera/feature/common/BaseCapture;

    invoke-static {p0}, Lcom/transsion/camera/feature/common/BaseCapture;->-$$Nest$fgetmCaptureSavingState(Lcom/transsion/camera/feature/common/BaseCapture;)Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/common/BaseCapture$AbstractState;->entry()V

    return-void
.end method
