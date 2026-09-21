.class Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/ICaptureListener;
.implements Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener;
.implements Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseHint"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;Ljava/lang/String;)V
    .registers 3

    .line 171
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final entry()V
    .registers 4

    .line 176
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmCurrentHint(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmCurrentHint(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->mName:Ljava/lang/String;

    goto :goto_21

    :cond_1f
    const-string v2, ""

    :goto_21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmCurrentHint(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    move-result-object v0

    if-eq v0, p0, :cond_56

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmCurrentHint(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmCurrentHint(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onLeave()V

    .line 182
    :cond_4e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fputmCurrentHint(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;)V

    .line 183
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onEntry()V

    :cond_56
    return-void
.end method

.method public onCaptureCancel()V
    .registers 1

    return-void
.end method

.method public onCaptureEnd()V
    .registers 1

    return-void
.end method

.method public onCaptureFail()V
    .registers 1

    return-void
.end method

.method public onCaptureStart()V
    .registers 1

    return-void
.end method

.method public onCaptureStop()V
    .registers 1

    return-void
.end method

.method protected onEntry()V
    .registers 1

    return-void
.end method

.method protected onLeave()V
    .registers 1

    return-void
.end method

.method public onStarSearched(I)V
    .registers 2

    return-void
.end method

.method public onStatusUpdate(I)V
    .registers 2

    return-void
.end method

.method public tripodChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
