.class public Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemVH"
.end annotation


# instance fields
.field private compatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

.field public final focusView:Landroid/view/View;

.field public itemIconView:Landroid/widget/ImageView;

.field public final rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field public final viewName:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcompatIconView(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;)Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->compatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    return-object p0
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;Landroid/view/View;)V
    .registers 3

    .line 58
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 59
    sget p1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_item_rotate_container:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 60
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 61
    sget p1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->itemIconView:Landroid/widget/ImageView;

    goto :goto_28

    .line 63
    :cond_1e
    sget p1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->compatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    .line 65
    :goto_28
    sget p1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_item_select:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->focusView:Landroid/view/View;

    .line 66
    sget p1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->viewName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getItemCompatImageView()Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->compatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    return-object p0
.end method

.method public getItemImageView()Landroid/widget/ImageView;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->itemIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public updateRotation(IIZ)V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_1d

    .line 79
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_17

    if-nez p1, :cond_17

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->compatIconView:Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    invoke-interface {p0, p2, p3}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    return-void

    .line 83
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->rotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_1d
    return-void
.end method
