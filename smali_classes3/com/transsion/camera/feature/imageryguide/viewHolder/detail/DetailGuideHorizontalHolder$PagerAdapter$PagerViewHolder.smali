.class Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PagerViewHolder"
.end annotation


# instance fields
.field imageFailedView:Landroid/widget/ImageView;

.field imageView:Landroid/widget/ImageView;

.field loadingView:Lcom/transsion/widgetslib/view/OSLoadingView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;Landroid/view/View;)V
    .registers 3

    .line 213
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 214
    sget p1, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_pager_item_img:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;->imageView:Landroid/widget/ImageView;

    .line 215
    sget p1, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_pager_item_img_loading_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OSLoadingView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;->loadingView:Lcom/transsion/widgetslib/view/OSLoadingView;

    .line 216
    sget p1, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_img_load_filed:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter$PagerViewHolder;->imageFailedView:Landroid/widget/ImageView;

    return-void
.end method
