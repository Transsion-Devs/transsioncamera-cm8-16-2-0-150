.class public Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout$LayoutListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLayoutListener:Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout$LayoutListener;

.field private mOrientation:I

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const-string/jumbo p2, "type_c"

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mType:Ljava/lang/String;

    const/4 p2, -0x1

    .line 21
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mOrientation:I

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mType:Ljava/lang/String;

    return-void
.end method

.method private layoutChildrenTypeA(Ljava/util/ArrayList;)V
    .registers 10

    .line 78
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_43

    .line 82
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 83
    div-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_43

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    mul-int v4, v1, v2

    add-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    .line 87
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 88
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 89
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 90
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    .line 91
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    .line 92
    invoke-virtual {v4, v5, v3, v7, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_43
    :goto_43
    return-void
.end method

.method private layoutChildrenTypeB(Ljava/util/ArrayList;)V
    .registers 10

    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    const/4 p0, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2c

    .line 107
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    .line 112
    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2c
    if-le v0, v3, :cond_a8

    .line 114
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 115
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 117
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    .line 118
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    .line 119
    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v0, -0x1

    .line 121
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 123
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v2, v6

    .line 124
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    .line 125
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v2

    .line 126
    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    move v2, p0

    move v5, v2

    :goto_63
    if-ge v2, v0, :cond_77

    if-eqz v2, :cond_74

    if-eq v2, v1, :cond_74

    .line 131
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 132
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 136
    :cond_77
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v5

    div-int/2addr v2, v1

    .line 137
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v2

    :goto_87
    if-ge p0, v0, :cond_a8

    if-eqz p0, :cond_a5

    if-eq p0, v1, :cond_a5

    .line 141
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 144
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    .line 145
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    .line 147
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v7, v2

    move v3, v7

    :cond_a5
    add-int/lit8 p0, p0, 0x1

    goto :goto_87

    :cond_a8
    return-void
.end method

.method private layoutChildrenTypeC(Ljava/util/ArrayList;)V
    .registers 12

    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->popup_option_item_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0x8

    if-le v0, v2, :cond_20

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->popup_option_item_distance_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 163
    :cond_20
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mOrientation:I

    const/16 v3, 0xb4

    const/4 v4, 0x0

    if-ne v2, v3, :cond_59

    :goto_27
    if-ge v4, v0, :cond_80

    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v4

    .line 165
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 166
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    mul-int v6, v1, v4

    sub-int/2addr v5, v6

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v1

    mul-int/2addr v9, v4

    sub-int/2addr v8, v9

    .line 170
    invoke-virtual {v2, v3, v5, v6, v8}, Landroid/view/View;->layout(IIII)V

    move v4, v7

    goto :goto_27

    :cond_59
    :goto_59
    if-ge v4, v0, :cond_80

    .line 174
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v4

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v1

    mul-int/2addr v6, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 179
    invoke-virtual {p0, v2, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    :cond_80
    return-void
.end method

.method private updateChildrenLayout()V
    .registers 7

    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4d

    .line 52
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_21

    .line 54
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1e

    .line 56
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 60
    :cond_21
    const-string/jumbo v0, "type_a"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 61
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->layoutChildrenTypeA(Ljava/util/ArrayList;)V

    return-void

    .line 62
    :cond_30
    const-string/jumbo v0, "type_b"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 63
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->layoutChildrenTypeB(Ljava/util/ArrayList;)V

    return-void

    .line 64
    :cond_3f
    const-string/jumbo v0, "type_c"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 65
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->layoutChildrenTypeC(Ljava/util/ArrayList;)V

    :cond_4d
    :goto_4d
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 6

    .line 40
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->init()V

    .line 42
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->updateChildrenLayout()V

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mLayoutListener:Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout$LayoutListener;

    if-eqz p0, :cond_10

    .line 44
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout$LayoutListener;->onLayoutEnd()V

    :cond_10
    return-void
.end method

.method public setLayoutListener(Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout$LayoutListener;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mLayoutListener:Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout$LayoutListener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 185
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->mOrientation:I

    return-void
.end method
