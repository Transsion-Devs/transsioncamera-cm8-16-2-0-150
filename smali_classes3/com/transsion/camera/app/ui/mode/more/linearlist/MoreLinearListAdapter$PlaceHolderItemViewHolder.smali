.class Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlaceHolderItemViewHolder"
.end annotation


# instance fields
.field private final mMoreLinearItemBackground:Landroid/widget/ImageView;

.field private final mMoreTabPlaceHolder:Landroid/widget/ImageView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMoreLinearItemBackground(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->mMoreLinearItemBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreTabPlaceHolder(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->mMoreTabPlaceHolder:Landroid/widget/ImageView;

    return-object p0
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;Landroid/view/View;)V
    .registers 4

    .line 287
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 288
    sget v0, Lcom/transsion/camera/R$id;->linear_item_background:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->mMoreLinearItemBackground:Landroid/widget/ImageView;

    .line 289
    sget v0, Lcom/transsion/camera/R$id;->more_tab_place_holder:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$PlaceHolderItemViewHolder;->mMoreTabPlaceHolder:Landroid/widget/ImageView;

    const/4 p0, 0x0

    .line 290
    invoke-virtual {p1, p2, p0}, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;->playMoreModeGuideAnim(Landroid/view/View;Z)V

    return-void
.end method
