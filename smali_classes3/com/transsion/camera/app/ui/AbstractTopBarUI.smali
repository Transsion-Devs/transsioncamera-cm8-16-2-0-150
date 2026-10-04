.class public abstract Lcom/transsion/camera/app/ui/AbstractTopBarUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;
    }
.end annotation


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static lastClickTime:J


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mArrowColorStateList:Landroid/content/res/ColorStateList;

.field private mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mCelebritySceneShow:Z

.field private final mContext:Landroid/content/Context;

.field private mCurPreviewValue:Ljava/lang/String;

.field protected mCurrentScreenType:I

.field private mDirection:I

.field private mFilterUIShow:Z

.field private mFlashFacadeChanged:Z

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mImageStyleShow:Z

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsAnimationRunning:Z

.field protected mIsArrowExpanded:Z

.field private mIsDualDeviceItemShow:Z

.field private mIsPMasterBottomUIShow:Z

.field private mIsPopSettingAppearing:Z

.field private mIsPopSettingShow:Z

.field private mIsPreviewDown:Z

.field protected mIsTopBarAppearing:Z

.field private mIsZoomBegin:Z

.field protected mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

.field protected mLeftTopBarItemUIs:Ljava/util/List;

.field private mNeedAnimation:Z

.field private mNeedHidePopSettingView:Z

.field protected final mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mOrientation:I

.field protected mPopSettingArrowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field protected mPopSettingArrowView:Landroid/widget/ImageView;

.field private mPopSettingEnable:Z

.field private final mPopSettingSupport:Z

.field private mPopSettingViewControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;

.field protected mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

.field protected mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

.field public final mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

.field protected mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

.field protected mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

.field protected mRightTopBarItemUIs:Ljava/util/List;

.field private mRoot:Landroid/view/View;

.field protected final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mSupply:Z

.field protected mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

.field private final mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mTopBarItemUIs:Ljava/util/List;

.field protected mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mTreasureBoxSupport:Z

.field popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

.field popupOptionRootH:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

.field popupOptionRootV:Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;


# direct methods
.method public static synthetic $r8$lambda$3ReCLJSWb18MHIThkO0_3TVphQI(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$new$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7oW-9cUNouWjdbbjSeuQCNQz0Us(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onPopSettingArrowClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hs4EgNPqNz7EVdkgPYVtkoPNrHc(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$ringScreenLightUpdateUI$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$R5zCAtF1jhewsN6Keuamx4zJqcE(ZLcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 329
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemClickDisable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rltm84Ybdyk5x_Z3cupAqHKSUHU(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lambda$runTopBarTranslateAnimator$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$epPeUFIjT9-LXg09d3g0xVlEcLo(ZLcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 327
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemClickDisable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$oLP_U_1hAeRigOstX3FLtVAtl-g(ZLcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 2

    .line 328
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setItemClickDisable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurPreviewValue(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurPreviewValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mDirection:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoot(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTreasureBoxSupport(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmDirection(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mDirection:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimationRunning(Lcom/transsion/camera/app/ui/AbstractTopBarUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsAnimationRunning:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTopBarContainerVisible(Lcom/transsion/camera/app/ui/AbstractTopBarUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 84
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AbstractTopBarUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 85
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const-wide/16 v0, 0x0

    .line 138
    sput-wide v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lastClickTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;)V
    .registers 9

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedAnimation:Z

    .line 154
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsAnimationRunning:Z

    .line 155
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsArrowExpanded:Z

    .line 1423
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 159
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 160
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    .line 163
    sget p1, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    .line 164
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingEnable:Z

    return-void
.end method

.method private getArrowColorStateList()Landroid/content/res/ColorStateList;
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$color;->top_bar_arrow_icon_on:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 245
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mSupply:Z

    if-eqz v1, :cond_15

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$color;->arrow_color_black:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, -0x1

    :goto_16
    const v1, 0x10100a1

    .line 246
    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [I

    filled-new-array {v1, v2}, [[I

    move-result-object v1

    .line 250
    filled-new-array {v0, p0}, [I

    move-result-object p0

    .line 251
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method private getTopBarTranslationY()I
    .registers 4

    .line 1456
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1457
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_49

    .line 1458
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurPreviewValue:Ljava/lang/String;

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1459
    sget p0, Lcom/transsion/camera/R$dimen;->top_bar_switch_preview_on_translate_distance:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 1462
    :cond_1c
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-eqz v1, :cond_32

    .line 1463
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-gez v1, :cond_2f

    .line 1464
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    :goto_2a
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    goto :goto_38

    :cond_2f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    goto :goto_2a

    .line 1466
    :cond_32
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 1468
    :goto_38
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v1

    sget v1, Lcom/transsion/camera/R$dimen;->top_bar_middle_hover_gap:I

    .line 1469
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p0, v0

    return p0

    :cond_49
    const/4 p0, 0x0

    return p0
.end method

.method private initPopSettingControlView()V
    .registers 4

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 276
    :cond_5
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsArrowExpanded:Z

    .line 278
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    sget v2, Lcom/transsion/camera/R$drawable;->top_bar_setting_arrow_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getArrowColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mArrowColorStateList:Landroid/content/res/ColorStateList;

    .line 280
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 281
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingArrowResource()V

    .line 282
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingViewBG(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initVideoQualityPoint(Landroid/content/res/Resources;)V
    .registers 5

    .line 929
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isSupportNewVideoSize()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 932
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v1, Lcom/transsion/camera/R$id;->top_bar_video_size_point:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 933
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 934
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    sget v2, Lcom/transsion/camera/R$dimen;->top_bar_video_size_point_top_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 935
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static isFastDoubleClick(J)Z
    .registers 8

    .line 1367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1368
    sget-wide v2, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_14

    cmp-long p0, v2, p0

    if-gez p0, :cond_14

    const/4 p0, 0x1

    return p0

    .line 1374
    :cond_14
    sput-wide v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->lastClickTime:J

    const/4 p0, 0x0

    return p0
.end method

.method private isSupportPopSettingUI()Z
    .registers 2

    .line 415
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    if-eqz p0, :cond_15

    .line 416
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 417
    array-length p0, p0

    if-lez p0, :cond_13

    return v0

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    return v0
.end method

.method private synthetic lambda$new$3(Z)V
    .registers 3

    .line 1424
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_10

    .line 1425
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1426
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->ringScreenLightUpdateUI()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$4()V
    .registers 2

    .line 1435
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->notifyScreenSupply(Z)V

    return-void
.end method

.method private synthetic lambda$runTopBarTranslateAnimator$5(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1493
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1494
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1495
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    const-string/jumbo v0, "translationY"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private notifyScreenSupply(Z)V
    .registers 5

    .line 1317
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mSupply:Z

    .line 1318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 1319
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1320
    invoke-interface {v2, p1, v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(ZZ)V

    goto :goto_13

    .line 1322
    :cond_23
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_2a

    .line 1323
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenSupply(Z)V

    .line 1327
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_51

    .line 1328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1329
    invoke-interface {v2, p1, v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(ZZ)V

    goto :goto_3a

    .line 1331
    :cond_4a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_51

    .line 1332
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenSupply(Z)V

    .line 1336
    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_78

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_78

    .line 1337
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1338
    invoke-interface {v2, p1, v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(ZZ)V

    goto :goto_61

    .line 1340
    :cond_71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_78

    .line 1341
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenSupply(Z)V

    .line 1344
    :cond_78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_89

    if-eqz p1, :cond_84

    .line 1346
    sget p1, Lcom/transsion/camera/R$drawable;->top_bar_video_size_point_low_light:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_89

    .line 1348
    :cond_84
    sget p1, Lcom/transsion/camera/R$drawable;->top_bar_video_size_point:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1353
    :cond_89
    :goto_89
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-nez p1, :cond_8e

    return-void

    .line 1356
    :cond_8e
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getArrowColorStateList()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mArrowColorStateList:Landroid/content/res/ColorStateList;

    .line 1357
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 1358
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingArrowResource()V

    .line 1359
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    if-eqz p1, :cond_a6

    const/4 p1, 0x0

    .line 1360
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    .line 1361
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(Z)V

    .line 1363
    :cond_a6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentMode()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingViewBG(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onPopSettingArrowClick(Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x15e

    .line 255
    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isFastDoubleClick(J)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_19

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->shutterUIProcessing()Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_3d

    .line 258
    :cond_19
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsArrowExpanded:Z

    if-eqz p1, :cond_2e

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingViewControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;

    if-eqz p1, :cond_24

    .line 260
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->onPopSettingHideViewClick()V

    .line 262
    :cond_24
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_3d

    const/16 p1, 0x14f

    .line 263
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 266
    :cond_2e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingViewControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;

    if-eqz p1, :cond_3d

    const/4 v0, 0x1

    .line 267
    invoke-interface {p1, v0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->onPopSettingShowViewClick(ZZ)V

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x170

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method private originPaddingTop()I
    .registers 1

    .line 925
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p0

    return p0
.end method

.method private originTopBarPadding()V
    .registers 6

    .line 1296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getToolBarOriginPaddingHeight()I

    move-result v0

    .line 1297
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_30

    .line 1298
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1299
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1300
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1301
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1304
    :cond_30
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_86

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v2, :cond_86

    .line 1305
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1306
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1307
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1308
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1309
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1310
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1311
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1312
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    :cond_86
    return-void
.end method

.method private releaseTopBarItemPressState(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 3

    .line 561
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2d

    .line 562
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_c

    goto :goto_2d

    .line 563
    :cond_c
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p0

    if-nez p0, :cond_13

    goto :goto_2d

    .line 565
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->isSupportChangeFlashWhenRecording()Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_2d

    .line 566
    :cond_1a
    const-string p0, "key_flash_facade"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto :goto_2d

    .line 567
    :cond_27
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2e

    :goto_2d
    return-void

    :cond_2e
    const/4 p1, 0x0

    .line 569
    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private ringScreenLightUpdateUI()V
    .registers 3

    .line 1431
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 1434
    :cond_5
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private runTopBarTranslateAnimator(I)V
    .registers 9

    .line 1476
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    .line 1477
    invoke-static {v1, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    .line 1478
    invoke-static {v3, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    int-to-float p1, p1

    .line 1479
    invoke-static {v3, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1480
    invoke-static {v5, p1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p1

    .line 1481
    const-string/jumbo v6, "translationY"

    filled-new-array {v2, v0, v4, p1}, [Landroid/animation/Keyframe;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 1484
    invoke-static {v1, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 1485
    invoke-static {v3, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 1486
    invoke-static {v5, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 1487
    const-string v3, "alpha"

    filled-new-array {v0, v1, v2}, [Landroid/animation/Keyframe;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1489
    filled-new-array {v0, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x190

    .line 1490
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1491
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1492
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1497
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1514
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setLeftTopBarContainerVisible(I)V
    .registers 3

    .line 1249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 1250
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private setPopSettingControlViewOrientation(I)V
    .registers 3

    .line 690
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 691
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    :cond_8
    return-void
.end method

.method private setRightTopBarContainerVisible(I)V
    .registers 3

    .line 1255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 1256
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private setTopBarContainerVisible(I)V
    .registers 3

    .line 1243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_f

    .line 1244
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    return-void
.end method

.method private updateLayoutParams(I)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 697
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/PopupOptionManager;->needShowPopUpOption()Z

    move-result v2

    if-nez v2, :cond_f

    .line 698
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    .line 700
    :cond_f
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 701
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v3

    .line 702
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_horizontal_padding:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 703
    sget v5, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_horizontal_padding:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 704
    sget v6, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_horizontal_margin:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 705
    sget v7, Lcom/transsion/camera/R$dimen;->column_left_top_bar_horizontal_padding:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 706
    sget v8, Lcom/transsion/camera/R$dimen;->top_bar_column_horizontal_padding:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 707
    sget v9, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_width:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 708
    sget v10, Lcom/transsion/camera/R$dimen;->left_and_right_top_bar_unAvailable_width:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 709
    sget v11, Lcom/transsion/camera/R$dimen;->right_hover_left_margin:I

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 710
    sget v12, Lcom/transsion/camera/R$dimen;->left_hover_left_margin:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 711
    sget v13, Lcom/transsion/camera/R$dimen;->right_hover_top_margin:I

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 712
    sget v14, Lcom/transsion/camera/R$dimen;->left_hover_top_margin:I

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 713
    iget-boolean v15, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    move/from16 v16, v15

    if-eqz v16, :cond_29a

    .line 714
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v4, :cond_17e

    .line 716
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v17, v7

    .line 717
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v7

    sub-int/2addr v7, v5

    sub-int/2addr v7, v5

    move/from16 v18, v5

    const/4 v5, 0x1

    if-ne v3, v5, :cond_f2

    if-eqz v1, :cond_cd

    const/16 v5, 0x5a

    if-eq v1, v5, :cond_b8

    const/16 v5, 0xb4

    if-eq v1, v5, :cond_a3

    const/16 v5, 0x10e

    if-eq v1, v5, :cond_8e

    const/4 v5, 0x0

    goto :goto_e1

    :cond_8e
    const/4 v5, 0x0

    .line 726
    invoke-virtual {v15, v10, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 727
    sget v7, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 728
    sget v7, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_e1

    :cond_a3
    const/4 v5, 0x0

    .line 736
    invoke-virtual {v15, v5, v10, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 737
    sget v7, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 738
    sget v7, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_e1

    :cond_b8
    const/4 v5, 0x0

    .line 721
    invoke-virtual {v15, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 722
    sget v7, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 723
    sget v7, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_e1

    :cond_cd
    const/4 v5, 0x0

    .line 731
    invoke-virtual {v15, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 732
    sget v7, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 733
    sget v7, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 743
    :goto_e1
    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 744
    iget v7, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    move/from16 v19, v10

    :goto_ed
    move/from16 v20, v14

    :goto_ef
    move/from16 v14, v18

    goto :goto_15c

    .line 745
    :cond_f2
    iget v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    move/from16 v19, v10

    const/4 v10, 0x4

    if-ne v5, v10, :cond_111

    const/4 v10, 0x0

    .line 746
    invoke-virtual {v15, v12, v14, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 747
    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 748
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 749
    sget v4, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_ed

    :cond_111
    move/from16 v20, v14

    const/4 v10, 0x0

    const/4 v14, 0x5

    if-ne v5, v14, :cond_12e

    .line 751
    invoke-virtual {v15, v11, v13, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 752
    sget v5, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 753
    sget v5, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 754
    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    goto :goto_ef

    :cond_12e
    const/4 v14, 0x2

    if-ne v5, v14, :cond_146

    .line 756
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x2

    .line 757
    iput v5, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 758
    invoke-virtual {v15, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 759
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result v14

    invoke-virtual {v4, v8, v14, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 760
    iget v14, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v14}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    goto :goto_ef

    :cond_146
    const/4 v5, -0x2

    .line 762
    iput v9, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 763
    iput v5, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 764
    invoke-virtual {v15, v6, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 765
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result v5

    move/from16 v14, v18

    invoke-virtual {v4, v14, v5, v14, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 766
    iget v5, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v5}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    .line 768
    :goto_15c
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_163
    if-ge v5, v4, :cond_178

    .line 770
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 771
    instance-of v10, v7, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v10, :cond_175

    .line 772
    check-cast v7, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v10, 0x1

    invoke-interface {v7, v1, v10}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_175
    add-int/lit8 v5, v5, 0x1

    goto :goto_163

    .line 775
    :cond_178
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v4, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_185

    :cond_17e
    move/from16 v17, v7

    move/from16 v19, v10

    move/from16 v20, v14

    move v14, v5

    .line 778
    :goto_185
    iget-object v4, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v4, :cond_353

    .line 780
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 781
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v7}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v7

    sub-int/2addr v7, v14

    sub-int/2addr v7, v14

    const/4 v10, 0x0

    .line 782
    iput v10, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v15, 0x1

    if-ne v3, v15, :cond_20a

    if-eqz v1, :cond_1ea

    const/16 v3, 0x5a

    if-eq v1, v3, :cond_1d4

    const/16 v3, 0xb4

    if-eq v1, v3, :cond_1c0

    const/16 v3, 0x10e

    if-eq v1, v3, :cond_1ac

    goto :goto_1ff

    .line 791
    :cond_1ac
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 792
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 793
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1ff

    .line 801
    :cond_1c0
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 802
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 803
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1ff

    :cond_1d4
    move/from16 v3, v19

    .line 786
    invoke-virtual {v5, v3, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 787
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 788
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1ff

    :cond_1ea
    move/from16 v3, v19

    .line 796
    invoke-virtual {v5, v10, v3, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 797
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 798
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 808
    :goto_1ff
    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 809
    iget v2, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v2, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    goto :goto_277

    .line 810
    :cond_20a
    iget v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    const/4 v15, 0x4

    if-ne v3, v15, :cond_226

    .line 811
    invoke-virtual {v5, v12, v13, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 812
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 813
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 814
    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    goto :goto_277

    :cond_226
    const/4 v12, 0x5

    if-ne v3, v12, :cond_242

    move/from16 v12, v20

    .line 816
    invoke-virtual {v5, v11, v12, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 817
    sget v3, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 818
    sget v3, Lcom/transsion/camera/R$dimen;->pop_setting_top_bar_common_expand_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 819
    invoke-virtual {v4, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    goto :goto_277

    :cond_242
    const v2, 0x800005

    const/4 v11, 0x2

    if-ne v3, v11, :cond_261

    .line 821
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v3, -0x2

    .line 822
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 823
    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 824
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result v3

    move/from16 v6, v17

    invoke-virtual {v4, v6, v3, v8, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 825
    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    .line 826
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_277

    :cond_261
    const/4 v3, -0x2

    .line 828
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 829
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 830
    invoke-virtual {v5, v10, v10, v6, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 831
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result v3

    invoke-virtual {v4, v14, v3, v14, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 832
    iget v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v7, v3}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    .line 833
    iput v2, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 835
    :goto_277
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v15, 0x0

    :goto_27e
    if-ge v15, v2, :cond_293

    .line 837
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 838
    instance-of v4, v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v4, :cond_290

    .line 839
    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v10, 0x1

    invoke-interface {v3, v1, v10}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_290
    add-int/lit8 v15, v15, 0x1

    goto :goto_27e

    .line 842
    :cond_293
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_353

    .line 845
    :cond_29a
    iget-object v5, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v5, :cond_353

    .line 847
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, 0x0

    .line 848
    invoke-virtual {v5, v10, v10, v10, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    const/4 v10, 0x1

    if-ne v3, v10, :cond_2dd

    const/16 v7, 0x5a

    if-eq v1, v7, :cond_2c4

    const/16 v4, 0x10e

    if-eq v1, v4, :cond_2c4

    .line 859
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 860
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_2d4

    .line 853
    :cond_2c4
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 854
    sget v4, Lcom/transsion/camera/R$dimen;->top_bar_common_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 863
    :goto_2d4
    iget v2, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v5, v2, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    const/4 v10, 0x0

    goto :goto_2f8

    .line 865
    :cond_2dd
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v4

    const/4 v7, -0x1

    .line 866
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v7, -0x2

    .line 867
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 868
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {v5, v4, v7, v4, v10}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setPaddingByToolbarScroll(IIII)V

    .line 869
    iget v4, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v5, v2, v4}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initWidthAndHeight(II)V

    .line 871
    :goto_2f8
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 872
    sget-object v2, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateLayoutParams] width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", screenFormType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", getRealScreenSize: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    .line 873
    invoke-static {v3}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 872
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 874
    iget-object v2, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v15, v10

    :goto_33c
    if-ge v15, v2, :cond_353

    .line 876
    iget-object v3, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 877
    instance-of v4, v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v4, :cond_34f

    .line 878
    check-cast v3, Lcom/transsion/camera/app/ui/widget/IRotatable;

    const/4 v10, 0x1

    invoke-interface {v3, v1, v10}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    goto :goto_350

    :cond_34f
    const/4 v10, 0x1

    :goto_350
    add-int/lit8 v15, v15, 0x1

    goto :goto_33c

    .line 884
    :cond_353
    :goto_353
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz v1, :cond_35a

    .line 885
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateSettingControlViewLayout(Landroid/view/View;)V

    :cond_35a
    return-void
.end method

.method private updatePopSettingArrowResource()V
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 361
    :cond_5
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsArrowExpanded:Z

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private updatePopSettingControlViewLayout()V
    .registers 6

    .line 665
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10e

    const/16 v4, 0x5a

    if-ne v0, v1, :cond_27

    .line 666
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    if-eqz v0, :cond_23

    const/16 v1, 0xb4

    if-eq v0, v4, :cond_1f

    if-eq v0, v1, :cond_1b

    if-eq v0, v3, :cond_17

    return-void

    .line 677
    :cond_17
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    .line 674
    :cond_1b
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    .line 671
    :cond_1f
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    .line 668
    :cond_23
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    :cond_27
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    .line 681
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    :cond_2e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_35

    .line 683
    invoke-direct {p0, v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void

    .line 685
    :cond_35
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setPopSettingControlViewOrientation(I)V

    return-void
.end method


# virtual methods
.method public cancelPopSettingShowViewAnimation()V
    .registers 2

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-nez p0, :cond_5

    goto :goto_12

    .line 407
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 408
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_12

    .line 409
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_12
    :goto_12
    return-void
.end method

.method protected createPopupOption(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/setting/PopupOption;
    .registers 10

    .line 1911
    new-instance p0, Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-direct/range {p0 .. p9}, Lcom/transsion/camera/app/ui/setting/PopupOption;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    return-object p0
.end method

.method public dismissPopup()Z
    .registers 1

    .line 591
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->dismissAllPopupOption()Z

    move-result p0

    return p0
.end method

.method public dismissPopupWithoutAnimation()Z
    .registers 4

    .line 600
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v1, 0x1

    const/16 v2, 0x1e

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 602
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    return v1

    .line 605
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 607
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    return v1

    .line 610
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 612
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->dismissPopupWithoutAnimation()V

    return v1

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeight()I
    .registers 3

    .line 582
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingEnable:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_f

    .line 583
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_e
    return v1

    .line 585
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_18
    return v1
.end method

.method protected getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;
    .registers 2

    .line 1278
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$MyAnimationStrategy;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    return-object v0
.end method

.method protected getSettingControlViewMargins(I)Landroid/graphics/Rect;
    .registers 7

    .line 905
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 906
    sget v1, Lcom/transsion/camera/R$dimen;->left_and_right_hover_control_view_top_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 907
    sget v2, Lcom/transsion/camera/R$dimen;->left_and_right_hover_control_view_left_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 909
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p1, v3, :cond_23

    .line 911
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result p0

    invoke-virtual {v2, v4, p0, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2

    :cond_23
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2a

    .line 913
    invoke-virtual {v2, v4, v1, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2

    :cond_2a
    const/4 v3, 0x5

    if-ne p1, v3, :cond_31

    .line 915
    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2

    :cond_31
    const/4 v0, 0x1

    if-ne p1, v0, :cond_38

    .line 917
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2

    .line 919
    :cond_38
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originPaddingTop()I

    move-result p0

    invoke-virtual {v2, v4, p0, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-object v2
.end method

.method public hintInfo(Ljava/util/List;)V
    .registers 2

    .line 573
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz p1, :cond_4

    .line 575
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->hintInfo()V

    goto :goto_4

    :cond_16
    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16

    .line 173
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_7d

    .line 175
    sget v0, Lcom/transsion/camera/R$layout;->top_bar_layout_pop:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    .line 176
    sget v0, Lcom/transsion/camera/R$id;->left_top_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 177
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->right_top_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initManager(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 179
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    new-instance v0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    sget-object v3, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR_LEFT:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    invoke-direct {v0, v2, v3}, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 181
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initManager(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    new-instance v0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    sget-object v3, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR_RIGHT:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    invoke-direct {v0, v2, v3}, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->top_bar_setting_arrow_rotate_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 186
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$id;->top_bar_setting_arrow_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 192
    :cond_74
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->initPopSettingControlView()V

    .line 194
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealWithoutAnimation(Landroid/view/View;)V

    goto :goto_a2

    .line 196
    :cond_7d
    sget v0, Lcom/transsion/camera/R$layout;->top_bar_layout:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    .line 197
    sget v0, Lcom/transsion/camera/R$id;->top_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->initManager(Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 199
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    new-instance v0, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    sget-object v2, Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;->TOP_BAR:Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/animator/UIAnimatorListener;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IUIAnimatorController$AnimatorType;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 203
    :goto_a2
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLayoutParams(I)V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/camera/R$layout;->popup_option_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iput-object v6, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 207
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget v0, Lcom/transsion/camera/R$dimen;->top_bar_common_width:I

    .line 208
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v0, Lcom/transsion/camera/R$dimen;->top_bar_height:I

    .line 209
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    iget-object v11, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v12, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v10, 0x0

    move-object v3, p0

    .line 207
    invoke-virtual/range {v3 .. v12}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->createPopupOption(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/setting/PopupOption;

    move-result-object p0

    iput-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    .line 210
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V

    .line 211
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V

    .line 212
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 213
    iget-boolean p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-eqz p0, :cond_fc

    .line 214
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRoot:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    const-string/jumbo v0, "type_i"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setTag(Ljava/lang/Object;)V

    .line 217
    :cond_fc
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_184

    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_184

    .line 218
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/transsion/camera/R$layout;->horizontal_popup_option_layout:I

    invoke-virtual {p0, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    iput-object v6, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRootH:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    .line 219
    iget-object v4, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget p0, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width:I

    .line 220
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v9, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    iget-object v11, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v12, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v8, -0x2

    const/4 v10, 0x1

    .line 219
    invoke-virtual/range {v3 .. v12}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->createPopupOption(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/setting/PopupOption;

    move-result-object p0

    iput-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    .line 222
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V

    .line 223
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V

    .line 224
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 226
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/transsion/camera/R$layout;->vertical_popup_option_layout:I

    invoke-virtual {p0, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;

    iput-object v6, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRootV:Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;

    .line 227
    iget-object v4, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mInflater:Landroid/view/LayoutInflater;

    iget-object v5, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    sget p0, Lcom/transsion/camera/R$dimen;->top_bar_common_expand_width:I

    .line 228
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    iget-object v11, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    iget-object v12, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v7, -0x2

    const/4 v10, 0x2

    .line 227
    invoke-virtual/range {v3 .. v12}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->createPopupOption(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/setting/PopupOption;

    move-result-object p0

    iput-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    .line 230
    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setPopupWindowListener(Lcom/transsion/camera/app/common/IAppUIListener$IPopupWindowListener;)V

    .line 231
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getPopupAnimationStrategy()Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->setAnimationStrategy(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$IAnimationStrategy;)V

    .line 232
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object p2, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p2

    invoke-virtual {p0, p2, v2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 234
    :cond_184
    invoke-direct {v3, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->initVideoQualityPoint(Landroid/content/res/Resources;)V

    .line 235
    invoke-direct {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingControlViewLayout()V

    .line 237
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p0

    iget-object p1, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 238
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOldValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 239
    invoke-direct {v3}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->ringScreenLightUpdateUI()V

    .line 240
    iget-object p0, v3, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public isCelebritySceneShow(Z)V
    .registers 2

    .line 1211
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCelebritySceneShow:Z

    return-void
.end method

.method public isDualDeviceItemUIShow(Z)V
    .registers 2

    .line 1207
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsDualDeviceItemShow:Z

    return-void
.end method

.method public isFilterUIShow(Z)V
    .registers 4

    .line 1202
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    .line 1203
    sget-object p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFilterUIShow: mFilterUIShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public isImageStyleShow(Z)V
    .registers 2

    .line 1186
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mImageStyleShow:Z

    return-void
.end method

.method protected isNeedAnimation()Z
    .registers 1

    .line 370
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedAnimation:Z

    return p0
.end method

.method public isPMasterBottomUIShow(Z)V
    .registers 2

    .line 1190
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPMasterBottomUIShow:Z

    return-void
.end method

.method public isPopOptionAppearing()Z
    .registers 1

    .line 1177
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingAppearing:Z

    return p0
.end method

.method public isPopSettingShow(Z)V
    .registers 2

    .line 1194
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingShow:Z

    return-void
.end method

.method public isPopupShowing()Z
    .registers 3

    .line 620
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 621
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    .line 622
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_22

    return v1

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public isPreviewDown(Z)V
    .registers 2

    .line 1181
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPreviewDown:Z

    return-void
.end method

.method public isTopBarShowing()Z
    .registers 5

    .line 1167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_11

    .line 1168
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_10

    return v1

    :cond_10
    return v3

    .line 1169
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz p0, :cond_1e

    .line 1170
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_1e

    return v1

    :cond_1e
    return v3
.end method

.method public isZoomBegin(Z)V
    .registers 2

    .line 595
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsZoomBegin:Z

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_19

    const/16 v0, 0x17a

    if-eq p1, v0, :cond_15

    const/16 v0, 0x188

    if-eq p1, v0, :cond_15

    const/16 v0, 0x169

    if-eq p1, v0, :cond_15

    const/16 v0, 0x16a

    if-eq p1, v0, :cond_15

    goto :goto_31

    .line 1384
    :cond_15
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onNextUITypeChange(I)V

    goto :goto_31

    .line 1387
    :cond_19
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1388
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1389
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1395
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_51

    .line 1396
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1397
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_41

    .line 1400
    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_71

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_71

    .line 1401
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1402
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_61

    .line 1406
    :cond_71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_91

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_91

    .line 1407
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_81
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 1408
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_81

    .line 1412
    :cond_91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_98

    .line 1413
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->notifyCameraOperateActionToUI(I)V

    .line 1415
    :cond_98
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_9f

    .line 1416
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->notifyCameraOperateActionToUI(I)V

    .line 1418
    :cond_9f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p0, :cond_a6

    .line 1419
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->notifyCameraOperateActionToUI(I)V

    :cond_a6
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 2

    return-void
.end method

.method public notifyFlashFacadeChanged()V
    .registers 2

    const/4 v0, 0x1

    .line 1529
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    return-void
.end method

.method public onFoldSwitchPreview(Ljava/lang/String;)V
    .registers 5

    .line 1440
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 1443
    :cond_9
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFoldSwitchPreview: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1444
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurPreviewValue:Ljava/lang/String;

    .line 1445
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 1446
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getTopBarTranslationY()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->runTopBarTranslateAnimator(I)V

    return-void
.end method

.method protected onNextUITypeChange(I)V
    .registers 2

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 5

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->updatePopupOptionShow()Z

    .line 645
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    .line 646
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLayoutParams(I)V

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 648
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onOrientationChanged(I)V

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 651
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_36

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRootH:Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/HorizontalAverageLayout;->setOrientation(I)V

    .line 653
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onOrientationChanged(I)V

    .line 654
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 656
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_4f

    .line 657
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRootV:Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;->setOrientation(I)V

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onOrientationChanged(I)V

    .line 659
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->initScreenForm(IZ)V

    .line 661
    :cond_4f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingControlViewLayout()V

    return-void
.end method

.method public onPopupDismissCancel()V
    .registers 3

    .line 1119
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPopupDismissCancel() called"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1120
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1121
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingAppearing:Z

    return-void
.end method

.method public onPopupDismissEnd()V
    .registers 4

    .line 1081
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopupDismissEnd() called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1082
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1083
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingAppearing:Z

    .line 1084
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0x1e

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1085
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 1086
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-eqz v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mImageStyleShow:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPMasterBottomUIShow:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingAppearing:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingShow:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsDualDeviceItemShow:Z

    if-nez v2, :cond_4f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCelebritySceneShow:Z

    if-nez v2, :cond_4f

    const/4 v2, 0x1

    .line 1089
    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 1091
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_56

    .line 1092
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    .line 1094
    :cond_56
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_6c

    .line 1095
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_69

    .line 1096
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1098
    :cond_69
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setLeftTopBarContainerVisible(I)V

    .line 1100
    :cond_6c
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_80

    .line 1101
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7d

    .line 1102
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1104
    :cond_7d
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setRightTopBarContainerVisible(I)V

    .line 1106
    :cond_80
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isVideoFlashlightSupportWhenRecording()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 1108
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v2, 0xc8

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1110
    :cond_8d
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    if-eqz v1, :cond_9a

    .line 1111
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    .line 1112
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingShow:Z

    if-nez v1, :cond_9a

    .line 1113
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(Z)V

    :cond_9a
    return-void
.end method

.method public onPopupDismissStart()V
    .registers 7

    .line 1126
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPopupDismissStart() called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1127
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-nez v0, :cond_22

    goto/16 :goto_a2

    .line 1130
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_55

    .line 1131
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    .line 1132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_a4

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1133
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1134
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1135
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v4, 0x118

    .line 1136
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v4, 0x46

    .line 1137
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1138
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1139
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1141
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_5e

    .line 1142
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setLeftTopBarContainerVisible(I)V

    .line 1143
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1145
    :cond_5e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_67

    .line 1146
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setRightTopBarContainerVisible(I)V

    .line 1147
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1149
    :cond_67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6d

    .line 1150
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsTopBarAppearing:Z

    .line 1152
    :cond_6d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_97

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mImageStyleShow:Z

    if-nez v2, :cond_97

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    if-nez v2, :cond_97

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCelebritySceneShow:Z

    if-nez v2, :cond_97

    .line 1154
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedHidePopSettingView:Z

    if-nez v2, :cond_8f

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPreviewDown:Z

    if-nez v2, :cond_8f

    .line 1155
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->showPopItem()V

    goto :goto_97

    .line 1157
    :cond_8f
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->onPopSettingHideViewClick()V

    .line 1158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setPopSettingContainerVisible(I)V

    .line 1161
    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_a2

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-eqz p0, :cond_a2

    .line 1162
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->setTreasureBoxBackViewVisible(I)V

    :cond_a2
    :goto_a2
    return-void

    nop

    :array_a4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onPopupShow()V
    .registers 6

    .line 1038
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 v0, 0x1

    .line 1039
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingAppearing:Z

    .line 1040
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v1, :cond_37

    const/4 v2, 0x2

    .line 1041
    new-array v2, v2, [F

    fill-array-data v2, :array_aa

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1042
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1043
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1044
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v3, 0xaa

    .line 1045
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1047
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1064
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1066
    :cond_37
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-eqz v3, :cond_43

    .line 1067
    invoke-interface {v1, v2, v2}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 1069
    :cond_43
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsPopSettingShow:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedHidePopSettingView:Z

    .line 1070
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPopupShow: mTreasureBoxSupport = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAppUI = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mImageStyleShow = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mImageStyleShow:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mFilterUIShow = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsZoomBegin = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsZoomBegin:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1073
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_a9

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mImageStyleShow:Z

    if-nez v1, :cond_a9

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFilterUIShow:Z

    if-nez v1, :cond_a9

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsZoomBegin:Z

    if-nez v1, :cond_a9

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCelebritySceneShow:Z

    if-nez p0, :cond_a9

    .line 1075
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    invoke-interface {v0, p0, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;->onPopSettingShowViewClick(ZZ)V

    :cond_a9
    return-void

    :array_aa
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onScreenFormChanged(IZ)V
    .registers 5

    .line 948
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    if-nez v0, :cond_c

    .line 949
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onScreenFormChanged mRoot is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 953
    :cond_c
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    if-ne v0, p1, :cond_12

    goto/16 :goto_9e

    .line 956
    :cond_12
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->hasLastScreenType(I)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1e

    .line 958
    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    if-eqz v1, :cond_24

    :cond_1e
    if-nez p1, :cond_2a

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    if-ne v1, v0, :cond_2a

    .line 960
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/PopupOptionManager;->setNeedShowPopUpOption(Z)V

    .line 963
    :cond_2a
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    .line 965
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 966
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionManager:Lcom/transsion/camera/app/ui/PopupOptionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/PopupOptionManager;->updatePopupOptionShow()Z

    .line 968
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_48

    .line 969
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenFormChanged(IZ)V

    .line 971
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_4f

    .line 972
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenFormChanged(IZ)V

    .line 975
    :cond_4f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingControlViewLayout()V

    .line 976
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLayoutParams(I)V

    .line 977
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getTopBarTranslationY()I

    move-result v0

    .line 978
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 979
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6b

    const/4 p2, 0x0

    .line 982
    :cond_6b
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_79

    if-eqz p2, :cond_79

    .line 983
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->runTopBarTranslateAnimator(I)V

    goto :goto_86

    .line 985
    :cond_79
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRoot:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 986
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_86

    .line 987
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/setting/PopupOption;->onScreenFormChanged(IZ)V

    .line 990
    :cond_86
    :goto_86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->popupOptionRootV:Lcom/transsion/camera/app/ui/widget/VerticalAverageLayout;

    if-eqz p0, :cond_9e

    const/4 p2, 0x5

    if-eq p1, p2, :cond_98

    const/4 p2, 0x4

    if-ne p1, p2, :cond_91

    goto :goto_98

    .line 995
    :cond_91
    const-string/jumbo p1, "type_c"

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    .line 993
    :cond_98
    :goto_98
    const-string/jumbo p1, "type_b"

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method public abstract pause()V
.end method

.method public pauseControlViewAnimation()V
    .registers 2

    .line 1518
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-eqz p0, :cond_17

    .line 1519
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1520
    instance-of v0, p0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_17

    .line 1521
    check-cast p0, Landroid/graphics/drawable/Animatable;

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1522
    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_17
    return-void
.end method

.method public playHidePopSettingAnimation(Z)V
    .registers 3

    const/4 v0, -0x1

    .line 345
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(ZI)V

    return-void
.end method

.method public playHidePopSettingAnimation(ZI)V
    .registers 3

    .line 349
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-eqz p2, :cond_22

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isNeedAnimation()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_22

    .line 350
    :cond_b
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mFlashFacadeChanged:Z

    if-eqz p2, :cond_10

    goto :goto_22

    .line 351
    :cond_10
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsArrowExpanded:Z

    if-nez p2, :cond_17

    if-nez p1, :cond_17

    goto :goto_22

    :cond_17
    if-eqz p2, :cond_22

    const/4 p1, 0x0

    .line 353
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsArrowExpanded:Z

    .line 354
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingArrowResource()V

    .line 355
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateItemClickDisable(Z)V

    :cond_22
    :goto_22
    return-void
.end method

.method public abstract playLivePhotoLottieAnimation(I)V
.end method

.method public playShowPopSettingAnimation()V
    .registers 2

    const/4 v0, -0x1

    .line 333
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playShowPopSettingAnimation(I)V

    return-void
.end method

.method public playShowPopSettingAnimation(I)V
    .registers 2

    .line 337
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    goto :goto_9

    .line 338
    :cond_5
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsArrowExpanded:Z

    if-eqz p1, :cond_a

    :goto_9
    return-void

    :cond_a
    const/4 p1, 0x1

    .line 339
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsArrowExpanded:Z

    .line 340
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingArrowResource()V

    const/4 p1, 0x0

    .line 341
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateItemClickDisable(Z)V

    return-void
.end method

.method public abstract recover()V
.end method

.method public resetTopBarContainerDisplay()V
    .registers 2

    .line 1001
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 1002
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setDisplayLeftToRight(Z)V

    :cond_8
    return-void
.end method

.method public abstract resume()V
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 1274
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDisplayLeftToRight(Z)V
    .registers 2

    .line 1007
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz p0, :cond_7

    .line 1008
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->setDisplayLeftToRight(Z)V

    :cond_7
    return-void
.end method

.method public setLeftSettingUIList(Ljava/util/List;)V
    .registers 3

    .line 513
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    const/4 v0, 0x1

    .line 514
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    return-void
.end method

.method public setNeedHidePopSettingView(Z)V
    .registers 2

    .line 1198
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedHidePopSettingView:Z

    return-void
.end method

.method public setNeedPopSettingEntryAnimation(Z)V
    .registers 4

    .line 365
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mNeedAnimation:Z

    .line 366
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNeedPopSettingEntryAnimation: animation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setPopSettingControlViewEnable(Z)V
    .registers 5

    .line 1031
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPopSettingControlViewEnable: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1032
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-eqz p0, :cond_21

    .line 1033
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_21
    return-void
.end method

.method public setPopSettingShowViewVisible(I)V
    .registers 4

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    return-void

    .line 377
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->isSupportPopSettingUI()Z

    move-result p1

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 379
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_18

    .line 380
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 383
    :cond_18
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingArrowResource()V

    return-void

    .line 387
    :cond_28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setPopSettingViewControl(Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;)V
    .registers 2

    .line 524
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingViewControl:Lcom/transsion/camera/app/common/IAppUIControl$IPopSettingViewControl;

    return-void
.end method

.method public setPopSettingVisibleEnable(Z)V
    .registers 2

    .line 508
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingEnable:Z

    return-void
.end method

.method public setRightSettingUIList(Ljava/util/List;)V
    .registers 3

    .line 518
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    const/4 v0, 0x1

    .line 519
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    return-void
.end method

.method public setSettingUIList(Ljava/util/List;)V
    .registers 3

    .line 432
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->dismissPopup()Z

    const/4 v0, 0x1

    .line 433
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    .line 434
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingSupport:Z

    if-eqz p1, :cond_21

    .line 435
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_21

    .line 436
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getCurrentModeSettingUISpec()Lcom/transsion/camera/app/common/ModeSettingUISpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModeSettingUISpec;->getPopSettingUIEntries()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 437
    array-length p1, p1

    if-lez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 438
    :goto_1e
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updatePopSettingShowViewVisibility(Z)V

    :cond_21
    return-void
.end method

.method public setTopBarControllerVisible(I)V
    .registers 4

    .line 1261
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_28

    const/16 v0, 0x8

    if-ne p1, v0, :cond_23

    .line 1263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1264
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_23

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1265
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1268
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_28
    return-void
.end method

.method public setupViews()V
    .registers 3

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->onScreenFormChanged(IZ)V

    .line 425
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 426
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->originTopBarPadding()V

    :cond_16
    return-void
.end method

.method public showTopBarContainer()V
    .registers 4

    .line 1216
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_17

    .line 1217
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_14

    .line 1218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1220
    :cond_14
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    .line 1222
    :cond_17
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_2b

    .line 1223
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_28

    .line 1224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1226
    :cond_28
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setLeftTopBarContainerVisible(I)V

    .line 1228
    :cond_2b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    if-eqz v0, :cond_3f

    .line 1229
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3c

    .line 1230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarContainer:Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1232
    :cond_3c
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setRightTopBarContainerVisible(I)V

    .line 1234
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_53

    .line 1235
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_50

    .line 1236
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1238
    :cond_50
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->setTopBarContainerVisible(I)V

    :cond_53
    return-void
.end method

.method public shrinkTopBar()V
    .registers 1

    return-void
.end method

.method public startVideoSizePointAnimation(Z)V
    .registers 15

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_a8

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsAnimationRunning:Z

    if-nez v1, :cond_a8

    .line 458
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    if-eqz p1, :cond_a8

    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_21

    if-nez p1, :cond_a8

    :cond_21
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isSupportNewVideoSize()Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_a8

    .line 462
    :cond_29
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz p1, :cond_34

    move v4, v3

    goto :goto_35

    :cond_34
    move v4, v2

    :goto_35
    if-eqz p1, :cond_38

    move v3, v2

    :cond_38
    if-eqz p1, :cond_3c

    move v5, v1

    goto :goto_3d

    :cond_3c
    move v5, v2

    :goto_3d
    if-eqz p1, :cond_40

    move v1, v2

    :cond_40
    if-eqz p1, :cond_45

    const-wide/16 v6, 0x64

    goto :goto_47

    :cond_45
    const-wide/16 v6, 0x0

    .line 469
    :goto_47
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v2, 0x2

    new-array v8, v2, [F

    const/4 v9, 0x0

    aput v5, v8, v9

    const/4 v5, 0x1

    aput v1, v8, v5

    const-string v1, "alpha"

    invoke-static {p1, v1, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v10, 0xc8

    .line 470
    invoke-virtual {p1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 471
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 473
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v8, v2, [F

    aput v4, v8, v9

    aput v3, v8, v5

    const-string v12, "scaleX"

    invoke-static {v1, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 474
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 475
    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 477
    iget-object v8, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarVideoSizePoint:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v12, v2, [F

    aput v4, v12, v9

    aput v3, v12, v5

    const-string v3, "scaleY"

    invoke-static {v8, v3, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 478
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 479
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 480
    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v4, 0x3

    .line 481
    new-array v4, v4, [Landroid/animation/Animator;

    aput-object p1, v4, v9

    aput-object v1, v4, v5

    aput-object v3, v4, v2

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 483
    new-instance p1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractTopBarUI;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 504
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_a8
    :goto_a8
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 639
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method protected updateItemClickDisable(Z)V
    .registers 4

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_29

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    if-nez v1, :cond_d

    goto :goto_29

    .line 327
    :cond_d
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 328
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public updateLeftSettingUIs(Ljava/util/List;)V
    .registers 4

    .line 540
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_4

    .line 542
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->updateSupportEntries()V

    goto :goto_4

    :cond_16
    const/4 v0, 0x1

    .line 545
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateLeftTopBarLayout(Ljava/util/List;Z)V

    return-void
.end method

.method protected updateLeftTopBarLayout(Ljava/util/List;Z)V
    .registers 3

    .line 1019
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mLeftTopBarItemUIs:Ljava/util/List;

    return-void
.end method

.method public updatePopSettingShowViewVisibility(Z)V
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_1a

    .line 446
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1f

    .line 447
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1a
    const/16 p0, 0x8

    .line 451
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1f
    return-void
.end method

.method public updatePopSettingViewBG(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    goto :goto_6a

    .line 290
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mSupply:Z

    if-eqz v1, :cond_f

    .line 291
    sget p0, Lcom/transsion/camera/R$drawable;->ic_pop_setting_control_view_background:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 294
    :cond_f
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_6a

    if-nez p2, :cond_2f

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 299
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p2

    const-string v0, "key_picture_size"

    invoke-interface {p2, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 303
    :cond_2f
    const-string v0, "4:3"

    if-eqz p2, :cond_38

    .line 304
    invoke-static {p2}, Lcom/transsion/camera/utils/PictureSizeHelper;->getStandardAspectRatioOfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_39

    :cond_38
    move-object p2, v0

    .line 308
    :goto_39
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->isInVideoMode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_61

    const-string v1, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    .line 309
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_61

    .line 310
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_61

    const-string p1, "1:1"

    .line 311
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_61

    const-string p1, "16:9"

    .line 312
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_61

    .line 315
    :cond_5e
    sget p1, Lcom/transsion/camera/R$drawable;->ic_pop_setting_control_view_background_black_light_ui5:I

    goto :goto_63

    .line 313
    :cond_61
    :goto_61
    sget p1, Lcom/transsion/camera/R$drawable;->ic_pop_setting_control_view_background_black_dark_ui5:I

    .line 317
    :goto_63
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-eqz p0, :cond_6a

    .line 318
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public updateRightSettingUIs(Ljava/util/List;)V
    .registers 4

    .line 549
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_4

    .line 551
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->updateSupportEntries()V

    goto :goto_4

    :cond_16
    const/4 v0, 0x1

    .line 554
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateRightTopBarLayout(Ljava/util/List;Z)V

    return-void
.end method

.method protected updateRightTopBarLayout(Ljava/util/List;Z)V
    .registers 3

    .line 1024
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mRightTopBarItemUIs:Ljava/util/List;

    return-void
.end method

.method protected updateSettingControlViewLayout(Landroid/view/View;)V
    .registers 6

    .line 890
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettingControlViewLayout: mCurrentScreenType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 891
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getSettingControlViewMargins(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 893
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne p0, v2, :cond_2e

    .line 894
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_38

    :cond_2e
    const/4 v2, 0x5

    if-ne p0, v2, :cond_34

    .line 896
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_38

    :cond_34
    const/16 p0, 0x31

    .line 898
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 900
    :goto_38
    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 901
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateSettingUIs(Ljava/util/List;)V
    .registers 4

    .line 529
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_4

    .line 531
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->updateSupportEntries()V

    .line 532
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->releaseTopBarItemPressState(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    goto :goto_4

    :cond_19
    const/4 v0, 0x1

    .line 535
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    return-void
.end method

.method protected updateTopBarLayout(Ljava/util/List;Z)V
    .registers 3

    .line 1014
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mTopBarItemUIs:Ljava/util/List;

    return-void
.end method

.method public updateVideoRecordingState(Z)V
    .registers 3

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOption:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_7

    .line 393
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateVideoRecordingState(Z)V

    .line 395
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionV:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz v0, :cond_e

    .line 396
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateVideoRecordingState(Z)V

    .line 398
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopupOptionH:Lcom/transsion/camera/app/ui/setting/PopupOption;

    if-eqz p0, :cond_15

    .line 399
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/PopupOption;->updateVideoRecordingState(Z)V

    :cond_15
    return-void
.end method
