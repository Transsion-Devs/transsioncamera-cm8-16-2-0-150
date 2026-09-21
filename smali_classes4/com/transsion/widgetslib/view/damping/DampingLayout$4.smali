.class Lcom/transsion/widgetslib/view/damping/DampingLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/DampingLayout;->abortRefreshing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->computeVerticalScrollRange()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3d

    .line 307
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mAnimScrollBarFade:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/animation/ValueAnimator;

    move-result-object v1

    # invokes: Lcom/transsion/widgetslib/view/damping/DampingLayout;->cancelAnim(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$400(Lcom/transsion/widgetslib/view/damping/DampingLayout;Landroid/animation/Animator;)V

    .line 308
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$500(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$500(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_38

    .line 309
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$500(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 311
    :cond_38
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$4;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # invokes: Lcom/transsion/widgetslib/view/damping/DampingLayout;->sendScrollBarFadeMsg()V
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$600(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V

    :cond_3d
    return-void
.end method
