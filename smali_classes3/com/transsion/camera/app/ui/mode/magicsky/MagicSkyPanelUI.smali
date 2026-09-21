.class public Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANIMATION_DELAY:I = 0x64

.field private static final ANIMATION_DURATION_TIME:I = 0xc8

.field private static final ANIMATION_DURATION_TIME_SHOW:I = 0x12c

.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SCROLL_OFFSET:Ljava/lang/String; = "scroll_offset_key_magic_sky_type"

.field private static final SCROLL_POSITION:Ljava/lang/String; = "scroll_position_key_magic_sky_type"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

.field private final mBottomTranslateDistance:F

.field protected final mChooseBarListener:Landroid/view/View$OnClickListener;

.field protected mChooseLayout:Landroid/view/View;

.field protected mChooseRoot:Landroid/widget/FrameLayout;

.field private final mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field protected mContext:Landroid/content/Context;

.field private mCurrentItemType:I

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHoverAnimator:Landroid/animation/ValueAnimator;

.field private mIMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

.field private mIconAppeareAlphaPath:Landroid/view/animation/PathInterpolator;

.field private mIconAppeareAnim:Landroid/animation/ObjectAnimator;

.field private final mIconAppearedListener:Landroid/animation/AnimatorListenerAdapter;

.field private mIconDisappeareAlphaPath:Landroid/view/animation/PathInterpolator;

.field private mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

.field private final mIconDisappearedListener:Landroid/animation/AnimatorListenerAdapter;

.field private mIsCapturing:Z

.field private mIsPopSettingShow:Z

.field private mIsSelfTimerCapturing:Z

.field private mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mModePlusBottomBarHeight:I

.field private final mOnItemClickListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

.field private mOrientation:I

.field private mParentViewGroup:Landroid/view/ViewGroup;

.field private mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mScreenFormType:I

.field protected final mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mSettingUIAdjustHeight:I

.field protected mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

.field protected mSkyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mSkyRootAnimator:Landroid/animation/ValueAnimator;

.field private mSkyRootAppeareTranslatePath:Landroid/view/animation/PathInterpolator;

.field private final mSkyRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mSkySelectRoot:Landroid/view/View;

.field protected mSkySelectRootRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mSkySelectUIShown:Z

.field private mSkyTranslateDistance:F


# direct methods
.method public static synthetic $r8$lambda$jNk9harKKNx83_r8Af8jA177aXk(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/content/res/Resources;Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/content/res/Resources;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s_v7Bqfyul2OdK4MnpeWZ5WJJRA(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t4PU_4QPSy1kVeqsmp04TU5yM3s(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentItemType(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCurrentItemType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceSetting(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPopSettingShow(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsPopSettingShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientation(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSkyItemAdapter(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentItemType(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCurrentItemType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveScrollPosition(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->saveScrollPosition(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 64
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MagicSkyPanelUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 98
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUI;Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 12

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsCapturing:Z

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing:Z

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    .line 94
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f28f5c3    # 0.66f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAlphaPath:Landroid/view/animation/PathInterpolator;

    .line 95
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {v1, v2, v3, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAlphaPath:Landroid/view/animation/PathInterpolator;

    .line 96
    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v2, v3, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAppeareTranslatePath:Landroid/view/animation/PathInterpolator;

    .line 97
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f400000    # 0.75f

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v3, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 104
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mModePlusBottomBarHeight:I

    .line 203
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseBarListener:Landroid/view/View$OnClickListener;

    .line 317
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 355
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$2;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 375
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$3;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 404
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$4;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappearedListener:Landroid/animation/AnimatorListenerAdapter;

    .line 436
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$5;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppearedListener:Landroid/animation/AnimatorListenerAdapter;

    .line 448
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$6;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 469
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$7;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 525
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$8;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOnItemClickListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

    .line 923
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$10;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 108
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 109
    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

    .line 110
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 112
    instance-of p3, p5, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    const-string v0, "key_magic_sky_type"

    if-eqz p3, :cond_95

    .line 113
    move-object p3, p5

    check-cast p3, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    invoke-interface {p3, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 115
    :cond_95
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    .line 116
    sget p3, Lcom/transsion/camera/feature/mode/magicsky/R$layout;->sky_choose_layout:I

    const/4 v1, 0x1

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    .line 117
    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 118
    const-string p2, "1"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p2, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCurrentItemType:I

    .line 119
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCurrentItemType:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSkyType(I)V

    .line 120
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_translate_anim_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyTranslateDistance:F

    .line 121
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_shutter_translate_anim_bottom_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mBottomTranslateDistance:F

    .line 122
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->magic_sky_select_pannel_adjust_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSettingUIAdjustHeight:I

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mModePlusBottomBarHeight:I

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getIMasterGuideUICommon()Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->initMagicSkyUI()V

    return-void
.end method

.method private addAnimatorListener()V
    .registers 2

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_9
    return-void
.end method

.method private cancelAnimation()V
    .registers 2

    .line 550
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 553
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 554
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1e
    return-void
.end method

.method private collapseBottomUI(ZZ)V
    .registers 4

    if-nez p2, :cond_8

    .line 302
    iget p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    goto :goto_18

    .line 306
    :cond_8
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p2, :cond_18

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-nez p2, :cond_18

    .line 307
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p2, 0x0

    invoke-interface {p0, p2, p2, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_18
    :goto_18
    return-void
.end method

.method private expandBottomUI(Z)V
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_5

    goto :goto_1b

    .line 293
    :cond_5
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    .line 294
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    if-nez v0, :cond_15

    goto :goto_1b

    .line 297
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1016
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1019
    :cond_6
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const-string v1, "0"

    invoke-virtual {v0, p1, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    .line 204
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 207
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->showOrHideSkySettingUI()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 318
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 319
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyTranslateDistance:F

    neg-float v1, v1

    mul-float/2addr v0, v1

    .line 320
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 321
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 322
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    if-eqz v1, :cond_56

    .line 323
    iget v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_45

    .line 324
    iget v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_40

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_3b

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_37

    .line 337
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_56

    .line 332
    :cond_37
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_56

    :cond_3b
    neg-float v0, v0

    .line 329
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_56

    :cond_40
    neg-float v0, v0

    .line 326
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_56

    .line 341
    :cond_45
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_51

    .line 342
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_56

    .line 344
    :cond_51
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 350
    :cond_56
    :goto_56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    if-eqz p0, :cond_5d

    .line 351
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_5d
    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$2(Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/content/res/Resources;Landroid/animation/ValueAnimator;)V
    .registers 7

    .line 842
    const-string v0, "bottomMargin"

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 843
    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_start_margin:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const-string v0, "iconBottomMargin"

    invoke-virtual {p4, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2, p3, v1, v1, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 844
    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 845
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private removeAnimatorListener()V
    .registers 2

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    .line 539
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 541
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_e

    .line 542
    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 544
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_15

    .line 545
    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_15
    return-void
.end method

.method private saveScrollPosition(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 8

    .line 951
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 952
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_9

    goto :goto_15

    .line 956
    :cond_9
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 957
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 958
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_16

    :goto_15
    return-void

    .line 963
    :cond_16
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5a

    .line 964
    iget v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    if-eqz v1, :cond_55

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_50

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_3f

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_2d

    const/4 v1, 0x0

    goto :goto_5e

    .line 972
    :cond_2d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_width_expand_90:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_3d
    sub-int/2addr v1, v2

    goto :goto_5e

    .line 969
    :cond_3f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_width_expand_90:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    goto :goto_3d

    .line 966
    :cond_50
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_5e

    .line 975
    :cond_55
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_5e

    .line 980
    :cond_5a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 982
    :goto_5e
    sget-object v2, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[saveScrollPosition] firstVisibleItemPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,firstVisibleItemOffset :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 984
    const-string p1, "scroll_position_key_magic_sky_type"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string p1, "scroll_offset_key_magic_sky_type"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->saveValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private saveValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1023
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_5

    return-void

    .line 1026
    :cond_5
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private scrollToPosition(II)V
    .registers 4

    .line 1002
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_5

    goto :goto_d

    .line 1006
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 1007
    instance-of v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_e

    :goto_d
    return-void

    .line 1011
    :cond_e
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1012
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method private setSkyChooseBarVisible()V
    .registers 4

    .line 912
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    .line 913
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    if-eqz v0, :cond_11

    .line 914
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 916
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 919
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private startCollapseAnimator()V
    .registers 4

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mCollapseAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mReversePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 286
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method private startExpandAnimator()V
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mExpandAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAppeareTranslatePath:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startIconAppearedAnim()V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppearedListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 270
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startIconDisappearedAnim()V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappearedListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startSkyRootAnimation(Z)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    .line 887
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_13

    const/4 v2, 0x4

    if-eq p1, v2, :cond_13

    const/4 v2, 0x5

    if-ne p1, v2, :cond_f

    goto :goto_13

    .line 904
    :cond_f
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateSettingUILayout(Z)V

    return-void

    .line 890
    :cond_13
    :goto_13
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v2, v1, v0

    const-string v0, "alpha"

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 891
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 892
    new-instance v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$9;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 902
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 907
    :cond_42
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateSettingUILayout(Z)V

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x4

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v1, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    :cond_1f
    return-void
.end method

.method protected hideSkySettingUI()V
    .registers 3

    .line 251
    sget-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideSkySettingUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsPopSettingShow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 253
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->collapseBottomUI(ZZ)V

    .line 255
    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startCollapseAnimator()V

    .line 256
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startIconAppearedAnim()V

    .line 257
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x65

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method protected initAnim()V
    .registers 7

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_46

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    .line 166
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAlphaPath:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-array v2, v1, [F

    fill-array-data v2, :array_4e

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    .line 170
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAlphaPath:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 173
    new-array v0, v1, [F

    fill-array-data v0, :array_56

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    .line 174
    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 175
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->addAnimatorListener()V

    return-void

    nop

    :array_46
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_56
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected initMagicSkyUI()V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_choose_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_select_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_select_root_rotate:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRootRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_choose_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 134
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseLayout:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$id;->sky_select_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    new-instance v2, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$1;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItems:Ljava/util/List;

    .line 157
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->initAnim()V

    .line 158
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateSettingUILayout(Z)V

    .line 159
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_73

    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    if-nez v0, :cond_73

    .line 160
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->showOrHideSkySettingUI()V

    :cond_73
    return-void
.end method

.method public isCapturing()Z
    .registers 1

    .line 631
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsCapturing:Z

    return p0
.end method

.method public isSkySelectUIShow()Z
    .registers 1

    .line 627
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    return p0
.end method

.method public mIsSelfTimerCapturing()Z
    .registers 1

    .line 635
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing:Z

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_80

    const/4 v2, 0x3

    if-eq p1, v2, :cond_80

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_71

    const/16 v2, 0xa5

    if-eq p1, v2, :cond_66

    const/16 v2, 0x1f

    if-eq p1, v2, :cond_63

    const/16 v2, 0x20

    if-eq p1, v2, :cond_52

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_45

    const/16 v2, 0xd0

    if-eq p1, v2, :cond_36

    packed-switch p1, :pswitch_data_8a

    return-void

    .line 561
    :pswitch_23
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsCapturing:Z

    .line 562
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    return-void

    .line 589
    :pswitch_2b
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing:Z

    return-void

    .line 565
    :pswitch_2e
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing:Z

    .line 566
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    return-void

    .line 600
    :cond_36
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsPopSettingShow:Z

    .line 601
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 595
    :cond_45
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsPopSettingShow:Z

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 597
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->hideSkySettingUI()V

    return-void

    .line 569
    :cond_52
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    if-nez p1, :cond_60

    .line 571
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 574
    :cond_60
    :pswitch_60
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsCapturing:Z

    return-void

    .line 592
    :cond_63
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsCapturing:Z

    return-void

    .line 584
    :cond_66
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->hideSkySettingUI()V

    .line 585
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    .line 586
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing:Z

    return-void

    .line 577
    :cond_71
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    if-eqz p1, :cond_78

    .line 578
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->hideSkySettingUI()V

    .line 580
    :cond_78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-static {p1}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    .line 581
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsSelfTimerCapturing:Z

    return-void

    .line 606
    :cond_80
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 607
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->scrollToSavedPosition()V

    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0xb
        :pswitch_2e
        :pswitch_2b
        :pswitch_23
        :pswitch_60
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 1

    .line 623
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->showOrHideSkySettingUI()V

    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 5

    .line 639
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    if-eq v0, p1, :cond_15

    .line 641
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    const/4 v1, 0x5

    if-eq v0, v1, :cond_10

    const/4 p2, 0x0

    .line 646
    :cond_10
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    .line 647
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startSkyRootAnimation(Z)V

    :cond_15
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 5

    .line 652
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    .line 653
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mModePlusBottomBarHeight:I

    .line 654
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    .line 656
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->collapseBottomUI(ZZ)V

    goto :goto_19

    .line 658
    :cond_16
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->expandBottomUI(Z)V

    .line 661
    :cond_19
    :goto_19
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startSkyRootAnimation(Z)V

    .line 662
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIsPopSettingShow:Z

    if-nez p1, :cond_23

    .line 663
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->setSkyChooseBarVisible()V

    :cond_23
    return-void
.end method

.method public scrollToSavedPosition()V
    .registers 6

    .line 989
    const-string v0, "scroll_position_key_magic_sky_type"

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    const-string v1, "scroll_offset_key_magic_sky_type"

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3a

    if-nez v1, :cond_11

    goto :goto_3a

    .line 994
    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 995
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 996
    sget-object v2, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[scrollToSavedPosition] position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,offset :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 998
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->scrollToPosition(II)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public show()V
    .registers 2

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public showOrHideSkySettingUI()V
    .registers 2

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconAppeareAnim:Landroid/animation/ObjectAnimator;

    .line 212
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIconDisappeareAnim:Landroid/animation/ObjectAnimator;

    .line 213
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyRootAnimator:Landroid/animation/ValueAnimator;

    .line 214
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_2b

    .line 218
    :cond_1d
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->cancelAnimation()V

    .line 219
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    if-eqz v0, :cond_28

    .line 220
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->hideSkySettingUI()V

    return-void

    .line 222
    :cond_28
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->showSkySettingUI()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method protected showSkySettingUI()V
    .registers 3

    .line 242
    sget-object v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showSkySettingUI"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 243
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->expandBottomUI(Z)V

    .line 244
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startExpandAnimator()V

    .line 245
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->startIconDisappearedAnim()V

    .line 246
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectUIShown:Z

    .line 247
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x64

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public unInitMagicSkyUI()V
    .registers 5

    .line 179
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->cancelAnimation()V

    .line 180
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->removeAnimatorListener()V

    .line 181
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->hide()V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mChooseRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    if-eqz v0, :cond_46

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_46

    .line 185
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    :goto_1d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 187
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_43

    .line 189
    iget-object v3, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;

    .line 191
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 192
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->getItemImageView()Landroid/widget/ImageView;

    move-result-object v2

    goto :goto_40

    .line 194
    :cond_3c
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$ItemVH;->getItemCompatImageView()Lcom/transsion/camera/app/ui/widget/RotateCompatImageView;

    move-result-object v2

    .line 196
    :goto_40
    invoke-static {v2}, Lcom/transsion/camera/utils/BitmapUtils;->releaseBitmap(Landroid/widget/ImageView;)V

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_46
    return-void
.end method

.method public updateAdapterPosition()V
    .registers 5

    .line 615
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "1"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_magic_sky_type"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1b

    .line 618
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->setCurrentPosition(I)V

    :cond_1b
    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 18

    move-object/from16 v0, p0

    .line 668
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    if-eqz v1, :cond_3cb

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-nez v2, :cond_c

    goto/16 :goto_3cb

    :cond_c
    const/4 v2, 0x0

    .line 671
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 672
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 674
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 677
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    .line 679
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 680
    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 681
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 682
    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v6, 0x33

    .line 683
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v7, 0x0

    .line 684
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v8, 0x30

    .line 685
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 686
    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 687
    new-instance v8, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v9, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 688
    iget-object v9, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 689
    iget-object v9, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v10, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 690
    iget-object v9, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 691
    iget v10, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/16 v11, 0x55

    const/16 v12, 0x10e

    const/16 v13, 0x5a

    const/4 v14, 0x1

    if-ne v10, v14, :cond_17e

    .line 692
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    if-eq v1, v13, :cond_119

    const/16 v4, 0xb4

    if-eq v1, v4, :cond_e2

    if-eq v1, v12, :cond_a9

    .line 746
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_start_margin_expand:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v4, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_top_margin_expand:I

    .line 747
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 746
    invoke-virtual {v3, v1, v4, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 751
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_width_expand:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 752
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_height_expand:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 753
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_left_margin_expand:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v4, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_top_margin_expand:I

    .line 754
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 753
    invoke-virtual {v2, v1, v4, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 758
    invoke-virtual {v8, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 759
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    goto/16 :goto_151

    :cond_a9
    const/16 v1, 0x35

    .line 728
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 729
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_start_margin_expand_270:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v4, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_top_margin_expand_270:I

    .line 730
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 729
    invoke-virtual {v3, v1, v4, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 734
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_width_expand_90:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 735
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_width_expand:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 736
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_left_margin_expand:I

    .line 737
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v4, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_top_margin_expand_90:I

    .line 738
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 736
    invoke-virtual {v2, v7, v1, v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 741
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 742
    invoke-virtual {v8, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    goto :goto_151

    .line 711
    :cond_e2
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 712
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_start_margin_expand_180:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v4, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_top_margin_expand_180:I

    .line 713
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 712
    invoke-virtual {v3, v1, v4, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 717
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_width_expand:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 718
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_height_expand:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 719
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_left_margin_expand:I

    .line 721
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v4, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_top_margin_expand:I

    .line 722
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 719
    invoke-virtual {v2, v7, v7, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 724
    invoke-virtual {v8, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 725
    invoke-virtual {v8, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    goto :goto_151

    :cond_119
    const/16 v1, 0x53

    .line 694
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 695
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_start_margin_expand_90:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v4, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_top_margin_expand_90:I

    .line 696
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 695
    invoke-virtual {v3, v1, v4, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 700
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_width_expand_90:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 701
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_width_expand:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 702
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_top_margin_expand_90:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v4, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_left_margin_expand:I

    .line 705
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 702
    invoke-virtual {v2, v1, v7, v7, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 707
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 708
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 762
    :goto_151
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v4, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    rsub-int v4, v4, 0x168

    invoke-virtual {v1, v4, v7}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 763
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 766
    new-instance v1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItems:Ljava/util/List;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v14, v3}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;-><init>(Ljava/util/List;ZLandroid/content/Context;)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    .line 767
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecorationExpand:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 768
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRootRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v7, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    move v13, v14

    goto/16 :goto_3c2

    :cond_17e
    const/4 v15, 0x4

    const/16 v14, 0x51

    if-ne v10, v15, :cond_1e0

    .line 770
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 771
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_lr_hover_bottom_margin:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 772
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_lr_hover_start_margin:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 773
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 774
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_lr_hover_bottom_margin:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 775
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_width_lr_hover:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 776
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_height_lr_hover:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 777
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 780
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 782
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v12, v7}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 783
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    new-instance v1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItems:Ljava/util/List;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v7, v3}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;-><init>(Ljava/util/List;ZLandroid/content/Context;)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    .line 786
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 787
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRootRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    invoke-virtual {v1, v2, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :goto_1dd
    const/4 v13, 0x1

    goto/16 :goto_3c2

    :cond_1e0
    const/4 v11, 0x5

    if-ne v10, v11, :cond_23e

    .line 789
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 790
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_lr_hover_bottom_margin:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 791
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_lr_hover_start_margin:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 792
    iput v14, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 793
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_lr_hover_bottom_margin:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 794
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_width_lr_hover:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 795
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_root_height_lr_hover:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 796
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 798
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 799
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 801
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v13, v7}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 802
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    new-instance v1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItems:Ljava/util/List;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v7, v3}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;-><init>(Ljava/util/List;ZLandroid/content/Context;)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    .line 805
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 806
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRootRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    invoke-virtual {v1, v2, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_1dd

    :cond_23e
    const/16 v6, 0x50

    .line 808
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 809
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v6, -0x1

    .line 810
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 811
    sget v6, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->magic_sky_item_thumbnail_height:I

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 814
    iget v6, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    const/4 v10, 0x3

    if-ne v6, v10, :cond_26e

    .line 815
    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v10, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_view_hover_bottom_padding:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 816
    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v10, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choosebar_icon_margin_bottom_hover:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_2dc

    :cond_26e
    const/4 v1, 0x2

    if-ne v6, v1, :cond_290

    .line 818
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mModePlusBottomBarHeight:I

    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v10, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_view_column_bottom_padding:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    sub-int/2addr v1, v6

    .line 819
    iget v6, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mModePlusBottomBarHeight:I

    iget-object v10, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->magic_sky_icon_above_mode_picker:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    :goto_28e
    add-int/2addr v6, v10

    goto :goto_2dc

    .line 821
    :cond_290
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mModePlusBottomBarHeight:I

    iget v6, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSettingUIAdjustHeight:I

    sub-int/2addr v1, v6

    .line 822
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v6

    if-eqz v6, :cond_2ae

    iget v6, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    if-nez v6, :cond_2ae

    .line 823
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mModePlusBottomBarHeight:I

    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v10, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_bottom_offset:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 825
    :cond_2ae
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v6

    iget-boolean v6, v6, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v6, :cond_2cd

    iget v6, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    if-nez v6, :cond_2cd

    .line 826
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v1

    iget-object v6, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    .line 827
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v10, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_select_bottom_offset:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    add-int/2addr v1, v6

    .line 830
    :cond_2cd
    iget v6, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mModePlusBottomBarHeight:I

    iget-object v10, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->magic_sky_icon_above_mode_normal_picker:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto :goto_28e

    .line 832
    :goto_2dc
    iget-object v10, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mIMasterGuideUICommon:Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;

    if-eqz v10, :cond_2ec

    .line 833
    sget v11, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_start_margin:I

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const-string v12, "key_magic_sky_type"

    const/4 v13, 0x1

    invoke-interface {v10, v11, v6, v13, v12}, Lcom/transsion/camera/app/common/ui/setting/IMasterGuideUICommon;->setSettingIconParams(IIZLjava/lang/String;)V

    .line 835
    :cond_2ec
    iget-object v10, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_334

    if-eqz p1, :cond_334

    .line 836
    const-string v10, "bottomMargin"

    filled-new-array {v4, v1}, [I

    move-result-object v1

    invoke-static {v10, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 837
    const-string v4, "iconBottomMargin"

    filled-new-array {v5, v6}, [I

    move-result-object v5

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 838
    filled-new-array {v1, v4}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    .line 839
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 840
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 841
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2, v3, v9}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/widget/FrameLayout$LayoutParams;Landroid/content/res/Resources;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 847
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_34a

    .line 849
    :cond_334
    invoke-virtual {v2, v7, v7, v7, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 850
    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$dimen;->sky_choose_bar_start_margin:I

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v3, v1, v7, v7, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 851
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRoot:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    :goto_34a
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 856
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 857
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mItemDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 859
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_39b

    iget v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    if-nez v1, :cond_39b

    .line 860
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    if-nez v1, :cond_388

    .line 861
    sget-object v1, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "new mSkyItemAdapter"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 862
    new-instance v1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItems:Ljava/util/List;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v7, v3}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;-><init>(Ljava/util/List;ZLandroid/content/Context;)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    .line 863
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOnItemClickListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;)V

    .line 864
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 865
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 867
    :cond_388
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    const/4 v13, 0x1

    invoke-virtual {v1, v2, v13}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 868
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mScreenFormType:I

    iget v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->updateScreenFormType(II)Z

    move-result v14

    goto :goto_3c3

    :cond_39b
    const/4 v13, 0x1

    .line 870
    new-instance v1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItems:Ljava/util/List;

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v7, v3}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;-><init>(Ljava/util/List;ZLandroid/content/Context;)V

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    .line 871
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mOnItemClickListener:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter$OnItemClickListener;)V

    .line 872
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyItemAdapter:Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItemAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 873
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkyChooseBar:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v7, v7}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 874
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRootRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v7, v7}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 875
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->mSkySelectRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :goto_3c2
    move v14, v13

    :goto_3c3
    if-eqz v14, :cond_3cb

    .line 880
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->scrollToSavedPosition()V

    .line 881
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->updateAdapterPosition()V

    :cond_3cb
    :goto_3cb
    return-void
.end method
