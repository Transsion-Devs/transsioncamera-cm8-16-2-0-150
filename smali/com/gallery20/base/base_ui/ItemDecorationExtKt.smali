.class public final Lcom/gallery20/base/base_ui/ItemDecorationExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$swapLeftAndRight(Landroid/graphics/Rect;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/gallery20/base/base_ui/ItemDecorationExtKt;->swapLeftAndRight(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static final swapLeftAndRight(Landroid/graphics/Rect;)V
    .registers 3

    .line 57
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 58
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 59
    iput v0, p0, Landroid/graphics/Rect;->right:I

    return-void
.end method
