.class public Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;
.super Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;,
        Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;
    }
.end annotation


# static fields
.field private static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_NAME_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final PROPERTY_NAME_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimationApplied:[Z

.field private mFirstVisibleItemPosition:I

.field private mIsLayoutCompleted:Z

.field private mIsRingScreenLight:Z

.field private mItemSize:I

.field protected mOrientation:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mScreenFormType:I


# direct methods
.method public static synthetic $r8$lambda$51bAxyGKFxKAG2scepRAQX0Wytg(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;ILandroid/view/accessibility/AccessibilityManager;Landroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;ILandroid/view/accessibility/AccessibilityManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HjW7pkRH8J6ikH8leWJhizyPMCM(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    .line 253
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

.method public static synthetic $r8$lambda$c0sdoXiHN1a4wyhYCyygGbGr2oY(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;ILjava/lang/Integer;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->lambda$applyAlphaAnimation$2(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;ILjava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FilterRecyclerViewAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4

    .line 186
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mIsRingScreenLight:Z

    const/4 v1, -0x1

    .line 47
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mFirstVisibleItemPosition:I

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mAnimationApplied:[Z

    .line 188
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method private synthetic lambda$applyAlphaAnimation$2(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;ILjava/lang/Integer;)V
    .registers 7

    .line 255
    sget-object v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAlphaAnimation: firstVisibleItemPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mFirstVisibleItemPosition:I

    if-ne v1, v2, :cond_46

    .line 257
    iget-object v1, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    sub-int v2, p2, v2

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->applyAlphaAnimation(Landroid/view/View;I)V

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mAnimationApplied:[Z

    const/4 v1, 0x1

    aput-boolean v1, p1, p2

    .line 259
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mFirstVisibleItemPosition:I

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyAlphaAnimation: mFirstVisibleItemPosition = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mFirstVisibleItemPosition:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;ILandroid/view/accessibility/AccessibilityManager;Landroid/view/View;)V
    .registers 5

    .line 225
    iget-object p1, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_24

    .line 228
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getOnItemClickListener()Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 229
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getOnItemClickListener()Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;

    move-result-object p1

    invoke-interface {p1, p4, p2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    if-eqz p3, :cond_24

    .line 230
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    .line 231
    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->notifyDataChanged([I)V

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method protected applyAlphaAnimation(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V
    .registers 6

    .line 242
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mIsLayoutCompleted:Z

    if-eqz v0, :cond_5

    goto :goto_46

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mAnimationApplied:[Z

    aget-boolean v0, v0, p2

    if-nez v0, :cond_46

    .line 246
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mFirstVisibleItemPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 247
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mFirstVisibleItemPosition:I

    .line 249
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>()V

    .line 250
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda2;

    const-class v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda3;-><init>()V

    .line 252
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda4;-><init>(I)V

    .line 253
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V

    .line 254
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_46
    :goto_46
    return-void
.end method

.method protected isChildAdapter()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isRingScreenLight()Z
    .registers 1

    .line 281
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mIsRingScreenLight:Z

    return p0
.end method

.method protected varargs notifyDataChanged([I)V
    .registers 5

    if-eqz p1, :cond_13

    .line 316
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_13

    .line 319
    :cond_6
    array-length v0, p1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_12

    aget v2, p1, v1

    .line 320
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return-void

    .line 317
    :cond_13
    :goto_13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V
    .registers 7
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 206
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    if-eqz v0, :cond_53

    .line 208
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/GridRecyclerView$RecycleAdapter;->getCurSelectIndex()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, p2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mIsRingScreenLight:Z

    invoke-virtual {p1, v0, v1, v3}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->initViewByItem(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;ZZ)V

    .line 209
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mItemSize:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mScreenFormType:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->updateSize(II)V

    .line 210
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mOrientation:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->updateRotation(IIZ)V

    .line 211
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$1;-><init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V

    .line 222
    iget-object v1, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    const v2, 0x3f6b851f    # 0.92f

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 223
    iget-object v0, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 224
    iget-object v1, p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->root:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;ILandroid/view/accessibility/AccessibilityManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->applyAlphaAnimation(Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;I)V

    :cond_53
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;
    .registers 4

    .line 195
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p0, :cond_12

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_12

    .line 198
    :cond_f
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->filter_view_item:I

    goto :goto_14

    .line 196
    :cond_12
    :goto_12
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$layout;->filter_view_item_ui4:I

    .line 200
    :goto_14
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 201
    new-instance p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setAnimationApplied(Z)V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mAnimationApplied:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    const/4 p1, -0x1

    .line 268
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mFirstVisibleItemPosition:I

    const/4 p1, 0x0

    .line 269
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->setLayoutCompleted(Z)V

    return-void
.end method

.method public setLayoutCompleted(Z)V
    .registers 2

    .line 273
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mIsLayoutCompleted:Z

    return-void
.end method

.method public updateItemSize(I)V
    .registers 2

    .line 285
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mItemSize:I

    return-void
.end method

.method public updateRingScreenLight(Z)V
    .registers 2

    .line 277
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mIsRingScreenLight:Z

    return-void
.end method

.method public updateScreenFormAndOrientation(II)V
    .registers 6

    .line 289
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mScreenFormType:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_45

    .line 290
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mOrientation:I

    if-eq v0, p2, :cond_10

    goto :goto_45

    .line 297
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_44

    iget p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mOrientation:I

    if-ne p1, p2, :cond_19

    goto :goto_44

    .line 300
    :cond_19
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mOrientation:I

    .line 301
    :goto_1b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_44

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;

    if-nez p1, :cond_34

    goto :goto_41

    .line 307
    :cond_34
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v0

    if-gez v0, :cond_3b

    goto :goto_41

    .line 311
    :cond_3b
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mScreenFormType:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemHolder;->updateRotation(IIZ)V

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_44
    :goto_44
    return-void

    .line 291
    :cond_45
    :goto_45
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mScreenFormType:I

    .line 292
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->mOrientation:I

    .line 293
    new-array p1, v1, [I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter;->notifyDataChanged([I)V

    return-void
.end method
