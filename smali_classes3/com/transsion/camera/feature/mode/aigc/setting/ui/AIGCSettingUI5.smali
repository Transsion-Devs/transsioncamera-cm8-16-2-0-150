.class public Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI5;
.super Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

.field private mTabMenuContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCSettingUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 6

    .line 43
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p3}, Lcom/transsion/camera/app/common/interactive/CommonInteractive;->getIAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 45
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 46
    sget p3, Lcom/transsion/camera/feature/aigc/R$layout;->aigc_effect_setting_layout_ui5:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    .line 47
    sget p3, Lcom/transsion/camera/feature/aigc/R$id;->tab_control_view_container:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    .line 48
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 49
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTabMenuContainer()Landroid/view/ViewGroup;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI5;->mTabMenuContainer:Landroid/widget/LinearLayout;

    .line 50
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTabViewSwitchContainer()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 51
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {p3}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getEffectListContainer()Landroid/widget/FrameLayout;

    move-result-object p3

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAIGCSettingUIManager:Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUIManager;->createSettingView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 55
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 56
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mLowLight:Z

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->ringScreenLightUpdateUI()V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method protected updateSettingUILayout(Z)V
    .registers 6

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    if-eqz p1, :cond_71

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez v0, :cond_9

    goto :goto_71

    .line 70
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mHoverAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI5;->mTabMenu:Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/menu/TabMenuCustomView;->getTopUI()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    sget v2, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_tab_bottom_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/16 v2, 0x11

    .line 78
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI5;->mTabMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 82
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI5;->mTabMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 86
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v2, 0x53

    .line 87
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 88
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v2

    sget v3, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    add-int/2addr v2, p1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 89
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 65
    :cond_71
    :goto_71
    sget-object p1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSettingUILayout mEntryView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRotateContainer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCSettingUI;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
