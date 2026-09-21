.class public Lcom/transsion/camera/app/ui/view/FloatingShutterView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;,
        Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;,
        Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;,
        Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;
    }
.end annotation


# static fields
.field private static final SCREEN_FORM_TYPE_LIST:Ljava/util/List;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlwaysEnableShutter:Z

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCurrentAlpha:F

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDownRawX:F

.field private mDownRawY:F

.field private mEnableFloating:Z

.field private mEnabled:Z

.field private mFloatingShutterDelete:Landroid/widget/ImageView;

.field private mFloatingShutterDetail:Landroid/widget/ImageView;

.field private mFloatingShutterEditLayout:Landroid/widget/FrameLayout;

.field private mFloatingShutterLayout:Landroid/widget/FrameLayout;

.field private mFloatingShutterRoot:Landroid/widget/FrameLayout;

.field private mGestureDetector:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

.field private mIsEditMode:Z

.field private mIsResume:Z

.field private mMotionEventFinish:Z

.field private mOrientation:I

.field private mRootView:Landroid/view/View;

.field private mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mScreenFormType:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShutterUICallback:Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;

.field private mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;


# direct methods
.method public static synthetic $r8$lambda$7KyOHtwaQ_r07xSHpD-y91bFKD0(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->lambda$inflateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IeOUGnwNKpin3rAEetGUEc-gqAg(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->lambda$inflateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kb2uFkymGDGtlNuaLTiXTfMehow(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->lambda$inflateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEr9XUSa7wRx119S98_PMrsNHSM(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->lambda$show$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$kJfVsUVkT1iOBfLg9A_0Seb0fng(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->lambda$hide$4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingShutterEditLayout(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterEditLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingShutterLayout(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/widget/FrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEditMode(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mIsEditMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsResume(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mIsResume:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentAlpha(Lcom/transsion/camera/app/ui/view/FloatingShutterView;F)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mCurrentAlpha:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnableFloating(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mEnableFloating:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsEditMode(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mIsEditMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FloatingShutterView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 58
    new-instance v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->SCREEN_FORM_TYPE_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 83
    iput p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mCurrentAlpha:F

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mMotionEventFinish:Z

    const/4 p2, 0x0

    .line 88
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mAlwaysEnableShutter:Z

    .line 89
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mEnabled:Z

    .line 104
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->inflateView()V

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->init()V

    return-void
.end method

.method private getPortraitDisplaySize()Landroid/util/Size;
    .registers 3

    .line 520
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 521
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 522
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_36

    .line 524
    :cond_22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 525
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 527
    :goto_36
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method private getPosition()Landroid/graphics/Point;
    .registers 6

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const v1, 0x3f35c28f    # 0.71f

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_floating_shutter_ui_percent_pos_x"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 501
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const v2, 0x3f0a3d71    # 0.54f

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_floating_shutter_ui_percent_pos_y"

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 502
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->getPortraitDisplaySize()Landroid/util/Size;

    move-result-object v2

    .line 503
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 504
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 505
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/transsion/camera/R$dimen;->shutter_button_size:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 506
    new-instance v4, Landroid/graphics/Point;

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float/2addr v3, p0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    invoke-direct {v4, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method

.method private inflateView()V
    .registers 5

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$layout;->floating_shutter_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->always_enable_shutter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mAlwaysEnableShutter:Z

    .line 318
    sget v0, Lcom/transsion/camera/R$id;->floating_shutter_root_group:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    .line 319
    sget v1, Lcom/transsion/camera/R$id;->floating_shutter_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterRoot:Landroid/widget/FrameLayout;

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->floating_shutter_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->floating_shutter_edit_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterEditLayout:Landroid/widget/FrameLayout;

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->floating_shutter_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterDetail:Landroid/widget/ImageView;

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->floating_shutter_delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterDelete:Landroid/widget/ImageView;

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->floating_shutter_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 325
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/transsion/camera/app/ui/view/FloatingShutterView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterDelete:Landroid/widget/ImageView;

    new-instance v2, Lcom/transsion/camera/app/ui/view/FloatingShutterView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterDetail:Landroid/widget/ImageView;

    new-instance v2, Lcom/transsion/camera/app/ui/view/FloatingShutterView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 359
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v1, v0, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private synthetic lambda$hide$4()V
    .registers 2

    .line 713
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_9

    const/16 v0, 0xe4

    .line 714
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$inflateView$0(Landroid/view/View;)V
    .registers 2

    .line 327
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mAlwaysEnableShutter:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mEnabled:Z

    if-nez p1, :cond_10

    .line 328
    sget-object p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFloatingShutterLayout onClick, shutter always enabled, but do not response this time"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 332
    sget-object p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "inflateView: shutter ui is processing, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 335
    :cond_22
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mShutterUICallback:Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;

    if-eqz p0, :cond_29

    .line 336
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;->onTriggerShutterClick()V

    :cond_29
    return-void
.end method

.method private synthetic lambda$inflateView$1(Landroid/view/View;)V
    .registers 6

    .line 340
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_floating_shutter_ui_state"

    const-string v3, "floating_shutter_ui_hide"

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mShutterUICallback:Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;

    if-eqz p1, :cond_21

    .line 342
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->resetState()V

    .line 343
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterEditLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mShutterUICallback:Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;->onFloatingShutterUIRemoved()V

    :cond_21
    return-void
.end method

.method private synthetic lambda$inflateView$2(Landroid/view/View;)V
    .registers 3

    .line 348
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mAlwaysEnableShutter:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mEnabled:Z

    if-nez p1, :cond_10

    .line 349
    sget-object p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFloatingShutterDetail onClick, shutter always enabled, but do not response this time"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 352
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mShutterUICallback:Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;

    if-eqz p1, :cond_24

    .line 353
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mShutterUICallback:Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;->onGotoDetailPage()V

    :cond_24
    return-void
.end method

.method private synthetic lambda$show$3()V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 694
    iput v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mCurrentAlpha:F

    .line 695
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateFloatingShutterLayoutDelay()V

    return-void
.end method

.method private resetState()V
    .registers 4

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mIsEditMode:Z

    .line 364
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->startOriginalScaleAnimator()V

    return-void
.end method

.method private setPosition(II)V
    .registers 7

    .line 510
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->getPortraitDisplaySize()Landroid/util/Size;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    .line 511
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    .line 512
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_floating_shutter_ui_percent_pos_x"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 514
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v0, "key_floating_shutter_ui_percent_pos_y"

    invoke-virtual {p1, v0, p2, p0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private translateLayout(II)V
    .registers 9

    .line 555
    sget-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "posX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", posY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 560
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_44

    .line 564
    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    goto :goto_45

    :cond_44
    move v3, v4

    .line 566
    :goto_45
    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v5, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenWidth:I

    sub-int/2addr v5, v0

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 567
    iget v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mOrientation:I

    const/16 v5, 0x10e

    if-ne v0, v5, :cond_69

    iget v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenFormType:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_5e

    const/4 v5, 0x5

    if-ne v0, v5, :cond_69

    .line 569
    :cond_5e
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/transsion/camera/R$dimen;->floating_shutter_expand_270_gap_size:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v3, v0

    :cond_69
    const/16 v0, 0x23

    if-lt v2, v0, :cond_80

    .line 572
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenHeight:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_8c

    .line 573
    :cond_80
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenHeight:I

    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 574
    :goto_8c
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateMargins(II)V

    .line 575
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->setPosition(II)V

    return-void
.end method

.method private updateLayoutParams()V
    .registers 12

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_ac

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterEditLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_e

    goto/16 :goto_ac

    .line 182
    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 183
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 184
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterEditLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/R$dimen;->floating_shutter_root_group_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->floating_shutter_root_group_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/R$dimen;->floating_shutter_root_group_expand_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/R$dimen;->floating_shutter_root_group_expand_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/R$dimen;->floating_shutter_edit_layout_expand_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 192
    iget v8, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenFormType:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_77

    const/4 v10, 0x4

    if-eq v8, v10, :cond_77

    const/4 v10, 0x5

    if-ne v8, v10, :cond_62

    goto :goto_77

    .line 206
    :cond_62
    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterRoot:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setRotation(F)V

    .line 207
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 208
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x51

    .line 209
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v3, 0x0

    .line 210
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 211
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_9d

    .line 195
    :cond_77
    :goto_77
    iget v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mOrientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_89

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_82

    goto :goto_89

    .line 198
    :cond_82
    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterRoot:Landroid/widget/FrameLayout;

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_91

    .line 196
    :cond_89
    :goto_89
    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterRoot:Landroid/widget/FrameLayout;

    rsub-int v3, v3, 0x168

    int-to-float v3, v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setRotation(F)V

    .line 200
    :goto_91
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 201
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x11

    .line 202
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 203
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 204
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 213
    :goto_9d
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterEditLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_ac
    :goto_ac
    return-void
.end method

.method private updateMargins(II)V
    .registers 5

    .line 579
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 580
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public exitEditMode()Z
    .registers 3

    .line 473
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mIsEditMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method

.method public getRootViewVisibility()I
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    if-nez p0, :cond_7

    const/16 p0, 0x8

    return p0

    .line 232
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public hide(Landroid/view/View;Z)V
    .registers 8

    if-eqz p2, :cond_54

    .line 703
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 705
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 706
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 707
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 708
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 709
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 710
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x12c

    .line 711
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)V

    .line 712
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$HideRunnable;-><init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Landroid/view/View;)V

    .line 717
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 718
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 720
    :cond_54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init()V
    .registers 5

    .line 109
    sget-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 111
    new-instance v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;-><init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;Lcom/transsion/camera/app/ui/view/FloatingShutterView-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    .line 112
    new-instance v0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$GestureListener;-><init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)V

    invoke-direct {v0, v2, v3, v1}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mGestureDetector:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenWidth:I

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenHeight:I

    return-void
.end method

.method public initialCoordinate()V
    .registers 3

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->getPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 119
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateMargins(II)V

    return-void
.end method

.method public onConfigurationChanged()V
    .registers 2

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenWidth:I

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenHeight:I

    .line 238
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateLayoutParams()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 219
    iput p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mOrientation:I

    .line 220
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateLayoutParams()V

    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 2

    .line 172
    iput p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenFormType:I

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateLayoutParams()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 371
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 372
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_d

    return v1

    .line 375
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 376
    sget-object p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onTouch: shutter ui is processing, return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_1f
    if-eqz p1, :cond_c8

    if-eq p1, v2, :cond_a4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_28

    goto/16 :goto_f2

    .line 394
    :cond_28
    sget-object p1, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch, ACTION_MOVE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mEnableFloating:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 395
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mEnableFloating:Z

    if-eqz p1, :cond_f2

    .line 396
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDownRawX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float p1, p1, v1

    if-gtz p1, :cond_64

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDownRawY:F

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_a3

    .line 397
    :cond_64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 398
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 399
    iget v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenFormType:I

    if-eq v3, v2, :cond_8f

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8f

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9d

    .line 402
    :cond_8f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v0

    sub-int v1, p2, v1

    .line 404
    :cond_9d
    invoke-direct {p0, p1, v1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->translateLayout(II)V

    .line 405
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->triggerMoveAction()V

    :cond_a3
    return v2

    .line 411
    :cond_a4
    sget-object p1, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch, ACTION_UP: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mEnableFloating:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 412
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mEnableFloating:Z

    if-eqz p1, :cond_c3

    .line 413
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->triggerUpAction()V

    .line 415
    :cond_c3
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mMotionEventFinish:Z

    .line 416
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mEnableFloating:Z

    goto :goto_f2

    .line 381
    :cond_c8
    sget-object p1, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onTouch, ACTION_DOWN"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mShutterUICallback:Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;

    if-eqz p1, :cond_d6

    .line 383
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;->onFloatingCameraButtonTouchDown()V

    .line 385
    :cond_d6
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mMotionEventFinish:Z

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterEditLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_e6

    .line 387
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->removeFloatingShutterLayoutDelay()V

    .line 388
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->startDownScaleAnimator()V

    .line 390
    :cond_e6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDownRawX:F

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDownRawY:F

    .line 421
    :cond_f2
    :goto_f2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mGestureDetector:Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 3

    .line 123
    sget-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mIsResume:Z

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->exitEditMode()Z

    .line 126
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->saveState()V

    return-void
.end method

.method public removeFloatingShutterLayoutDelay()V
    .registers 3

    .line 299
    sget-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "removeFloatingShutterLayoutDelay"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    .line 301
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1e
    return-void
.end method

.method public restoreDefaultState()V
    .registers 1

    .line 154
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->removeFloatingShutterLayoutDelay()V

    return-void
.end method

.method public restoreState()V
    .registers 5

    .line 142
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mIsEditMode:Z

    if-eqz v0, :cond_5

    goto :goto_27

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "1.0f"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_floating_shutter_ui_alpha"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 146
    iput v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mCurrentAlpha:F

    .line 147
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_27

    .line 149
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateFloatingShutterLayoutDelay()V

    :cond_27
    :goto_27
    return-void
.end method

.method public resume()V
    .registers 3

    .line 137
    sget-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mIsResume:Z

    return-void
.end method

.method public ringScreenLightUpdateUI(Z)V
    .registers 3

    if-eqz p1, :cond_11

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterDetail:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_floating_view_detail_black:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterDelete:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_floating_view_delete_black:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 162
    :cond_11
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterDetail:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/camera/R$drawable;->ic_floating_view_detail:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterDelete:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/R$drawable;->ic_floating_view_delete:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public saveState()V
    .registers 6

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mCurrentAlpha:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_floating_shutter_ui_alpha"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    iget v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mCurrentAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_22

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_22
    return-void
.end method

.method public setEnabled(Z)V
    .registers 6

    .line 774
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mAlwaysEnableShutter:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 775
    sget-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnabled, shutter always enabled, setEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 776
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mEnabled:Z

    .line 777
    invoke-super {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 780
    :cond_21
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_36

    .line 781
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mMotionEventFinish:Z

    if-eqz p1, :cond_36

    .line 782
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 783
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterDetail:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 785
    :cond_36
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 786
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterDetail:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setFloatingShutterUICallback(Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mShutterUICallback:Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;

    return-void
.end method

.method public setupViews(Z)V
    .registers 5

    .line 658
    sget-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupViews: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 659
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mIsResume:Z

    .line 660
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->initialCoordinate()V

    if-nez p1, :cond_1f

    return-void

    .line 664
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "1.0f"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_floating_shutter_ui_alpha"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3b

    .line 666
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateFloatingShutterLayoutDelay()V

    goto :goto_44

    :cond_3b
    const/high16 p1, 0x3f000000    # 0.5f

    .line 668
    iput p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mCurrentAlpha:F

    .line 669
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 671
    :goto_44
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateLayoutParams()V

    return-void
.end method

.method public show(ZZ)V
    .registers 8

    .line 675
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_25

    .line 677
    iput v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mCurrentAlpha:F

    .line 678
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 679
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_floating_shutter_ui_alpha"

    invoke-virtual {p2, v4, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 680
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateFloatingShutterLayoutDelay()V

    :cond_25
    if-eqz p1, :cond_6c

    .line 683
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 684
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 685
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 686
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 687
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, p2, p2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 688
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 689
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 690
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 691
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 692
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/ui/view/FloatingShutterView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/view/FloatingShutterView;)V

    .line 693
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 697
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_6c
    return-void
.end method

.method public sinkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public startAnimator()V
    .registers 4

    .line 646
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_9

    goto :goto_39

    .line 649
    :cond_9
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 650
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 651
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 653
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 654
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_39
    :goto_39
    return-void
.end method

.method public startDownScaleAnimator()V
    .registers 5

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_3c

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_9

    goto :goto_3c

    .line 534
    :cond_9
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v3, 0x3f68f5c3    # 0.91f

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 537
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 539
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public startLongPressScaleAnimator()V
    .registers 5

    .line 637
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x432a0000    # 170.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 638
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 640
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 642
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public startOriginalScaleAnimator()V
    .registers 5

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x432a0000    # 170.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const v2, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 310
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public startUpScaleAnimator()V
    .registers 4

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_39

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v1, :cond_9

    goto :goto_39

    .line 546
    :cond_9
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 547
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleXAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 549
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScaleYAnimator:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_39
    :goto_39
    return-void
.end method

.method public triggerMoveAction()V
    .registers 3

    .line 425
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 426
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mShutterUICallback:Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;

    if-eqz p0, :cond_11

    .line 428
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;->onFloatingCameraButtonTouchMoving(Landroid/graphics/Rect;)V

    :cond_11
    return-void
.end method

.method public triggerUpAction()V
    .registers 8

    .line 433
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterEditLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    .line 434
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->startUpScaleAnimator()V

    .line 436
    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 437
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 438
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mShutterUICallback:Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;

    const/4 v2, 0x0

    if-eqz v1, :cond_5e

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;->onFloatingShutterUITouchUp(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 439
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->resetState()V

    .line 440
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterEditLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mShutterUICallback:Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView$IFloatingShutterUICallback;->onFloatingShutterUIRemoved()V

    .line 442
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->getPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 443
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateMargins(II)V

    .line 444
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 445
    sget-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->SCREEN_FORM_TYPE_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 446
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_46

    :cond_5d
    return-void

    .line 451
    :cond_5e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->getPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 452
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportColumnOrBoth()Z

    move-result v1

    if-eqz v1, :cond_123

    .line 453
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 454
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mFloatingShutterLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v4

    sub-int/2addr v3, v5

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 455
    sget-object v1, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "triggerUpAction, mScreenFormType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenFormType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", position.x: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", position.y: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    iget v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenFormType:I

    const/4 v3, 0x1

    const-string v5, ","

    if-eq v1, v3, :cond_e5

    if-ne v1, v4, :cond_bf

    goto :goto_e5

    .line 462
    :cond_bf
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_123

    .line 458
    :cond_e5
    :goto_e5
    iget v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mOrientation:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_123

    .line 459
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenFormType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_123
    :goto_123
    const/high16 v0, 0x3f800000    # 1.0f

    .line 465
    iput v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mCurrentAlpha:F

    .line 466
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 467
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_floating_shutter_ui_alpha"

    invoke-virtual {v1, v4, v0, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 468
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateFloatingShutterLayoutDelay()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 746
    sget-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 747
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public updateFloatingShutterLayoutDelay()V
    .registers 4

    .line 287
    sget-object v0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFloatingShutterLayoutDelay, mIsEditMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mIsEditMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 288
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mIsEditMode:Z

    if-eqz v1, :cond_23

    .line 289
    const-string p0, "float shutter view is in edit mode, keep current state"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    if-eqz v0, :cond_3c

    const/4 v1, 0x1

    .line 293
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mUIHandler:Lcom/transsion/camera/app/ui/view/FloatingShutterView$UIHandler;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3c
    return-void
.end method

.method public updateFloatingShutterUIPosition(II)V
    .registers 10

    .line 751
    iget v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenFormType:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_e

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    move v0, v3

    .line 754
    :goto_f
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/camera/R$dimen;->floating_shutter_root_group_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 755
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/R$dimen;->floating_shutter_root_group_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    if-eqz v0, :cond_39

    .line 757
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/camera/R$dimen;->floating_shutter_root_group_expand_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 758
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/transsion/camera/R$dimen;->floating_shutter_root_group_expand_height:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 760
    :cond_39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/transsion/camera/R$dimen;->floating_shutter_layout_size:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 762
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr p1, v4

    sub-int v4, p2, v5

    .line 763
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    .line 764
    iget v0, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenFormType:I

    if-eq v0, v3, :cond_53

    if-eq v0, v2, :cond_53

    if-ne v0, v1, :cond_57

    .line 767
    :cond_53
    div-int/lit8 v5, v5, 0x2

    sub-int v4, p2, v5

    .line 769
    :cond_57
    invoke-direct {p0, p1, v4}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->translateLayout(II)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 2

    .line 242
    iput p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mOrientation:I

    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 2

    .line 224
    iput p1, p0, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->mScreenFormType:I

    .line 225
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/FloatingShutterView;->updateLayoutParams()V

    return-void
.end method
