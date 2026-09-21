.class public Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$IDetailItemClickListener;,
        Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_POSITION:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final detailItemClickListener:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$IDetailItemClickListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPage:I

.field private mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

.field private mDetailHorizontalItemBar:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

.field private mEnable:Z

.field private mIntroduceTextView:Landroid/widget/TextView;

.field private mPagerAdapter:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;

.field private mPosition:I

.field private final mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mViewPager:Landroidx/viewpager2/widget/ViewPager2;

.field private final onPageChangeListener:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDetailHorizontalItemBar(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailHorizontalItemBar:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnable(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPosition(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmReLoadListener(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewPager(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Landroidx/viewpager2/widget/ViewPager2;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentPage(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mCurrentPage:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_HorizontalHolder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mEnable:Z

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mCurrentPage:I

    .line 73
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$1;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->onPageChangeListener:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 139
    new-instance p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$2;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->detailItemClickListener:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$IDetailItemClickListener;

    .line 57
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mContext:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mReLoadListener:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI$IReLoadListener;

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->initView()V

    return-void
.end method

.method private initHorizontalItemBar()V
    .registers 5

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/imageryguide/utils/IconUtils;->getHorizontalIcon(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 125
    :goto_12
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 126
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailItemBeanList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/imageryguide/bean/DetailItemBean;->getItemName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 128
    :cond_34
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailHorizontalItemBar:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mCurrentPage:I

    invoke-virtual {v2, v0, v1, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->initData(Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 64
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_horizontal_viewpager:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 65
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_horizontal_item_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailHorizontalItemBar:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    .line 66
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_item_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mTitleTextView:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_item_introduce:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mIntroduceTextView:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->onPageChangeListener:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailHorizontalItemBar:Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->detailItemClickListener:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$IDetailItemClickListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->setOnItemClickListener(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$IDetailItemClickListener;)V

    return-void
.end method

.method private initViewPager()V
    .registers 3

    .line 116
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mPagerAdapter:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;

    .line 117
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mPagerAdapter:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mCurrentPage:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method


# virtual methods
.method public setEnable(Z)V
    .registers 2

    .line 132
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mEnable:Z

    return-void
.end method

.method public updateDetailItem(I)V
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mPagerAdapter:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$PagerAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public updateHorizontalHolder(Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;",
            ">;I)V"
        }
    .end annotation

    .line 82
    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mPosition:I

    .line 83
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    .line 84
    iget p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mCurrentPage:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_13

    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDefaultIndex()I

    move-result p2

    :cond_13
    iput p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mCurrentPage:I

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "string"

    if-eqz p1, :cond_62

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_47

    .line 89
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_47
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_62

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 98
    :cond_62
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/imageryguide/utils/IconUtils;->getTextIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 99
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ac

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mDetailBean:Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/imageryguide/bean/DetailBean;->getDetailDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_9e

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_9e
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mIntroduceTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eq p1, v0, :cond_ac

    .line 107
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->mIntroduceTextView:Landroid/widget/TextView;

    invoke-static {p2, v0, p1}, Lcom/transsion/camera/utils/UIUtils;->replaceTextViewWithIcon(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 111
    :cond_ac
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->initViewPager()V

    .line 112
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->initHorizontalItemBar()V

    return-void
.end method
