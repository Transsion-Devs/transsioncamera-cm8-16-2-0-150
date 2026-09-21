.class Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mIconView:Landroid/widget/ImageView;

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_item_ui_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/transsion/camera/R$id;->edit_watermark_item_sort_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mIconView:Landroid/widget/ImageView;

    return-void
.end method
