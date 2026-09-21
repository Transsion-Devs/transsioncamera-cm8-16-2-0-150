.class public Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_PADDING:I = 0x28

.field private static final INDICATOR_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PageIndicatorWrapper#"


# instance fields
.field private mCurrPage:I

.field private mHasSearch:Z

.field private mIsSearchVisible:Z

.field private mIsSpringPageIndicator:Z

.field private mMaxMarkerNum:I

.field private mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mCurrPage:I

    .line 21
    iput v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mMaxMarkerNum:I

    const/4 v1, 0x0

    .line 24
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    .line 25
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mHasSearch:Z

    const/4 v2, 0x1

    .line 44
    iput-boolean v2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    .line 45
    sget-object v2, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 46
    sget v1, Lcom/transsion/widgetslib/R$styleable;->PageIndicatorWrapper_maxMarkerNum:I

    const/16 v2, 0x9

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mMaxMarkerNum:I

    .line 47
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x28

    .line 49
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 50
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v0, 0x11

    .line 51
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 52
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz v0, :cond_4a

    .line 53
    new-instance v0, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    iget p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mMaxMarkerNum:I

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setMaxMarkerNum(I)V

    .line 56
    iget-object p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_4a
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addMarker()V
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->addMarker()V

    return-void
.end method

.method public addMarkers(IZ)V
    .registers 4

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_b

    .line 73
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->addMarker()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method public isSpringPageIndicator()Z
    .registers 1

    .line 116
    iget-boolean p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    return p0
.end method

.method public onCreateMinusOne(ZI)V
    .registers 3

    .line 66
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setSearchVisible(Z)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setActiveMarker(I)V

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->updateProgress(F)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public removeAllMarkers(Z)V
    .registers 2

    .line 87
    iget-boolean p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz p1, :cond_9

    .line 88
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->removeAllMarkers()V

    :cond_9
    return-void
.end method

.method public removeMarker(IZ)V
    .registers 3

    .line 78
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz p2, :cond_13

    .line 79
    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mHasSearch:Z

    if-eqz p2, :cond_e

    iget-boolean p2, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    if-eqz p2, :cond_e

    add-int/lit8 p1, p1, 0x1

    .line 82
    :cond_e
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->removeMarker(I)V

    :cond_13
    return-void
.end method

.method public setActiveMarker(I)V
    .registers 4

    .line 93
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz v0, :cond_1b

    .line 94
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mHasSearch:Z

    if-eqz v0, :cond_16

    .line 95
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    if-eqz v1, :cond_11

    add-int/lit8 v1, p1, 0x1

    goto :goto_12

    :cond_11
    move v1, p1

    :goto_12
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setCurrentMarker(I)V

    goto :goto_1b

    .line 97
    :cond_16
    iget-object v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setCurrentMarker(I)V

    .line 100
    :cond_1b
    :goto_1b
    iput p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mCurrPage:I

    return-void
.end method

.method public setNormalColor(I)V
    .registers 2

    .line 144
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setNormalColor(I)V

    return-void
.end method

.method public setPageIndicatorMarkerClickListener(Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;)V
    .registers 3

    .line 110
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz v0, :cond_9

    .line 111
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setMarkerClickListener(Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper$OnMarkerClickListener;)V

    :cond_9
    return-void
.end method

.method public setSearchVisible(Z)V
    .registers 4

    .line 126
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mHasSearch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 127
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    if-eq p1, v0, :cond_19

    .line 129
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    if-eqz p1, :cond_16

    .line 131
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->addMarker()V

    .line 132
    iget p1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mCurrPage:I

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->setActiveMarker(I)V

    goto :goto_19

    .line 134
    :cond_16
    invoke-virtual {p0, v1, v1}, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->removeMarker(IZ)V

    .line 137
    :cond_19
    :goto_19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 139
    :cond_1d
    iput-boolean v1, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSearchVisible:Z

    return-void
.end method

.method public setSelectedColor(I)V
    .registers 2

    .line 148
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->setSelectedColor(I)V

    return-void
.end method

.method public updateProgress(F)V
    .registers 3

    .line 104
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mIsSpringPageIndicator:Z

    if-eqz v0, :cond_9

    .line 105
    iget-object p0, p0, Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;->mSpringPageIndicator:Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/indicator/SpringPageIndicator;->update(F)V

    :cond_9
    return-void
.end method
