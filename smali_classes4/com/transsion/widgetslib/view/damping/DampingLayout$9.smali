.class Lcom/transsion/widgetslib/view/damping/DampingLayout$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/DampingLayout;->onEdgeEffect()V
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

    .line 489
    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;FF)V
    .registers 5

    .line 493
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$500(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 497
    :cond_9
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$500(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 498
    iget-object p3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;
    invoke-static {p3}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/graphics/Rect;

    move-result-object p3

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    .line 499
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarPullMinLen:I
    invoke-static {p2}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1400(Lcom/transsion/widgetslib/view/damping/DampingLayout;)I

    move-result p2

    if-gt p1, p2, :cond_3e

    .line 500
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mBarPullMinLen:I
    invoke-static {p2}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1400(Lcom/transsion/widgetslib/view/damping/DampingLayout;)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 502
    :cond_3e
    iget-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mViewScrollBar:Landroid/view/View;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$500(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;
    invoke-static {p2}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;
    invoke-static {p3}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$9;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    # getter for: Lcom/transsion/widgetslib/view/damping/DampingLayout;->mRect:Landroid/graphics/Rect;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->access$1300(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
