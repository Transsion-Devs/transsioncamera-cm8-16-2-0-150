.class public Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IFloatingShutterUI$IFloatingShutterListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mCurrentModeName:Ljava/lang/String;

.field private mCurrentOrientation:I

.field private final mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mFloatingOrientation:I

.field private final mFloatingShutterNotSupportMode:[Ljava/lang/String;

.field private final mFloatingShutterRootHeight:I

.field private final mFloatingShutterRootWidth:I

.field private final mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

.field private final mFloatingShutterViewHeight:I

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

.field private mGuideItemUI:Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;

.field private mHideBySwitchMode:Z

.field private mInSettingFragment:Z

.field private mIsCaptureProcessing:Z

.field private mIsZooming:Z

.field private mLastOrientation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowByAnimation:Z

.field private mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# direct methods
.method public static synthetic $r8$lambda$bjfApRFEF8_q35SL2lJC4RXnmvE(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFloatingShutterUI(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)Lcom/transsion/camera/app/ui/IFloatingShutterUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShowByAnimation(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mShowByAnimation:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FloatingShutterUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;)V
    .registers 16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p5

    .line 120
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 101
    const-string p0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    const/4 p0, -0x1

    .line 102
    iput p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    .line 111
    iput p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentOrientation:I

    .line 937
    new-instance p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 121
    iput-object p2, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 123
    iput-object p4, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$dimen;->floating_shutter_root_group_width:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootWidth:I

    .line 125
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$dimen;->floating_shutter_root_group_height:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootHeight:I

    .line 126
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$dimen;->floating_shutter_layout_size:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterViewHeight:I

    .line 127
    instance-of p0, p6, Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz p0, :cond_4e

    .line 128
    check-cast p6, Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    iput-object p6, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    goto :goto_51

    :cond_4e
    const/4 p0, 0x0

    .line 130
    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    .line 132
    :goto_51
    iput-object p7, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mGuideItemUI:Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;

    .line 133
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$array;->floating_shutter_not_support_mode_category:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterNotSupportMode:[Ljava/lang/String;

    .line 134
    new-instance p0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 135
    iget-object p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz p0, :cond_72

    .line 136
    invoke-interface {p0, p2, p3, v1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 137
    iget-object p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->setFloatingShutterListener(Lcom/transsion/camera/app/ui/IFloatingShutterUI$IFloatingShutterListener;)V

    .line 139
    :cond_72
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getFloatingShutterRoot()Landroid/view/ViewGroup;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->getScreenSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    .line 146
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->getScreenSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    iput p0, v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenHeight:I

    return-void
.end method

.method private static angleOfUnit90(I)I
    .registers 1

    add-int/lit8 p0, p0, 0x2d

    .line 256
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method private checkSupportQuickCapture(Ljava/lang/String;)Z
    .registers 3

    .line 830
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isQuickCaptureSupport()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mContext:Landroid/content/Context;

    .line 831
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$bool;->support_quick_capture:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_1c

    .line 834
    :cond_15
    const-string p0, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method private getPageIds()Ljava/util/List;
    .registers 6

    .line 865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 866
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mGuideItemUI:Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;

    if-eqz v1, :cond_37

    .line 867
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingGuideItemUI;->getStringArrayId()I

    move-result v1

    .line 868
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 869
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    const/4 v1, 0x0

    move v3, v1

    :goto_24
    if-ge v3, p0, :cond_34

    .line 871
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 873
    :cond_34
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_37
    return-object v0
.end method

.method private getScreenSize()Landroid/util/Size;
    .registers 3

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 709
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 710
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 711
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 712
    new-instance p0, Landroid/util/Size;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private hasVisibleFragment()Z
    .registers 2

    .line 697
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    .line 698
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 699
    invoke-virtual {p0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    .line 700
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-eqz v0, :cond_10

    .line 701
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method private static isAngleChanged(II)Z
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    sub-int/2addr p0, p1

    .line 248
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rsub-int p1, p0, 0x168

    .line 249
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p1, 0x46

    if-lt p0, p1, :cond_15

    return v1

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private isVerticalOrientation(I)Z
    .registers 2

    if-eqz p1, :cond_9

    const/16 p0, 0xb4

    if-ne p1, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz p0, :cond_7

    .line 141
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->exitEditMode()Z

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private notifyOrientationChanged(I)V
    .registers 16

    .line 552
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_floating_shutter"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_floating_shutter_ui_state"

    const-string v4, "floating_shutter_ui_hide"

    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 554
    sget-object v2, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyOrientationChanged, value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", stateValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 555
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35a

    const-string v2, "off"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    goto/16 :goto_35a

    .line 558
    :cond_44
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hasVisibleFragment()Z

    move-result v0

    if-eqz v0, :cond_4c

    goto/16 :goto_35a

    .line 561
    :cond_4c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterNotSupportMode:[Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "floating_shutter_ui_show_by_auto"

    const/4 v5, 0x0

    if-nez v0, :cond_34b

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 562
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34b

    const-string v0, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 563
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34b

    const-string v0, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 564
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    goto/16 :goto_34b

    .line 570
    :cond_79
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentOrientation:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_80

    .line 571
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mLastOrientation:I

    .line 573
    :cond_80
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsCaptureProcessing:Z

    if-eqz v0, :cond_8e

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mLastOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->isVerticalOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto/16 :goto_35a

    .line 576
    :cond_8e
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a9

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    iget v7, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentOrientation:I

    if-eq v0, v7, :cond_a9

    if-eq v7, v6, :cond_a9

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v6, "0"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    const-string v8, "key_floating_shutter_ui_user_interaction"

    invoke-virtual {v0, v8, v6, v7, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a9
    const/4 v0, 0x1

    if-eqz p1, :cond_332

    const/16 v6, 0x5a

    const v7, 0x3e23d70a    # 0.16f

    const/4 v8, 0x3

    const v9, 0x3df5c28f    # 0.12f

    .line 582
    const-string v10, ""

    const/4 v11, 0x0

    const-string v12, ","

    const/4 v13, 0x2

    if-eq p1, v6, :cond_1fa

    const/16 v6, 0xb4

    if-eq p1, v6, :cond_332

    const/16 v2, 0x10e

    if-eq p1, v2, :cond_c7

    goto/16 :goto_346

    .line 629
    :cond_c7
    iget v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const v3, 0x3e4ccccd    # 0.2f

    if-ne v2, v0, :cond_120

    .line 630
    iget v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootWidth:I

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v2, v6

    .line 631
    iget v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v3, v6

    div-int/2addr v4, v13

    add-int/2addr v3, v4

    .line 632
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v11, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 633
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11e

    .line 634
    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 635
    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_11b
    move v5, v2

    goto/16 :goto_1f1

    :cond_11e
    move p1, v3

    goto :goto_11b

    :cond_120
    const/4 v4, 0x5

    if-ne v2, v4, :cond_168

    .line 638
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    int-to-float p1, p1

    const v4, 0x3e570a3d    # 0.21f

    mul-float/2addr p1, v4

    float-to-int p1, p1

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootWidth:I

    div-int/lit8 v6, v4, 0x2

    add-int/2addr p1, v6

    .line 639
    iget v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v3, v6

    div-int/2addr v4, v13

    add-int/2addr v3, v4

    .line 640
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v11, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 641
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_163

    .line 642
    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 643
    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_161
    move v5, p1

    goto :goto_165

    :cond_163
    move v0, v3

    goto :goto_161

    :goto_165
    move p1, v0

    goto/16 :goto_1f1

    :cond_168
    if-eqz v2, :cond_1c6

    if-ne v2, v8, :cond_16d

    goto :goto_1c6

    :cond_16d
    if-ne v2, v13, :cond_1c4

    .line 653
    iget v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootWidth:I

    div-int/2addr v3, v13

    add-int/2addr v2, v3

    .line 654
    iget v3, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterViewHeight:I

    div-int/2addr v4, v13

    sub-int/2addr v3, v4

    .line 655
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v11, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 656
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c1

    .line 657
    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 658
    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1f1

    :cond_1c1
    move v5, v2

    move p1, v3

    goto :goto_1f1

    :cond_1c4
    move p1, v5

    goto :goto_1f1

    .line 647
    :cond_1c6
    :goto_1c6
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    int-to-float p1, p1

    const v0, 0x3da3d70a    # 0.08f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootWidth:I

    div-int/2addr v0, v13

    add-int v5, p1, v0

    .line 648
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenHeight:I

    int-to-float p1, p1

    mul-float/2addr p1, v9

    float-to-int p1, p1

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootHeight:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterViewHeight:I

    div-int/2addr v0, v13

    sub-int/2addr p1, v0

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    .line 650
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v9

    float-to-int v0, v0

    iget v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootWidth:I

    div-int/2addr v2, v13

    add-int v5, v0, v2

    :cond_1f1
    :goto_1f1
    if-lez v5, :cond_346

    if-lez p1, :cond_346

    .line 662
    invoke-direct {p0, v5, p1, v1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->updateFloatingShutterUIState(IILjava/lang/String;)V

    goto/16 :goto_346

    .line 592
    :cond_1fa
    iget v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    const v3, 0x3f35c28f    # 0.71f

    if-ne v2, v0, :cond_258

    .line 593
    iget v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    int-to-float v2, v2

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootWidth:I

    div-int/2addr v4, v13

    add-int/2addr v2, v4

    .line 594
    iget v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterViewHeight:I

    div-int/2addr v4, v13

    sub-int/2addr v3, v4

    .line 595
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v11, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 596
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_256

    .line 597
    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 598
    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_253
    move v5, v2

    goto/16 :goto_32a

    :cond_256
    move p1, v3

    goto :goto_253

    :cond_258
    const/4 v4, 0x4

    const v6, 0x3f333333    # 0.7f

    if-ne v2, v4, :cond_2a0

    .line 601
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, v6

    float-to-int p1, p1

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootWidth:I

    div-int/lit8 v6, v4, 0x2

    add-int/2addr p1, v6

    .line 602
    iget v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v3, v6

    div-int/2addr v4, v13

    add-int/2addr v3, v4

    .line 603
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v11, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 604
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29b

    .line 605
    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 606
    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_299
    move v5, p1

    goto :goto_29d

    :cond_29b
    move v0, v3

    goto :goto_299

    :goto_29d
    move p1, v0

    goto/16 :goto_32a

    :cond_2a0
    if-eqz v2, :cond_2ff

    if-ne v2, v8, :cond_2a5

    goto :goto_2ff

    :cond_2a5
    if-ne v2, v13, :cond_2fd

    .line 616
    iget v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    int-to-float v2, v2

    const v3, 0x3f5c28f6    # 0.86f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootWidth:I

    div-int/2addr v3, v13

    add-int/2addr v2, v3

    .line 617
    iget v3, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterViewHeight:I

    div-int/2addr v4, v13

    sub-int/2addr v3, v4

    .line 618
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v11, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 619
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2fa

    .line 620
    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 621
    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_32a

    :cond_2fa
    move v5, v2

    move p1, v3

    goto :goto_32a

    :cond_2fd
    move p1, v5

    goto :goto_32a

    .line 610
    :cond_2ff
    :goto_2ff
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    int-to-float p1, p1

    mul-float/2addr p1, v6

    float-to-int p1, p1

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootWidth:I

    div-int/2addr v0, v13

    add-int v5, p1, v0

    .line 611
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenHeight:I

    int-to-float p1, p1

    mul-float/2addr p1, v9

    float-to-int p1, p1

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootHeight:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterViewHeight:I

    div-int/2addr v0, v13

    sub-int/2addr p1, v0

    .line 612
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32a

    .line 613
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    int-to-float v0, v0

    const v2, 0x3f28f5c3    # 0.66f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterRootWidth:I

    div-int/2addr v2, v13

    add-int v5, v0, v2

    :cond_32a
    :goto_32a
    if-lez v5, :cond_346

    if-lez p1, :cond_346

    .line 625
    invoke-direct {p0, v5, p1, v1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->updateFloatingShutterUIState(IILjava/lang/String;)V

    goto :goto_346

    .line 585
    :cond_332
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mShowByAnimation:Z

    .line 586
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_346

    .line 587
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v4, v1, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 588
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    .line 668
    :cond_346
    :goto_346
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentOrientation:I

    return-void

    .line 565
    :cond_34b
    :goto_34b
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_35a

    .line 566
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v4, p1, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_35a
    :goto_35a
    return-void
.end method

.method private static roundOrientation(II)I
    .registers 3

    .line 231
    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->isAngleChanged(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 232
    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->angleOfUnit90(I)I

    move-result p0

    return p0

    :cond_b
    return p1
.end method

.method private shouldShow(Ljava/lang/String;)Z
    .registers 7

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterNotSupportMode:[Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 271
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hasVisibleFragment()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 274
    :cond_13
    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v1

    :cond_1e
    const/4 v0, 0x7

    .line 277
    iget v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    if-ne v0, v2, :cond_24

    return v1

    .line 280
    :cond_24
    const-string v0, "floating_shutter_ui_show_by_auto"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 281
    const-string p1, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6d

    const-string p1, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 282
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_41

    goto :goto_6d

    .line 285
    :cond_41
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    const/4 v0, 0x1

    if-eqz p1, :cond_4c

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_4b

    goto :goto_4c

    :cond_4b
    return v0

    .line 286
    :cond_4c
    :goto_4c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz p1, :cond_6d

    .line 287
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "0"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_floating_shutter_ui_user_interaction"

    invoke-virtual {p1, v4, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 288
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "floating_shutter_ui_hide"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_floating_shutter_ui_state"

    invoke-virtual {p1, v4, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 289
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    :cond_6d
    :goto_6d
    return v1

    .line 295
    :cond_6e
    const-string p0, "floating_shutter_ui_show_by_swipe"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private updateFloatingShutterUIState(IILjava/lang/String;)V
    .registers 8

    .line 672
    const-string v0, "floating_shutter_ui_show_by_swipe"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_48

    .line 675
    :cond_9
    sget-object v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFloatingShutterUIState, defaultX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", defaultY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stateValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 676
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "floating_shutter_ui_show_by_auto"

    invoke-virtual {p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_floating_shutter_ui_state"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 677
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz p3, :cond_49

    invoke-interface {p3}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->userInteraction()Z

    move-result p3

    if-eqz p3, :cond_49

    :goto_48
    return-void

    .line 680
    :cond_49
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mShowByAnimation:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_56

    .line 681
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsZooming:Z

    if-nez p3, :cond_66

    .line 682
    invoke-virtual {p0, v0, v3, v3}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    goto :goto_66

    .line 685
    :cond_56
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mShowByAnimation:Z

    .line 686
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz p3, :cond_5f

    .line 687
    invoke-interface {p3}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->restoreState()V

    .line 689
    :cond_5f
    iget-boolean p3, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsZooming:Z

    if-nez p3, :cond_66

    .line 690
    invoke-virtual {p0, v3, v3, v3}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    .line 693
    :cond_66
    :goto_66
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->updateFloatingShutterUIPosition(II)V

    return-void
.end method


# virtual methods
.method protected correctOrientation(I)I
    .registers 2

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-nez p0, :cond_5

    return p1

    .line 241
    :cond_5
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->changeOrientation(I)I

    move-result p0

    return p0
.end method

.method public exitGuideFragment()V
    .registers 1

    .line 932
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    if-eqz p0, :cond_7

    .line 933
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->exit()V

    :cond_7
    return-void
.end method

.method public floatShutterViewOnCreated()V
    .registers 1

    .line 159
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->onSetupViews()V

    return-void
.end method

.method public hideFloatingShutterUI(Z)V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-nez v1, :cond_9

    goto :goto_1f

    :cond_9
    if-nez p1, :cond_18

    .line 341
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_18

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :cond_18
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->hideFloatingShutterView(Landroid/view/View;Z)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 9

    .line 717
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_13f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_139

    const/4 v2, 0x2

    if-eq p1, v2, :cond_13f

    const/4 v2, 0x3

    if-eq p1, v2, :cond_139

    const/4 v2, 0x4

    if-eq p1, v2, :cond_13f

    const/4 v2, 0x5

    if-eq p1, v2, :cond_139

    const/16 v2, 0x12

    .line 718
    const-string v3, "floating_shutter_ui_hide"

    const-string v4, "key_floating_shutter_ui_state"

    if-eq p1, v2, :cond_11e

    const/16 v2, 0x13

    if-eq p1, v2, :cond_fd

    const/16 v2, 0x17

    if-eq p1, v2, :cond_fa

    const/16 v2, 0x18

    if-eq p1, v2, :cond_f7

    const/16 v2, 0x24

    if-eq p1, v2, :cond_e8

    const/16 v2, 0x25

    const/4 v5, -0x1

    if-eq p1, v2, :cond_c2

    const/16 v2, 0x4d

    if-eq p1, v2, :cond_ba

    const/16 v2, 0x4e

    if-eq p1, v2, :cond_125

    const/16 v2, 0x66

    if-eq p1, v2, :cond_ba

    const/16 v2, 0x67

    if-eq p1, v2, :cond_125

    const/16 v2, 0xb0

    if-eq p1, v2, :cond_ba

    const/16 v2, 0xb1

    if-eq p1, v2, :cond_125

    const/16 v2, 0xc0

    if-eq p1, v2, :cond_13f

    const/16 v2, 0xc1

    if-eq p1, v2, :cond_139

    const/16 v2, 0xd2

    if-eq p1, v2, :cond_e8

    const/16 v2, 0xd3

    if-eq p1, v2, :cond_c2

    sparse-switch p1, :sswitch_data_146

    packed-switch p1, :pswitch_data_180

    goto/16 :goto_138

    .line 800
    :pswitch_62
    :sswitch_62
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsCaptureProcessing:Z

    .line 801
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->setEnable(Z)V

    .line 802
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->isVerticalOrientation(I)Z

    move-result p1

    if-nez p1, :cond_138

    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mLastOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->isVerticalOrientation(I)Z

    move-result p1

    if-nez p1, :cond_7d

    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mLastOrientation:I

    if-ne p1, v5, :cond_138

    .line 804
    :cond_7d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->getRootViewVisibility()I

    move-result p1

    if-eqz p1, :cond_138

    .line 805
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mShowByAnimation:Z

    .line 806
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->notifyOrientationChanged(I)V

    return-void

    .line 788
    :pswitch_8d
    :sswitch_8d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->checkSupportQuickCapture(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 789
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsCaptureProcessing:Z

    .line 790
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mLastOrientation:I

    return-void

    .line 794
    :cond_9c
    :pswitch_9c
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mLastOrientation:I

    .line 795
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsCaptureProcessing:Z

    return-void

    .line 816
    :sswitch_a3
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsCaptureProcessing:Z

    return-void

    .line 811
    :sswitch_a6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->saveState()V

    .line 812
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mHideBySwitchMode:Z

    .line 813
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    return-void

    .line 730
    :sswitch_b1
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mInSettingFragment:Z

    goto :goto_ba

    .line 720
    :sswitch_b4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->setEnable(Z)V

    return-void

    .line 735
    :cond_ba
    :goto_ba
    :sswitch_ba
    iput v5, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentOrientation:I

    .line 736
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mShowByAnimation:Z

    .line 737
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    return-void

    .line 777
    :cond_c2
    :sswitch_c2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->setEnable(Z)V

    .line 778
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsCaptureProcessing:Z

    .line 779
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->isVerticalOrientation(I)Z

    move-result p1

    if-nez p1, :cond_e4

    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mLastOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->isVerticalOrientation(I)Z

    move-result p1

    if-nez p1, :cond_dd

    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mLastOrientation:I

    if-ne p1, v5, :cond_e4

    .line 781
    :cond_dd
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mShowByAnimation:Z

    .line 782
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->notifyOrientationChanged(I)V

    .line 784
    :cond_e4
    invoke-virtual {p0, v0, v0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    return-void

    .line 768
    :cond_e8
    :sswitch_e8
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->setEnable(Z)V

    .line 769
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    iput p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mLastOrientation:I

    .line 770
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsCaptureProcessing:Z

    .line 771
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    return-void

    .line 822
    :cond_f7
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsZooming:Z

    return-void

    .line 819
    :cond_fa
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsZooming:Z

    return-void

    .line 723
    :cond_fd
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "0"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_floating_shutter_ui_user_interaction"

    invoke-virtual {p1, v6, v2, v5, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 724
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v3, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 725
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->restoreDefaultState()V

    .line 726
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    .line 727
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mShowByAnimation:Z

    return-void

    .line 740
    :cond_11e
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mInSettingFragment:Z

    .line 741
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->notifyOrientationChanged(I)V

    .line 746
    :cond_125
    :sswitch_125
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v4, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 747
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->shouldShow(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_138

    .line 748
    invoke-virtual {p0, v0, v0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    :cond_138
    :goto_138
    return-void

    .line 762
    :cond_139
    :sswitch_139
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->setEnable(Z)V

    return-void

    .line 755
    :cond_13f
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->setEnable(Z)V

    return-void

    nop

    :sswitch_data_146
    .sparse-switch
        0x5 -> :sswitch_139
        0x1c -> :sswitch_b4
        0x6a -> :sswitch_b1
        0x92 -> :sswitch_a6
        0x9c -> :sswitch_a3
        0xe8 -> :sswitch_139
        0xe9 -> :sswitch_e8
        0xea -> :sswitch_c2
        0xed -> :sswitch_e8
        0xee -> :sswitch_c2
        0xf4 -> :sswitch_ba
        0xf5 -> :sswitch_125
        0x101 -> :sswitch_8d
        0x102 -> :sswitch_62
    .end sparse-switch

    :pswitch_data_180
    .packed-switch 0xb
        :pswitch_9c
        :pswitch_62
        :pswitch_8d
        :pswitch_62
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->exitEditMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 264
    :cond_a
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged()Z
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz v0, :cond_7

    .line 390
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->onConfigurationChanged()V

    .line 392
    :cond_7
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenWidth:I

    .line 393
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->getScreenSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mScreenHeight:I

    .line 394
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onConfigurationChanged()Z

    move-result p0

    return p0
.end method

.method public onFloatingShutterButtonMove()V
    .registers 1

    .line 225
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz p0, :cond_7

    .line 226
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->onFloatingShutterButtonMove()V

    :cond_7
    return-void
.end method

.method public onGotoDetailPage()V
    .registers 6

    .line 853
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 854
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->getPageIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/IAppUI;->createGuideFragment(Ljava/util/List;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    .line 856
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 857
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    iget v3, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    iget v4, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;II)V

    .line 858
    sget v1, Lcom/transsion/camera/R$id;->top_layer_root:I

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 859
    const-string v1, "guide_pager_root"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 860
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x4d

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 861
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz v0, :cond_b

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1, v2}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 154
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onLeaveAfterSwipeUp()V
    .registers 1

    .line 842
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz p0, :cond_7

    .line 843
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->onLeaveAfterSwipeUp()V

    :cond_7
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 355
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 356
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz p2, :cond_a

    .line 357
    invoke-interface {p2, p1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->onOrientationChanged(I)V

    .line 359
    :cond_a
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mGuideFragment:Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    if-eqz p2, :cond_11

    .line 360
    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->onOrientationChanged(I)V

    :cond_11
    const/4 p2, -0x1

    if-ne p1, p2, :cond_15

    goto :goto_28

    .line 366
    :cond_15
    iget p2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    invoke-static {p1, p2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->roundOrientation(II)I

    move-result p1

    .line 367
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->correctOrientation(I)I

    move-result p1

    .line 368
    iget p2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    if-eq p2, p1, :cond_28

    .line 369
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    .line 370
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->notifyOrientationChanged(I)V

    :cond_28
    :goto_28
    return-void
.end method

.method protected onSetupViews()V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-nez v0, :cond_c

    .line 165
    sget-object p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mSettingController is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-nez v0, :cond_18

    .line 169
    sget-object p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mFloatingShutterUI is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 173
    :cond_18
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->isEntryViewCreated()Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_82

    .line 177
    :cond_1f
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 183
    :cond_41
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "floating_shutter_ui_hide"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_floating_shutter_ui_state"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetupViews, stateValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->shouldShow(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->setupViews(Z)V

    .line 186
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->sinkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 187
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    const/4 v2, -0x1

    const-string v3, "floating_shutter_ui_show_by_auto"

    if-ne v1, v2, :cond_83

    .line 188
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_83

    :goto_82
    return-void

    .line 191
    :cond_83
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->userInteraction()Z

    move-result v0

    if-nez v0, :cond_97

    .line 192
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->notifyOrientationChanged(I)V

    return-void

    :cond_97
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0, v0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 300
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    const/4 v0, 0x1

    .line 301
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mShowByAnimation:Z

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsZooming:Z

    const/4 v1, -0x1

    .line 303
    iput v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    .line 304
    iput v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentOrientation:I

    .line 305
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->pause()V

    .line 306
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    return-void
.end method

.method public resume()V
    .registers 6

    .line 200
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 201
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mInSettingFragment:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsCaptureProcessing:Z

    if-eqz v0, :cond_1e

    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v2, "key_floating_shutter"

    .line 202
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mShowByAnimation:Z

    .line 203
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mInSettingFragment:Z

    .line 204
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsCaptureProcessing:Z

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-nez v0, :cond_31

    .line 206
    sget-object p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mFloatingShutterUI is null, return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_31
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->resume()V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "floating_shutter_ui_hide"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_floating_shutter_ui_state"

    invoke-virtual {v0, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v2, "floating_shutter_ui_show_by_swipe"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 212
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->shouldShow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->restoreState()V

    .line 215
    :cond_55
    invoke-virtual {p0, v1, v1, v1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    return-void

    .line 216
    :cond_59
    const-string v2, "floating_shutter_ui_show_by_auto"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 217
    iget v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6e

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->restoreState()V

    .line 219
    invoke-virtual {p0, v1, v1, v1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    :cond_6e
    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 5

    .line 318
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 319
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_floating_shutter"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 320
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string v0, "action_sleep_activity_start"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 848
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mStateListener:Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;

    return-void
.end method

.method public showFloatingShutterUI(ZZZ)V
    .registers 8

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-nez v0, :cond_9

    goto :goto_31

    .line 327
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v1, "floating_shutter_ui_hide"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_floating_shutter_ui_state"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->shouldShow(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_31

    .line 331
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_2c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->showFloatingShutterView(ZZZ)V

    :cond_31
    :goto_31
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->unInit()V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_floating_shutter"

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 313
    iget-object v0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "action_sleep_activity_start"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 7

    .line 879
    sget-object v0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 880
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 881
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-nez v0, :cond_1e

    goto/16 :goto_cd

    .line 884
    :cond_1e
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->exitEditMode()Z

    .line 885
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterNotSupportMode:[Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_ce

    const-string v0, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_37

    goto/16 :goto_ce

    .line 891
    :cond_37
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "floating_shutter_ui_hide"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_floating_shutter_ui_state"

    invoke-virtual {p1, v4, v0, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 892
    const-string v0, "floating_shutter_ui_show_by_auto"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 893
    const-string p1, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_88

    const-string p1, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 894
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_62

    goto :goto_88

    .line 901
    :cond_62
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    if-eqz p1, :cond_84

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_6b

    goto :goto_84

    .line 905
    :cond_6b
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mHideBySwitchMode:Z

    if-eqz p1, :cond_76

    .line 906
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mHideBySwitchMode:Z

    .line 907
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->restoreState()V

    .line 909
    :cond_76
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsZooming:Z

    if-eqz p1, :cond_80

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_cd

    .line 910
    :cond_80
    invoke-virtual {p0, v2, v2, v2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    return-void

    .line 902
    :cond_84
    :goto_84
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    return-void

    .line 895
    :cond_88
    :goto_88
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->saveState()V

    .line 896
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mHideBySwitchMode:Z

    .line 897
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    return-void

    .line 912
    :cond_93
    const-string v0, "floating_shutter_ui_show_by_swipe"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b4

    .line 913
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mHideBySwitchMode:Z

    if-eqz p1, :cond_a6

    .line 914
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mHideBySwitchMode:Z

    .line 915
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->restoreState()V

    .line 917
    :cond_a6
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mIsZooming:Z

    if-eqz p1, :cond_b0

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-nez p1, :cond_cd

    .line 918
    :cond_b0
    invoke-virtual {p0, v2, v2, v2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->showFloatingShutterUI(ZZZ)V

    return-void

    .line 921
    :cond_b4
    iget-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz p1, :cond_cd

    .line 922
    const-string v0, "key_floating_shutter"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 923
    const-string v0, "on"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 924
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mShowByAnimation:Z

    .line 925
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingOrientation:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->notifyOrientationChanged(I)V

    :cond_cd
    :goto_cd
    return-void

    .line 886
    :cond_ce
    :goto_ce
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->saveState()V

    .line 887
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mHideBySwitchMode:Z

    .line 888
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->hideFloatingShutterUI(Z)V

    return-void
.end method

.method public updateFloatingShutterUIPosition(II)V
    .registers 3

    .line 348
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/FloatingShutterUIManager;->mFloatingShutterUI:Lcom/transsion/camera/app/ui/IFloatingShutterUI;

    if-eqz p0, :cond_7

    .line 349
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IFloatingShutterUI;->updateFloatingShutterUIPosition(II)V

    :cond_7
    return-void
.end method
