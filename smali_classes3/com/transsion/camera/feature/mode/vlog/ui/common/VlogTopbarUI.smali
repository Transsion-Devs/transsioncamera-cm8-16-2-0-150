.class public Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/common/IVlogUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$OnTopItemClick;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppRect:Lcom/transsion/camera/app/common/IAppUI;

.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mBackClickListener:Landroid/view/View$OnClickListener;

.field private mBatteryStatus:I

.field private final mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field private mComposeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mComposeClickListener:Landroid/view/View$OnClickListener;

.field private final mComposeTopBar:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCorrectOrientation:I

.field private mCurrentPage:I

.field private final mDraftBoxClickListener:Landroid/view/View$OnClickListener;

.field private final mExpandTopBar:[Ljava/lang/String;

.field private mFirstPreviewArrived:Z

.field private mFixedOrientation:I

.field private final mFullTopBar:[Ljava/lang/String;

.field private final mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mIconLowLightColor:I

.field private mIconOffColor:I

.field private mIconOnColor:I

.field private mIsZooming:Z

.field private final mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field private mNeedCompose:Z

.field private mOrientation:I

.field private mPreviewSwitchValue:Ljava/lang/String;

.field private mRootView:Landroid/view/ViewGroup;

.field private mScreenFormType:I

.field private mSegmentFull:Z

.field private mSegmentPlay:Z

.field private final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

.field private mSettingReady:Z

.field private final mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTemperatureStatus:I

.field private mTemplateOrientation:I

.field private final mTopBar:[Ljava/lang/String;

.field private mTopBarItemUIs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$OnTopItemClick;

.field private mVlogSettingTopBarRoot:Landroid/widget/FrameLayout;

.field private mVlogToolBarRoot:Landroid/widget/FrameLayout;

.field private mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

.field private mbRecording:Z

.field private mbSegmentDragging:Z


# direct methods
.method public static synthetic $r8$lambda$eL7aSD4kDV8WDndqs8O6qJNPgfg(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->lambda$onSettingReady$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$oPfsXKBHZXtlxnBe1HojvVvFHJM(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->lambda$updateTopBarLayout$1(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ryvHjELChS-wgN8Enc1eDGZDG3Q(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->lambda$onFirstSteadyFrameArrive$2()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmTopItemClickListener(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;)Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$OnTopItemClick;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$OnTopItemClick;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_TopBarUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;IILcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$OnTopItemClick;)V
    .registers 8

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "off"

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mPreviewSwitchValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBatteryStatus:I

    .line 98
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTemperatureStatus:I

    .line 99
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCurrentPage:I

    const/4 v1, 0x1

    .line 100
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTemplateOrientation:I

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mFirstPreviewArrived:Z

    .line 858
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBackClickListener:Landroid/view/View$OnClickListener;

    .line 867
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeClickListener:Landroid/view/View$OnClickListener;

    .line 876
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$3;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mDraftBoxClickListener:Landroid/view/View$OnClickListener;

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 119
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mAppRect:Lcom/transsion/camera/app/common/IAppUI;

    .line 120
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    .line 122
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopItemClickListener:Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$OnTopItemClick;

    .line 124
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mContext:Landroid/content/Context;

    .line 127
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mOrientation:I

    .line 128
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    .line 129
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 130
    invoke-interface {p4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 131
    const-string p2, "key_fold_switch_preview"

    invoke-interface {p4, p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mPreviewSwitchValue:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/vlog/R$array;->vlog_top_bar_setting_ui_entries:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBar:[Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/vlog/R$array;->vlog_full_segment_top_bar_setting_ui_entries:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mFullTopBar:[Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/vlog/R$array;->vlog_contain_compose_top_bar_setting_ui_entries:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeTopBar:[Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/vlog/R$array;->vlog_top_bar_setting_ui_entries_expanded:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mExpandTopBar:[Ljava/lang/String;

    .line 136
    const-string/jumbo p2, "top_bar_animation_icon_on"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIconOnColor:I

    .line 137
    const-string/jumbo p2, "top_bar_animation_icon_off"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIconOffColor:I

    .line 138
    const-string/jumbo p2, "top_bar_animation_icon_low_light"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIconLowLightColor:I

    return-void
.end method

.method private findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2f

    .line 623
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    goto :goto_2f

    .line 627
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v0, :cond_e

    .line 628
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-ne v0, p3, :cond_e

    const/4 p0, 0x1

    :cond_2f
    :goto_2f
    return p0
.end method

.method private hideRoot()V
    .registers 2

    .line 823
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mRootView:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initTopBarItemUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_52

    .line 643
    :cond_3
    const-string v0, "key_vlog_back"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBackClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    :cond_14
    const-string v0, "key_vlog_compose"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 651
    :cond_25
    const-string v0, "key_vlog_draft"

    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mDraftBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_3d

    .line 656
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 659
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_44

    .line 660
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 663
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v0, :cond_4b

    .line 664
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 667
    :cond_4b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz p0, :cond_52

    .line 668
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    :cond_52
    :goto_52
    return-void
.end method

.method private synthetic lambda$onFirstSteadyFrameArrive$2()V
    .registers 2

    const/4 v0, 0x1

    .line 695
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    return-void
.end method

.method private synthetic lambda$onSettingReady$0()V
    .registers 3

    .line 174
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mNeedCompose:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBar(ZZ)V

    return-void
.end method

.method private synthetic lambda$updateTopBarLayout$1(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 575
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    if-eqz p3, :cond_14

    const/4 v0, 0x1

    if-eq p3, v0, :cond_d

    const/4 v0, 0x3

    if-eq p3, v0, :cond_d

    goto :goto_1a

    .line 582
    :cond_d
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->stopPressedAnimator(Landroid/view/View;)V

    .line 583
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    goto :goto_1a

    .line 577
    :cond_14
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->startPressedAnimator(Landroid/view/View;)V

    .line 578
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method private showRoot()V
    .registers 3

    .line 818
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 819
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mRootView:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private startPressedAnimator(Landroid/view/View;)V
    .registers 4

    .line 674
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 675
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const p1, 0x3f666666    # 0.9f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private stopPressedAnimator(Landroid/view/View;)V
    .registers 4

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private unInitTopBarSettingUIs()V
    .registers 3

    .line 683
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 685
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_10

    .line 687
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_25
    return-void
.end method

.method private updateLayout(Z)V
    .registers 3

    .line 746
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopContainerOrientation(Z)V

    .line 747
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    .line 748
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarState(Z)V

    .line 750
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateVlogToolBarLayout()V

    .line 751
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarLayout()V

    return-void
.end method

.method private updateTopBarLayout()V
    .registers 13

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    if-nez v0, :cond_6

    goto/16 :goto_1cd

    .line 417
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mAppRect:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getToolBarOriginPaddingHeight()I

    move-result v1

    .line 420
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_horizontal_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 421
    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_horizontal_padding_tb_hover:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 423
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    .line 424
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 426
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    invoke-virtual {v6, v5, v5, v5, v5}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->setPaddingByTopBarScroll(IIII)V

    .line 428
    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCorrectOrientation:I

    .line 429
    iget-boolean v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mbSegmentDragging:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_3c

    iget v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    if-ne v7, v8, :cond_3c

    .line 430
    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mFixedOrientation:I

    .line 433
    :cond_3c
    iget v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    const/16 v9, 0x33

    if-ne v7, v8, :cond_ea

    const/16 v1, 0x5a

    if-eq v6, v1, :cond_bb

    const/16 v1, 0xb4

    if-eq v6, v1, :cond_96

    const/16 v1, 0x10e

    if-eq v6, v1, :cond_71

    .line 461
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 462
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_expand_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 463
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_expand_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 465
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_root_margin_top_expand_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 466
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_root_margin_left_expand_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_df

    :cond_71
    const/16 v1, 0x35

    .line 444
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 445
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_expand_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 446
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_expand_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 448
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_root_margin_top_expand_90:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 449
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_root_margin_left_expand_90:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_df

    :cond_96
    const/16 v1, 0x55

    .line 452
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 453
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_expand_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 454
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_expand_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 456
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_root_margin_top_expand_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 457
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_root_margin_left_expand_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_df

    :cond_bb
    const/16 v1, 0x53

    .line 436
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 437
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_expand_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 438
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_expand_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 440
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_root_margin_top_expand_90:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 441
    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_root_margin_left_expand_90:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 469
    :goto_df
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    iget v1, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->initWidthAndHeight(II)V

    goto/16 :goto_172

    .line 470
    :cond_ea
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v7

    const/4 v10, -0x2

    const/4 v11, -0x1

    if-eqz v7, :cond_152

    .line 471
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    sub-int/2addr v1, v3

    .line 472
    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 473
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 474
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 475
    iget v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    const/4 v10, 0x3

    if-ne v7, v10, :cond_13d

    .line 476
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mPreviewSwitchValue:Ljava/lang/String;

    const-string v9, "off"

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_128

    const/16 v7, 0x50

    .line 477
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 478
    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_height_margin_bottom_hover:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_134

    :cond_128
    const/16 v7, 0x30

    .line 480
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 481
    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_height_margin_top_hover:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 483
    :goto_134
    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_margin_bottom_hover:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_147

    .line 485
    :cond_13d
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 486
    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_setting_top_bar_height_margin_top_normal:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 488
    :goto_147
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    invoke-virtual {v0, v3, v5, v3, v5}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->setPaddingByTopBarScroll(IIII)V

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->initWidthAndHeight(II)V

    goto :goto_172

    .line 490
    :cond_152
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    if-nez v0, :cond_172

    .line 491
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v2

    .line 492
    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 493
    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 494
    iput v10, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 495
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    invoke-virtual {v3, v2, v1, v2, v5}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->setPaddingByTopBarScroll(IIII)V

    .line 496
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->initWidthAndHeight(II)V

    .line 498
    :cond_172
    :goto_172
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateLayoutParams] width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenFormType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getRealScreenSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mContext:Landroid/content/Context;

    .line 500
    invoke-static {v2}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 499
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    if-eqz v0, :cond_1cd

    .line 502
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_1b9
    if-ge v5, v0, :cond_1cd

    .line 504
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 505
    instance-of v2, v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    if-eqz v2, :cond_1ca

    .line 506
    check-cast v1, Lcom/transsion/camera/app/ui/widget/IRotatable;

    invoke-interface {v1, v6, v8}, Lcom/transsion/camera/app/ui/widget/IRotatable;->setOrientation(IZ)V

    :cond_1ca
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b9

    :cond_1cd
    :goto_1cd
    return-void
.end method

.method private updateTopBarSettingUIs(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 600
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    .line 601
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v1, :cond_c

    .line 602
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 603
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_c

    :cond_28
    if-eqz p2, :cond_6d

    .line 608
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6d

    .line 609
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_34
    :goto_34
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    if-eqz v0, :cond_4f

    .line 610
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->findTopBarKey(Ljava/util/List;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 611
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->initTopBarItemUI(Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;)V

    .line 613
    :cond_4f
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    .line 614
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 615
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 616
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBatteryStatus:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTemperatureStatus:I

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_34

    :cond_6d
    return-void
.end method

.method private updateTopBarState(Z)V
    .registers 6

    .line 186
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTopBarState: mNeedCompose: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mNeedCompose:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSegmentFull: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSegmentFull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCurrentPage:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3f

    if-ne v0, v2, :cond_36

    goto :goto_3f

    :cond_36
    if-nez v0, :cond_85

    .line 210
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->hideTopBarRoot()V

    .line 211
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->hideVlogToolBarRoot()V

    return-void

    .line 189
    :cond_3f
    :goto_3f
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSegmentPlay:Z

    if-nez v0, :cond_85

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mNeedCompose:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4c

    move v1, v3

    goto :goto_4e

    :cond_4c
    const/16 v1, 0x8

    :goto_4e
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    if-eq v0, v2, :cond_72

    .line 192
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->hideVlogToolBarRoot()V

    .line 193
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->showTopBarRoot()V

    .line 194
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSegmentFull:Z

    if-eqz v0, :cond_65

    .line 195
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mFullTopBar:[Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarViews([Ljava/lang/String;Z)V

    return-void

    .line 197
    :cond_65
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mNeedCompose:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeTopBar:[Ljava/lang/String;

    goto :goto_6e

    :cond_6c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBar:[Ljava/lang/String;

    :goto_6e
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarViews([Ljava/lang/String;Z)V

    return-void

    .line 200
    :cond_72
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->showVlogToolBarRoot()V

    .line 201
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSegmentFull:Z

    if-eqz p1, :cond_7d

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->hideTopBarRoot()V

    return-void

    .line 204
    :cond_7d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->showTopBarRoot()V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mExpandTopBar:[Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarViews([Ljava/lang/String;Z)V

    :cond_85
    return-void
.end method

.method private updateVlogToolBarLayout()V
    .registers 14

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogToolBarRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e4

    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    goto/16 :goto_e4

    .line 344
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 346
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogToolBarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 347
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 348
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 350
    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCorrectOrientation:I

    .line 351
    iget-boolean v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mbSegmentDragging:Z

    if-eqz v6, :cond_35

    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    if-ne v6, v1, :cond_35

    .line 352
    iget v5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mFixedOrientation:I

    .line 355
    :cond_35
    iget v6, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    if-ne v6, v1, :cond_d5

    const/16 v1, 0x5a

    const/16 v6, 0x50

    const/4 v7, 0x3

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x1

    if-eq v5, v1, :cond_b4

    const/16 v1, 0xb4

    const/4 v12, 0x5

    if-eq v5, v1, :cond_92

    const/16 v1, 0x10e

    if-eq v5, v1, :cond_70

    .line 395
    iput v8, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 396
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 397
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 398
    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 399
    iput v12, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 401
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogToolBarRoot:Landroid/widget/FrameLayout;

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_0:I

    .line 402
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 403
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 401
    invoke-virtual {v1, v5, v6, v0, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_d5

    .line 382
    :cond_70
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 383
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 384
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 385
    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 386
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 388
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogToolBarRoot:Landroid/widget/FrameLayout;

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 389
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_90:I

    .line 390
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 391
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 388
    invoke-virtual {v1, v9, v5, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_d5

    .line 370
    :cond_92
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 371
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 372
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 373
    iput v12, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 374
    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 376
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogToolBarRoot:Landroid/widget/FrameLayout;

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 378
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_0:I

    .line 379
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 376
    invoke-virtual {v1, v5, v9, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_d5

    .line 358
    :cond_b4
    iput v7, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 359
    iput v10, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 360
    iput v11, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 361
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 362
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 364
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogToolBarRoot:Landroid/widget/FrameLayout;

    sget v5, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_top_expand_90:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 365
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v7, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_cutsame_editor_topbar_padding_expand:I

    .line 367
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 364
    invoke-virtual {v1, v5, v6, v9, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 408
    :cond_d5
    :goto_d5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogToolBarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e4
    :goto_e4
    return-void
.end method


# virtual methods
.method public getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_6c

    .line 525
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_6c

    .line 528
    :cond_6
    const-string v0, "SettingUIProvider getTopBarItemUIList"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 530
    array-length v1, p1

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_68

    aget-object v3, p1, v2

    .line 531
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;

    if-eqz v4, :cond_4f

    .line 532
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 533
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->getTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object v5

    if-nez v5, :cond_49

    .line 535
    invoke-interface {v4}, Lcom/transsion/camera/app/common/provider/ISettingUIEntry;->createTopBarItemUI()Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    move-result-object v5

    if-eqz p2, :cond_49

    .line 536
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    if-eqz v5, :cond_49

    const/4 v3, 0x1

    .line 537
    invoke-interface {v5, v3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setIsSellingPoint(Z)V

    .line 538
    invoke-interface {v5, p3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPointRes(Landroid/graphics/drawable/Drawable;)V

    :cond_49
    if-eqz v5, :cond_65

    .line 542
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 545
    :cond_4f
    sget-object v4, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopBarItemUIList entry is null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 548
    :cond_68
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-object v0

    .line 526
    :cond_6c
    :goto_6c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public hideTopBarRoot()V
    .registers 3

    .line 827
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogSettingTopBarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    return-void

    .line 830
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogSettingTopBarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideVlogToolBarRoot()V
    .registers 2

    .line 845
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogToolBarRoot:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public init()V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->vlog_top_bar_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_top_bar_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mRootView:Landroid/view/ViewGroup;

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_setting_top_bar_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogSettingTopBarRoot:Landroid/widget/FrameLayout;

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_top_tool_bar_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogToolBarRoot:Landroid/widget/FrameLayout;

    .line 157
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_setting_top_bar_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->vlog_compose:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 160
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    const/16 v1, 0x8

    if-eq v0, v3, :cond_61

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogToolBarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_61
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->updateScreenFormType(I)V

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateVlogToolBarLayout()V

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarLayout()V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_110

    const/4 v1, 0x1

    if-eq p1, v1, :cond_104

    const/4 v2, 0x2

    if-eq p1, v2, :cond_110

    const/4 v2, 0x3

    if-eq p1, v2, :cond_104

    const/4 v2, 0x6

    if-eq p1, v2, :cond_110

    const/4 v2, 0x7

    if-eq p1, v2, :cond_104

    const/16 v2, 0x9

    if-eq p1, v2, :cond_104

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_f1

    const/16 v2, 0x17

    if-eq p1, v2, :cond_eb

    const/16 v2, 0x18

    if-eq p1, v2, :cond_e8

    const/16 v2, 0x192

    if-eq p1, v2, :cond_e2

    const/16 v2, 0x193

    if-eq p1, v2, :cond_dc

    const/16 v2, 0x271d

    if-eq p1, v2, :cond_d4

    const/16 v2, 0x271e

    if-eq p1, v2, :cond_cc

    const/16 v2, 0x2723

    if-eq p1, v2, :cond_bb

    const/16 v2, 0x2724

    if-eq p1, v2, :cond_ae

    packed-switch p1, :pswitch_data_114

    goto/16 :goto_10f

    .line 272
    :pswitch_3f
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSegmentFull:Z

    return-void

    .line 269
    :pswitch_42
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSegmentFull:Z

    return-void

    .line 263
    :pswitch_45
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBar(ZZ)V

    return-void

    .line 266
    :pswitch_49
    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBar(ZZ)V

    return-void

    .line 280
    :pswitch_4d
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSegmentPlay:Z

    .line 281
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    .line 282
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->showRoot()V

    .line 283
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mNeedCompose:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBar(ZZ)V

    return-void

    .line 275
    :pswitch_5b
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSegmentPlay:Z

    .line 276
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    .line 277
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->hideRoot()V

    return-void

    .line 246
    :pswitch_64
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mbRecording:Z

    .line 247
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_6e

    .line 248
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIsZooming:Z

    .line 250
    :cond_6e
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mPopSettingSupported:Z

    if-nez p1, :cond_79

    .line 251
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 253
    :cond_79
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_84

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIsZooming:Z

    if-nez p1, :cond_84

    .line 254
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    .line 256
    :cond_84
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_8e

    .line 257
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->showRoot()V

    return-void

    .line 259
    :cond_8e
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarState(Z)V

    return-void

    .line 290
    :pswitch_92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mFirstPreviewArrived:Z

    .line 291
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    return-void

    .line 219
    :pswitch_98
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mbRecording:Z

    .line 220
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    .line 221
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_a7

    .line 222
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->hideRoot()V

    return-void

    .line 224
    :cond_a7
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->hideTopBarRoot()V

    .line 225
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->hideVlogToolBarRoot()V

    return-void

    .line 238
    :cond_ae
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mbSegmentDragging:Z

    if-eqz p1, :cond_b7

    .line 239
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mbSegmentDragging:Z

    .line 240
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateLayout(Z)V

    .line 242
    :cond_b7
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    return-void

    .line 229
    :cond_bb
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    if-ne p1, v1, :cond_c8

    .line 230
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mbSegmentDragging:Z

    .line 231
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCorrectOrientation:I

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mFixedOrientation:I

    .line 232
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateLayout(Z)V

    .line 234
    :cond_c8
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    return-void

    .line 303
    :cond_cc
    const-string p1, "off"

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mPreviewSwitchValue:Ljava/lang/String;

    .line 304
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarLayout()V

    return-void

    .line 299
    :cond_d4
    const-string p1, "on"

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mPreviewSwitchValue:Ljava/lang/String;

    .line 300
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarLayout()V

    return-void

    .line 331
    :cond_dc
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mRootView:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->show(Landroid/view/View;)V

    return-void

    .line 328
    :cond_e2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mRootView:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->hide(Landroid/view/View;)V

    return-void

    .line 318
    :cond_e8
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIsZooming:Z

    goto :goto_104

    .line 286
    :cond_eb
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIsZooming:Z

    .line 287
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    return-void

    .line 307
    :cond_f1
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_f8

    goto :goto_10f

    .line 312
    :cond_f8
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIsZooming:Z

    if-eqz p1, :cond_10f

    .line 313
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIsZooming:Z

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mRootView:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->show(Landroid/view/View;)V

    return-void

    .line 323
    :cond_104
    :goto_104
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIsZooming:Z

    if-nez p1, :cond_10f

    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mFirstPreviewArrived:Z

    if-eqz p1, :cond_10f

    .line 324
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    :cond_10f
    :goto_10f
    return-void

    .line 296
    :cond_110
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    return-void

    :pswitch_data_114
    .packed-switch 0x2711
        :pswitch_98
        :pswitch_98
        :pswitch_92
        :pswitch_64
        :pswitch_5b
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3f
    .end packed-switch
.end method

.method public onBatteryStatusChanged(ZII)V
    .registers 5

    .line 849
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBatteryStatus:I

    .line 850
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTemperatureStatus:I

    .line 851
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 852
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 853
    invoke-interface {v0, p1, p2, p3}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    goto :goto_14

    :cond_24
    return-void
.end method

.method public onFirstSteadyFrameArrive()V
    .registers 4

    .line 692
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFirstSteadyFrame, mbRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mbRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ,mIsZooming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIsZooming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 693
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mFirstPreviewArrived:Z

    .line 694
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mbRecording:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_3d

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIsZooming:Z

    if-nez v1, :cond_3d

    .line 695
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3d
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 756
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    if-eq p2, p1, :cond_6

    .line 757
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    .line 759
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    if-eqz p1, :cond_f

    .line 760
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->updateScreenFormType(I)V

    :cond_f
    const/4 p1, 0x0

    .line 762
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarState(Z)V

    .line 763
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateVlogToolBarLayout()V

    .line 764
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarLayout()V

    return-void
.end method

.method public onSettingReady()V
    .registers 3

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSettingReady:Z

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mRootView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x0

    .line 800
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    return-void
.end method

.method public resume()V
    .registers 1

    return-void
.end method

.method public setEnable(Z)V
    .registers 4

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_20

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    .line 702
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_10

    .line 705
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setTemplateOrientation(I)V
    .registers 4

    .line 768
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTemplateOrientation:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_b

    const/16 p1, 0x10e

    .line 770
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCorrectOrientation:I

    goto :goto_d

    .line 772
    :cond_b
    iput v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCorrectOrientation:I

    .line 774
    :goto_d
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mOrientation:I

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateOrientation(IZ)V

    return-void
.end method

.method public showTopBarRoot()V
    .registers 2

    .line 834
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogSettingTopBarRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 837
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogSettingTopBarRoot:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showVlogToolBarRoot()V
    .registers 2

    .line 841
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogToolBarRoot:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 812
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->unInitTopBarSettingUIs()V

    const/4 v0, 0x0

    .line 813
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSettingReady:Z

    .line 814
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 3
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param

    .line 805
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCurrentPage:I

    .line 806
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mOrientation:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateOrientation(IZ)V

    .line 807
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mNeedCompose:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBar(ZZ)V

    return-void
.end method

.method public updateOrientation(IZ)V
    .registers 8

    .line 710
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mOrientation:I

    .line 713
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCurrentPage:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_8

    goto :goto_2b

    .line 716
    :cond_8
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTemplateOrientation:I

    const/16 v1, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-ne p2, v0, :cond_1f

    if-eqz p1, :cond_1c

    if-eq p1, v3, :cond_2b

    if-eq p1, v2, :cond_1c

    if-eq p1, v1, :cond_2b

    goto :goto_27

    .line 720
    :cond_1c
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCorrectOrientation:I

    goto :goto_2b

    :cond_1f
    if-eqz p1, :cond_2b

    if-eq p1, v3, :cond_29

    if-eq p1, v2, :cond_2b

    if-eq p1, v1, :cond_29

    :goto_27
    move p1, v4

    goto :goto_2b

    .line 735
    :cond_29
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCorrectOrientation:I

    .line 741
    :cond_2b
    :goto_2b
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCorrectOrientation:I

    .line 742
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateLayout(Z)V

    return-void
.end method

.method public updateTopBar(ZZ)V
    .registers 3

    .line 178
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mNeedCompose:Z

    .line 179
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mSettingReady:Z

    if-nez p1, :cond_7

    return-void

    .line 182
    :cond_7
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarState(Z)V

    return-void
.end method

.method protected updateTopBarLayout(Ljava/util/List;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;",
            ">;Z)V"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    if-nez v0, :cond_c

    .line 554
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mVlogTopBarLayout is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_c
    if-eqz v0, :cond_74

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    .line 563
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 564
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v1, :cond_69

    .line 566
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;

    const/4 v5, 0x0

    .line 567
    invoke-interface {v6, v5}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setPopupOptionsControl(Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;)V

    .line 569
    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 570
    iget v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIconOnColor:I

    iget v8, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIconOffColor:I

    iget v9, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIconLowLightColor:I

    invoke-interface {v6, v7, v8, v9}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->initIconColor(III)V

    .line 571
    iget-object v7, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget-object v8, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    sget v9, Lcom/transsion/camera/feature/vlog/R$layout;->vlog_top_bar_setting_item:I

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v10, -0x1

    invoke-interface/range {v6 .. v12}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;

    move-result-object v7

    .line 573
    invoke-virtual {v7, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 574
    new-instance v8, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0, v7}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 588
    invoke-interface {v6, v3, v3}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->onScreenSupply(ZZ)V

    .line 589
    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->setupEntryView()V

    .line 591
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_66

    invoke-interface {v6}, Lcom/transsion/camera/app/common/ui/setting/ITopBarItemUI;->getIsShouldGone()Z

    move-result v6

    if-nez v6, :cond_66

    .line 592
    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 595
    :cond_69
    invoke-virtual {v0, v2, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->updateTopBar(Ljava/util/Map;Z)V

    .line 596
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mIsZooming:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->setEnable(Z)V

    return-void

    .line 558
    :cond_74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mVlogTopBarLayout should be instance of TopBarContainer!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateTopBarViews([Ljava/lang/String;Z)V
    .registers 6

    .line 513
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateTopBarViews] topBarItemUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", animation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 514
    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->getTopBarItemUIList([Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Drawable;)Ljava/util/List;

    move-result-object p1

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBarItemUIs:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarSettingUIs(Ljava/util/List;Ljava/util/List;)V

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBarItemUIs:Ljava/util/List;

    if-eqz v0, :cond_33

    .line 518
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 520
    :cond_33
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mTopBarItemUIs:Ljava/util/List;

    .line 521
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->updateTopBarLayout(Ljava/util/List;Z)V

    return-void
.end method

.method public updateTopContainerOrientation(Z)V
    .registers 5

    .line 778
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mCorrectOrientation:I

    .line 779
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mbSegmentDragging:Z

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mScreenFormType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 780
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mFixedOrientation:I

    .line 782
    :cond_d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mVlogTopBarContainer:Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;

    if-eqz v1, :cond_14

    .line 783
    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/VlogTopBarContainer;->updateOrientation(I)V

    .line 785
    :cond_14
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mBackButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v1, :cond_1b

    .line 786
    invoke-virtual {v1, v0, p1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 788
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/VlogTopbarUI;->mComposeButton:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_22

    .line 789
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_22
    return-void
.end method
