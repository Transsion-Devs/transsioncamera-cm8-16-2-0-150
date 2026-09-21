.class public Lcom/transsion/camera/app/ui/ModePanelUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModePanelUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;,
        Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;,
        Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

.field private mCacheEnable:Z

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFadeOutListener:Landroid/animation/Animator$AnimatorListener;

.field private mMarginalModeItemMargin:I

.field private mMaxShakeHeight:F

.field private mMiddleModeItemMargin:I

.field private mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

.field private mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

.field private mModePanelRootLayout:Landroid/view/ViewGroup;

.field private mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

.field private mModeUIItems:Ljava/util/List;

.field private mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

.field private mSellingPointItems:Ljava/util/List;

.field private mShakeAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mShakeHeight:I


# direct methods
.method public static synthetic $r8$lambda$Pc37XHNzyiCHb5xjIgqHwexjRKg(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCacheEnable(Lcom/transsion/camera/app/ui/ModePanelUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCacheEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraOperationControl(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePanelUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMarginalModeItemMargin(Lcom/transsion/camera/app/ui/ModePanelUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMarginalModeItemMargin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMiddleModeItemMargin(Lcom/transsion/camera/app/ui/ModePanelUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMiddleModeItemMargin:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeChangedListener(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePanelRecycleViewAdapter(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePanelRootLayout(Lcom/transsion/camera/app/ui/ModePanelUI;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePanelView(Lcom/transsion/camera/app/ui/ModePanelUI;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollConsumer(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/ui/ScrollConsumer;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitializeModePanelView(Lcom/transsion/camera/app/ui/ModePanelUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->initializeModePanelView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/ModePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModePanelUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ModeVerticalScroll;Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;Lcom/transsion/camera/app/mode/ModeOrderProvider;)V
    .registers 10

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    .line 66
    new-instance p6, Landroid/animation/AnimatorSet;

    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p6, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    .line 67
    new-instance p6, Landroid/animation/AnimatorSet;

    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p6, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 68
    new-instance p6, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p6, v2, v0, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p6, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 425
    new-instance p6, Lcom/transsion/camera/app/ui/ModePanelUI$2;

    invoke-direct {p6, p0}, Lcom/transsion/camera/app/ui/ModePanelUI$2;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    iput-object p6, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeOutListener:Landroid/animation/Animator$AnimatorListener;

    .line 457
    new-instance p6, Lcom/transsion/camera/app/ui/ModePanelUI$3;

    invoke-direct {p6, p0}, Lcom/transsion/camera/app/ui/ModePanelUI$3;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    iput-object p6, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 81
    iput-object p3, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    .line 83
    iput-object p4, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 84
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    .line 85
    iput-object p5, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    .line 86
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$array;->build_in_selling_points:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mSellingPointItems:Ljava/util/List;

    return-void
.end method

.method private varargs createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;
    .registers 5

    .line 445
    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 446
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private varargs createValueAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;I[I)Landroid/animation/Animator;
    .registers 4

    .line 451
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 452
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long p1, p2

    .line 453
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private initializeModePanelView()V
    .registers 6

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->marginal_mode_item_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMarginalModeItemMargin:I

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->middle_mode_item_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMiddleModeItemMargin:I

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->mode_panel_layout_shake_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeHeight:I

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->mode_picker_max_shake_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMaxShakeHeight:F

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/R$id;->mode_panel_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 354
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 355
    new-instance v0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/app/ui/ModePanelUI$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI-IA;)V

    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mOrderEditorFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;

    invoke-direct {v0, v1, v2, v4}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    .line 357
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 359
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 361
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;

    invoke-direct {v1, p0, v3}, Lcom/transsion/camera/app/ui/ModePanelUI$ModeItemDecoration;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI-IA;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private synthetic lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V
    .registers 5

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/app/ui/mode/ModeUIItem;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mSellingPointItems:Ljava/util/List;

    iget-object v2, p1, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 131
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-direct {v1, p1, p0}, Lcom/transsion/camera/app/ui/mode/ModeUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;Z)V

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private loadFadeInAnimator()V
    .registers 7

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mMaxShakeHeight:F

    sub-float/2addr v0, v1

    .line 395
    sget-object v1, Lcom/transsion/camera/app/ui/ModePanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[loadFadeInAnimator]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    const/4 v5, 0x0

    aput v5, v3, v0

    const-string/jumbo v0, "translationY"

    const/16 v5, 0x12c

    invoke-direct {p0, v1, v0, v5, v3}, Lcom/transsion/camera/app/ui/ModePanelUI;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    new-array v2, v2, [F

    fill-array-data v2, :array_84

    const-string v3, "alpha"

    invoke-direct {p0, v1, v3, v5, v2}, Lcom/transsion/camera/app/ui/ModePanelUI;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/Animator;

    move-result-object v1

    .line 400
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iget v3, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeHeight:I

    filled-new-array {v4, v3}, [I

    move-result-object v3

    const/16 v5, 0x64

    invoke-direct {p0, v2, v5, v3}, Lcom/transsion/camera/app/ui/ModePanelUI;->createValueAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;I[I)Landroid/animation/Animator;

    move-result-object v2

    .line 402
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeAnimatorListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iget v5, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mShakeHeight:I

    filled-new-array {v5, v4}, [I

    move-result-object v4

    const/16 v5, 0xc8

    invoke-direct {p0, v3, v5, v4}, Lcom/transsion/camera/app/ui/ModePanelUI;->createValueAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;I[I)Landroid/animation/Animator;

    move-result-object v3

    .line 405
    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    nop

    :array_84
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startShowAnimator()V
    .registers 2

    .line 381
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 382
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->loadFadeInAnimator()V

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mFadeInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 198
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 91
    sget p1, Lcom/transsion/camera/R$id;->mode_panel_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    .line 92
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setModePanelLayout(Landroid/view/ViewGroup;)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePickerScroll:Lcom/transsion/camera/app/ui/ModeVerticalScroll;

    new-instance p2, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/app/ui/ModePanelUI$PanelStateListener;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;Lcom/transsion/camera/app/ui/ModePanelUI-IA;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/ModeVerticalScroll;->setPanelStateListener(Lcom/transsion/camera/app/ui/ModeVerticalScroll$IPanelStateListener;)V

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAsyncInflater()Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$layout;->mode_panel_layout:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/transsion/camera/app/ui/ModePanelUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModePanelUI$1;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    invoke-virtual {p1, p2, v0, v1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public isPopSettingShow(Z)V
    .registers 2

    return-void
.end method

.method public modePanelScrollToTop()V
    .registers 2

    .line 501
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 502
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_8
    return-void
.end method

.method public notifyListTypeUpdate()V
    .registers 1

    return-void
.end method

.method public notifyWindowsHasFocus(Z)V
    .registers 2

    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .registers 2

    return-void
.end method

.method public pause()V
    .registers 1

    return-void
.end method

.method public performTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public refreshModePanelView()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    if-eqz v1, :cond_10

    .line 229
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateModeData(Ljava/util/List;)V

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 232
    :cond_10
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->modePanelScrollToTop()V

    return-void
.end method

.method public resetMoreModeToNormal()V
    .registers 1

    return-void
.end method

.method public restoreView()V
    .registers 1

    return-void
.end method

.method public setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V
    .registers 2

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 173
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCacheEnable:Z

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_9

    .line 175
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setIsModeSwitching(Z)V
    .registers 2

    return-void
.end method

.method public setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    return-void
.end method

.method public setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 4

    .line 129
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModeUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 130
    new-instance p2, Lcom/transsion/camera/app/ui/ModePanelUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ModePanelUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 133
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->refreshModePanelView()V

    return-void
.end method

.method public setModeNameBeforeSwitchMoreMode(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setModePanelGuideEnable(Z)V
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz p0, :cond_7

    .line 246
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setModePanelGuideEnable(Z)V

    :cond_7
    return-void
.end method

.method public setOnScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V
    .registers 2

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    return-void
.end method

.method public setViewEnable(Z)V
    .registers 2

    return-void
.end method

.method public setupViews()V
    .registers 1

    return-void
.end method

.method public show()V
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1a

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRootLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->startShowAnimator()V

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x42

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1a
    return-void
.end method

.method public shrinkModePanel()V
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz p0, :cond_7

    .line 253
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->onBackPressed()Z

    :cond_7
    return-void
.end method

.method public spreadModePanel()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_12

    .line 238
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->spreadModePanel()V

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x48

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_12
    return-void
.end method

.method public unInit()V
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_27

    .line 312
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 313
    :goto_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 314
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 316
    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;

    .line 317
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->getModeIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/utils/BitmapUtils;->releaseBitmap(Landroid/widget/ImageView;)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_27
    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mCurrentModeName:Ljava/lang/String;

    .line 139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    if-eqz p0, :cond_9

    .line 140
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public updateItemClickable(Z)V
    .registers 2

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI;->mModePanelRecycleViewAdapter:Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    if-eqz p0, :cond_7

    .line 147
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateItemClickable(Z)V

    :cond_7
    return-void
.end method
