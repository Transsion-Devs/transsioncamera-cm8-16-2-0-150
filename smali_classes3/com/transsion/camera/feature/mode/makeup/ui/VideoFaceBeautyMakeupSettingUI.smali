.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field protected mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field protected final mBottomUIDefaultHeight:I

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mEntryRootView:Landroid/view/ViewGroup;

.field private mEntryShow:Z

.field protected mEntryView:Landroid/view/View;

.field private final mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

.field protected mHoverAnimator:Landroid/animation/ValueAnimator;

.field private final mHoverPathInterpolator:Landroid/view/animation/PathInterpolator;

.field protected final mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

.field protected mLowLight:Z

.field protected final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mPopSettingShow:Z

.field private mRecording:Z

.field private final mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field protected mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

.field private final mTranslateDistance:F

.field private final mTranslatePathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mVisibilityAnimator:Landroid/animation/AnimatorSet;

.field private mZoomWheelShowing:Z


# direct methods
.method public static synthetic $r8$lambda$05zNpZ2o_FDJtP14S3uhkCJS5So(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->lambda$updateSettingUILayout$3(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$09KcRXyWgiWMRMoWEEpiKoGQkRs(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->resetUI()V

    return-void
.end method

.method public static synthetic $r8$lambda$1jjJHzikfNgJffKUBJtiUMBWZrY(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PsLU4Cq2__PJwdJX1b0OVHXUKUc(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->lambda$new$2(Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$onOTzpVNQ6-xe8AX0ZT3ggr_3_4(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->lambda$ringScreenLightUpdateUI$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 88
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautyMakeupSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 8

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 121
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 122
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslatePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 123
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 127
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mHoverPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 181
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 315
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 131
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    .line 133
    sget v0, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->bottom_ui_translate_anim_distance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslateDistance:F

    .line 134
    sget v0, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->mu_big_item_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomUIDefaultHeight:I

    return-void
.end method

.method private cancelAnimator()V
    .registers 1

    .line 728
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_7

    .line 729
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_7
    return-void
.end method

.method private entryVisibilityChanged(Z)V
    .registers 5

    .line 755
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez v0, :cond_c

    .line 756
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "effectUIVisibleChanged mAppUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 759
    :cond_c
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez v1, :cond_18

    .line 760
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "effectUIVisibleChanged mStatusMonitor is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 764
    :cond_18
    iget v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-eq v2, v1, :cond_27

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mPopSettingShow:Z

    if-nez v1, :cond_27

    .line 765
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryShow:Z

    xor-int/2addr v1, v2

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 768
    :cond_27
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryShow:Z

    const-string v0, "key_conflict_ui_state"

    if-eqz p1, :cond_48

    .line 769
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x83

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 770
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xb3

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 771
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_facebeauty_ui_on"

    .line 772
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 774
    :cond_48
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x84

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 775
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xb7

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 776
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string/jumbo p1, "value_facebeauty_ui_off"

    .line 777
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private hideEntryViewOnly()V
    .registers 3

    .line 746
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideEntryViewOnly"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 748
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->cancelAnimator()V

    const/4 v0, 0x0

    .line 750
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryShow:Z

    .line 751
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 182
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 183
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mLowLight:Z

    .line 184
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->ringScreenLightUpdateUI()V

    :cond_9
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Object;I)V
    .registers 3

    const/16 p1, 0x64

    if-ne p2, p1, :cond_1e

    .line 317
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_12

    .line 318
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->resetUI()V

    return-void

    .line 319
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_1e

    .line 320
    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method

.method private synthetic lambda$ringScreenLightUpdateUI$1()V
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mLowLight:Z

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->updateLowLight(Z)V

    return-void
.end method

.method private synthetic lambda$updateSettingUILayout$3(Landroid/widget/FrameLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 473
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p0, :cond_13

    .line 475
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13
    return-void
.end method

.method private resetUI()V
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 327
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "resetUI mEntryView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 330
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->hideEntryView()V

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->resetUI()V

    return-void
.end method

.method private showEntryViewOnly()V
    .registers 3

    .line 734
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showEntryViewOnly"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 736
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->cancelAnimator()V

    const/4 v0, 0x1

    .line 738
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryShow:Z

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 742
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method protected animEntryVisibility(Z)V
    .registers 14

    .line 587
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animEntryVisibility show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 589
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    if-nez v1, :cond_20

    .line 590
    const-string p0, "animEntryVisibility mEntryView is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 594
    :cond_20
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->cancelAnimator()V

    .line 596
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryShow:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_30

    .line 598
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 599
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->updateEntryTranslate()V

    .line 602
    :cond_30
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    if-eqz p1, :cond_3b

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_3c

    :cond_3b
    move v3, v1

    .line 604
    :goto_3c
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    if-eqz p1, :cond_46

    move v5, v1

    goto :goto_48

    .line 605
    :cond_46
    iget v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslateDistance:F

    .line 606
    :goto_48
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v6

    if-eqz p1, :cond_51

    goto :goto_54

    .line 607
    :cond_51
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslateDistance:F

    neg-float v1, v1

    .line 609
    :goto_54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animEntryVisibility alphaFrom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", alphaTo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", translateXFrom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", translateXTo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", translateYFrom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", translateYTo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    const/4 v7, 0x2

    new-array v8, v7, [F

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v2, 0x1

    aput v3, v8, v2

    .line 614
    const-string v3, "alpha"

    invoke-static {v0, v3, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 617
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const-string/jumbo v8, "translationY"

    const-string/jumbo v10, "translationX"

    if-ne v3, v2, :cond_ef

    .line 618
    iget v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v11, 0x5a

    if-eq v3, v11, :cond_e1

    const/16 v11, 0xb4

    if-eq v3, v11, :cond_d4

    const/16 v11, 0x10e

    if-eq v3, v11, :cond_c7

    .line 633
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    neg-float v3, v5

    new-array v5, v7, [F

    aput v4, v5, v9

    aput v3, v5, v2

    .line 634
    invoke-static {v1, v10, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_11c

    .line 628
    :cond_c7
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    new-array v4, v7, [F

    aput v6, v4, v9

    aput v1, v4, v2

    .line 629
    invoke-static {v3, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_11c

    .line 624
    :cond_d4
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    new-array v3, v7, [F

    aput v4, v3, v9

    aput v5, v3, v2

    .line 625
    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_11c

    .line 620
    :cond_e1
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    neg-float v1, v1

    new-array v4, v7, [F

    aput v6, v4, v9

    aput v1, v4, v2

    .line 621
    invoke-static {v3, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_11c

    :cond_ef
    const/4 v11, 0x4

    if-ne v3, v11, :cond_100

    .line 639
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    neg-float v3, v5

    new-array v5, v7, [F

    aput v4, v5, v9

    aput v3, v5, v2

    .line 640
    invoke-static {v1, v10, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_11c

    :cond_100
    const/4 v11, 0x5

    if-ne v3, v11, :cond_110

    .line 642
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    new-array v3, v7, [F

    aput v4, v3, v9

    aput v5, v3, v2

    .line 643
    invoke-static {v1, v10, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_11c

    .line 645
    :cond_110
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    new-array v4, v7, [F

    aput v6, v4, v9

    aput v1, v4, v2

    .line 646
    invoke-static {v3, v8, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 649
    :goto_11c
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_137

    .line 652
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 653
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslatePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 655
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_141

    .line 657
    :cond_137
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 658
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mFadeOutPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 661
    :goto_141
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$1;

    invoke-direct {v4, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 690
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_15b

    .line 691
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-array v1, v2, [Landroid/animation/Animator;

    aput-object v0, v1, v9

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_166

    .line 693
    :cond_15b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v0, v3, v9

    aput-object v1, v3, v2

    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 696
    :goto_166
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mVisibilityAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 698
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->entryVisibilityChanged(Z)V

    return-void
.end method

.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 7

    .line 145
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 147
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 149
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p3

    iget-boolean p3, p3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz p3, :cond_13

    .line 150
    sget p3, Lcom/transsion/camera/feature/makeup/R$layout;->video_face_beauty_makeup_setting_layout_ui5:I

    goto :goto_1e

    .line 151
    :cond_13
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 152
    sget p3, Lcom/transsion/camera/feature/makeup/R$layout;->video_face_beauty_makeup_setting_layout_ui4:I

    goto :goto_1e

    .line 154
    :cond_1c
    sget p3, Lcom/transsion/camera/feature/makeup/R$layout;->video_face_beauty_makeup_setting_layout:I

    :goto_1e
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    .line 158
    sget p3, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_top_ui:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    .line 159
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 160
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->setListener(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarChangeListener;)V

    .line 162
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_bottom_rotate_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 163
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    sget p3, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_tab_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 164
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->video_face_beauty_makeup_list_container:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->createItemView(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    .line 169
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mLowLight:Z

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->ringScreenLightUpdateUI()V

    .line 171
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 271
    const-string p0, "key_video_face_beauty_makeup"

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    const-string v0, "key_video_face_beauty_makeup_option"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    const-string v0, "key_video_face_beauty_makeup"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v0, "key_video_facebeauty"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    const-string v0, "key_mu_face_beauty"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v0, "key_video_makeup"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v0, "key_video_makeup_style"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    .line 277
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 4

    .line 214
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 215
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideEntryView mEntryShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mEntryView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_34

    .line 217
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryShow:Z

    .line 218
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->hideEntryViewOnly()V

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->entryVisibilityChanged(Z)V

    :cond_34
    return-void
.end method

.method public initSettingUI(IILandroid/content/Context;)V
    .registers 4

    .line 139
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->initItemUI(II)V

    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public needShowOptionBar()Z
    .registers 1

    .line 266
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryShow:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    .line 516
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->notifyCameraOperateAction(I)V

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->notifyCameraOperateAction(I)V

    const/16 v0, 0xa5

    const/4 v1, 0x0

    if-eqz p1, :cond_84

    const/4 v2, 0x1

    if-eq p1, v2, :cond_7c

    const/4 v3, 0x2

    if-eq p1, v3, :cond_78

    const/4 v3, 0x3

    if-eq p1, v3, :cond_7c

    const/16 v3, 0x9

    if-eq p1, v3, :cond_7e

    const/16 v3, 0x1c

    if-eq p1, v3, :cond_72

    const/16 v3, 0x20

    if-eq p1, v3, :cond_6c

    if-eq p1, v0, :cond_84

    const/16 v0, 0xf

    if-eq p1, v0, :cond_63

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5a

    const/16 v0, 0x19

    if-eq p1, v0, :cond_54

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_46

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_40

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_3d

    return-void

    .line 578
    :cond_3d
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mPopSettingShow:Z

    return-void

    .line 573
    :cond_40
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mPopSettingShow:Z

    .line 574
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->hideEntryView()V

    return-void

    .line 542
    :cond_46
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mRecording:Z

    if-nez p1, :cond_51

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mZoomWheelShowing:Z

    if-eqz p1, :cond_51

    .line 543
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->hideEntryView()V

    .line 545
    :cond_51
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mZoomWheelShowing:Z

    return-void

    .line 537
    :cond_54
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mZoomWheelShowing:Z

    .line 538
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->hideEntryView()V

    return-void

    .line 531
    :cond_5a
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mRecording:Z

    .line 532
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->setEnable(Z)V

    .line 533
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->hideEntryView()V

    return-void

    .line 525
    :cond_63
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mRecording:Z

    .line 526
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->setEnable(Z)V

    .line 527
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->hideEntryView()V

    return-void

    .line 520
    :cond_6c
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->setEnable(Z)V

    .line 521
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mPopSettingShow:Z

    return-void

    .line 553
    :cond_72
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mRecording:Z

    .line 554
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->setEnable(Z)V

    return-void

    .line 549
    :cond_78
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->hideEntryView()V

    return-void

    .line 566
    :cond_7c
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mPopSettingShow:Z

    .line 568
    :cond_7e
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mRecording:Z

    .line 569
    invoke-virtual {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->setEnable(Z)V

    return-void

    :cond_84
    if-ne p1, v0, :cond_89

    .line 560
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->hideEntryView()V

    .line 562
    :cond_89
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->setEnable(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .line 336
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryShow:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 337
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->animEntryVisibility(Z)V

    const/4 p0, 0x1

    return p0

    .line 340
    :cond_a
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 345
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 346
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_b

    const/4 v1, 0x7

    if-ne v1, v0, :cond_f

    :cond_b
    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->updateSettingUILayout(Z)V

    .line 350
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->onOrientationChanged(I)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 355
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScreenFormChanged(IZ)V

    const/4 v0, 0x1

    .line 356
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->updateSettingUILayout(Z)V

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public onSettingOptionToggle(Ljava/lang/String;)V
    .registers 5

    .line 256
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingOptionToggle sourceKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mEntryShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 258
    const-string v0, "key_video_face_beauty_makeup_option"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->onSettingOptionToggle()V

    const/4 p1, 0x1

    .line 260
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->animEntryVisibility(Z)V

    :cond_34
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method protected ringScreenLightUpdateUI()V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 190
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 301
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setDeviceSettingData(Ljava/util/List;)V

    if-eqz p1, :cond_33

    .line 303
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 304
    const-string v2, "key_video_makeup"

    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "key_video_facebeauty"

    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    .line 305
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 306
    :cond_29
    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_9

    .line 307
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    goto :goto_9

    .line 312
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->setDeviceSettingData(Ljava/util/List;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 5

    .line 236
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    if-eqz v0, :cond_1d

    .line 238
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->setEnabled(Z)V

    .line 240
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->setEnable(Z)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 245
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 246
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 2

    .line 206
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mRecording:Z

    .line 208
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mZoomWheelShowing:Z

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->setupItemView()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 227
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 228
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 229
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mItemUIManager:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->unInit()V

    .line 231
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method

.method protected updateEntryTranslate()V
    .registers 3

    .line 702
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_35

    .line 703
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2d

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_25

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1c

    .line 715
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslateDistance:F

    neg-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 711
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslateDistance:F

    neg-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 708
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslateDistance:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 705
    :cond_2d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslateDistance:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_35
    const/4 v1, 0x4

    if-ne v1, v0, :cond_41

    .line 719
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslateDistance:F

    neg-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_41
    const/4 v1, 0x5

    if-ne v1, v0, :cond_4c

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslateDistance:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    .line 723
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTranslateDistance:F

    neg-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 18

    move-object/from16 v0, p0

    .line 362
    invoke-super/range {p0 .. p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V

    .line 364
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    if-eqz v1, :cond_24b

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    if-eqz v1, :cond_24b

    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v1, :cond_13

    goto/16 :goto_24b

    .line 369
    :cond_13
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v1}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 371
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v1, :cond_29

    .line 372
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->updateProgressText(II)V

    .line 374
    :cond_29
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    iget v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;->updateLayout(II)V

    .line 376
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 377
    iget-object v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    .line 378
    iget-object v3, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    .line 380
    iget-object v4, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 382
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 384
    iget v6, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ne v6, v7, :cond_5c

    .line 385
    sget v3, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_root_hover_bottom_offset:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_77

    :cond_5c
    if-ne v6, v8, :cond_67

    .line 387
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_root_bottom_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    :goto_64
    sub-int v2, v3, v2

    goto :goto_77

    .line 390
    :cond_67
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 391
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->video_face_beauty_makeup_bottom_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_64

    .line 394
    :cond_74
    iget v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomUIDefaultHeight:I

    goto :goto_64

    .line 398
    :goto_77
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 399
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 400
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 401
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 403
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, 0x0

    .line 404
    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 406
    iget v7, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/16 v9, 0x55

    const/16 v10, 0x5a

    const/16 v11, 0x33

    const/16 v12, 0x53

    const/16 v13, 0x10e

    const/16 v14, 0xb4

    const/4 v15, 0x1

    if-ne v15, v7, :cond_147

    .line 407
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v2, v10, :cond_104

    if-eq v2, v14, :cond_e7

    if-eq v2, v13, :cond_cc

    .line 429
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 430
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 431
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 432
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_11e

    .line 421
    :cond_cc
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 422
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_right_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 423
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 424
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_11e

    :cond_e7
    const/16 v2, 0x35

    .line 415
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 416
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 417
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 418
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_expand_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_11e

    .line 409
    :cond_104
    iput v9, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 410
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_right_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 411
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 412
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_expand_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 435
    :goto_11e
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    add-int/2addr v2, v13

    rem-int/lit16 v2, v2, 0x168

    invoke-virtual {v1, v2, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 436
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_13e

    .line 437
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_13e

    .line 438
    invoke-interface {v1, v15, v6}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 439
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v2, 0xb3

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 442
    :cond_13e
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 443
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_245

    :cond_147
    const/4 v9, 0x7

    if-ne v7, v9, :cond_189

    .line 445
    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    if-eq v2, v10, :cond_162

    if-eq v2, v14, :cond_162

    if-eq v2, v13, :cond_162

    .line 455
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 456
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_0_flip_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 457
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_171

    .line 449
    :cond_162
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 450
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_bottom_90_flip_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 451
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v14, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 460
    :goto_171
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_180

    .line 461
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_180

    .line 462
    invoke-interface {v1, v15, v6}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 465
    :cond_180
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 466
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_245

    .line 467
    :cond_189
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1c7

    if-eqz p1, :cond_1be

    .line 469
    filled-new-array {v5, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x190

    .line 470
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 471
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mHoverPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 472
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 478
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_245

    .line 480
    :cond_1be
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 481
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_245

    .line 483
    :cond_1c7
    iget v5, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    if-eqz v5, :cond_228

    if-ne v5, v8, :cond_1ce

    goto :goto_228

    :cond_1ce
    const/4 v2, 0x4

    if-ne v5, v2, :cond_1fc

    const/16 v2, 0x55

    .line 495
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 496
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 497
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_right_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 498
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 499
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v1, v2, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 500
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 501
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_245

    :cond_1fc
    const/4 v2, 0x5

    if-ne v5, v2, :cond_245

    .line 503
    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 504
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_left_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 505
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_right_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 506
    sget v2, Lcom/transsion/camera/featurelibs/makeupRes/R$dimen;->makeup_lr_hover_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 507
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v2, v0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mOrientation:I

    invoke-virtual {v1, v2, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 508
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 509
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_245

    .line 485
    :cond_228
    :goto_228
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 486
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_239

    .line 487
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_239

    .line 488
    invoke-interface {v1, v6, v15}, Lcom/transsion/camera/app/common/IAppUI;->showOrHideModePickerRootUI(ZZ)V

    .line 491
    :cond_239
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v6, v6}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 492
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 493
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    :cond_245
    :goto_245
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 365
    :cond_24b
    :goto_24b
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSettingUILayout mEntryView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mTopUI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mBottomRotateLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupSettingUI;->mBottomRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
