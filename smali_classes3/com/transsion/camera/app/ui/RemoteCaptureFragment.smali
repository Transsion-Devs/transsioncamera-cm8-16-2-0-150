.class public Lcom/transsion/camera/app/ui/RemoteCaptureFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCaptureTypeListRoot:Landroid/widget/FrameLayout;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDumpVoiceButton:Landroid/widget/Switch;

.field private mDumpVoiceLayout:Landroid/widget/RelativeLayout;

.field private mFingerCaptureLayout:Landroid/widget/RelativeLayout;

.field private mFingerSwitchButton:Landroid/widget/Switch;

.field private mGestureCaptureLayout:Landroid/widget/RelativeLayout;

.field private mGestureGuideLayout:Landroid/widget/FrameLayout;

.field private mGestureSwitchButton:Landroid/widget/Switch;

.field private mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mNeedDumpVoice:Z

.field private mSmileCaptureLayout:Landroid/widget/RelativeLayout;

.field private mSmileSwitchButton:Landroid/widget/Switch;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mTouchCaptureLayout:Landroid/widget/RelativeLayout;

.field private mTouchSwitchButton:Landroid/widget/Switch;

.field private mVoiceCaptureLayout:Landroid/widget/RelativeLayout;

.field private mVoiceSwitchButton:Landroid/widget/Switch;


# direct methods
.method public static synthetic $r8$lambda$18IgUJ2FO7nWgsHJe4VDTBedmh4(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wa414of03xcZAHFsHOa0RbbC1ic(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Lcom/airbnb/lottie/LottieComposition;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$4(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$btgK9cPZUIln1-Tlejn1Na47WVU(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kEWRutF9h4hNMiXObm9RT624ncY(Ljava/lang/Throwable;)V
    .registers 3

    .line 165
    sget-object v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Lottie load capture_type_pref_guide_gesture_anim.json fail"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mXxzIINi-yPULk-ZcN3hULin2-Y(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r8sCa9sWB2tp3NMYeZ5C4guNUXg(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sEKvSSHSKKWUbteOjKrWLtyanuY(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$txaknIaEchAQxOKBPxtYijLvSJk(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RemoteCaptureFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    return-void
.end method

.method private isFingerCaptureSupport()Z
    .registers 4

    .line 335
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "false"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote_capture_state_fingerprint"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isGestureCaptureSupport()Z
    .registers 4

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "false"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote_capture_state_gesture"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isSmileCaptureSupport()Z
    .registers 4

    .line 323
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "false"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote_capture_state_smile"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isTouchCaptureSupport()Z
    .registers 4

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "false"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote_capture_state_touch"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isVoiceCaptureSupport()Z
    .registers 4

    .line 327
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "false"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "remote_capture_state_voice"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .registers 6

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "on"

    goto :goto_1a

    :cond_18
    const-string v0, "off"

    :goto_1a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_touch_capture"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_35

    .line 107
    const-string p1, "key_remote_capture"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "remote_capture_state_touch"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .registers 6

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "on"

    goto :goto_1a

    :cond_18
    const-string v0, "off"

    :goto_1a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_smile_detection"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_35

    .line 118
    const-string p1, "key_remote_capture"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "remote_capture_state_smile"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .registers 7

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_1a

    const-string v0, "on"

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    :goto_1b
    iget-object v2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_voice_detection"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v0, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_36

    .line 129
    const-string v0, "key_remote_capture"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v2, "remote_capture_state_voice"

    invoke-virtual {p1, v0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    :cond_36
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mNeedDumpVoice:Z

    if-eqz p1, :cond_63

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_46

    move v0, v4

    goto :goto_48

    :cond_46
    const/16 v0, 0x8

    :goto_48
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_63

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceButton:Landroid/widget/Switch;

    invoke-virtual {p1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string p1, "key_dump_voice"

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_63
    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/view/View;)V
    .registers 6

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "on"

    goto :goto_1a

    :cond_18
    const-string v0, "off"

    :goto_1a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_dump_voice"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_35

    .line 147
    const-string p1, "key_remote_capture"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "remote_capture_state_dump_voice"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Lcom/airbnb/lottie/LottieComposition;)V
    .registers 2

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_7

    .line 161
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$onViewCreated$6(Landroid/view/View;)V
    .registers 6

    .line 171
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "on"

    goto :goto_1a

    :cond_18
    const-string v0, "off"

    :goto_1a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_gesture_detection"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_35

    .line 174
    const-string p1, "key_remote_capture"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "remote_capture_state_gesture"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method private synthetic lambda$onViewCreated$7(Landroid/view/View;)V
    .registers 6

    .line 182
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 183
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "on"

    goto :goto_1a

    :cond_18
    const-string v0, "off"

    :goto_1a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_fingerprint_capture"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_35

    .line 185
    const-string p1, "key_remote_capture"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v0, "remote_capture_state_fingerprint"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method private showShootMethodSettingUI()V
    .registers 10

    .line 274
    sget-object v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[showShootMethodSettingUI] ++"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->isTouchCaptureSupport()Z

    move-result v1

    const-string v2, "off"

    const/4 v3, 0x0

    const-string v4, "on"

    if-eqz v1, :cond_3b

    .line 276
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isSupportTouchCaptureDefaultOn()Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x7

    iget v5, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    if-ne v1, v5, :cond_23

    goto :goto_25

    :cond_23
    move-object v1, v2

    goto :goto_26

    :cond_25
    :goto_25
    move-object v1, v4

    .line 279
    :goto_26
    iget-object v5, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchSwitchButton:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v7, "key_touch_capture"

    .line 280
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v1, v8}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 279
    invoke-virtual {v5, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 282
    :cond_3b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->isSmileCaptureSupport()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 283
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileSwitchButton:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v6, "key_smile_detection"

    .line 285
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 284
    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 287
    :cond_5b
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->isVoiceCaptureSupport()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 288
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v5, "key_voice_detection"

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v2, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    iget-object v5, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 291
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mNeedDumpVoice:Z

    if-eqz v5, :cond_a3

    .line 292
    iget-object v5, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v6, "key_dump_voice"

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 293
    iget-object v6, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceLayout:Landroid/widget/RelativeLayout;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_95

    move v1, v3

    goto :goto_97

    :cond_95
    const/16 v1, 0x8

    :goto_97
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceButton:Landroid/widget/Switch;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 297
    :cond_a3
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->isGestureCaptureSupport()Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 298
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureGuideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 300
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureSwitchButton:Landroid/widget/Switch;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v6, "key_gesture_detection"

    .line 301
    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v2, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 300
    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 302
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_e1

    .line 303
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_dc

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_e1

    .line 306
    :cond_dc
    const-string v1, "The image assets folder of lottie animation is empty."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 310
    :cond_e1
    :goto_e1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->isFingerCaptureSupport()Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 311
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerSwitchButton:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 313
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mFingerCaptureDefaultOn:Z

    if-eqz v3, :cond_f9

    move-object v2, v4

    .line 314
    :cond_f9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    .line 313
    const-string v3, "key_fingerprint_capture"

    invoke-virtual {v1, v3, v2, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 312
    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_10c
    return-void
.end method

.method private updateRemoteCaptureRootLayout(II)V
    .registers 6

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mCaptureTypeListRoot:Landroid/widget/FrameLayout;

    if-nez v0, :cond_5

    return-void

    .line 342
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 343
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 344
    iget-object v2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureGuideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 345
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-eqz p2, :cond_88

    const/4 v1, 0x3

    if-eq p2, v1, :cond_88

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_58

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_58

    .line 359
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 360
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 361
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 362
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_0_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_88

    .line 350
    :cond_58
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 351
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 352
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 353
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->setting_expand_root_90_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 366
    :cond_88
    :goto_88
    iget-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mCaptureTypeListRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureGuideLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .registers 1

    return-void
.end method

.method protected getPreferenceResource()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .registers 2

    .line 239
    sget p0, Lcom/transsion/camera/R$id;->remote_capture_fragment_toolbar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    if-eqz p0, :cond_d

    .line 241
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    :cond_d
    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 3

    .line 220
    sget v0, Lcom/transsion/camera/R$id;->remote_capture_sort_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    .line 221
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 222
    sget v0, Lcom/transsion/camera/R$id;->capture_type_list_root_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mCaptureTypeListRoot:Landroid/widget/FrameLayout;

    .line 223
    sget v0, Lcom/transsion/camera/R$id;->capture_type_pref_guide_gesture_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureGuideLayout:Landroid/widget/FrameLayout;

    .line 224
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->updateRemoteCaptureRootLayout(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 269
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->updateRemoteCaptureRootLayout(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 90
    new-instance p3, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 91
    sget p3, Lcom/transsion/camera/R$layout;->remote_capture_preference_fragment:I

    .line 92
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->voice_detection_capture_dump_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    .line 93
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDumpVoiceSupport()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    move v0, v1

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mNeedDumpVoice:Z

    .line 94
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 2

    .line 212
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onDestroy()V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_12
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 204
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onPause()V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 199
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .registers 1

    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 194
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->showShootMethodSettingUI()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 99
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->isTouchCaptureSupport()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 101
    sget p2, Lcom/transsion/camera/R$id;->touch_capture_switch_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchSwitchButton:Landroid/widget/Switch;

    .line 102
    sget p2, Lcom/transsion/camera/R$id;->touch_capture_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchCaptureLayout:Landroid/widget/RelativeLayout;

    .line 103
    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_25
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->isSmileCaptureSupport()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 112
    sget p2, Lcom/transsion/camera/R$id;->smile_capture_switch_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileSwitchButton:Landroid/widget/Switch;

    .line 113
    sget p2, Lcom/transsion/camera/R$id;->smile_capture_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileCaptureLayout:Landroid/widget/RelativeLayout;

    .line 114
    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->isVoiceCaptureSupport()Z

    move-result p2

    if-eqz p2, :cond_89

    .line 123
    sget p2, Lcom/transsion/camera/R$id;->voice_capture_switch_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceSwitchButton:Landroid/widget/Switch;

    .line 124
    sget p2, Lcom/transsion/camera/R$id;->voice_capture_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceCaptureLayout:Landroid/widget/RelativeLayout;

    .line 125
    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mNeedDumpVoice:Z

    if-eqz p2, :cond_89

    .line 140
    sget p2, Lcom/transsion/camera/R$id;->dump_voice_switch_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceButton:Landroid/widget/Switch;

    .line 141
    sget p2, Lcom/transsion/camera/R$id;->dump_voice_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceLayout:Landroid/widget/RelativeLayout;

    .line 142
    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_89
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->isGestureCaptureSupport()Z

    move-result p2

    if-eqz p2, :cond_fb

    .line 153
    sget-object p2, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Initialize lottie animation."

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 154
    sget p2, Lcom/transsion/camera/R$id;->capture_type_pref_guide_gesture_anim:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "images"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 157
    iget-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mLottieAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "capture_type_pref_guide_gesture_anim.json"

    invoke-static {p2, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    .line 159
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda5;-><init>()V

    .line 164
    invoke-virtual {p2, v0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 168
    sget p2, Lcom/transsion/camera/R$id;->gesture_capture_switch_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureSwitchButton:Landroid/widget/Switch;

    .line 169
    sget p2, Lcom/transsion/camera/R$id;->gesture_capture_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureCaptureLayout:Landroid/widget/RelativeLayout;

    .line 170
    new-instance v0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    :cond_fb
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->isFingerCaptureSupport()Z

    move-result p2

    if-eqz p2, :cond_11d

    .line 179
    sget p2, Lcom/transsion/camera/R$id;->fingerprint_capture_switch_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerSwitchButton:Landroid/widget/Switch;

    .line 180
    sget p2, Lcom/transsion/camera/R$id;->fingerprint_capture_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerCaptureLayout:Landroid/widget/RelativeLayout;

    .line 181
    new-instance p2, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/RemoteCaptureFragment$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/RemoteCaptureFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11d
    return-void
.end method

.method protected removeAllPreferences()V
    .registers 1

    return-void
.end method

.method public setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V
    .registers 2

    .line 80
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingFragmentManger:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 264
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 372
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mTouchCaptureLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_a

    .line 373
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :cond_a
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mSmileCaptureLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_11

    .line 376
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    :cond_11
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mVoiceCaptureLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_18

    .line 379
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    :cond_18
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mGestureCaptureLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1f

    .line 382
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    :cond_1f
    iget-object v1, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mDumpVoiceLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_26

    .line 385
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/app/ui/RemoteCaptureFragment;->mFingerCaptureLayout:Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_2d

    .line 388
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2d
    return-void
.end method

.method protected unInitViews()V
    .registers 1

    return-void
.end method
