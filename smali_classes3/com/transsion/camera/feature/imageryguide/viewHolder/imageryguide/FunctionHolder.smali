.class public Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mFirstRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mFunctionLayout:Landroid/widget/LinearLayout;

.field private mFunctitonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

.field private mItemDecoration:Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;

.field private mSecondRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSupportModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JeuXLPgF_bCBYI5K4DUuDt4CdCo(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sNNg3wDg8ptD0TFyrgvs4ecsvJU(Ljava/util/List;)Ljava/util/List;
    .registers 1

    .line 0
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnable(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;)Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEnable(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 4

    .line 46
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->initView()V

    return-void
.end method

.method private initView()V
    .registers 3

    .line 55
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->imagery_guide_function_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFunctionLayout:Landroid/widget/LinearLayout;

    .line 56
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mItemDecoration:Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFunctionLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->imagery_guide_function_first_recycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFirstRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFunctionLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$id;->imagery_guide_function_second_recycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mSecondRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;)Z
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mSupportModeList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getModeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public onBindViewHolder()V
    .registers 11

    .line 67
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->DEFAULT_FUNCTIONS:Ljava/util/List;

    .line 68
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mSupportModeList:Ljava/util/List;

    if-eqz v1, :cond_e

    .line 69
    new-instance v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 71
    :cond_e
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFunctitonList:Ljava/util/List;

    new-instance v2, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 72
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mSecondRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-ge v1, v3, :cond_28

    const/16 v1, 0x8

    goto :goto_29

    :cond_28
    move v1, v4

    :goto_29
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFunctitonList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move-object v5, v2

    goto :goto_4d

    .line 79
    :cond_3f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    move-object v1, v2

    .line 82
    :goto_4d
    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFirstRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v8, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFirstRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mItemDecoration:Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 84
    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFirstRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;

    iget-object v8, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mContext:Landroid/content/Context;

    invoke-direct {v7, p0, v8, v1, v5}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 85
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFirstRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mItemDecoration:Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 87
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mSecondRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_81

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mSecondRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    .line 93
    :cond_81
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFunctitonList:Ljava/util/List;

    const/16 v5, 0xc

    if-eqz v1, :cond_97

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {v1, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_a3

    .line 96
    :cond_97
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 99
    :goto_a3
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mSecondRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 100
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mSecondRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mItemDecoration:Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mSecondRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mSecondRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mItemDecoration:Lcom/transsion/camera/feature/imageryguide/ItemDecoration/FunctionItemDecoration;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mEnable:Z

    return-void
.end method

.method public updateFunctionList(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mFunctitonList:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->mSupportModeList:Ljava/util/List;

    return-void
.end method
