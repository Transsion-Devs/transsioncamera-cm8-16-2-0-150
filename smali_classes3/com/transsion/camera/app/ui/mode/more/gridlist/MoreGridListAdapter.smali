.class public Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;,
        Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridItemDragListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;

.field private mDragEnterListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridItemDragListener;

.field private mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

.field private mEnable:Z

.field private final mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mHideAnimatorSetList:Ljava/util/List;

.field private mIsEditMode:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private final mModeItemTextAllCaps:Z

.field private mSecureCamera:Z

.field private mShowAnimatorSetList:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$DdAtd4_2kA5huNSZ8MRpYwkRPaA(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 208
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->scaleItem(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$MUrwhUy7-l4s8LXRapaK0JNcW4U(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 204
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->scaleItem(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$jLBQusvzm6WS2JVQGouXPMamnIQ(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V
    .registers 2

    const v0, 0x3f733333    # 0.95f

    .line 194
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->scaleItem(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$o_TZ2aV4oG1mm5QjaDPg-eranps(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 190
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->scaleItem(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEnable(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeChangedListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecureCamera(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mSecureCamera:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartDragAndDrop(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->startDragAndDrop(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoreGridListAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/GridLayoutManager;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .registers 9

    .line 83
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 54
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 66
    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 86
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$bool;->mode_item_text_all_caps:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mModeItemTextAllCaps:Z

    return-void
.end method

.method private hideViewWithAnimation(Landroid/view/View;)V
    .registers 10

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    .line 252
    sget-object p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "hideViewWithAnimation  view is not visible"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mShowAnimatorSetList:Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 256
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 257
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 258
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_16

    :cond_2c
    const/4 v0, 0x2

    .line 262
    new-array v1, v0, [F

    fill-array-data v1, :array_80

    const-string v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 263
    new-array v2, v0, [F

    fill-array-data v2, :array_88

    const-string v3, "scaleY"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 264
    new-array v3, v0, [F

    fill-array-data v3, :array_90

    const-string v4, "alpha"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 265
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 266
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mHideAnimatorSetList:Ljava/util/List;

    if-eqz v5, :cond_5a

    .line 267
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5a
    const-wide/16 v5, 0x96

    .line 269
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v1, v6, v2

    aput-object v3, v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$1;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_80
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_88
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_90
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showOrHideSellingPoint(Landroid/view/View;I)V
    .registers 4

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 220
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 221
    iget-boolean p2, p2, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->mIsSellingPoint:Z

    if-eqz p2, :cond_21

    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getVal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_21

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    if-nez p0, :cond_21

    const/4 p0, 0x0

    .line 222
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_21
    const/16 p0, 0x8

    .line 224
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showViewWithAnimation(Landroid/view/View;)V
    .registers 9

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mHideAnimatorSetList:Ljava/util/List;

    if-eqz v0, :cond_1e

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    .line 231
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 232
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_8

    :cond_1e
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    .line 238
    new-array v2, v1, [F

    fill-array-data v2, :array_70

    const-string v3, "scaleX"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 239
    new-array v3, v1, [F

    fill-array-data v3, :array_78

    const-string v4, "scaleY"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 240
    new-array v4, v1, [F

    fill-array-data v4, :array_80

    const-string v5, "alpha"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 241
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 242
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mShowAnimatorSetList:Ljava/util/List;

    if-eqz v5, :cond_54

    .line 243
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    const-wide/16 v5, 0x96

    .line 245
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v0

    const/4 v0, 0x1

    aput-object v3, v6, v0

    aput-object p1, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_70
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_78
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_80
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDragAndDrop(Landroid/view/View;)V
    .registers 3

    .line 315
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDragEnterListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridItemDragListener;

    if-eqz p0, :cond_9

    .line 316
    const-string v0, "grid_item_view"

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridItemDragListener;->onGridItemDragStart(Landroid/view/View;Ljava/lang/String;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public addItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;I)V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method

.method public containData(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)Z
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemList()Ljava/util/List;
    .registers 5

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    .line 139
    new-instance v2, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 140
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    .line 141
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 142
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    .line 143
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    iput v1, v2, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    .line 144
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_3a
    return-object v0
.end method

.method public getItemPosition(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)I
    .registers 2

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mGridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_b

    const/4 p0, 0x2

    return p0

    :cond_b
    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 45
    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;I)V
    .registers 10

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    .line 152
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_18

    .line 154
    :cond_13
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :goto_18
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    const-string v3, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    if-ne v0, v1, :cond_95

    .line 157
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreGridItemIcon(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 159
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreGridItemTitle(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_5b

    .line 161
    :cond_52
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreGridItemTitle(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mModeItemTextAllCaps:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 163
    :goto_5b
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreGridItemTitle(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreGridSellingPoint(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$drawable;->ic_more_selling_point:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    if-eqz v0, :cond_85

    .line 166
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreGridBackground(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->showViewWithAnimation(Landroid/view/View;)V

    goto :goto_8c

    .line 168
    :cond_85
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreGridBackground(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->hideViewWithAnimation(Landroid/view/View;)V

    .line 170
    :goto_8c
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreGridSellingPoint(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->showOrHideSellingPoint(Landroid/view/View;I)V

    goto/16 :goto_199

    .line 171
    :cond_95
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_199

    .line 172
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreLinearModeIcon(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v4

    iget v4, v4, Lcom/transsion/camera/app/common/FeatureResource;->mIconId:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 174
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreLinearModeTitle(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_d6

    .line 176
    :cond_cd
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreLinearModeTitle(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mModeItemTextAllCaps:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 178
    :goto_d6
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreLinearModeTitle(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreLinearModeDesc(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v3

    iget-object v3, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureDescription:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreLinearSellingPoint(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    sget v3, Lcom/transsion/camera/R$drawable;->ic_more_selling_point:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    const-wide/16 v3, 0x96

    if-eqz v0, :cond_151

    .line 183
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreLinearRootLayout(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/transsion/camera/R$drawable;->ic_more_linear_item_edit_bg:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 184
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmAnimFlag(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 185
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->updateAnimFlag(Z)V

    .line 186
    new-array v0, v1, [F

    fill-array-data v0, :array_1bc

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 188
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_192

    .line 194
    :cond_144
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreLinearRootLayout(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_192

    .line 197
    :cond_151
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreLinearRootLayout(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lcom/transsion/camera/R$drawable;->ic_more_linear_item_bg:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmAnimFlag(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 199
    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->updateAnimFlag(Z)V

    .line 200
    new-array v0, v1, [F

    fill-array-data v0, :array_1c4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 202
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mBgPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_192

    .line 208
    :cond_186
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreLinearRootLayout(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 212
    :goto_192
    invoke-static {p1}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;->-$$Nest$fgetmMoreLinearSellingPoint(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->showOrHideSellingPoint(Landroid/view/View;I)V

    .line 214
    :cond_199
    :goto_199
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;->getFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/mode/more/AbstractItemView;->setModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V

    return-void

    :array_1bc
    .array-data 4
        0x3f800000    # 1.0f
        0x3f733333    # 0.95f
    .end array-data

    :array_1c4
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_d

    .line 286
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/R$layout;->more_linear_list_item:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_15

    .line 288
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/camera/R$layout;->more_grid_list_item:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 290
    :goto_15
    new-instance v0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$ViewHolder;-><init>(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public onDragStop()V
    .registers 2

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method

.method public removeItem(I)V
    .registers 2

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public resetFlag()V
    .registers 2

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method

.method public setDragEnterListener(Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridItemDragListener;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDragEnterListener:Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter$GridItemDragListener;

    return-void
.end method

.method public setDraggingModeUIItem(Lcom/transsion/camera/app/ui/mode/ModeUIItem;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDraggingModeUIItem:Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    return-void
.end method

.method public setEditMode(Z)V
    .registers 2

    .line 306
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    if-eqz p1, :cond_c

    .line 308
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mShowAnimatorSetList:Ljava/util/List;

    return-void

    .line 310
    :cond_c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mHideAnimatorSetList:Ljava/util/List;

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 101
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mEnable:Z

    return-void
.end method

.method public updateModeData(Ljava/util/List;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

.method public updateSecureCamera(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/more/gridlist/MoreGridListAdapter;->mSecureCamera:Z

    return-void
.end method
