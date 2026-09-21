.class public Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;
.super Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;,
        Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationApplied:[Z

.field private mFirstVisibleItemPosition:I

.field private mIsLayoutCompleted:Z

.field private mIsRingScreenLight:Z

.field private mItemSize:I

.field private mOrientation:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static synthetic $r8$lambda$3ttJBcDHJP-cwHoHaAbd6cNl_mI(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;ILandroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l91vN8l32ybBCKJWIp9t4K3P3Ik(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    .line 234
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$um1d8-IUZZLFRIpzgG8lHKQjqTE(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;ILjava/lang/Integer;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->lambda$applyAlphaAnimation$2(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;ILjava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CelebrityItemAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mIsRingScreenLight:Z

    const/4 v1, -0x1

    .line 49
    iput v1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mFirstVisibleItemPosition:I

    .line 56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mAnimationApplied:[Z

    .line 57
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method private applyAlphaAnimation(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;I)V
    .registers 6

    .line 223
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mIsLayoutCompleted:Z

    if-eqz v0, :cond_5

    goto :goto_46

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mAnimationApplied:[Z

    aget-boolean v0, v0, p2

    if-nez v0, :cond_46

    .line 227
    iget v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mFirstVisibleItemPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 228
    iput p2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mFirstVisibleItemPosition:I

    .line 230
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>()V

    .line 231
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda2;

    const-class v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda3;-><init>()V

    .line 233
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$$ExternalSyntheticLambda1;-><init>(I)V

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;I)V

    .line 235
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_46
    :goto_46
    return-void
.end method

.method private synthetic lambda$applyAlphaAnimation$2(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;ILjava/lang/Integer;)V
    .registers 7

    .line 236
    sget-object v0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAlphaAnimation: firstVisibleItemPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mFirstVisibleItemPosition:I

    if-ne v1, v2, :cond_4a

    .line 238
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->-$$Nest$fgetmRootView(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mFirstVisibleItemPosition:I

    sub-int v2, p2, v2

    invoke-static {p1, v1, v2}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->-$$Nest$mapplyAlphaAnimation(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;Landroid/view/View;I)V

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mAnimationApplied:[Z

    const/4 v1, 0x1

    aput-boolean v1, p1, p2

    .line 240
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mFirstVisibleItemPosition:I

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyAlphaAnimation: mFirstVisibleItemPosition = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mFirstVisibleItemPosition:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;ILandroid/view/View;)V
    .registers 4

    .line 86
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->-$$Nest$fgetmRootView(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_22

    .line 89
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 90
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getOnItemClickListener()Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getOnItemClickListener()Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    move-result-object p0

    invoke-interface {p0, p3, p2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_22
    :goto_22
    return-void
.end method


# virtual methods
.method public varargs notifyDataChanged([I)V
    .registers 5

    if-eqz p1, :cond_13

    .line 293
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_13

    .line 296
    :cond_6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget v2, p1, v1

    .line 297
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-void

    .line 294
    :cond_13
    :goto_13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 39
    check-cast p1, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->onBindViewHolder(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;I)V
    .registers 11

    .line 79
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;

    if-eqz v2, :cond_43

    .line 81
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result v0

    const/4 v7, 0x0

    if-ne v0, p2, :cond_13

    const/4 v0, 0x1

    move v3, v0

    goto :goto_14

    :cond_13
    move v3, v7

    :goto_14
    iget-boolean v4, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mIsRingScreenLight:Z

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result v5

    move-object v1, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->-$$Nest$minitViewByItem(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;ZZII)V

    .line 82
    iget p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mItemSize:I

    invoke-virtual {v1, p1, v6}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->updateSize(II)V

    .line 83
    iget p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mOrientation:I

    invoke-virtual {v1, p1, v7}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->updateRotation(IZ)V

    .line 84
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->-$$Nest$fgetmRootView(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;)Landroid/view/View;

    move-result-object p1

    const p2, 0x3f6b851f    # 0.92f

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 85
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->-$$Nest$fgetmRootView(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1, v6}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-direct {p0, v1, v6}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->applyAlphaAnimation(Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;I)V

    :cond_43
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;
    .registers 4

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/transsion/camera/R$layout;->celebrity_view_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 74
    new-instance p1, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setAnimationApplied(Z)V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mAnimationApplied:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    const/4 p1, -0x1

    .line 249
    iput p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mFirstVisibleItemPosition:I

    const/4 p1, 0x0

    .line 250
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->setLayoutCompleted(Z)V

    return-void
.end method

.method public setLayoutCompleted(Z)V
    .registers 2

    .line 277
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mIsLayoutCompleted:Z

    return-void
.end method

.method public updateItemSize(I)V
    .registers 2

    .line 289
    iput p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mItemSize:I

    return-void
.end method

.method public updateOrientation(I)V
    .registers 5

    .line 254
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mOrientation:I

    if-eq v0, p1, :cond_13

    .line 255
    iput p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mOrientation:I

    .line 256
    new-array p1, v1, [I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->notifyDataChanged([I)V

    return-void

    .line 260
    :cond_13
    iput p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mOrientation:I

    .line 262
    :goto_15
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3c

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 264
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;

    if-nez v0, :cond_2e

    goto :goto_39

    .line 268
    :cond_2e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    if-gez v2, :cond_35

    goto :goto_39

    :cond_35
    const/4 v2, 0x1

    .line 272
    invoke-virtual {v0, p1, v2}, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItemHolder;->updateRotation(IZ)V

    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_3c
    return-void
.end method
