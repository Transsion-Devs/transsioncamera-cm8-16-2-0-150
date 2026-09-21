.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 10

    .line 473
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    .line 475
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_10

    .line 477
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_11

    :cond_10
    move p3, v0

    .line 479
    :goto_11
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_view_item_gap_padding_expand:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 480
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    iget-object v2, v2, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_view_item_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    iget-object v3, v3, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    .line 481
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_view_item_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 482
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_8f

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_7a

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_65

    if-nez p4, :cond_57

    neg-int p3, v2

    .line 513
    invoke-virtual {p1, p3, v0, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a3

    :cond_57
    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_60

    neg-int p3, v2

    .line 515
    invoke-virtual {p1, p3, v1, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a3

    :cond_60
    neg-int p3, v2

    .line 517
    invoke-virtual {p1, p3, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a3

    :cond_65
    if-nez p4, :cond_6c

    neg-int p3, v2

    .line 503
    invoke-virtual {p1, v1, p3, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a3

    :cond_6c
    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_75

    neg-int p3, v2

    .line 505
    invoke-virtual {p1, v0, p3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a3

    :cond_75
    neg-int p3, v2

    .line 507
    invoke-virtual {p1, v1, p3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a3

    :cond_7a
    if-nez p4, :cond_81

    neg-int p3, v2

    .line 494
    invoke-virtual {p1, p3, v1, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a3

    :cond_81
    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_8a

    neg-int p3, v2

    .line 496
    invoke-virtual {p1, p3, v0, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a3

    :cond_8a
    neg-int p3, v2

    .line 498
    invoke-virtual {p1, p3, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a3

    :cond_8f
    if-nez p4, :cond_96

    neg-int p3, v2

    .line 485
    invoke-virtual {p1, v0, p3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a3

    :cond_96
    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_9f

    neg-int p3, v2

    .line 487
    invoke-virtual {p1, v1, p3, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a3

    :cond_9f
    neg-int p3, v2

    .line 489
    invoke-virtual {p1, v1, p3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 521
    :goto_a3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->-$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)I

    move-result p0

    rsub-int p0, p0, 0x168

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
