.class Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll(Lcom/google/android/material/appbar/AppBarLayout;Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)V
    .registers 2

    .line 2263
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$2;->this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .registers 4

    .line 2266
    iget-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$2;->this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    # getter for: Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    invoke-static {p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->access$000(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p1

    if-eqz p1, :cond_2d

    const/4 p1, 0x0

    if-nez p2, :cond_1f

    .line 2268
    iget-object p2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$2;->this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    # getter for: Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    invoke-static {p2}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->access$000(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollEdgeReached(Z)V

    .line 2269
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$2;->this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    # getter for: Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->access$000(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollFarEdgeReached(Z)V

    return-void

    .line 2271
    :cond_1f
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$2;->this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    # getter for: Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->mOverScrollDecor:Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->access$000(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->notifyNestedScrollEdgeReached(Z)V

    .line 2272
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    const/4 p0, 0x0

    throw p0

    :cond_2d
    return-void
.end method
