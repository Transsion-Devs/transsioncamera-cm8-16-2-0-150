.class public Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;
.super Lcom/transsion/camera/app/common/manager/AbstractViewManager;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;
.implements Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;,
        Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

.field protected mCommonSettingUIList:Ljava/util/List;

.field private mCurrentModeName:Ljava/lang/String;

.field private mDefaultCommonSettingUIList:Ljava/util/List;

.field private final mInflater:Landroid/view/LayoutInflater;

.field protected mInteractiveUILayout:Landroid/view/ViewGroup;

.field private mIsPopSettingViewShowing:Z

.field private mIsPopupWindowShowing:Z

.field private mLastSuperAntiVideoValue:Ljava/lang/String;

.field private final mMainHandler:Landroid/os/Handler;

.field protected final mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

.field private mPendingRestoreInteractiveUIAfterPopup:Z

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private mRecordingAnimator:Landroid/animation/Animator;

.field private mResetUi:Z

.field private mRestartPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;

.field protected mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStartRecord:Z

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSupportSuperAntiVideoV2:Z

.field private mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

.field private mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;


# direct methods
.method public static synthetic $r8$lambda$C8kfEHg4fwNwPA80NEOtGmcm0ZA(Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)Z
    .registers 2

    .line 309
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IKaZJabf_0pVrCYrS5dYbgL51A4(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->restoreInteractiveUIAfterPopupHide()V

    return-void
.end method

.method public static synthetic $r8$lambda$R0QSZ50iMbawqV96G6gcZwAZne0(Ljava/util/List;Ljava/util/List;Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 5

    .line 289
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->hideEntryView()V

    .line 290
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 291
    invoke-interface {p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    .line 293
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 295
    :cond_12
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 297
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method

.method public static synthetic $r8$lambda$j13gsf1QfWD3S9h4m3BW3TFFScw(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;Lcom/transsion/camera/app/common/ui/setting/ISettingUI;)Z
    .registers 2

    .line 295
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraId(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCurrentModeName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSuperAntiVideoValue(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mLastSuperAntiVideoValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResetUi(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mResetUi:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportSuperAntiVideoV2(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSupportSuperAntiVideoV2:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchWideCameraListener(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastSuperAntiVideoValue(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mLastSuperAntiVideoValue:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingRestoreInteractiveUIAfterPopup(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPendingRestoreInteractiveUIAfterPopup:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreInteractiveUIIfReady(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->restoreInteractiveUIIfReady()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 62
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "InteractiveUIM"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/utils/sound/IActionSound;)V
    .registers 20

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v5, p6

    move-object/from16 v4, p7

    move-object/from16 v7, p8

    move-object/from16 v6, p9

    .line 115
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 82
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSupportSuperAntiVideoV2:Z

    .line 97
    new-instance v1, Landroid/os/Handler;

    .line 98
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mMainHandler:Landroid/os/Handler;

    .line 104
    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Lcom/transsion/camera/app/ui/manager/InteractiveUIManager-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const/4 v1, 0x1

    .line 105
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mResetUi:Z

    .line 117
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mInflater:Landroid/view/LayoutInflater;

    move-object v9, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 118
    invoke-virtual/range {v0 .. v9}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->createOptionUIManager(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    .line 120
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportSuperAntiVideoV2:Z

    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSupportSuperAntiVideoV2:Z

    .line 121
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportAiAntiVideo:Z

    if-eqz p1, :cond_5a

    const-string p1, "ai"

    goto :goto_5c

    :cond_5a
    const-string p1, "on"

    :goto_5c
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mLastSuperAntiVideoValue:Ljava/lang/String;

    return-void
.end method

.method private executeDoSetCommonSettingUIListWithParam()V
    .registers 4

    .line 800
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mDefaultCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 804
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mDefaultCommonSettingUIList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->doSetCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void
.end method

.method private executeDoSetOptionSettingUIListWithParam()V
    .registers 3

    .line 809
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    if-eqz v0, :cond_18

    .line 810
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->getDefaultOptionSettingUIList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 811
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_18

    .line 814
    :cond_15
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->doSetOptionSettingUIList(Ljava/util/List;)V

    :cond_18
    :goto_18
    return-void
.end method

.method private loadCommonSettingUIs(Ljava/util/List;Ljava/lang/String;)V
    .registers 10

    if-nez p1, :cond_4

    goto/16 :goto_184

    .line 162
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_184

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 163
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mScreenFormType:I

    iget v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mOrientation:I

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->initSettingUI(IILandroid/content/Context;)V

    .line 164
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_28

    .line 165
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 167
    :cond_28
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v1, :cond_7d

    .line 168
    invoke-interface {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_3e

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_3e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 174
    :goto_44
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_67

    .line 175
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 176
    iget-object v5, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v5

    if-eqz v5, :cond_64

    .line 178
    new-instance v6, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    invoke-direct {v6, v4, v5}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;-><init>(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 179
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 182
    :cond_67
    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSettingData(Ljava/util/List;)V

    .line 183
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v1

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_7d

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 187
    :cond_7d
    iget v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mBatteryStatus:I

    iget v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mTemperatureStatus:I

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setBatteryStatus(II)V

    .line 189
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v1, :cond_8b

    .line 190
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 193
    :cond_8b
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingOptionControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;

    if-eqz v1, :cond_92

    .line 194
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 197
    :cond_92
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    if-eqz v1, :cond_99

    .line 198
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V

    .line 201
    :cond_99
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz v1, :cond_a0

    .line 202
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 205
    :cond_a0
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-eqz v1, :cond_a7

    .line 206
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 208
    :cond_a7
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_ae

    .line 209
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 212
    :cond_ae
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v1, :cond_b5

    .line 213
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    .line 215
    :cond_b5
    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v1, :cond_bc

    .line 216
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    .line 219
    :cond_bc
    const-string/jumbo v1, "wide_camera"

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d2

    .line 220
    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Lcom/transsion/camera/app/ui/manager/InteractiveUIManager-IA;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_d2
    const-string v1, "key_pmaster_feature"

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    .line 225
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRestartPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V

    .line 228
    :cond_e8
    const-string v1, "front_wide_camera"

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 229
    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$WideCameraListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Lcom/transsion/camera/app/ui/manager/InteractiveUIManager-IA;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_fc
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_10c

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;

    move-result-object v1

    .line 236
    :cond_10c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gtz v2, :cond_11c

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_121

    .line 237
    :cond_11c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    :cond_121
    if-nez v1, :cond_13f

    .line 241
    sget-object v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEntryView null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 245
    :cond_13f
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_16c

    .line 247
    sget-object v3, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCommonSettingUIs parent not null!!! key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 251
    :cond_16c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCurrentModeName:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updateCurrentMode(Ljava/lang/String;)V

    .line 252
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->setupEntryView()V

    .line 253
    iget-object v2, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V

    .line 254
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_184
    :goto_184
    return-void
.end method

.method private registerKeyToMonitor(Ljava/util/List;)V
    .registers 5

    .line 725
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 726
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_4

    :cond_18
    return-void
.end method

.method private removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_16

    .line 354
    :cond_3
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    .line 355
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->getEntryRootView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz p0, :cond_16

    if-nez v0, :cond_10

    goto :goto_16

    .line 359
    :cond_10
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->hideEntryView()V

    .line 360
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_16
    :goto_16
    return-void
.end method

.method private restoreInteractiveUIAfterPopupHide()V
    .registers 1

    .line 795
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->executeDoSetCommonSettingUIListWithParam()V

    .line 796
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->executeDoSetOptionSettingUIListWithParam()V

    return-void
.end method

.method private restoreInteractiveUIIfReady()V
    .registers 2

    .line 786
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->shouldDelayRestoreInteractiveUI()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 787
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPendingRestoreInteractiveUIAfterPopup:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 790
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPendingRestoreInteractiveUIAfterPopup:Z

    .line 791
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->restoreInteractiveUIAfterPopupHide()V

    return-void
.end method

.method private shouldDelayRestoreInteractiveUI()Z
    .registers 2

    .line 782
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsPopupWindowShowing:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsPopSettingViewShowing:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private unInitCommonSettingUIs(Ljava/util/List;)V
    .registers 4

    if-eqz p1, :cond_22

    .line 341
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 342
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 343
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->removeCommonSettingUIEntryView(Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;)V

    .line 344
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->unInit()V

    goto :goto_c

    .line 346
    :cond_1f
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_22
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/util/List;)V
    .registers 5

    .line 730
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 731
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    goto :goto_4

    :cond_18
    return-void
.end method


# virtual methods
.method public changeUIWhenSwitchModeBefore()V
    .registers 1

    return-void
.end method

.method protected createOptionUIManager(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;
    .registers 10

    .line 131
    new-instance p0, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-direct/range {p0 .. p9}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;Lcom/transsion/camera/app/ui/manager/option/IOptionVisibilityRespondent;)V

    return-object p0
.end method

.method public destroy()V
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 591
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 592
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->releaseResource()V

    goto :goto_10

    .line 595
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mDefaultCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_40

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 596
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mDefaultCommonSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 597
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->releaseResource()V

    goto :goto_30

    :cond_40
    return-void
.end method

.method public doSetCommonSettingUIList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 284
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCameraId:Ljava/lang/String;

    .line 285
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCurrentModeName:Ljava/lang/String;

    .line 286
    iget-object p3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz p3, :cond_25

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_25

    .line 287
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p3}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 300
    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p3, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 302
    :cond_25
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->loadCommonSettingUIs(Ljava/util/List;Ljava/lang/String;)V

    .line 304
    sget-object p1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setCommonSettingUIList,mCommonSettingUIList "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public doSetOptionSettingUIList(Ljava/util/List;)V
    .registers 2

    .line 316
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->setOptionSettingUIList(Ljava/util/List;)V

    return-void
.end method

.method public getInteractiveUILayout()Landroid/view/ViewGroup;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mInteractiveUILayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getKeys()Ljava/util/List;
    .registers 2

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSupportSuperAntiVideoV2:Z

    if-eqz p0, :cond_e

    .line 719
    const-string p0, "key_super_anti_video"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    return-object v0
.end method

.method public bridge synthetic getRootView()Landroid/view/View;
    .registers 1

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->getRootView()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    return-object p0
.end method

.method public hide()V
    .registers 3

    .line 630
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_26

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 632
    :goto_12
    instance-of v1, v0, Landroid/animation/Animator;

    if-eqz v1, :cond_26

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 633
    sget-object p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "hide: dismiss"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 637
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    if-eqz p0, :cond_2e

    const/4 v0, 0x4

    .line 638
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2e
    return-void
.end method

.method public init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;Landroid/view/LayoutInflater;)V
    .registers 5

    .line 142
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonInteractive:Lcom/transsion/camera/app/common/interactive/CommonInteractive;

    .line 143
    sget p2, Lcom/transsion/camera/R$layout;->interactive_root_layout:I

    const/4 v0, 0x1

    invoke-virtual {p3, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 144
    sget p2, Lcom/transsion/camera/R$id;->interactive_root_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    .line 145
    sget p2, Lcom/transsion/camera/R$id;->interactive_option_icon_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mInteractiveUILayout:Landroid/view/ViewGroup;

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->init(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 9

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_10

    .line 416
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->notifyCameraOperateAction(I)V

    goto :goto_10

    .line 420
    :cond_22
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_f5

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq p1, v0, :cond_f2

    const/16 v0, 0x8

    const/16 v3, 0x91

    const/16 v4, 0x2f

    const/16 v5, 0x10

    const/4 v6, 0x0

    if-eq p1, v0, :cond_de

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_d2

    const/16 v0, 0xcb

    if-eq p1, v0, :cond_de

    const/16 v0, 0xf

    if-eq p1, v0, :cond_c4

    if-eq p1, v5, :cond_de

    const/16 v0, 0x13

    if-eq p1, v0, :cond_f5

    const/16 v0, 0x14

    if-eq p1, v0, :cond_f2

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_c6

    if-eq p1, v4, :cond_e0

    const/16 v0, 0x90

    if-eq p1, v0, :cond_c6

    if-eq p1, v3, :cond_e0

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_c1

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_a9

    const/16 v0, 0x136

    if-eq p1, v0, :cond_a1

    const/16 v0, 0x137

    if-eq p1, v0, :cond_99

    packed-switch p1, :pswitch_data_104

    goto/16 :goto_fd

    .line 489
    :pswitch_6f
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsPopupWindowShowing:Z

    .line 490
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPendingRestoreInteractiveUIAfterPopup:Z

    if-eqz v0, :cond_fd

    .line 491
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsPopSettingViewShowing:Z

    if-eqz v0, :cond_7b

    goto/16 :goto_fd

    .line 494
    :cond_7b
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPendingRestoreInteractiveUIAfterPopup:Z

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_fd

    .line 473
    :pswitch_89
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsPopupWindowShowing:Z

    goto/16 :goto_fd

    .line 436
    :pswitch_8d
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_de

    .line 437
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->resetRecordingUI()V

    goto :goto_de

    .line 452
    :cond_99
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    if-eqz v0, :cond_fd

    .line 453
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;->setIntercept(Z)V

    goto :goto_fd

    .line 457
    :cond_a1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    if-eqz v0, :cond_fd

    .line 458
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;->setIntercept(Z)V

    goto :goto_fd

    .line 479
    :cond_a9
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsPopSettingViewShowing:Z

    .line 480
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPendingRestoreInteractiveUIAfterPopup:Z

    if-eqz v0, :cond_fd

    .line 481
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsPopupWindowShowing:Z

    if-eqz v0, :cond_b4

    goto :goto_fd

    .line 484
    :cond_b4
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPendingRestoreInteractiveUIAfterPopup:Z

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_fd

    .line 476
    :cond_c1
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsPopSettingViewShowing:Z

    goto :goto_fd

    .line 423
    :cond_c4
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStartRecord:Z

    .line 426
    :cond_c6
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_fd

    .line 427
    invoke-virtual {p0, v2, v6}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_fd

    .line 431
    :cond_d2
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_fd

    .line 432
    invoke-virtual {p0, v1, v6}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_fd

    .line 442
    :cond_de
    :goto_de
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStartRecord:Z

    .line 445
    :cond_e0
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_fd

    if-eq p1, v5, :cond_ee

    if-eq p1, v3, :cond_ee

    if-ne p1, v4, :cond_fd

    .line 448
    :cond_ee
    invoke-virtual {p0, v1, v6}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_fd

    .line 470
    :cond_f2
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mResetUi:Z

    goto :goto_fd

    .line 463
    :cond_f5
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mResetUi:Z

    .line 464
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPendingRestoreInteractiveUIAfterPopup:Z

    .line 465
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsPopupWindowShowing:Z

    .line 466
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mIsPopSettingViewShowing:Z

    .line 501
    :cond_fd
    :goto_fd
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->notifyCameraOperateActionToUI(I)V

    return-void

    nop

    :pswitch_data_104
    .packed-switch 0x1c
        :pswitch_8d
        :pswitch_89
        :pswitch_6f
    .end packed-switch
.end method

.method protected notifyOrientationChanged(I)V
    .registers 3

    .line 657
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 658
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_10

    .line 660
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    goto :goto_10

    :cond_22
    return-void
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 8

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 367
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 368
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 371
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_48

    .line 373
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 374
    const-string v1, "key_video_sight_shock"

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 375
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    goto :goto_2a

    :cond_48
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_10

    .line 521
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onBackPressed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->needAnimation(Z)V

    return v0

    .line 527
    :cond_2b
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onBackPressed()Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged()Z
    .registers 2

    .line 668
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz p0, :cond_1a

    .line 669
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_8

    .line 671
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onConfigurationChanged()V

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 533
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_10

    .line 534
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x1

    return p0

    .line 539
    :cond_26
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 651
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    .line 652
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->notifyOrientationChanged(I)V

    .line 653
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->onOrientationChanged(IZ)V

    return-void
.end method

.method public onPreviewClick()Z
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_10

    .line 508
    invoke-interface {v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onPreviewClick()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->needAnimation(Z)V

    return v0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 8

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 385
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v1

    invoke-direct {v2, v3, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz p1, :cond_48

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 391
    const-string v1, "key_video_sight_shock"

    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 392
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mPreviewRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->updatePreviewRect(Landroid/graphics/Rect;)V

    goto :goto_2a

    :cond_48
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_10

    .line 558
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x1

    return p0

    .line 563
    :cond_26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onSettingOptionClick(Ljava/lang/String;)V
    .registers 6

    .line 679
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStartRecord:Z

    if-eqz v0, :cond_f

    goto :goto_2d

    .line 682
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_15

    .line 684
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->needAnimation(Z)V

    .line 685
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->onSettingOptionToggle(Ljava/lang/String;)V

    goto :goto_15

    :cond_2d
    :goto_2d
    return-void
.end method

.method protected onSetupViews()V
    .registers 1

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 544
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 545
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_10

    .line 546
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x1

    return p0

    .line 551
    :cond_26
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 1

    .line 584
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->pause()V

    .line 585
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->pause()V

    return-void
.end method

.method public queryState(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 4

    .line 308
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-nez p0, :cond_7

    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0

    .line 309
    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-nez p0, :cond_24

    .line 310
    sget-object p0, Lcom/transsion/camera/app/common/IAppUI$UIState;->UNKNOWN:Lcom/transsion/camera/app/common/IAppUI$UIState;

    return-object p0

    .line 311
    :cond_24
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public resetRecordingUI()V
    .registers 3

    .line 869
    sget-object v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "resetRecordingUI: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRecordingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 871
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 873
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    if-eqz v0, :cond_2c

    .line 874
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 875
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 876
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    sget v0, Lcom/transsion/camera/app/common/R$id;->key_video_recording_state:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2c
    return-void
.end method

.method public restoreInteractiveView()V
    .registers 2

    .line 619
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 620
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_10

    .line 622
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->restoreInteractiveView()V

    goto :goto_10

    :cond_22
    return-void
.end method

.method public resume()V
    .registers 1

    .line 578
    invoke-super {p0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->resume()V

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->resume()V

    return-void
.end method

.method protected final runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 819
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_10

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 822
    :cond_10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public setDefaultCommonSettingUIList(Ljava/util/List;)V
    .registers 2

    .line 708
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mDefaultCommonSettingUIList:Ljava/util/List;

    return-void
.end method

.method public setDefaultOptionSettingUIList(Ljava/util/List;)V
    .registers 2

    .line 713
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->setDefaultOptionSettingUIList(Ljava/util/List;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 4

    .line 400
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 401
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    if-eqz v0, :cond_25

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v1, :cond_13

    .line 404
    invoke-interface {v1, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    goto :goto_13

    .line 408
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->setEnable(Z)V

    return-void
.end method

.method public setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V
    .registers 2

    .line 279
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRestartPreviewListener:Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;

    return-void
.end method

.method public setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 3

    .line 325
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->setSettingController(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    if-eqz p1, :cond_28

    .line 327
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_28

    .line 330
    :cond_11
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_21

    .line 333
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->getKeys()Ljava/util/List;

    move-result-object p1

    .line 334
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->registerKeyToMonitor(Ljava/util/List;)V

    return-void

    .line 336
    :cond_21
    sget-object p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! Maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V
    .registers 2

    .line 137
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->setSettingOptionControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;)V

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setSwitchDualAndMainCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSwitchDualAndMainCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;

    return-void
.end method

.method public setSwitchWideCameraListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;)V
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mSwitchWideCameraListener:Lcom/transsion/camera/app/common/IAppUIListener$ISwitchWideCameraListener;

    return-void
.end method

.method public shouldShowOption()Z
    .registers 3

    .line 692
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_29

    .line 695
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    if-eqz v0, :cond_12

    .line 696
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->needShowOptionBar()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_27
    const/4 p0, 0x1

    return p0

    :cond_29
    :goto_29
    return v1
.end method

.method public show()V
    .registers 2

    .line 644
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 645
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public startRecordingAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
    .registers 7

    .line 828
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->isNextRecordingAnimationEnable(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 829
    sget-object v0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordingAnimation: isRecordBegin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    .line 830
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 832
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    sget v1, Lcom/transsion/camera/R$id;->interactive_option_icon_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 833
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRootView:Lcom/transsion/camera/app/ui/manager/InterceptableFrameLayout;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/app/common/ui/anim/IRecordingAnimationManager;->createRecordingAnimationWithState(Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRecordingAnimator:Landroid/animation/Animator;

    .line 834
    new-instance v2, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;Landroid/view/View;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_5c

    .line 861
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 863
    :cond_5c
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_61
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 604
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_d

    .line 605
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mRecordingAnimator:Landroid/animation/Animator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 607
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->unRegisterKeyToMonitor(Ljava/util/List;)V

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->unInit()V

    .line 609
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->destroy()V

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->unInitCommonSettingUIs(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 611
    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mCommonSettingUIList:Ljava/util/List;

    return-void
.end method

.method public updateOptionSettingUIs()V
    .registers 1

    .line 704
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->mOptionUIManager:Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/option/OptionUIManager;->updateOptionSettingUIs()V

    return-void
.end method
