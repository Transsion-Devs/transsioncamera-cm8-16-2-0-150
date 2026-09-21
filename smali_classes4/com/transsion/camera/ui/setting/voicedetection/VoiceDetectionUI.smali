.class public Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;,
        Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;
    }
.end annotation


# static fields
.field private static final SETTING_KEY:Ljava/lang/String; = "key_voice_detection"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAIVoiceCaptureObserver:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mIsLowLight:Z

.field private mIsTackPicture:Z

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mUIHandler:Landroid/os/Handler;

.field private mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

.field private mVoiceDetSettingCallBack:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;


# direct methods
.method public static synthetic $r8$lambda$5c-L-NMuAM-1-UHIX6wlU1TLnUM(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsTackPicture(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mIsTackPicture:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingStatusListener(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterControl(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsTackPicture(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mIsTackPicture:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAIVoiceCaptueStatus(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->updateAIVoiceCaptueStatus(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VoiceDetectionUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 185
    new-instance p1, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 73
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIHandler:Landroid/os/Handler;

    .line 74
    new-instance p1, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;-><init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mVoiceDetSettingCallBack:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;

    .line 75
    new-instance p1, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;-><init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mAIVoiceCaptureObserver:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .line 186
    const-string v0, "key_update_low_light_state_to_qc"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 187
    sget-object v1, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    :cond_26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "key_voice_state"

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_9c

    goto :goto_50

    :sswitch_34
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_50

    :cond_3b
    const/4 v3, 0x2

    goto :goto_50

    :sswitch_3d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_50

    :cond_44
    const/4 v3, 0x1

    goto :goto_50

    :sswitch_46
    const-string v0, "key_focus_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v3, 0x0

    :goto_50
    packed-switch v3, :pswitch_data_aa

    goto :goto_9b

    .line 200
    :pswitch_54
    const-string p1, "voice_capture_state"

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIHandler:Landroid/os/Handler;

    new-instance p2, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$1;-><init>(Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 217
    :pswitch_69
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mIsLowLight:Z

    return-void

    .line 191
    :pswitch_72
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9b

    const-string v0, "key_touch_capture"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 192
    check-cast p2, Ljava/lang/String;

    const-string p1, "ACTIVE_SCAN"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_9b

    .line 194
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "voice_invalid_state"

    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9b
    :goto_9b
    return-void

    :sswitch_data_9c
    .sparse-switch
        -0x42841f76 -> :sswitch_46
        0x3213323e -> :sswitch_3d
        0x52f54164 -> :sswitch_34
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_72
        :pswitch_69
        :pswitch_54
    .end packed-switch
.end method

.method private registerAIVoiceCaptureObserver()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mAIVoiceCaptureObserver:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;

    if-eqz v0, :cond_20

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 157
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "AI_VOICE_TAKE_PHOTOS_STATUS"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mAIVoiceCaptureObserver:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;

    .line 156
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_20
    return-void
.end method

.method private unRegisterAIVoiceCaptureObserver()V
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mAIVoiceCaptureObserver:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;

    if-eqz v0, :cond_f

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mAIVoiceCaptureObserver:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$AIVoiceCaptureObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_f
    return-void
.end method

.method private updateAIVoiceCaptueStatus(Z)V
    .registers 6

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AI_VOICE_TAKE_PHOTOS_STATUS"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 169
    sget-object v1, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateAIVoiceCaptueStatus] currentValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " selfChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string p1, "voice_ai_capture_state"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
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

    .line 104
    const-string p0, "key_voice_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 3

    .line 90
    sget-object v0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MSG_HIDE_VOICE hideEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIHandler:Landroid/os/Handler;

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
    .registers 9

    .line 262
    const-string v0, "on"

    const-string v1, "key_voice_detection"

    const-string v2, "voice_normal_state"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const-string v6, "key_voice_state"

    sparse-switch p1, :sswitch_data_b4

    goto/16 :goto_b3

    .line 337
    :sswitch_10
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_b3

    .line 338
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 339
    invoke-virtual {p0, v6, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 326
    :sswitch_1c
    invoke-static {}, Lcom/transsion/camera/utils/MultiTouchManager;->resetState()V

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_28

    .line 328
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 330
    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result p1

    .line 331
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSuperDefinition200mSupport:Z

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b3

    .line 332
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mIsLowLight:Z

    if-nez p1, :cond_b3

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_4d

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getModeKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.transsion.camera.feature.mode.ultrahd.UltraHDModeEntry"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4d

    if-nez v0, :cond_b3

    .line 333
    :cond_4d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    const/16 p1, 0x8

    invoke-interface {p0, p1, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 264
    :sswitch_55
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_b3

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p0, v5, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 269
    :sswitch_69
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_b3

    .line 270
    invoke-interface {p1, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    invoke-interface {p0, v5, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void

    .line 303
    :sswitch_82
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_b3

    .line 304
    invoke-interface {p0, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    return-void

    .line 294
    :sswitch_8a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_b3

    const/4 p1, 0x0

    .line 295
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    return-void

    .line 318
    :sswitch_93
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9a

    .line 319
    invoke-interface {p1, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 321
    :cond_9a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_b3

    .line 322
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, v6, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 277
    :sswitch_a6
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_b3

    .line 278
    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "voice_invalid_state"

    invoke-virtual {p0, v6, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b3
    :goto_b3
    return-void

    :sswitch_data_b4
    .sparse-switch
        0xb -> :sswitch_a6
        0xc -> :sswitch_93
        0x11 -> :sswitch_8a
        0x12 -> :sswitch_93
        0x16 -> :sswitch_93
        0x17 -> :sswitch_8a
        0x18 -> :sswitch_82
        0x1c -> :sswitch_69
        0x20 -> :sswitch_55
        0x2a -> :sswitch_8a
        0x2b -> :sswitch_82
        0x35 -> :sswitch_8a
        0x36 -> :sswitch_82
        0x40 -> :sswitch_8a
        0x41 -> :sswitch_82
        0x4d -> :sswitch_8a
        0x4e -> :sswitch_93
        0x55 -> :sswitch_8a
        0x56 -> :sswitch_93
        0x66 -> :sswitch_8a
        0x67 -> :sswitch_93
        0x6e -> :sswitch_93
        0x87 -> :sswitch_8a
        0x88 -> :sswitch_93
        0x89 -> :sswitch_8a
        0x8a -> :sswitch_93
        0x8d -> :sswitch_1c
        0x9c -> :sswitch_10
        0xb0 -> :sswitch_8a
        0xb1 -> :sswitch_93
        0xd2 -> :sswitch_8a
        0xd3 -> :sswitch_82
        0xf4 -> :sswitch_8a
        0xf5 -> :sswitch_93
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

    .line 231
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 5

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 247
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 249
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterLongClick(II)Z

    move-result p0

    return p0
.end method

.method public onShutterUp(I)V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 255
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 257
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

    .line 131
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_9

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mVoiceDetSettingCallBack:Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI$VoiceDetSettingCallBack;

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

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_1d

    .line 141
    const-string v0, "key_focus_state"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_voice_state"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_update_low_light_state_to_qc"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 145
    :cond_1d
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->registerAIVoiceCaptureObserver()V

    const/4 p1, 0x0

    .line 146
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->updateAIVoiceCaptueStatus(Z)V

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 3

    .line 237
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    .line 238
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p1, :cond_b

    const/4 v0, 0x4

    .line 240
    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->registerShutterListener(Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;I)V

    :cond_b
    return-void
.end method

.method public setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIStateControl:Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 118
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_26

    .line 122
    const-string v1, "key_focus_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_voice_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_update_low_light_state_to_qc"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 126
    :cond_26
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/voicedetection/VoiceDetectionUI;->unRegisterAIVoiceCaptureObserver()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
