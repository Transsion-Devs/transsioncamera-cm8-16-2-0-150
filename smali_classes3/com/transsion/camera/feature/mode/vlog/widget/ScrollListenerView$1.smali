.class Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastX:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, -0x80000000

    .line 59
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;->mLastX:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .line 63
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_29

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->-$$Nest$fgetmbTouched(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;)Z

    move-result v0

    if-nez v0, :cond_22

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;->mLastX:I

    if-ne v0, p1, :cond_22

    const/high16 p1, -0x80000000

    .line 67
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;->mLastX:I

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->-$$Nest$msetScrollState(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;I)V

    goto :goto_29

    .line 70
    :cond_22
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;->mLastX:I

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->-$$Nest$mrestartCheckStopTiming(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;)V

    :cond_29
    :goto_29
    return v1
.end method
