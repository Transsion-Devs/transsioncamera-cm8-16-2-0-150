.class public Lcom/google/android/material/ripple/RippleDrawableCompat;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/shape/Shapeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;
    }
.end annotation


# instance fields
.field private drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;


# direct methods
.method private constructor <init>(Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;Lcom/google/android/material/ripple/RippleDrawableCompat$1;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 4

    .line 58
    new-instance v0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    invoke-direct {v0, v1}, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 126
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-boolean v0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    if-eqz v0, :cond_b

    .line 127
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    return-object p0
.end method

.method public getOpacity()I
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getOpacity()I

    move-result p0

    return p0
.end method

.method public isStateful()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic mutate()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/ripple/RippleDrawableCompat;->mutate()Lcom/google/android/material/ripple/RippleDrawableCompat;

    move-result-object p0

    return-object p0
.end method

.method public mutate()Lcom/google/android/material/ripple/RippleDrawableCompat;
    .registers 3

    .line 146
    new-instance v0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v1, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    invoke-direct {v0, v1}, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;-><init>(Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V

    .line 147
    iput-object v0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 133
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 134
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .registers 5

    .line 109
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v1, v1, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    move v0, v2

    .line 113
    :cond_10
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->shouldDrawRippleCompat([I)Z

    move-result p1

    .line 116
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-boolean v1, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    if-eq v1, p1, :cond_1d

    .line 117
    iput-boolean p1, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    return v2

    :cond_1d
    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    return-void
.end method

.method public setTint(I)V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object p0, p0, Lcom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
