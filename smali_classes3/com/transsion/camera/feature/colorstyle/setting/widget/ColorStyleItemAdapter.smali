.class public Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;,
        Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewAdapter;,
        Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItem;,
        Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_300:I = 0x12c

.field private static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_NAME_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final PROPERTY_NAME_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAnimationApplied:[Z

.field private final mColorStyleItemAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstVisibleItemPosition:I

.field private mIsLayoutCompleted:Z

.field private mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public static synthetic $r8$lambda$7QREMZOW-WwsuOHAnBP6NSf4-Dw(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->lambda$updateChildAdapter$0(Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N-KFwGF-TBISVyhtpznTisoMbPY(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Integer;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->lambda$applyAlphaAnimation$4(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PoTyLXkfvG1oG8PeD35TNQAhWVo(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 4

    .line 189
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

.method public static synthetic $r8$lambda$diZIpzCO6u46smv1VGQZaS5xjfU(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->lambda$onBindViewHolder$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w5xLIM-F1-5H-EUM7uy-cWRClb4(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;ILandroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->lambda$applyAlphaAnimation$3(ILandroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ColorStyleItemAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/res/Resources;[Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "[",
            "Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mColorStyleItemAdapters:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    const/4 v1, -0x1

    .line 46
    iput v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mFirstVisibleItemPosition:I

    .line 48
    new-instance v1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mResources:Landroid/content/res/Resources;

    .line 53
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateChildAdapter([Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;)V

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mAnimationApplied:[Z

    const/4 p0, 0x0

    .line 55
    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method private applyAlphaAnimation(Landroid/view/View;I)V
    .registers 11

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 215
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 216
    new-array v3, v2, [F

    fill-array-data v3, :array_62

    .line 217
    const-string v4, "scaleX"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v2, [F

    fill-array-data v4, :array_6a

    .line 218
    const-string v5, "scaleY"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v2, [F

    fill-array-data v5, :array_72

    .line 219
    const-string v6, "alpha"

    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    aput-object v5, v6, v2

    .line 216
    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 221
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v0, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    .line 222
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    int-to-long v2, p2

    const-wide/16 v4, 0x32

    mul-long/2addr v2, v4

    .line 223
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 224
    new-instance p2, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$1;

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$1;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 230
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_62
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_6a
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_72
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$applyAlphaAnimation$3(ILandroid/view/View;)V
    .registers 4

    .line 194
    iget v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mFirstVisibleItemPosition:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->applyAlphaAnimation(Landroid/view/View;I)V

    return-void
.end method

.method private synthetic lambda$applyAlphaAnimation$4(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/lang/Integer;)V
    .registers 7

    .line 191
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyAlphaAnimation: firstVisibleItemPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mFirstVisibleItemPosition:I

    if-ne v1, v2, :cond_49

    .line 193
    check-cast p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewHolder;

    new-instance v1, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;I)V

    .line 194
    invoke-interface {p1, p2, v1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewHolder;->applyAlphaAnimation(ILjava/util/function/Consumer;)V

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mAnimationApplied:[Z

    const/4 v1, 0x1

    aput-boolean v1, p1, p2

    .line 196
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mFirstVisibleItemPosition:I

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyAlphaAnimation: mFirstVisibleItemPosition = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mFirstVisibleItemPosition:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_49
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Landroid/view/View;)V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mResources:Landroid/content/res/Resources;

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->isRingScreenLight()Z

    move-result p0

    if-eqz p0, :cond_d

    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->filter_view_item_cover_screen_light:I

    goto :goto_f

    .line 118
    :cond_d
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->filter_view_item_cover:I

    :goto_f
    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 119
    invoke-virtual {p1, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$updateChildAdapter$0(Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;)V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mColorStyleItemAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mColorStyleItemAdapters:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewAdapter;

    invoke-direct {v1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$SplitItemViewAdapter;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mColorStyleItemAdapters:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected applyAlphaAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 6
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 178
    iget-boolean v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mIsLayoutCompleted:Z

    if-nez v0, :cond_4c

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4c

    .line 181
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mAnimationApplied:[Z

    aget-boolean v0, v0, p2

    if-nez v0, :cond_4c

    .line 182
    iget v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mFirstVisibleItemPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 183
    iput p2, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mFirstVisibleItemPosition:I

    .line 185
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>()V

    .line 186
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 187
    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda2;

    const-class v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$$ExternalSyntheticLambda3;-><init>()V

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda0;-><init>(I)V

    .line 189
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 190
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public getItemCount()I
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mColorStyleItemAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 74
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 76
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mColorStyleItemAdapters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    .line 78
    sget-object v2, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemList: itemAdapter.getColorStyleItems() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->getChildItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    invoke-interface {v1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->getChildItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_16

    :cond_48
    return-object v0
.end method

.method public getItemViewType(I)I
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_2e

    .line 136
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemViewType size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", position = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 140
    :cond_2e
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mColorStyleItemAdapters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    .line 142
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->isChildMatch(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 143
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->getChildItemViewType()I

    move-result p0

    return p0

    .line 146
    :cond_51
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "getItemViewType failed"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyDataChanged()V
    .registers 4

    .line 234
    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;

    iget-object v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$ItemInfoDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 236
    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 238
    iget-object v2, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 239
    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 7

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mColorStyleItemAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    .line 109
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->isChildMatch(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    sget-object v0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindViewHolder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    .line 111
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->getChildItemPosition(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", holder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->getChildItemPosition(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1, p1, v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->onBindChildViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 113
    instance-of v0, p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewHolder;

    if-eqz v0, :cond_78

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->applyAlphaAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 115
    check-cast p1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewHolder;

    new-instance p2, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;)V

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildViewHolder;->applySelectedBackground(Ljava/util/function/Consumer;)V

    :cond_78
    return-void

    .line 125
    :cond_79
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "onBindViewHolder failed."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 7

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mColorStyleItemAdapters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    .line 98
    sget-object v1, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateEffectItemViewHolder: viewType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->getChildItemViewType()I

    move-result v1

    if-ne p2, v1, :cond_6

    .line 100
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->onCreateChildViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0

    .line 103
    :cond_33
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "onCreateViewHolder failed."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setAnimationApplied(Z)V
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mAnimationApplied:[Z

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    const/4 p1, -0x1

    .line 205
    iput p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mFirstVisibleItemPosition:I

    const/4 p1, 0x0

    .line 206
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->setLayoutCompleted(Z)V

    return-void
.end method

.method public setLayoutCompleted(Z)V
    .registers 2

    .line 210
    iput-boolean p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mIsLayoutCompleted:Z

    return-void
.end method

.method public varargs updateChildAdapter([Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;",
            ")V"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mColorStyleItemAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1a

    aget-object v2, p1, v1

    .line 61
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 68
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mDataList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->getItemList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public updateItemStyle(II)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->clone()Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->update(II)V

    .line 152
    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    .line 153
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    move-result-object p0

    return-object p0
.end method

.method public updateItemStyle(ILandroid/graphics/Rect;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->clone()Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->update(ILandroid/graphics/Rect;)V

    .line 159
    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    .line 160
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    move-result-object p0

    return-object p0
.end method

.method public updateItemStyle(Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mColorStyleItemAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;

    .line 172
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter;->updateChildItemStyle(Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;)V

    goto :goto_6

    :cond_16
    return-object p0
.end method

.method public updateItemStyle(Z)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->clone()Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;->update(Z)V

    .line 166
    iput-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->mItemStyle:Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;

    .line 167
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;->updateItemStyle(Lcom/transsion/camera/app/ui/widget/recyclerview/IChildAdapter$ItemStyle;)Lcom/transsion/camera/feature/colorstyle/setting/widget/ColorStyleItemAdapter;

    move-result-object p0

    return-object p0
.end method
