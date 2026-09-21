.class public Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_VIEW:I = 0x66

.field private static final MSG_SHOW_VIEW:I = 0x65

.field private static final MSG_UPDATE_ALL_VALUE:I = 0x67

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final USE_GYRO:Z = false


# instance fields
.field private mCameraResult:Lcom/transsion/camera/feature/setting/liveresult/Result;

.field private mContentView:Landroid/widget/TextView;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

.field private final mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

.field private final mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mStringBuilder:Landroid/text/SpannableStringBuilder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraResult(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Lcom/transsion/camera/feature/setting/liveresult/Result;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mCameraResult:Lcom/transsion/camera/feature/setting/liveresult/Result;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoHideView(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doHideView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoShowView(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doShowView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateAllValue(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doUpdateAllValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSensorMonitors(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->startSensorMonitors()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopSensorMonitors(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->stopSensorMonitors()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAllValue(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->updateAllValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveResultUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 53
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 175
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$1;-><init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 58
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    .line 59
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    .line 60
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    return-void
.end method

.method private doHideView()V
    .registers 2

    .line 247
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b

    const/16 v0, 0x8

    .line 249
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private doShowView()V
    .registers 2

    .line 239
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 241
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->updateRootLayoutRect()V

    const/4 p0, 0x0

    .line 242
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method private doUpdateAllValue()V
    .registers 5

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mCameraResult:Lcom/transsion/camera/feature/setting/liveresult/Result;

    .line 255
    invoke-static {v0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->printResult(Lcom/transsion/camera/feature/setting/liveresult/Result;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 257
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 259
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object v0

    .line 260
    const-string v1, "\n"

    if-eqz v0, :cond_2f

    .line 261
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getCurrentTemperature()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v3, " Temperature: \t"

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 271
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->printResult()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 273
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 276
    :cond_40
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 277
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 278
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 279
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Lcom/transsion/camera/utils/tuning/ITuningFeatureApi$ISkinHinter;->printCurrentSkin()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 282
    :cond_58
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mContentView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startSensorMonitors()V
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->start()V

    return-void
.end method

.method private stopSensorMonitors()V
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->stop()V

    return-void
.end method

.method private updateAllValue()V
    .registers 2

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateRootLayoutRect()V
    .registers 4

    .line 110
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1c

    .line 115
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz p0, :cond_1c

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 118
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p0

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v1, v2, p0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 76
    sget v0, Lcom/transsion/camera/feature/liveresult/R$layout;->live_result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    sget p2, Lcom/transsion/camera/feature/liveresult/R$id;->live_result_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mContentView:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->setContext(Landroid/content/Context;)V

    .line 79
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mContentView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->setContext(Landroid/content/Context;)V

    return-object p1
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

    .line 131
    const-string p0, "key_live_result"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    .line 85
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
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

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 145
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 147
    sget-object p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 150
    :cond_c
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 155
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_c

    .line 157
    sget-object p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 160
    :cond_c
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 91
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doShowView()V

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->startSensorMonitors()V

    return-void

    .line 96
    :cond_16
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doHideView()V

    .line 97
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->stopSensorMonitors()V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 65
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_16

    .line 68
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 70
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->unInit()V

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->updateRootLayoutRect()V

    return-void
.end method
