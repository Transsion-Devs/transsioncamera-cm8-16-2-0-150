.class Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$4;
.super Lcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll(Z)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/View;)V
    .registers 3

    .line 2311
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$4;->this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-direct {p0, p2}, Lcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isInAbsoluteEnd()Z
    .registers 2

    .line 2319
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$4;->this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isInAbsoluteStart()Z
    .registers 2

    .line 2314
    iget-object p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$4;->this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
