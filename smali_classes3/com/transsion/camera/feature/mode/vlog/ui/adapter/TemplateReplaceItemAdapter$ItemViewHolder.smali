.class public Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public final itemLayout:Landroid/widget/FrameLayout;

.field public final ivCoverItem:Landroid/widget/ImageView;

.field public final ivCoverItemBackGround:Landroid/widget/ImageView;

.field public final ivEditItem:Landroid/widget/ImageView;

.field public final ivItemSign:Landroid/widget/ImageView;

.field public final tvItemTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 53
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->editor_item_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->itemLayout:Landroid/widget/FrameLayout;

    .line 56
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->iv_cover_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->ivCoverItem:Landroid/widget/ImageView;

    .line 57
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->iv_background_img:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->ivCoverItemBackGround:Landroid/widget/ImageView;

    .line 58
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->iv_edit_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->ivEditItem:Landroid/widget/ImageView;

    .line 59
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->iv_item_chosen_sign:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    .line 60
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->tv_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;->tvItemTitle:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 62
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 63
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateReplaceItemAdapter$ItemViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
