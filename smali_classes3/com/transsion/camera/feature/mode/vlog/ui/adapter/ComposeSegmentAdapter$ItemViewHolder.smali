.class public Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ItemViewHolder"
.end annotation


# instance fields
.field public final ivCoverItem:Landroid/widget/ImageView;

.field public final ivEditItem:Landroid/widget/ImageView;

.field public final ivItemSign:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 54
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->iv_segment_cover_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;->ivCoverItem:Landroid/widget/ImageView;

    .line 55
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->iv_segment_editor_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;->ivEditItem:Landroid/widget/ImageView;

    .line 56
    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->iv_segment_chosen_sign:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;->ivItemSign:Landroid/widget/ImageView;

    const/4 p1, 0x1

    .line 58
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 59
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/ComposeSegmentAdapter$ItemViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
