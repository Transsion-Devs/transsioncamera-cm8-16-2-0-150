.class public Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomItemViewHolder"
.end annotation


# instance fields
.field mCustomCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

.field mSortImageView:Landroid/widget/ImageView;

.field mTextWatermark:Landroid/widget/LinearLayout;

.field mTextWatermarkSummaryView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;


# direct methods
.method public static synthetic $r8$lambda$6k8SLasBK4KGLwutV4KPK7UGh6Y(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->lambda$initializeListener$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AS7VTM6Xv-gSc2OmAzKyknYSTcE(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->lambda$initializeListener$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;Landroid/view/View;)V
    .registers 3

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    .line 127
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 128
    sget p1, Lcom/transsion/camera/R$id;->text_water_mark:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mTextWatermark:Landroid/widget/LinearLayout;

    .line 129
    sget p1, Lcom/transsion/camera/R$id;->edit_watermark_item_sort_check_box:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OSCheckBox;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mCustomCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    .line 130
    sget p1, Lcom/transsion/camera/R$id;->text_water_mark_summary:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mTextWatermarkSummaryView:Landroid/widget/TextView;

    .line 131
    sget p1, Lcom/transsion/camera/R$id;->edit_watermark_item_sort_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mSortImageView:Landroid/widget/ImageView;

    .line 132
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->initializeListener()V

    return-void
.end method

.method private initializeListener()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mTextWatermark:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mCustomCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    new-instance v1, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private synthetic lambda$initializeListener$0(Landroid/view/View;)V
    .registers 2

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->-$$Nest$fgetmIsSortMode(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1a

    .line 140
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->-$$Nest$fgetmIProEditWatermarkEventListener(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;)Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->-$$Nest$fgetmIProEditWatermarkEventListener(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;)Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;->onCustomItemClick()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method private synthetic lambda$initializeListener$1(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->-$$Nest$fgetmIsSortMode(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1c

    .line 148
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->-$$Nest$fgetmIProEditWatermarkEventListener(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;)Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->this$0:Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;->-$$Nest$fgetmIProEditWatermarkEventListener(Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter;)Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$CustomItemViewHolder;->mCustomCheckBox:Lcom/transsion/widgetslib/view/OSCheckBox;

    invoke-interface {p1, p0, p2}, Lcom/transsion/camera/app/ui/prowatermark/ProEditWaterMarkRecyclerViewAdapter$IProEditWatermarkEventListener;->onCheckChangeListener(Landroid/widget/CheckBox;Z)V

    :cond_1c
    :goto_1c
    return-void
.end method
