.class Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)V
    .registers 2

    .line 12
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->-$$Nest$fgetmValue(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 16
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->-$$Nest$fgetmValue(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getPointXByValue(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->access$000(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_58

    .line 18
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;

    # getter for: Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsCollapseStatus:Z
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->access$100(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 19
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;

    # getter for: Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->access$200(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v2, v0

    neg-int v0, v2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    sub-int/2addr v0, v2

    const/16 v2, 0x1f4

    # invokes: Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V
    invoke-static {v1, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->access$300(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;II)V

    goto :goto_4a

    .line 21
    :cond_34
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;

    # getter for: Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->access$400(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v2, v0

    neg-int v0, v2

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    # invokes: Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V
    invoke-static {v1, v0, v2}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->access$500(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;II)V

    .line 23
    :goto_4a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->-$$Nest$fgetmValue(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItem(Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_58
    return-void
.end method
