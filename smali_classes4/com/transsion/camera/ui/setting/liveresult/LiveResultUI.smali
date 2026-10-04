.class public final Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$Companion;,
        Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$Companion;

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
.method public static synthetic $r8$lambda$IfL-4E5jsRCniACMpsTG5RGpV4Y(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusChangeListener$lambda$0(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->Companion:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$Companion;

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LiveResultUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 39
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    .line 40
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    .line 41
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    .line 42
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 141
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method public static final synthetic access$doHideView(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doHideView()V

    return-void
.end method

.method public static final synthetic access$doShowView(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doShowView()V

    return-void
.end method

.method public static final synthetic access$doUpdateAllValue(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doUpdateAllValue()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 27
    sget-object v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method public static final synthetic access$setMCameraResult$p(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Lcom/transsion/camera/feature/setting/liveresult/Result;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mCameraResult:Lcom/transsion/camera/feature/setting/liveresult/Result;

    return-void
.end method

.method public static final synthetic access$startSensorMonitors(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->startSensorMonitors()V

    return-void
.end method

.method public static final synthetic access$stopSensorMonitors(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->stopSensorMonitors()V

    return-void
.end method

.method public static final synthetic access$updateAllValue(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->updateAllValue()V

    return-void
.end method

.method private final doHideView()V
    .registers 2

    .line 202
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b

    const/16 v0, 0x8

    .line 203
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private final doShowView()V
    .registers 2

    .line 195
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 196
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->updateRootLayoutRect()V

    const/4 p0, 0x0

    .line 197
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    return-void
.end method

.method private final doUpdateAllValue()V
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mCameraResult:Lcom/transsion/camera/feature/setting/liveresult/Result;

    .line 209
    sget-object v1, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->INSTANCE:Lcom/transsion/camera/ui/setting/liveresult/ResultParser;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/ui/setting/liveresult/ResultParser;->printResult(Lcom/transsion/camera/feature/setting/liveresult/Result;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 213
    invoke-static {}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getInstance()Lcom/transsion/camera/app/common/thermal/ThermalThrottle;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/thermal/ThermalThrottle;->getCurrentTemperature()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v3, " Temperature: \t"

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->printResult()Ljava/lang/CharSequence;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 227
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLaunchWithDeveloperMode()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 228
    invoke-static {}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->getInstance()Lcom/transsion/camera/utils/tuning/TuningFeatureApi;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/transsion/camera/utils/tuning/TuningFeatureApi;->printCurrentSkin()Ljava/lang/CharSequence;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 234
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mContentView:Landroid/widget/TextView;

    if-eqz v0, :cond_5e

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5e
    return-void
.end method

.method private static final mStatusChangeListener$lambda$0(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 142
    sget-object v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged, value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 144
    const-string p1, "on"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 147
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_37
    return-void
.end method

.method private final startSensorMonitors()V
    .registers 1

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->start()V

    return-void
.end method

.method private final stopSensorMonitors()V
    .registers 1

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->stop()V

    return-void
.end method

.method private final updateAllValue()V
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private final updateRootLayoutRect()V
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 89
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    if-eqz v1, :cond_24

    .line 91
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0, v2, v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 94
    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_24
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget v0, Lcom/transsion/camera/feature/liveresult/R$layout;->live_result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    sget p2, Lcom/transsion/camera/feature/liveresult/R$id;->live_result_content:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 57
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mContentView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->setContext(Landroid/content/Context;)V

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->setContext(Landroid/content/Context;)V

    .line 61
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

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

    .line 103
    const-string p0, "key_live_result"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 2

    .line 65
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    .line 66
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
    .registers 3

    .line 112
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_d

    .line 114
    new-instance v0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$LiveResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    return-void

    .line 116
    :cond_d
    sget-object p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

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

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_e

    .line 123
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void

    .line 125
    :cond_e
    sget-object p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 70
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setupEntryView()V

    .line 71
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doShowView()V

    .line 73
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->startSensorMonitors()V

    return-void

    .line 75
    :cond_16
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->doHideView()V

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->stopSensorMonitors()V

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 47
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mHandler:Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 50
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mMySensorManager:Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/liveresult/MySensorManager;->unInit()V

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->mElectricCurrentMonitor:Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/liveresult/ElectricCurrentMonitor;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "previewRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/liveresult/LiveResultUI;->updateRootLayoutRect()V

    return-void
.end method
