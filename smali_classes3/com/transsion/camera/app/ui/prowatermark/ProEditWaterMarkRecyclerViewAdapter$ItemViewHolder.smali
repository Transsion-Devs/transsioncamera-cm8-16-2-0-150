.class public Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemViewHolder"
.end annotation


# instance fields
.field mCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

.field mRoot:Landroid/widget/RelativeLayout;

.field mSortImageView:Landroid/widget/ImageView;

.field mTitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;


# direct methods
.method public static synthetic $r8$lambda$TVBGc98n-V1DtscXs-u2OwWDiVY(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->lambda$initializeListener$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;Landroid/view/View;)V
    .registers 3

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    .line 100
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 101
    sget p1, Lcom/transsion/camera/R$id;->edit_watermark_item_ui_root:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mRoot:Landroid/widget/RelativeLayout;

    .line 102
    sget p1, Lcom/transsion/camera/R$id;->edit_watermark_item_ui_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mTitleView:Landroid/widget/TextView;

    .line 103
    sget p1, Lcom/transsion/camera/R$id;->edit_watermark_item_ui_check_box:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OSCheckBox;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    .line 104
    sget p1, Lcom/transsion/camera/R$id;->edit_watermark_item_sort_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mSortImageView:Landroid/widget/ImageView;

    .line 105
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->initializeListener()V

    return-void
.end method

.method private initializeListener()V
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initializeListener$0(Landroid/view/View;)V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->-$$Nest$fgetmIsSortMode(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1c

    .line 113
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->-$$Nest$fgetmIProEditWatermarkEventListener(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;)Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->-$$Nest$fgetmIProEditWatermarkEventListener(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;)Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$ItemViewHolder;->mCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;->onItemClick(Landroid/view/View;Landroid/widget/CheckBox;)V

    :cond_1c
    :goto_1c
    return-void
.end method
