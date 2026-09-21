.class Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)V
    .registers 2

    .line 768
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 789
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string/jumbo v1, "video guide play, onCompleted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 790
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Z)V

    return-void
.end method

.method public onError(II)V
    .registers 6

    .line 813
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "video guide play, what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", extra: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 814
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Z)V

    return-void
.end method

.method public onInfo(I)V
    .registers 4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto :goto_36

    .line 804
    :cond_4
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video guide play, render start, mActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fgetmbActive(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 806
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fgetmbActive(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 807
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fgetmRootView(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/16 p1, 0x64

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    :cond_36
    :goto_36
    return-void
.end method

.method public onPaused()V
    .registers 3

    .line 783
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string/jumbo v1, "video guide play, onPaused"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 784
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Z)V

    return-void
.end method

.method public onStarted()V
    .registers 3

    .line 771
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string/jumbo v1, "video guide play, onStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 772
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Z)V

    return-void
.end method

.method public onStopped()V
    .registers 3

    .line 777
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string/jumbo v1, "video guide play, onStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 778
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI$5;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;->-$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/cutsame/VideoGuideUI;Z)V

    return-void
.end method
