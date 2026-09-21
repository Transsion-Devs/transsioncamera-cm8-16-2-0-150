.class final Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartScrollChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmartScrollChangedListener"
.end annotation


# instance fields
.field private final mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V
    .registers 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartScrollChangedListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 7

    .line 115
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartScrollChangedListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    if-nez p0, :cond_b

    return-void

    .line 120
    :cond_b
    # invokes: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollRange()I
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v0

    .line 121
    # invokes: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollOffset()I
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$100(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v1

    .line 122
    # invokes: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollExtent()I
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$200(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 123
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$300(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    .line 126
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$400(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    if-lez v0, :cond_4f

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_38

    sub-float v1, v2, v1

    .line 132
    :cond_38
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$900(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v0

    mul-float/2addr v0, v1

    .line 133
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;

    move-result-object v2

    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v3

    add-float/2addr v3, v0

    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$400(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    .line 135
    :goto_50
    # setter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRatio:F
    invoke-static {p0, v1}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1102(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
