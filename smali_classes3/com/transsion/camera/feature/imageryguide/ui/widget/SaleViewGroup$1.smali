.class Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;->setViewRadius(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cornerRadius:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup;I)V
    .registers 3

    .line 174
    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$1;->val$cornerRadius:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/SaleViewGroup$1;->val$cornerRadius:I

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
