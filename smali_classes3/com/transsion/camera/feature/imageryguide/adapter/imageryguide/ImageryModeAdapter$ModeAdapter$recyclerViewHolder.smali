.class Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "recyclerViewHolder"
.end annotation


# instance fields
.field public mImageView:Landroid/widget/ImageView;

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;Landroid/view/View;)V
    .registers 3

    .line 181
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 182
    sget p1, Lcom/transsion/camera/feature/imageryguide/R$id;->mode_item_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;->mTextView:Landroid/widget/TextView;

    .line 183
    sget p1, Lcom/transsion/camera/feature/imageryguide/R$id;->mode_item_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter$recyclerViewHolder;->mImageView:Landroid/widget/ImageView;

    return-void
.end method
