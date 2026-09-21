.class Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 407
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "demo play, onCompleted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$fputisPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;Z)V

    return-void
.end method

.method public onError(II)V
    .registers 6

    .line 429
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "demo play, what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", extra: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$fputisPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;Z)V

    .line 431
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$mstartPlayIfNeed(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;Z)V

    return-void
.end method

.method public onInfo(I)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_54

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$fgetmRootView(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-nez p1, :cond_c

    goto :goto_54

    .line 417
    :cond_c
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "demo play, render start, mPlayerAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$fgetmPlayerAnimation(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 419
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$fgetmOperationControl(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;

    move-result-object p1

    const/16 v0, 0x271b

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;->notifyActionToUI(I)V

    .line 420
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$fgetmPlayerAnimation(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$fgetmRootView(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/16 p1, 0x32

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    return-void

    .line 423
    :cond_49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$fgetmRootView(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_54
    :goto_54
    return-void
.end method

.method public onPaused()V
    .registers 3

    .line 401
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "demo play, onPaused"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 402
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$fputisPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;Z)V

    return-void
.end method

.method public onStarted()V
    .registers 3

    .line 389
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "demo play, onStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$fputisPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;Z)V

    return-void
.end method

.method public onStopped()V
    .registers 3

    .line 395
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "demo play, onStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->-$$Nest$fputisPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;Z)V

    return-void
.end method
