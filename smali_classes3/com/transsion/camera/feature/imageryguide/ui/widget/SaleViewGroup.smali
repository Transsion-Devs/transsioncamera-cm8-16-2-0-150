.class public Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS:I = 0x3

.field private static final THREE_ITEM_SPACE:I = 0xa

.field private static final TWO_ITEM_SPACE:I = 0xf


# instance fields
.field private mItemSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->mItemSize:I

    return-void
.end method

.method private layoutDualItems()V
    .registers 7

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 263
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x41700000    # 15.0f

    .line 260
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_second_image_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v4, 0x0

    .line 266
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4, v4, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 267
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private layoutSingleItem()V
    .registers 4

    const/4 v0, 0x0

    .line 254
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v1, v0, v0, v2, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private layoutTripleItems()V
    .registers 9

    .line 271
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x41200000    # 10.0f

    .line 273
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_second_image_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_small_image_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    .line 280
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6, v6, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 281
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/2addr v4, v2

    invoke-virtual {v3, v4, v6, v0, v5}, Landroid/view/View;->layout(IIII)V

    const/4 v3, 0x2

    .line 282
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    add-int/2addr v5, v2

    invoke-virtual {p0, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public addItem(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 7

    .line 156
    iget v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->mItemSize:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_6

    return-void

    .line 159
    :cond_6
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p4}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    .line 160
    iget-object p4, v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->image:Landroid/widget/ImageView;

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object p1, v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->text:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_20

    .line 163
    iget-object p1, v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->container:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 167
    :cond_20
    iget-object p1, v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$ItemView;->container:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    iget p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->mItemSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->mItemSize:I

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .line 227
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_16

    const/4 p3, 0x2

    if-eq p1, p3, :cond_12

    const/4 p3, 0x3

    if-eq p1, p3, :cond_e

    goto :goto_19

    .line 235
    :cond_e
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->layoutTripleItems()V

    goto :goto_19

    .line 232
    :cond_12
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->layoutDualItems()V

    goto :goto_19

    .line 229
    :cond_16
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->layoutSingleItem()V

    :goto_19
    const/4 p1, 0x0

    move p3, p1

    .line 242
    :goto_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p3, p4, :cond_4d

    .line 243
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 244
    instance-of p5, p4, Landroid/widget/FrameLayout;

    if-eqz p5, :cond_4a

    .line 246
    move-object p5, p4

    check-cast p5, Landroid/widget/FrameLayout;

    invoke-virtual {p5, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 247
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_cover_view_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 248
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p5, p1, v1, v0, p4}, Landroid/view/View;->layout(IIII)V

    :cond_4a
    add-int/lit8 p3, p3, 0x1

    goto :goto_1b

    :cond_4d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .line 184
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 185
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 187
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    if-eq v0, v3, :cond_a1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1a

    goto/16 :goto_ce

    .line 207
    :cond_1a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_second_image_height:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 208
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_second_image_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_second_image_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 208
    invoke-virtual {v1, v4, v5}, Landroid/view/View;->measure(II)V

    :goto_47
    if-ge v3, v0, :cond_ce

    .line 213
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_small_image_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 215
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_small_image_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 213
    invoke-virtual {v1, v4, v5}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 198
    :cond_6f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_second_image_height:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    :goto_79
    if-ge v1, v0, :cond_ce

    .line 200
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_second_image_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_second_image_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v5, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 200
    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 191
    :cond_a1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_big_image_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 192
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_big_image_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_sale_big_image_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 222
    :cond_ce
    :goto_ce
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public reset()V
    .registers 2

    .line 292
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 293
    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->mItemSize:I

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setItemEnable(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 286
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 287
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public setViewRadius(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 174
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
