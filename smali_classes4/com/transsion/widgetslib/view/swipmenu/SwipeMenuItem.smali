.class public Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MENUITEMTYPE_ICON:I = 0x1

.field public static final MENUITEMTYPE_TEXT:I

.field private static cacheIcon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private height:I

.field private iconItemWidth:I

.field private isHios:Z

.field private mAlpha:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCircleBackground:Landroid/graphics/drawable/Drawable;

.field private mContentDescription:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mResId:I

.field private position:I

.field private textAppearance:I

.field private textItemWidth:I

.field private textTypeface:Landroid/graphics/Typeface;

.field private title:Ljava/lang/String;

.field private titleColor:I

.field private titleSize:I

.field private weight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 50
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleSize:I

    const/16 v0, 0x40

    .line 53
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->iconItemWidth:I

    const/16 v0, 0x52

    .line 54
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textItemWidth:I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->height:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->weight:I

    .line 71
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 50
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleSize:I

    const/16 v0, 0x40

    .line 53
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->iconItemWidth:I

    const/16 v0, 0x52

    .line 54
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textItemWidth:I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->height:I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->weight:I

    .line 75
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    .line 76
    iput p2, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->position:I

    .line 77
    const-string p1, "#FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleColor:I

    .line 78
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_dimen_sm_text_item_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textItemWidth:I

    .line 79
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_dimen_sm_text_item_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleSize:I

    .line 80
    iget-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$color;->os_fill_icon_toggle_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mAlpha:I

    return-void
.end method

.method private static getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .registers 7

    .line 131
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 135
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    sget-object p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static release()V
    .registers 3

    .line 244
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    .line 247
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 248
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 249
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_d

    .line 252
    :cond_23
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static resetCacheIcon(Landroid/content/Context;)V
    .registers 3

    .line 256
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    if-nez v0, :cond_5

    goto :goto_21

    .line 259
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 260
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    goto :goto_d

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getCircleBackground()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mCircleBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 1

    .line 279
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 227
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->height:I

    return p0
.end method

.method public getIconAlpha()I
    .registers 1

    .line 272
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mAlpha:I

    return p0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .registers 2

    .line 151
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1a

    .line 154
    :cond_b
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mResId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPosition()I
    .registers 1

    .line 63
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->position:I

    return p0
.end method

.method public getResId()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mResId:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTextAppearance()I
    .registers 1

    .line 199
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textAppearance:I

    return p0
.end method

.method public getTextSize()I
    .registers 1

    .line 190
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleSize:I

    return p0
.end method

.method public getTextTypeface()Landroid/graphics/Typeface;
    .registers 1

    .line 208
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public getTitleColor()I
    .registers 1

    .line 181
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleColor:I

    return p0
.end method

.method public getType()I
    .registers 1

    .line 240
    iget-object p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mIcon:Landroid/graphics/Bitmap;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public getWeight()I
    .registers 1

    .line 236
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->weight:I

    return p0
.end method

.method public getWidth()I
    .registers 2

    .line 218
    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getType()I

    move-result v0

    if-nez v0, :cond_9

    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textItemWidth:I

    return p0

    :cond_9
    iget p0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->iconItemWidth:I

    return p0
.end method

.method public setBackground(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 3

    .line 106
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBackgroundColorResource(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setBackgroundColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setCircleBackground(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mCircleBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCircleBackgroundColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 3

    .line 111
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mCircleBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCircleBackgroundColorResource(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setCircleBackgroundColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContentDescription:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 2

    .line 222
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->height:I

    return-object p0
.end method

.method public setIconColorResForAlpha(I)V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mAlpha:I

    return-void
.end method

.method public setImage(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 4

    .line 124
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mResId:I

    .line 125
    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->cacheIcon:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setImage(Landroid/graphics/Bitmap;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    return-object p0

    .line 126
    :cond_1f
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setImage(Landroid/graphics/Bitmap;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setImage(Landroid/graphics/Bitmap;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setIsHios(Z)V
    .registers 3

    .line 265
    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->isHios:Z

    .line 266
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_d

    .line 267
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_sm_icon_item_width_hios:I

    goto :goto_f

    .line 268
    :cond_d
    sget p1, Lcom/transsion/widgetslib/R$dimen;->os_dimen_sm_icon_item_width_xos:I

    .line 266
    :goto_f
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->iconItemWidth:I

    return-void
.end method

.method public setPosition(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->position:I

    return-void
.end method

.method public setResId(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mResId:I

    return-void
.end method

.method public setTextAppearance(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 2

    .line 194
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textAppearance:I

    return-object p0
.end method

.method public setTextColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 2

    .line 176
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleColor:I

    return-object p0
.end method

.method public setTextColorResource(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->setTextColor(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setTextSize(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 2

    .line 185
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->titleSize:I

    return-object p0
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setWeight(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 2

    .line 231
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->weight:I

    return-object p0
.end method

.method public setWidth(I)Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;
    .registers 2

    .line 212
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->iconItemWidth:I

    .line 213
    iput p1, p0, Lcom/transsion/widgetslib/view/swipmenu/SwipeMenuItem;->textItemWidth:I

    return-object p0
.end method
