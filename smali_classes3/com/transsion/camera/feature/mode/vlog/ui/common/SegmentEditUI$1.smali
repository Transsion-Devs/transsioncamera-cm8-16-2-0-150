.class Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->playVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hasScroll:Z

.field hasStarted:Z

.field isPlayBeforeSeek:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V
    .registers 2

    .line 722
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 723
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->isPlayBeforeSeek:Z

    const/4 p1, 0x0

    .line 724
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasStarted:Z

    .line 725
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasScroll:Z

    return-void
.end method


# virtual methods
.method public onScroll(I)V
    .registers 5

    .line 756
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmVideoView(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->isPlaying()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 757
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$mpausePlayIfNeed(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V

    .line 758
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmPlayPauseByScroll(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    .line 761
    :cond_17
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasScroll:Z

    .line 763
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmLastTimePos(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)I

    move-result v0

    if-eq v0, p1, :cond_42

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmPlayerManager(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmPlayerManager(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmVlogMediaItem(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->seekTo(II)V

    .line 765
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmLastTimePos(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;I)V

    :cond_42
    return-void
.end method

.method public onScrollIdle(I)V
    .registers 5

    .line 771
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectFrameView onScrollIdle, timePos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isPlayBeforeSeek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->isPlayBeforeSeek:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 774
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasStarted:Z

    if-nez v0, :cond_27

    return-void

    :cond_27
    const/4 v0, 0x0

    .line 778
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasStarted:Z

    .line 780
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmLastTimePos(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)I

    move-result v0

    if-eq v0, p1, :cond_53

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmPlayerManager(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 781
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmPlayerManager(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmVlogMediaItem(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->seekTo(II)V

    .line 782
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fputmLastTimePos(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;I)V

    .line 785
    :cond_53
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->isPlayBeforeSeek:Z

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmPlayerManager(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 786
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmPlayerManager(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/player/PlayerManager;->resumePlay()V

    .line 789
    :cond_68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$msetEnable(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    return-void
.end method

.method public onTouchDown()V
    .registers 4

    .line 729
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchDown, hasStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPlayPauseByScroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmPlayPauseByScroll(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 732
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasStarted:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmPlaying(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmPlayPauseByScroll(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 733
    :cond_4a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmVideoView(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/VideoView;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->isPlayBeforeSeek:Z

    const/4 v0, 0x1

    .line 734
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasStarted:Z

    :cond_59
    const/4 v0, 0x0

    .line 737
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasScroll:Z

    .line 738
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$msetEnable(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    return-void
.end method

.method public onTouchUp()V
    .registers 4

    .line 743
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchUp, hasScroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasScroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 744
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasScroll:Z

    if-nez v0, :cond_24

    .line 745
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$msetEnable(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;Z)V

    :cond_24
    const/4 v0, 0x0

    .line 747
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$1;->hasScroll:Z

    return-void
.end method
