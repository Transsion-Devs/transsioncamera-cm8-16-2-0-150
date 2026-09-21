.class Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->initFrames(Ljava/lang/String;JJILcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

.field final synthetic val$scrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;

.field final synthetic val$videoDuration:J


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;JLcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    iput-wide p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->val$videoDuration:J

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->val$scrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->state:I

    return-void
.end method


# virtual methods
.method public onScroll(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;ZIIII)V
    .registers 7

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->-$$Nest$fgetmItemFrameView(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;)Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->getFrameViewWidth()I

    move-result p1

    iget-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-static {p4}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->-$$Nest$fgetmBoxViewLayout(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    sub-int/2addr p1, p4

    const/4 p4, 0x0

    if-gez p3, :cond_23

    .line 150
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->-$$Nest$fgetmScrollView(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;)Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    move-result-object p1

    invoke-virtual {p1, p4, p4}, Landroid/view/View;->scrollTo(II)V

    move p3, p4

    goto :goto_2f

    :cond_23
    if-le p3, p1, :cond_2f

    .line 153
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->-$$Nest$fgetmScrollView(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;)Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;

    move-result-object p3

    invoke-virtual {p3, p1, p4}, Landroid/view/View;->scrollTo(II)V

    move p3, p1

    .line 156
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->-$$Nest$fgetmItemFrameView(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;)Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;->updateScrollX(I)V

    if-eqz p2, :cond_51

    .line 159
    iget-wide p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->val$videoDuration:J

    long-to-float p1, p1

    int-to-float p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->-$$Nest$fgetmItemFrameView(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;)Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    mul-float/2addr p1, p2

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->val$scrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;

    float-to-int p1, p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;->onScroll(I)V

    :cond_51
    return-void
.end method

.method public onScrollStateChanged(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;I)V
    .registers 5

    .line 121
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->state:I

    if-nez p2, :cond_1f

    .line 124
    iget-wide v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->val$videoDuration:J

    long-to-float p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->-$$Nest$fgetmItemFrameView(Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;)Lcom/transsion/camera/feature/mode/vlog/widget/ItemFrameView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float/2addr p2, p1

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->val$scrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;

    float-to-int p1, p2

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;->onScrollIdle(I)V

    :cond_1f
    return-void
.end method

.method public onTouchDown()V
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->val$scrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;->onTouchDown()V

    return-void
.end method

.method public onTouchUp()V
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$1;->val$scrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView$ScrollListener;->onTouchUp()V

    return-void
.end method
