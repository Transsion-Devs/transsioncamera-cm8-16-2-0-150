.class public Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

.field private mImageModeAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;

.field private mModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPageIndicator:Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;

.field private mViewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private final onTouchListener:Landroid/view/View$OnTouchListener;

.field private final pageChangeListener:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# direct methods
.method public static synthetic $r8$lambda$2IZT-079NZKKP2X4p3PqWNCBI-A(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->lambda$updateModeLayout$1()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lemjCmSAcH3G_6UpmjhUgshiVks(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->lambda$updateModeLayout$0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPageIndicator(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;)Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mPageIndicator:Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$1;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->pageChangeListener:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 100
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$2;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 38
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->initView()V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 45
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->imagery_guide_mode_viewpager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 46
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->mode_guide_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mPageIndicator:Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->pageChangeListener:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private synthetic lambda$updateModeLayout$0()Ljava/util/List;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mDefaultModeList:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$updateModeLayout$1()Ljava/util/List;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mDefaultModeList:Ljava/util/List;

    return-object p0
.end method

.method private updateModeLayout()V
    .registers 7

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mModeList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;)V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 54
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mModeList:Ljava/util/List;

    new-instance v2, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;)V

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 56
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$id;->mode_guide_indicator:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-le v1, v4, :cond_33

    move v5, v3

    goto :goto_34

    :cond_33
    move v5, v4

    .line 57
    :goto_34
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v4

    :goto_3d
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 61
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x4

    if-le v1, v3, :cond_52

    .line 62
    sget v1, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_mode_container_height:I

    goto :goto_54

    :cond_52
    sget v1, Lcom/transsion/camera/feature/imageryguide/R$dimen;->imagery_guid_mode_container_height_small:I

    .line 61
    :goto_54
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 63
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder()V
    .registers 6

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->updateModeLayout()V

    .line 68
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mDefaultModeList:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mModeList:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mImageModeAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mPageIndicator:Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mImageModeAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->getItemCount()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->setPageSize(I)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mImageModeAdapter:Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/adapter/imageryguide/ImageryModeAdapter;->setEnable(Z)V

    return-void
.end method

.method public updateModeList(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/ModeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mModeList:Ljava/util/List;

    .line 75
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->mDefaultModeList:Ljava/util/List;

    return-void
.end method
