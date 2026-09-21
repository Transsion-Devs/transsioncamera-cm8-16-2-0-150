.class Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field private final mImg:Landroid/widget/ImageView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmImg(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->mImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;Landroid/view/View;)V
    .registers 3

    .line 124
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 125
    sget p1, Lcom/transsion/camera/R$id;->pro_wm_tab_item_img:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->mImg:Landroid/widget/ImageView;

    .line 126
    sget p1, Lcom/transsion/camera/R$id;->pro_wm_tab_item_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->mTitle:Landroid/widget/TextView;

    return-void
.end method
