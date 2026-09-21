.class Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;
.super Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicTraceHint"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)V
    .registers 3

    .line 361
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    .line 362
    const-string v0, "PicTraceHint"

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLeave()V
    .registers 3

    .line 367
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onLeave()V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableEnterTripodInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public onStatusUpdate(I)V
    .registers 5

    .line 386
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$BaseHint;->onStatusUpdate(I)V

    .line 387
    invoke-static {}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusUpdate ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne v0, p1, :cond_3c

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableEnterTripodInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_3c
    return-void
.end method

.method public tripodChanged(Ljava/lang/String;)V
    .registers 3

    .line 373
    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmTripodHelper(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;->tripodTipShow()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmTripodHelper(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/helper/TripodHelper;->updateTripodTip(Z)V

    .line 376
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableEnterTripodInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2d
    return-void

    .line 379
    :cond_2e
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 380
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI$PicTraceHint;->this$0:Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;->-$$Nest$fgetmStableEnterTripodInfo(Lcom/transsion/camera/feature/mode/longexposure/ui/HintUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method
