.class Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;)V
    .registers 2

    .line 875
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 878
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->-$$Nest$fgetmDelegate(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;)Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;->-$$Nest$fgetmProgress(Lcom/transsion/camera/feature/mode/vlog/player/VideoPlayer$ProgressListenerWrapper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/player/IVideoPlayer$IVideoProgressListener;->onProgressUpdate(I)V

    return-void
.end method
