.class public Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;
    }
.end annotation


# static fields
.field private static final KEY_FLARE_CAPTURE_STATUS:Ljava/lang/String; = "key_flare_capture_status"

.field private static final KEY_MODE_CHANGED:Ljava/lang/String; = "key_mode_changed"

.field private static final KEY_ON_PAUSE:Ljava/lang/String; = "key_on_pause"

.field private static final MSG_HIDE_HINT:I = 0x0

.field private static final MSG_SHOW_HINT:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFlareCaptureDataCallback:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;

.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideHint(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->hideHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowHint(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->showHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 34
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 42
    new-instance v0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->mUIHandler:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$UIHandler;

    .line 43
    new-instance v0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;-><init>(Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->mFlareCaptureDataCallback:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;

    return-void
.end method

.method private hideHint()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->getHintState()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_11
    return-void
.end method

.method private showHint()V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_1c

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$string;->flare_capture_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1c
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

    .line 129
    const-string p0, "key_flare_capture"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 137
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->mFlareCaptureDataCallback:Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI$FlareCaptureDataCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

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
    .registers 2

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 154
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flarecapture/FlareCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_b

    const/4 v0, 0x0

    .line 156
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    :cond_b
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
