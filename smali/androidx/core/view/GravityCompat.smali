.class public abstract Landroidx/core/view/GravityCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 6

    .line 65
    invoke-static/range {p0 .. p5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .registers 2

    .line 146
    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p0

    return p0
.end method
