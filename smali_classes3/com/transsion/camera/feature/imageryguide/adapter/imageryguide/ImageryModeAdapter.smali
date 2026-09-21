.class public Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModePagerHolder;,
        Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultModeDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation
.end field

.field private mEnable:Z

.field private mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

.field private final mModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$dgg1kFZkPjz3i3VOU_9WUmZK04s(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 88
    const/4 p0, 0x1

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnable(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;)Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEnable(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mEnable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mEnable:Z

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mModeList:Ljava/util/List;

    .line 45
    iput-object p4, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    .line 46
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mDefaultModeDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mModeList:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mDefaultModeDataList:Ljava/util/List;

    invoke-static {v0, p0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x41000000    # 8.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public onBindRecyclerViewData(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModePagerHolder;I)V
    .registers 13

    .line 70
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/imageryguide/R$id;->base_recyclerview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 72
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mModeList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    mul-int/lit8 v2, p2, 0x8

    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 p2, p2, 0x8

    .line 77
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {v0, v2, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    move-object v5, p2

    move-object v6, v1

    goto :goto_45

    .line 79
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mDefaultModeDataList:Ljava/util/List;

    mul-int/lit8 v2, p2, 0x8

    add-int/lit8 p2, p2, 0x1

    mul-int/lit8 p2, p2, 0x8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-interface {v0, v2, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    move-object v6, p2

    move-object v5, v1

    .line 82
    :goto_45
    new-instance v2, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModeAdapter;-><init>(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    new-instance v4, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;

    iget-object p0, v3, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_mode_item_spacing:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object p0, v3, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_mode_item_top_margin:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object p0, v3, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_mode_item_edge_margin:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object p0, v3, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_mode_item_bottom_margin:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v5, 0x4

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/ModeItemDecoration;-><init>(IIIII)V

    .line 83
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 88
    new-instance p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    new-instance p2, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$1;

    invoke-direct {p2, v3, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$1;-><init>(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 32
    check-cast p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModePagerHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModePagerHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModePagerHolder;I)V
    .registers 3

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->onBindRecyclerViewData(Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModePagerHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModePagerHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModePagerHolder;
    .registers 4

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/imageryguide/R$layout;->base_recyclerview_item_layout:I

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 54
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModePagerHolder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter$ModePagerHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setEnable(Z)V
    .registers 2

    .line 100
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->mEnable:Z

    return-void
.end method
