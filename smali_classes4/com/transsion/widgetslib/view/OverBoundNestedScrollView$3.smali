.class Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


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

.field final synthetic val$appBarHeight:I

.field final synthetic val$appBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field final synthetic val$appBarLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/ViewGroup$LayoutParams;ILcom/google/android/material/appbar/AppBarLayout;)V
    .registers 5

    .line 2287
    iput-object p1, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->this$0:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    iput-object p2, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->val$appBarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput p3, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->val$appBarHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverScrollUpdated(F)V
    .registers 3

    const/4 v0, 0x0

    .line 2290
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_8

    return-void

    .line 2291
    :cond_8
    iget-object v0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->val$appBarLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget p0, p0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView$3;->val$appBarHeight:I

    float-to-int p1, p1

    add-int/2addr p0, p1

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p0, 0x0

    .line 2292
    throw p0
.end method
