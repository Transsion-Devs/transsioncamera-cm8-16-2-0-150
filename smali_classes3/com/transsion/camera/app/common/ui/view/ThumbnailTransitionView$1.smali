.class Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView$1;->this$0:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 4

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView$1;->this$0:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 45
    invoke-static {}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doFrame    mIsPlaying = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView$1;->this$0:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->-$$Nest$fgetmIsPlaying(Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView$1;->this$0:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->-$$Nest$fgetmIsPlaying(Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 47
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView$1;->this$0:Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->-$$Nest$fgetmFrameCallback(Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;)Landroid/view/Choreographer$FrameCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    .line 49
    :cond_39
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->cancelVipPauseTranSched(I)V

    const/4 p0, 0x0

    .line 50
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method
