.class public abstract Lcom/transsion/camera/app/ui/widget/RecyclerImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 49
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 51
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_17

    .line 52
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_17

    if-eq p0, p1, :cond_17

    .line 54
    sget-object p1, Lcom/transsion/camera/utils/BitmapPoolUtil;->INSTANCE:Lcom/transsion/camera/utils/BitmapPoolUtil;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/BitmapPoolUtil;->put(Landroid/graphics/Bitmap;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 34
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportRenderscriptToolkit:Z

    if-eqz v0, :cond_b

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/RecyclerImageView;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 42
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportRenderscriptToolkit:Z

    if-eqz v0, :cond_18

    .line 43
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_14

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/widget/RecyclerImageView;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
