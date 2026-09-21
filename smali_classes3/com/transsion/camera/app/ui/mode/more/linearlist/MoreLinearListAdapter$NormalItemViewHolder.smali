.class public Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NormalItemViewHolder"
.end annotation


# instance fields
.field private final mMoreLinearItemBackground:Landroid/widget/ImageView;

.field private final mMoreLinearItemText:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMoreLinearItemBackground(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->mMoreLinearItemBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMoreLinearItemText(Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->mMoreLinearItemText:Landroid/widget/TextView;

    return-object p0
.end method

.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 276
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 277
    sget v0, Lcom/transsion/camera/R$id;->linear_item_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->mMoreLinearItemBackground:Landroid/widget/ImageView;

    .line 278
    sget v0, Lcom/transsion/camera/R$id;->linear_item_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/linearlist/MoreLinearListAdapter$NormalItemViewHolder;->mMoreLinearItemText:Landroid/widget/TextView;

    return-void
.end method
