.class public Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;,
        Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$OnItemClickListener;,
        Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;
    }
.end annotation


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFirstItemMarginLeft:I

.field private mImgHeight:I

.field private mImgRes:Landroid/graphics/drawable/Drawable;

.field private mImgWidth:I

.field private mItemGap:I

.field private mLastItemMarginRight:I

.field private mListener:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$OnItemClickListener;

.field private mRadius:I

.field private mSelectedColor:I

.field private mStyleInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

.field private mStylesLength:I

.field private mTitleMaxWidthThreeColumns:I

.field private mTitleMaxWidthTwoColumns:I

.field private mUnSelectedColor:I

.field private myAdapter:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmImgHeight(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mImgHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImgRes(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mImgRes:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImgWidth(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mImgWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$OnItemClickListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mListener:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$OnItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadius(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedColor(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mSelectedColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStyleInfo(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mStyleInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStylesLength(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mStylesLength:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitleMaxWidthThreeColumns(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mTitleMaxWidthThreeColumns:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitleMaxWidthTwoColumns(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mTitleMaxWidthTwoColumns:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnSelectedColor(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mUnSelectedColor:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProWMStyleTab"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initResources()V
    .registers 4

    .line 73
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->pro_wm_tab_item_first_margin_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mFirstItemMarginLeft:I

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->pro_wm_tab_item_last_margin_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mLastItemMarginRight:I

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->pro_wm_tab_item_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mItemGap:I

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->pro_wm_tab_item_img_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mImgHeight:I

    .line 77
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mStylesLength:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_40

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->pro_wm_tab_item_img_width_three_columns:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_4a

    .line 78
    :cond_40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$dimen;->pro_wm_tab_item_img_width_two_columns:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_4a
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mImgWidth:I

    .line 79
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mStylesLength:I

    if-lt v0, v1, :cond_5b

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->prowm_style_selected_item_3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_65

    .line 80
    :cond_5b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->prowm_style_selected_item_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_65
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mImgRes:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->pro_wm_tab_item_round_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mRadius:I

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->pro_wm_tab_item_title_max_width_two_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mTitleMaxWidthTwoColumns:I

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->pro_wm_tab_item_title_max_width_three_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mTitleMaxWidthThreeColumns:I

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->pro_wm_tab_item_selected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mSelectedColor:I

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$color;->pro_wm_tab_item_unselected_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mUnSelectedColor:I

    return-void
.end method

.method private setupRecyclerView()V
    .registers 7

    .line 89
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;-><init>(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->myAdapter:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;

    .line 91
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 92
    new-instance v0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$1;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$1;-><init>(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;Landroid/content/Context;IZ)V

    .line 104
    new-instance v1, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mFirstItemMarginLeft:I

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mLastItemMarginRight:I

    iget v4, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mItemGap:I

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/transsion/camera/app/common/recyclerview/MyRecyclerVIewItemDecoration;-><init>(IIIZ)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 105
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mStyleInfo:Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;

    .line 67
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ProWMPreviewInfo;->getStylesCount()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mStylesLength:I

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->initResources()V

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->setupRecyclerView()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 61
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$OnItemClickListener;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->mListener:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$OnItemClickListener;

    return-void
.end method
