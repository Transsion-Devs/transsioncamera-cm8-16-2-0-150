.class Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration$IItemWidthProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;


# direct methods
.method public static synthetic $r8$lambda$WjaZeD96_WwRpy-vWCjPS6NDf5w(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;ILandroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .registers 3

    .line 171
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$OnItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_14

    .line 172
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$OnItemClickListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$OnItemClickListener;->onItemSelected(I)V

    .line 173
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_14
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStylesLength(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result p0

    return p0
.end method

.method public getItemWidth()I
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmImgWidth(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result p0

    return p0
.end method

.method public getVisibleItemCount()I
    .registers 1

    .line 191
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->getItemCount()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 130
    check-cast p1, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;I)V
    .registers 8

    .line 141
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmImg(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 142
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmImgWidth(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmImgHeight(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 144
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmImg(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmImg(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmImgWidth(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 147
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmImg(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 148
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmImg(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter$1;-><init>(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 154
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmImg(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStyleInfo(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getCurStyleIndex()I

    move-result v2

    if-ne v2, p2, :cond_59

    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmImgRes(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_5a

    :cond_59
    const/4 v2, 0x0

    :goto_5a
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmImg(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 156
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmImg(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmImg(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStyleInfo(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getStyleTabFor(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmTitle(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStylesLength(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_93

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmTitleMaxWidthThreeColumns(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result v3

    goto :goto_99

    :cond_93
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmTitleMaxWidthTwoColumns(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result v3

    :goto_99
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 160
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmTitle(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStyleInfo(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getCurStyleIndex()I

    move-result v3

    if-ne v3, p2, :cond_ae

    move v3, v1

    goto :goto_af

    :cond_ae
    move v3, v2

    :goto_af
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 161
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmTitle(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStyleInfo(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getStyleNameFor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmTitle(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStyleInfo(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getCurStyleIndex()I

    move-result v3

    if-ne v3, p2, :cond_da

    .line 163
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmSelectedColor(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result v3

    goto :goto_e0

    :cond_da
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmUnSelectedColor(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result v3

    .line 162
    :goto_e0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmTitle(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStyleInfo(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getCurStyleIndex()I

    move-result v3

    if-ne v3, p2, :cond_f6

    .line 165
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_f8

    :cond_f6
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 164
    :goto_f8
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 166
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmTitle(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStyleInfo(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getCurStyleIndex()I

    move-result v3

    if-ne v3, p2, :cond_10d

    const/4 v3, -0x1

    goto :goto_10e

    :cond_10d
    move v3, v2

    :goto_10e
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 167
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmTitle(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStyleInfo(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getCurStyleIndex()I

    move-result v3

    if-ne v3, p2, :cond_123

    move v3, v1

    goto :goto_124

    :cond_123
    move v3, v2

    :goto_124
    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 168
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmTitle(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStyleInfo(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getCurStyleIndex()I

    move-result v3

    if-ne v3, p2, :cond_138

    move v2, v1

    :cond_138
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 169
    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;->-$$Nest$fgetmTitle(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 170
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;
    .registers 6

    .line 135
    new-instance p2, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->pro_wm_style_tab_item:I

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;-><init>(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;Landroid/view/View;)V

    return-object p2
.end method
