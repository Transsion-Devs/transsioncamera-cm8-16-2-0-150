.class final Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartGlobalLayoutListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmartGlobalLayoutListener"
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

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartGlobalLayoutListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 11

    .line 72
    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$SmartGlobalLayoutListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    if-nez p0, :cond_b

    return-void

    .line 77
    :cond_b
    # invokes: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollRange()I
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v0

    .line 78
    # invokes: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollOffset()I
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$100(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v1

    .line 79
    # invokes: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->getScrollExtent()I
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$200(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v2

    sub-int v3, v0, v2

    .line 80
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mScrollableView:Landroid/view/View;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$300(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 83
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$400(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    if-lez v3, :cond_98

    .line 85
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxScrollDistance:I
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$500(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v6, v4, v5

    .line 86
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxScrollDistance:I
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$500(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 87
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxBarLen:F
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$700(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    sub-float v6, v5, v6

    mul-float/2addr v7, v6

    # setter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F
    invoke-static {p0, v7}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$602(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    .line 88
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v6

    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMinBarLen:F
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$800(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    # setter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F
    invoke-static {p0, v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$602(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    .line 89
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v6

    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMaxBarLen:F
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$700(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    # setter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F
    invoke-static {p0, v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$602(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    .line 90
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    sub-float/2addr v6, v7

    # setter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F
    invoke-static {p0, v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$902(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    int-to-float v6, v1

    mul-float/2addr v6, v5

    div-float/2addr v6, v4

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_81

    sub-float v6, v5, v6

    .line 95
    :cond_81
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mStopD:F
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$900(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v4

    mul-float/2addr v4, v6

    .line 96
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mMeasureArc:Landroid/graphics/PathMeasure;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1000(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/PathMeasure;

    move-result-object v5

    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mBarLen:F
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$600(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)F

    move-result v7

    add-float/2addr v7, v4

    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mPathBar:Landroid/graphics/Path;
    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$400(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/graphics/Path;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5, v4, v7, v8, v9}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_99

    :cond_98
    const/4 v6, 0x0

    .line 98
    :goto_99
    # setter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->mRatio:F
    invoke-static {p0, v6}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1102(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;F)F

    .line 99
    # getter for: Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->access$1200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onGlobalLayout, scrollRange: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrollOffset: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrollExtent: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scrollDistance: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ratio: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
