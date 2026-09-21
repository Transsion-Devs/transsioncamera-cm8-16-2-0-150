.class public Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;
    }
.end annotation


# instance fields
.field private mCancelLayoutEndAnim:Z

.field private mContext:Landroid/content/Context;

.field private mLayoutListener:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;

.field private mOrientation:I

.field private mResources:Landroid/content/res/Resources;

.field private mSupportFocalLength:Z

.field private mType:Ljava/lang/String;

.field private mUnSupportZoomingStatus:Z

.field mVisibleChildren:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const-string/jumbo p2, "type_b"

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    const/4 p2, -0x1

    .line 40
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mOrientation:I

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mVisibleChildren:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 43
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mCancelLayoutEndAnim:Z

    .line 44
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mUnSupportZoomingStatus:Z

    .line 59
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mResources:Landroid/content/res/Resources;

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    return-void
.end method

.method private layoutChildrenTypeA(Ljava/util/ArrayList;)V
    .registers 10

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 127
    div-int/2addr v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_40

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    mul-int v4, v1, v2

    add-int/2addr v3, v4

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    .line 131
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 132
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 133
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    .line 134
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    .line 135
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 136
    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_40
    return-void
.end method

.method private layoutChildrenTypeB(Ljava/util/ArrayList;)V
    .registers 9

    .line 144
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 148
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_19
    if-ge v5, v2, :cond_29

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/view/View;

    .line 149
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_19

    :cond_29
    sub-int/2addr v1, v4

    add-int/lit8 v2, v0, 0x1

    .line 151
    div-int/2addr v1, v2

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    add-int/2addr p0, v1

    :goto_32
    if-ge v3, v0, :cond_4f

    .line 155
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 159
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, p0

    .line 160
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 161
    invoke-virtual {v2, p0, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int p0, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_4f
    return-void
.end method

.method private layoutChildrenTypeC(Ljava/util/ArrayList;D)V
    .registers 10

    .line 175
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    int-to-double v3, v1

    mul-double/2addr p2, v3

    double-to-int v1, p2

    add-int/2addr v2, v1

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    sub-double/2addr v3, p2

    double-to-int p2, v3

    add-int/2addr p0, p2

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne v0, p3, :cond_3c

    .line 182
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    .line 185
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, v2

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p3

    .line 187
    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_3c
    if-le v0, p3, :cond_b8

    .line 190
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 192
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 193
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 194
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 195
    invoke-virtual {p3, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v1, v0, -0x1

    .line 197
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 198
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr p0, v3

    .line 199
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, p0

    .line 200
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 201
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 202
    invoke-virtual {v2, p0, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    move p0, p2

    move v3, p0

    :goto_73
    if-ge p0, v0, :cond_87

    if-eqz p0, :cond_84

    if-eq p0, v1, :cond_84

    .line 208
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 209
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    :cond_84
    add-int/lit8 p0, p0, 0x1

    goto :goto_73

    .line 212
    :cond_87
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr p0, v2

    sub-int/2addr p0, v3

    div-int/2addr p0, v1

    .line 213
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    add-int/2addr p3, p0

    :goto_97
    if-ge p2, v0, :cond_b8

    if-eqz p2, :cond_b5

    if-eq p2, v1, :cond_b5

    .line 217
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 219
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 220
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, p3

    .line 221
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 223
    invoke-virtual {v2, p3, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v4, p0

    move p3, v4

    :cond_b5
    add-int/lit8 p2, p2, 0x1

    goto :goto_97

    :cond_b8
    return-void
.end method

.method private layoutChildrenTypeE(Ljava/util/ArrayList;)V
    .registers 10

    .line 234
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 236
    div-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v0, :cond_30

    .line 238
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v5

    mul-int v6, v1, v3

    add-int/2addr v5, v6

    add-int v6, v5, v1

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 243
    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_30
    return-void
.end method

.method private layoutChildrenTypeF(Ljava/util/ArrayList;)V
    .registers 10

    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->popup_option_item_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0x8

    if-le v0, v2, :cond_20

    .line 254
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->popup_option_item_distance_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 257
    :cond_20
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_5b

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_29
    if-ltz v2, :cond_83

    sub-int v3, v0, v2

    .line 259
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    mul-int v5, v1, v2

    sub-int/2addr v4, v5

    .line 261
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v1

    mul-int/2addr v7, v2

    sub-int/2addr v6, v7

    .line 263
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 264
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    :cond_5b
    const/4 p0, 0x0

    :goto_5c
    if-ge p0, v0, :cond_83

    .line 268
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 269
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, p0

    .line 270
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    .line 271
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    mul-int/2addr v5, p0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 272
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 273
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_5c

    :cond_83
    return-void
.end method

.method private layoutChildrenTypeG(Ljava/util/ArrayList;D)V
    .registers 12

    .line 279
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    int-to-double v3, v1

    mul-double/2addr p2, v3

    double-to-int v1, p2

    add-int/2addr v2, v1

    .line 282
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-double/2addr v3, p2

    double-to-int p2, v3

    add-int/2addr v1, p2

    .line 283
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_old_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 284
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->un_zooming_padding:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 285
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mSupportFocalLength:Z

    if-eqz v3, :cond_3d

    .line 286
    iget-object p3, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_focal_length_items_gap:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 289
    :cond_3d
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mUnSupportZoomingStatus:Z

    if-eqz v3, :cond_4c

    .line 290
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->un_zooming_left_and_right_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    goto :goto_54

    .line 292
    :cond_4c
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->zoom_left_and_right_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_54
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_6f

    .line 296
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 298
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, v2

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p3

    .line 301
    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6f
    if-le v0, v5, :cond_f9

    .line 304
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 306
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    .line 307
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    .line 308
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 309
    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v5, v0, -0x1

    .line 311
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 312
    iget-boolean v7, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mUnSupportZoomingStatus:Z

    if-eqz v7, :cond_9a

    .line 313
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr v1, p2

    sub-int/2addr v1, v3

    goto :goto_a3

    .line 315
    :cond_9a
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v1, v7

    add-int/2addr v1, v3

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr v1, p2

    .line 317
    :goto_a3
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, v1

    .line 318
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v3

    .line 319
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 320
    invoke-virtual {v6, v1, v3, p2, v7}, Landroid/view/View;->layout(IIII)V

    move p2, v4

    :goto_b4
    if-ge p2, v0, :cond_c6

    if-eqz p2, :cond_c3

    if-eq p2, v5, :cond_c3

    .line 326
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 327
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    :cond_c3
    add-int/lit8 p2, p2, 0x1

    goto :goto_b4

    .line 332
    :cond_c6
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mUnSupportZoomingStatus:Z

    if-eqz p2, :cond_d0

    .line 333
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result p2

    add-int/2addr p2, p3

    goto :goto_d4

    .line 335
    :cond_d0
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result p2

    :goto_d4
    if-ge v4, v0, :cond_f9

    if-eqz v4, :cond_f6

    if-eq v4, v5, :cond_f6

    .line 340
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 342
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 343
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    .line 344
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 346
    invoke-virtual {v1, p2, v2, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 347
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mUnSupportZoomingStatus:Z

    if-eqz p2, :cond_f5

    add-int/2addr v3, p3

    :cond_f5
    move p2, v3

    :cond_f6
    add-int/lit8 v4, v4, 0x1

    goto :goto_d4

    :cond_f9
    return-void
.end method

.method private layoutChildrenTypeH(Ljava/util/ArrayList;D)V
    .registers 9

    .line 358
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_97

    .line 363
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    int-to-double v3, v1

    mul-double/2addr v3, p2

    double-to-int p2, v3

    add-int/2addr v2, p2

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr p3, v1

    sub-int/2addr p3, p2

    const/4 p2, 0x0

    .line 368
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutView(Landroid/view/View;I)V

    const/4 v1, 0x1

    if-le v0, v1, :cond_97

    sub-int/2addr v0, v1

    .line 371
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr p3, v3

    invoke-direct {p0, v2, p3}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutView(Landroid/view/View;I)V

    move v2, p2

    move p3, v1

    :goto_4c
    if-ge p3, v0, :cond_5c

    .line 375
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_4c

    .line 377
    :cond_5c
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr p3, v3

    sub-int/2addr p3, v2

    div-int/2addr p3, v0

    .line 379
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    add-int/2addr p2, p3

    :goto_7e
    if-ge v1, v0, :cond_97

    .line 381
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, p2}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutView(Landroid/view/View;I)V

    .line 382
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    add-int/2addr p2, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7e

    :cond_97
    :goto_97
    return-void
.end method

.method private layoutChildrenTypeI(Ljava/util/ArrayList;I)V
    .registers 9

    .line 388
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_59

    .line 395
    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_e
    if-ge v4, v1, :cond_1e

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/view/View;

    .line 396
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_e

    :cond_1e
    add-int/lit8 v1, v0, -0x1

    mul-int/2addr v1, p2

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 406
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1, v4}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutView(Landroid/view/View;I)V

    .line 409
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v4, v1

    add-int/2addr v4, p2

    const/4 v1, 0x1

    :goto_3f
    if-ge v1, v0, :cond_59

    .line 411
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2, v4}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutView(Landroid/view/View;I)V

    .line 412
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p2

    add-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_59
    :goto_59
    return-void
.end method

.method private layoutView(Landroid/view/View;I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 422
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 425
    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private updateChildrenLayout()V
    .registers 7

    .line 81
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_c0

    .line 84
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_22

    .line 86
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1f

    .line 88
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 91
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mVisibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mVisibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    const-string/jumbo v0, "type_a"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 95
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeA(Ljava/util/ArrayList;)V

    return-void

    .line 96
    :cond_3b
    const-string/jumbo v0, "type_b"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 97
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeB(Ljava/util/ArrayList;)V

    return-void

    .line 98
    :cond_4a
    const-string/jumbo v0, "type_c"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-wide v2, 0x3fac71c71c71c71cL    # 0.05555555555555555

    .line 99
    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeC(Ljava/util/ArrayList;D)V

    return-void

    .line 100
    :cond_5e
    const-string/jumbo v0, "type_d"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_6f

    .line 101
    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeC(Ljava/util/ArrayList;D)V

    return-void

    .line 102
    :cond_6f
    const-string/jumbo v0, "type_e"

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 103
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeE(Ljava/util/ArrayList;)V

    return-void

    .line 104
    :cond_7e
    const-string/jumbo v0, "type_f"

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 105
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeF(Ljava/util/ArrayList;)V

    return-void

    .line 106
    :cond_8d
    const-string/jumbo v0, "type_g"

    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 107
    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeG(Ljava/util/ArrayList;D)V

    return-void

    .line 108
    :cond_9c
    const-string/jumbo v0, "type_h"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    const-wide v2, 0x3f9999999999999aL    # 0.025

    .line 109
    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeH(Ljava/util/ArrayList;D)V

    return-void

    .line 110
    :cond_b0
    const-string/jumbo v0, "type_i"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const/16 v0, 0xf

    .line 111
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->layoutChildrenTypeI(Ljava/util/ArrayList;I)V

    :cond_c0
    :goto_c0
    return-void
.end method


# virtual methods
.method public cancelLayoutEndAnim(Z)V
    .registers 2

    .line 456
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mCancelLayoutEndAnim:Z

    return-void
.end method

.method public getChikdrenLeft(Ljava/lang/String;I)I
    .registers 3

    .line 433
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mVisibleChildren:Ljava/util/ArrayList;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p2, :cond_17

    .line 434
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mVisibleChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 70
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->updateChildrenLayout()V

    .line 72
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mCancelLayoutEndAnim:Z

    if-nez p1, :cond_15

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mLayoutListener:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;

    if-eqz p1, :cond_11

    .line 74
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;->onLayoutEnd()V

    :cond_11
    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->cancelLayoutEndAnim(Z)V

    :cond_15
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public setLayoutListener(Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;)V
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mLayoutListener:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout$LayoutListener;

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 429
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mOrientation:I

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2

    .line 447
    invoke-super {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 448
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mType:Ljava/lang/String;

    return-void
.end method

.method public setUnSupportZoomingStatus(ZZ)V
    .registers 3

    .line 167
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mUnSupportZoomingStatus:Z

    .line 168
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->mSupportFocalLength:Z

    return-void
.end method
