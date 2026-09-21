.class public Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$SmileDetSettingCallBack;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "key_smile_detection"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mIsTackPicture:Z

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mSmileDetSettingCallBack:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$SmileDetSettingCallBack;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSuperNightSwitch:Z

.field private mUIHandler:Landroid/os/Handler;

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;


# direct methods
.method public static synthetic $r8$lambda$uPxPwPt4KEz3LjyW3E7o_WmhXu4(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsTackPicture(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mIsTackPicture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterControl(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsTackPicture(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mIsTackPicture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msuperNightLiteOn(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)Z
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->superNightLiteOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SmileDetectionUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mSuperNightSwitch:Z

    .line 143
    new-instance p1, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 67
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mUIHandler:Landroid/os/Handler;

    .line 68
    new-instance p1, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$SmileDetSettingCallBack;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$SmileDetSettingCallBack;-><init>(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mSmileDetSettingCallBack:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$SmileDetSettingCallBack;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 144
    sget-object v0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "key_smile_state"

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_92

    goto :goto_4a

    :sswitch_2c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_4a

    :cond_33
    const/4 v2, 0x2

    goto :goto_4a

    :sswitch_35
    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_4a

    :cond_3e
    const/4 v2, 0x1

    goto :goto_4a

    :sswitch_40
    const-string v0, "key_super_night_lite_switch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    packed-switch v2, :pswitch_data_a0

    goto :goto_88

    .line 156
    :pswitch_4e
    const-string p1, "smile_capture_state"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mUIHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$1;-><init>(Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 147
    :pswitch_61
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_88

    const-string v0, "key_touch_capture"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 148
    const-string p1, "ACTIVE_SCAN"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_88

    .line 150
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "smile_invalid_state"

    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_88
    :goto_88
    return-void

    .line 177
    :pswitch_89
    const-string p1, "value_super_night_lite_switch_on"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mSuperNightSwitch:Z

    return-void

    :sswitch_data_92
    .sparse-switch
        -0x746c5766 -> :sswitch_40
        -0x42841f76 -> :sswitch_35
        0x529edaba -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_89
        :pswitch_61
        :pswitch_4e
    .end packed-switch
.end method

.method private superNightLiteOn()Z
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_super_night_lite"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mSuperNightSwitch:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

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

    .line 96
    const-string p0, "key_smile_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 3

    .line 82
    sget-object v0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MSG_HIDE_SMILE hideEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mUIHandler:Landroid/os/Handler;

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

.method public notifyCameraOperateAction(I)V
    .registers 8

    .line 230
    sget-object v0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 231
    const-string v0, "on"

    const-string v1, "key_smile_detection"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "key_smile_state"

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_98

    goto/16 :goto_97

    .line 295
    :sswitch_24
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 296
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_30

    .line 297
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 299
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/4 p1, 0x5

    invoke-interface {p0, p1, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 233
    :sswitch_37
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_97

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_97

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p0, v5, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 238
    :sswitch_4b
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_97

    .line 239
    invoke-interface {p1, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_97

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p0, v5, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 272
    :sswitch_64
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_97

    .line 273
    invoke-interface {p0, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    return-void

    .line 263
    :sswitch_6c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_97

    const/4 p1, 0x0

    .line 264
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    return-void

    .line 287
    :sswitch_75
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_7c

    .line 288
    invoke-interface {p1, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 290
    :cond_7c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_97

    .line 291
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "smile_normal_state"

    invoke-virtual {p0, v4, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 246
    :sswitch_8a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_97

    .line 247
    invoke-virtual {p0, v4}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "smile_invalid_state"

    invoke-virtual {p0, v4, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_97
    :goto_97
    return-void

    :sswitch_data_98
    .sparse-switch
        0xb -> :sswitch_8a
        0xc -> :sswitch_75
        0x11 -> :sswitch_6c
        0x12 -> :sswitch_75
        0x16 -> :sswitch_75
        0x17 -> :sswitch_6c
        0x18 -> :sswitch_64
        0x1c -> :sswitch_4b
        0x20 -> :sswitch_37
        0x2a -> :sswitch_6c
        0x2b -> :sswitch_64
        0x35 -> :sswitch_6c
        0x36 -> :sswitch_64
        0x40 -> :sswitch_6c
        0x41 -> :sswitch_64
        0x4d -> :sswitch_6c
        0x4e -> :sswitch_75
        0x4f -> :sswitch_24
        0x55 -> :sswitch_6c
        0x56 -> :sswitch_75
        0x66 -> :sswitch_6c
        0x67 -> :sswitch_75
        0x6e -> :sswitch_75
        0x87 -> :sswitch_6c
        0x88 -> :sswitch_75
        0x89 -> :sswitch_6c
        0x8a -> :sswitch_75
        0xac -> :sswitch_6c
        0xad -> :sswitch_64
        0xb0 -> :sswitch_6c
        0xb1 -> :sswitch_75
        0xf4 -> :sswitch_6c
        0xf5 -> :sswitch_75
    .end sparse-switch
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 199
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 5

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 215
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 217
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterLongClick(II)Z

    move-result p0

    return p0
.end method

.method public onShutterUp(I)V
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 223
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 225
    :cond_8
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterUp(I)V

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
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mSmileDetSettingCallBack:Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI$SmileDetSettingCallBack;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_9
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
    .registers 4

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1d

    .line 132
    const-string v0, "key_focus_state"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_smile_state"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 134
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_super_night_lite_switch"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_1d
    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 3

    .line 205
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 206
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p1, :cond_b

    const/4 v0, 0x2

    .line 208
    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    :cond_b
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 110
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_26

    .line 114
    const-string v1, "key_focus_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_smile_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_night_lite_switch"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/smiledetection/SmileDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_26
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
