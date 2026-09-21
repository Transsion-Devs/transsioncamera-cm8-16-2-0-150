.class Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/player/IPlayerManager$IPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V
    .registers 2

    .line 938
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 3

    .line 970
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment edit play, onCompleted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$mupdatePlayViewIcon(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 972
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 973
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmPlayPauseByScroll(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    return-void
.end method

.method public onError(II)V
    .registers 6

    .line 993
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment edit play, onError, what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", extra: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 994
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->exit(Z)V

    .line 995
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 996
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmPlayPauseByScroll(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    return-void
.end method

.method public onInfo(I)V
    .registers 4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    return-void

    .line 982
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmRenderStart(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 983
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmVideoCover(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmNeedPauseAfterRenderStart(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 985
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$mpausePlayIfNeed(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V

    .line 986
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmNeedPauseAfterRenderStart(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 988
    :cond_28
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "segment edit play, render start, mActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmbActive(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPaused()V
    .registers 3

    .line 953
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment edit play, onPaused"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$mupdatePlayViewIcon(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    return-void
.end method

.method public onStarted()V
    .registers 4

    .line 941
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment edit play, onStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$mupdatePlayViewIcon(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 943
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 944
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmPlayPauseByScroll(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 945
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmPaused(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$mpausePlayIfNeed(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V

    .line 948
    :cond_27
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmSelectFrameView(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->setEnabled(Z)V

    return-void
.end method

.method public onStopped()V
    .registers 3

    .line 960
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "segment edit play, onStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$mupdatePlayViewIcon(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 962
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 963
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmRenderStart(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 964
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmNeedPauseAfterRenderStart(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 965
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$3;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmPlayPauseByScroll(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    return-void
.end method
