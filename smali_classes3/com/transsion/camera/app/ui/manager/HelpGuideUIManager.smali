.class public Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultIndex:I

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mFrontDualFlashUIShow:Z

.field protected mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

.field private final mHandler:Landroid/os/Handler;

.field protected mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

.field private mIsDialogShow:Z

.field private mIsVideoRecording:Z

.field private mLayoutIds:Ljava/util/List;

.field private final mLuminanceAdjustSupportForCamera:[I

.field private mModeSupportGuideUI:Z

.field private mRTLDirection:Z

.field private mRootId:I

.field private mShowByAdjustUIHide:Z

.field private mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# direct methods
.method public static synthetic $r8$lambda$i8El9PMPIu4zMwxO-YojCFx5fLM(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->lambda$notifyCameraOperateActionToUI$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultIndex(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mDefaultIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrontDualFlashUIShow(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFrontDualFlashUIShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDialogShow(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsDialogShow:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModeSupportGuideUI(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowByAdjustUIHide(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mShowByAdjustUIHide:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateListener(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFrontDualFlashUIShow(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFrontDualFlashUIShow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShowByAdjustUIHide(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mShowByAdjustUIHide:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mflashLevelLuminanceFacingSupport(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->flashLevelLuminanceFacingSupport()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mqueryFlashValue(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->queryFlashValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HelpGuideUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/manager/IScreenManager;ILandroid/content/Context;Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 15

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    move-object v7, p6

    .line 72
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    const/4 p0, 0x0

    .line 58
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mShowByAdjustUIHide:Z

    .line 61
    iput p0, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mDefaultIndex:I

    .line 62
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mRTLDirection:Z

    .line 65
    iput-boolean p0, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsDialogShow:Z

    .line 428
    new-instance p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 73
    iput-object v1, v0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 74
    iput p2, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mRootId:I

    .line 75
    iput-object p3, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mContext:Landroid/content/Context;

    .line 76
    iput-object p4, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 77
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$bool;->pop_setting_support:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_3b

    .line 79
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->createHelpGuideUI(Lcom/transsion/camera/app/common/manager/IScreenManager;)Lcom/transsion/camera/app/ui/HelpGuideUI;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    .line 80
    invoke-interface {p0, v5}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 82
    :cond_3b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    .line 83
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHandler:Landroid/os/Handler;

    .line 84
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLuminanceAdjustSupportForCamera:[I

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLuminanceAdjustSupportForCamera:[I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)I
    .registers 1

    .line 47
    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)I
    .registers 1

    .line 47
    iget p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-object p0
.end method

.method private addSettingLayoutId(Ljava/util/List;)V
    .registers 5

    if-eqz p1, :cond_4a

    .line 347
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4a

    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_d

    goto :goto_4a

    .line 350
    :cond_d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;

    .line 351
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 352
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 353
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;->shouldShow()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 354
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;->getStringArrayId()I

    move-result v0

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getLayoutIdsFromArrayId(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 355
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 356
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    :cond_4a
    :goto_4a
    return-void
.end method

.method private facingFront()Z
    .registers 1

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 417
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private flashLevelLuminanceFacingSupport()Z
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLuminanceAdjustSupportForCamera:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 280
    :cond_6
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->facingFront()Z

    move-result p0

    aget p0, v0, p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v1
.end method

.method private synthetic lambda$notifyCameraOperateActionToUI$0()V
    .registers 1

    .line 203
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->exitGuideFragment()V

    return-void
.end method

.method private queryFlashValue()Ljava/lang/String;
    .registers 3

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    .line 425
    :cond_f
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private stopPressedAnimation(I)V
    .registers 2

    .line 399
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CameraOperateAction;->needStopPressedAnimation(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz p0, :cond_11

    .line 401
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    :cond_11
    return-void
.end method


# virtual methods
.method protected createGuidePagerRootFragment(Ljava/util/List;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;
    .registers 2

    .line 302
    invoke-static {p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->newInstance(Ljava/util/List;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    move-result-object p0

    return-object p0
.end method

.method protected createHelpGuideUI(Lcom/transsion/camera/app/common/manager/IScreenManager;)Lcom/transsion/camera/app/ui/HelpGuideUI;
    .registers 2

    .line 88
    new-instance p0, Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/HelpGuideUI;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;)V

    return-object p0
.end method

.method public enterGuideFragment()V
    .registers 6

    .line 284
    sget-object v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onClick] , mIsEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->isEnable()Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    .line 288
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->createGuidePagerRootFragment(Ljava/util/List;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    .line 290
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 291
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    iget v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mDefaultIndex:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->updateIndex(I)V

    .line 292
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    iget v4, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;II)V

    .line 293
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mRTLDirection:Z

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->setRTLDirection(Z)V

    .line 294
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mRootId:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 295
    const-string v1, "guide_pager_root"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 296
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x4d

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 298
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setGuideFragmentStartTime()V

    return-void
.end method

.method public exitGuideFragment()V
    .registers 1

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    if-eqz p0, :cond_7

    .line 307
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exit()V

    :cond_7
    return-void
.end method

.method protected getType()I
    .registers 1

    const/16 p0, 0x3ea

    return p0
.end method

.method public hide()V
    .registers 2

    .line 228
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 229
    sget-object p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hide: "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 6

    .line 150
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->stopPressedAnimation(I)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a8

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a5

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_99

    const/16 v0, 0x20

    const/4 v2, 0x1

    if-eq p1, v0, :cond_91

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_a5

    const/16 v0, 0x126

    if-eq p1, v0, :cond_84

    const/16 v0, 0xb

    if-eq p1, v0, :cond_74

    const/16 v0, 0xc

    if-eq p1, v0, :cond_91

    const/16 v0, 0x15

    if-eq p1, v0, :cond_6c

    const/16 v0, 0x16

    if-eq p1, v0, :cond_6c

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_69

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_a5

    const/16 v0, 0x55

    if-eq p1, v0, :cond_74

    const/16 v0, 0x56

    if-eq p1, v0, :cond_91

    const/16 v0, 0x87

    if-eq p1, v0, :cond_66

    const/16 v0, 0x88

    if-eq p1, v0, :cond_63

    const/16 v0, 0x90

    if-eq p1, v0, :cond_69

    const/16 v0, 0x91

    if-eq p1, v0, :cond_a5

    const/16 v0, 0x9c

    if-eq p1, v0, :cond_58

    const/16 v0, 0x9d

    if-eq p1, v0, :cond_58

    packed-switch p1, :pswitch_data_b0

    goto :goto_ab

    .line 199
    :cond_58
    sget-object v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "shot2shot end action need enable help guide button."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->setEnable(Z)V

    goto :goto_ab

    .line 209
    :cond_63
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsDialogShow:Z

    goto :goto_ab

    .line 206
    :cond_66
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsDialogShow:Z

    goto :goto_ab

    .line 155
    :cond_69
    :pswitch_69
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    goto :goto_ab

    .line 190
    :cond_6c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz v0, :cond_ab

    .line 191
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->refreshIconState()V

    goto :goto_ab

    .line 174
    :cond_74
    :pswitch_74
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz v0, :cond_80

    .line 175
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->refreshIconState()V

    .line 178
    :cond_80
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->exitGuideFragment()V

    goto :goto_ab

    .line 203
    :cond_84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_ab

    .line 184
    :cond_91
    :pswitch_91
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz v0, :cond_ab

    .line 185
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_ab

    .line 165
    :cond_99
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    .line 166
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsDialogShow:Z

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz v0, :cond_ab

    .line 168
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_ab

    .line 162
    :cond_a5
    :pswitch_a5
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    goto :goto_ab

    .line 195
    :cond_a8
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 212
    :cond_ab
    :goto_ab
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    return-void

    nop

    :pswitch_data_b0
    .packed-switch 0xf
        :pswitch_69
        :pswitch_a5
        :pswitch_74
        :pswitch_91
    .end packed-switch
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz p0, :cond_7

    .line 144
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 4

    .line 121
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz v0, :cond_a

    .line 123
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->onOrientationChanged(IZ)V

    .line 125
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    if-eqz p0, :cond_11

    .line 126
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->onOrientationChanged(I)V

    :cond_11
    return-void
.end method

.method protected onSetupViews()V
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz p0, :cond_7

    .line 110
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->onSetupViews()V

    :cond_7
    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 234
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz v0, :cond_13

    .line 236
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mIsVideoRecording:Z

    if-nez p0, :cond_f

    if-eqz p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    :cond_13
    return-void
.end method

.method public setGuideItemList(Ljava/util/List;Ljava/util/List;)V
    .registers 7

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_12

    .line 254
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    if-eqz p2, :cond_1d

    .line 258
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1d

    .line 259
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->addSettingLayoutId(Ljava/util/List;)V

    .line 261
    :cond_1d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_29

    move p1, v0

    goto :goto_2a

    :cond_29
    move p1, p2

    :goto_2a
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    .line 263
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->flashLevelLuminanceFacingSupport()Z

    move-result v1

    if-eqz v1, :cond_63

    const-string/jumbo v1, "torch"

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->queryFlashValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 265
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 264
    const-string v2, "dual_front_flash_state_key"

    const-string v3, "-1"

    invoke-virtual {p1, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 266
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    if-eqz v1, :cond_62

    if-eq p1, v0, :cond_62

    move p2, v0

    :cond_62
    move p1, p2

    .line 268
    :cond_63
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz p2, :cond_94

    .line 269
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updateVisibility(Z)V

    .line 270
    sget-object p1, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setGuideItemList, mModeSupportGuideUI: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    new-instance v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    iget v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mRootId:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$GuideIconClickListener;-><init>(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Landroid/app/FragmentManager;ILjava/util/List;)V

    invoke-interface {p1, p2, v0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updateIcon(ZLandroid/view/View$OnClickListener;)V

    .line 273
    :cond_94
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->show()V

    return-void
.end method

.method public setRTLDirection(Z)V
    .registers 2

    .line 317
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mRTLDirection:Z

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 101
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string v0, "key_front_dual_flash_ui_visible"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string v0, "luminance_spread_ui_visible"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 3

    .line 321
    new-instance v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    return-void
.end method

.method public show()V
    .registers 3

    .line 217
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mModeSupportGuideUI:Z

    if-eqz v0, :cond_15

    .line 218
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 219
    sget-object v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[show]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz p0, :cond_15

    .line 221
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->refreshIconState()V

    :cond_15
    return-void
.end method

.method public unInit()V
    .registers 4

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mFrontDualFlashUIShow:Z

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mLayoutIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 244
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-eqz v0, :cond_f

    .line 245
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->unInit()V

    .line 247
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_front_dual_flash_ui_visible"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "luminance_spread_ui_visible"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateGuideIndex(I)V
    .registers 5

    .line 312
    sget-object v0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGuideIndex index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mDefaultIndex:I

    return-void
.end method
