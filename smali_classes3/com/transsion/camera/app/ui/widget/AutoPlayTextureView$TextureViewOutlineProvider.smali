.class public Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$TextureViewOutlineProvider;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureViewOutlineProvider"
.end annotation


# instance fields
.field private final radius:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 173
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 174
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$TextureViewOutlineProvider;->radius:I

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 6

    .line 179
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 181
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 184
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView$TextureViewOutlineProvider;->radius:I

    int-to-float p0, p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
