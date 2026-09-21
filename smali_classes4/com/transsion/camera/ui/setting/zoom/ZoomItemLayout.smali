.class public Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private mPaddingValue:I

.field private mResources:Landroid/content/res/Resources;

.field private mZoomItemStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 22
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->mZoomItemStyle:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->mResources:Landroid/content/res/Resources;

    .line 35
    sget p2, Lcom/transsion/camera/R$dimen;->new_camera_no_zoom_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->mPaddingValue:I

    return-void
.end method

.method private isZoomNeedPadding()Z
    .registers 3

    .line 74
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->mZoomItemStyle:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v1, 0x4

    if-ne p0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    return v0
.end method

.method private layoutChildrenType(Ljava/util/ArrayList;)V
    .registers 11

    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_left_and_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2a

    .line 85
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 90
    invoke-virtual {p0, v3, p1, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2a
    if-le v0, v4, :cond_ad

    .line 93
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    .line 96
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    .line 97
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 98
    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v5, v0, -0x1

    .line 99
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 100
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v1, v7

    sub-int/2addr v1, v2

    .line 101
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 102
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    .line 103
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 104
    invoke-virtual {v6, v1, v7, v2, v8}, Landroid/view/View;->layout(IIII)V

    move v1, v3

    :goto_61
    if-ge v1, v0, :cond_73

    if-eqz v1, :cond_70

    if-eq v1, v5, :cond_70

    .line 110
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 111
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 116
    :cond_73
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v1

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->isZoomNeedPadding()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->mPaddingValue:I

    add-int/2addr v1, v2

    :cond_84
    :goto_84
    if-ge v3, v0, :cond_ad

    if-eqz v3, :cond_aa

    if-eq v3, v5, :cond_aa

    .line 122
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 124
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 125
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v1

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 127
    invoke-virtual {v2, v1, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->isZoomNeedPadding()Z

    move-result v1

    if-eqz v1, :cond_a9

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->mPaddingValue:I

    add-int/2addr v6, v1

    :cond_a9
    move v1, v6

    :cond_aa
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_ad
    return-void
.end method

.method private updateChildrenLayout()V
    .registers 7

    .line 59
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 63
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_21

    .line 65
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 66
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1e

    .line 67
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 70
    :cond_21
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->layoutChildrenType(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 2

    .line 50
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 40
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->updateChildrenLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public upZoomItemStyle(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomItemLayout;->mZoomItemStyle:I

    return-void
.end method
