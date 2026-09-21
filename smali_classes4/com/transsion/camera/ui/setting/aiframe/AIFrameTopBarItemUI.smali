.class public Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

.field private final mMainHandler:Landroid/os/Handler;

.field private mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

.field private final mResources:Landroid/content/res/Resources;

.field private mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

.field private mShowPopupTipsAction:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$FBy-fNystAM0oPzYKFNHSrhE488(Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->lambda$new$0(Ljava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRecommendPopupTipsView(Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;)Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResources(Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;)Landroid/content/res/Resources;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIFrameTopBar"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;)V
    .registers 4

    .line 34
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 61
    new-instance p2, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    .line 126
    new-instance p2, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI$1;-><init>(Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mShowPopupTipsAction:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mResources:Landroid/content/res/Resources;

    .line 36
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    .line 37
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mMainHandler:Landroid/os/Handler;

    .line 38
    sget-object p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "AIFrameTopBarItemUI init"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method private isAIFrameDisabledByZoom()Z
    .registers 2

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_camera_zoom"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->AI_FRAME_MAX_ZOOM:I

    if-lt p0, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Object;I)V
    .registers 3

    .line 62
    const-string p2, "ai_zoom_entries_changed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->updateTopBarUI()V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->updatePopSettingUI()V

    :cond_12
    return-void
.end method

.method private showPopupTips()V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_5

    return-void

    .line 139
    :cond_5
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const-string v1, "false"

    const-string v2, "_global_scope"

    const-string v3, "key_ai_frame_pop_up_tips_showed"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 142
    sget-object p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "showPopupTips, return for showed"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mShowPopupTipsAction:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;
    .registers 10

    .line 54
    new-instance v0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->setCloseImageVisible(I)V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$color;->popup_tips_ai_frame_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->setBackGroundColor(I)V

    .line 57
    invoke-super/range {p0 .. p6}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;IIII)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    .line 91
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8b

    const/16 v0, 0xb

    if-eq p1, v0, :cond_8b

    const/16 v0, 0x13

    .line 92
    const-string v1, "_global_scope"

    const-string v2, "false"

    if-eq p1, v0, :cond_7e

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_8b

    const/16 v0, 0x63

    if-eq p1, v0, :cond_20

    const/16 v0, 0x16c

    if-eq p1, v0, :cond_3c

    goto/16 :goto_99

    .line 94
    :cond_20
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 95
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    const-string v3, "key_selling_point_guide_show"

    invoke-virtual {v0, v3, v2, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v1, "true"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 97
    sget-object p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "notifyCameraOperateAction action : ACTION_FIRST_FRAME_DRAWN return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 101
    :cond_3c
    sget-object v0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isSellingPointVideoPlaying : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 102
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isSellingPointVideoPlaying()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isAIFrameDisabledByZoom : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->isAIFrameDisabledByZoom()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isSellingPointVideoPlaying()Z

    move-result p1

    if-nez p1, :cond_99

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->isAIFrameDisabledByZoom()Z

    move-result p1

    if-nez p1, :cond_99

    .line 105
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->showPopupTips()V

    return-void

    .line 117
    :cond_7e
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    const-string p1, "key_ai_frame_pop_up_tips_showed"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 111
    :cond_8b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mShowPopupTipsAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    if-eqz p0, :cond_99

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->hide()V

    :cond_99
    :goto_99
    return-void
.end method

.method public onEntryViewClick(Landroid/view/View;Z)Z
    .registers 5

    .line 81
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->onEntryViewClick(Landroid/view/View;Z)Z

    move-result p1

    .line 82
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    const-string v0, "on"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->updateHint(Z)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p0, :cond_1c

    const/16 p2, 0x190

    .line 84
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1c
    return p1
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mRecommendPopupTipsView:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    if-eqz p0, :cond_7

    .line 158
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->onOrientationChanged(I)V

    :cond_7
    return-void
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 44
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_c

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mSettingDataCallback:Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_c
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .registers 2

    .line 75
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 70
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 164
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mShowPopupTipsAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/aiframe/AIFrameTopBarItemUI;->mCommonSettingUI:Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/aiframe/AIFrameCommonSettingUI;->updateHint(Z)V

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_18

    const/4 v0, 0x0

    .line 168
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_18
    return-void
.end method
