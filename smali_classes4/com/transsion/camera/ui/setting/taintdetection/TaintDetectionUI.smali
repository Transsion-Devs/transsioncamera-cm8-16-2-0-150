.class public Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_TAINT_INFO:I = 0x64

.field private static final SETTING_KEY:Ljava/lang/String; = "key_taint_detection"

.field private static final STATE_TAINT_DEBUG:I = 0x2

.field private static final STATE_TAINT_HIDE:I = 0x0

.field private static final STATE_TAINT_SHOW:I = 0x1

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsCelebrityPopupTipsShowing:Z

.field private mIsForceTaintDetect:Z

.field private mIsOverlayGuideShowing:Z

.field private mIsSelfTimeShowing:Z

.field private mIsZooming:Z

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRootParent:Landroid/widget/FrameLayout;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
        }
    .end annotation
.end field

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mTaintDetSettingCallBack:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;

.field private mTaintInfoTextView:Landroid/widget/TextView;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHintInfo(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCelebrityPopupTipsShowing(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsCelebrityPopupTipsShowing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOverlayGuideShowing(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsOverlayGuideShowing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSelfTimeShowing(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsSelfTimeShowing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsZooming(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsZooming:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaintInfoTextView(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mTaintInfoTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAppUI(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyDebugIfNeed(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->notifyDebugIfNeed(Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyStatusChanged(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TaintDetectionUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 102
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 325
    new-instance v0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$1;-><init>(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 103
    new-instance v0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;

    .line 104
    new-instance v0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;-><init>(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mTaintDetSettingCallBack:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;

    .line 105
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 106
    sget v1, Lcom/transsion/camera/R$string;->taint_detection_setting_hint_info:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    const/16 p1, 0x1770

    .line 107
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDuration(I)V

    .line 108
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isForceTaintDetectSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsForceTaintDetect:Z

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;)Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    return-object p0
.end method

.method private notifyDebugIfNeed(Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;)V
    .registers 5

    .line 312
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsForceTaintDetect:Z

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;

    if-eqz v0, :cond_2b

    .line 313
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    .line 314
    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1e

    .line 316
    invoke-virtual {p1}, Lcom/effecttaint/labcv/core/lens/ImageQualityInterface$ImageQualityResult;->getScore()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_21

    :cond_1e
    const/4 p1, 0x0

    .line 318
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 320
    :goto_21
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2b
    return-void
.end method

.method private notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p0, :cond_b

    .line 375
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method private querySettingValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_9

    .line 306
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 113
    sget v0, Lcom/transsion/camera/R$layout;->taint_detection_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 114
    sget p2, Lcom/transsion/camera/R$id;->taint_detection_info:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mRootParent:Landroid/widget/FrameLayout;

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

    .line 190
    const-string p0, "key_taint_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 184
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

.method public notifyCameraOperateAction(I)V
    .registers 6

    .line 208
    sget-object v0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taintNotifyCameraOperateAction action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_d0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_ca

    const/16 v2, 0xb

    if-eq p1, v2, :cond_bc

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eq p1, v2, :cond_b9

    const/16 v2, 0x17

    if-eq p1, v2, :cond_ab

    const/16 v2, 0x18

    if-eq p1, v2, :cond_a8

    const/16 v2, 0x24

    if-eq p1, v2, :cond_95

    const/16 v2, 0x25

    if-eq p1, v2, :cond_8d

    const/16 v2, 0x2e

    if-eq p1, v2, :cond_d0

    const/16 v2, 0x2f

    if-eq p1, v2, :cond_ca

    const/16 v2, 0x35

    if-eq p1, v2, :cond_d0

    const/16 v2, 0x36

    if-eq p1, v2, :cond_ca

    const/16 v2, 0x4d

    if-eq p1, v2, :cond_95

    const/16 v2, 0x4e

    if-eq p1, v2, :cond_8d

    const/16 v2, 0x55

    if-eq p1, v2, :cond_95

    const/16 v2, 0x56

    if-eq p1, v2, :cond_8d

    const/16 v2, 0x6e

    if-eq p1, v2, :cond_d0

    const/16 v2, 0x6f

    if-eq p1, v2, :cond_ca

    sparse-switch p1, :sswitch_data_dc

    goto/16 :goto_db

    .line 288
    :sswitch_61
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsCelebrityPopupTipsShowing:Z

    return-void

    .line 279
    :sswitch_64
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsCelebrityPopupTipsShowing:Z

    .line 280
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_db

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_db

    .line 281
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 285
    :sswitch_72
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsOverlayGuideShowing:Z

    return-void

    .line 273
    :sswitch_75
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsOverlayGuideShowing:Z

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_db

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_db

    .line 275
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 212
    :sswitch_83
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsSelfTimeShowing:Z

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_db

    .line 214
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    return-void

    .line 267
    :cond_8d
    :sswitch_8d
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_db

    .line 268
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    return-void

    .line 255
    :cond_95
    :sswitch_95
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_a0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_a0

    .line 256
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 258
    :cond_a0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_db

    .line 259
    invoke-interface {p0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    return-void

    .line 297
    :cond_a8
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsZooming:Z

    return-void

    .line 291
    :cond_ab
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsZooming:Z

    .line 292
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_db

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_db

    .line 293
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 248
    :cond_b9
    :sswitch_b9
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsSelfTimeShowing:Z

    return-void

    .line 240
    :cond_bc
    :sswitch_bc
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsSelfTimeShowing:Z

    .line 241
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_db

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_db

    .line 242
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 235
    :cond_ca
    :sswitch_ca
    const-string p0, "do some thing when needless"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 225
    :cond_d0
    :sswitch_d0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_db

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_db

    .line 226
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_db
    :goto_db
    return-void

    :sswitch_data_dc
    .sparse-switch
        0xf -> :sswitch_d0
        0x10 -> :sswitch_ca
        0x11 -> :sswitch_95
        0x12 -> :sswitch_8d
        0x1c -> :sswitch_83
        0x20 -> :sswitch_83
        0xbf -> :sswitch_d0
        0x101 -> :sswitch_bc
        0x102 -> :sswitch_b9
        0x16b -> :sswitch_75
        0x16c -> :sswitch_72
        0x185 -> :sswitch_64
        0x186 -> :sswitch_61
    .end sparse-switch
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onShutterLongClick(II)Z
    .registers 5

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 201
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->turnOnSwitch(Z)V

    .line 203
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onShutterLongClick(II)Z

    move-result p0

    return p0
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

    .line 151
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 153
    sget-object p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mTaintDetSettingCallBack:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$TaintDetSettingCallBack;

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
    .registers 4

    .line 161
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_14

    .line 163
    const-string v0, "key_focus_state"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 164
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_taint_state"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_14
    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .registers 2

    .line 195
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V

    return-void
.end method

.method public setupEntryView()V
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mPreviewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2b

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mRootParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 124
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 125
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mRootParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :cond_2b
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mIsForceTaintDetect:Z

    if-eqz v0, :cond_61

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mTaintInfoTextView:Landroid/widget/TextView;

    if-nez v0, :cond_61

    .line 129
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mRootParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mTaintInfoTextView:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mTaintInfoTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mTaintInfoTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mTaintInfoTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mRootParent:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mTaintInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_61
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 170
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mRootParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_22

    .line 174
    const-string v1, "key_focus_state"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_taint_state"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_22
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionUI;->mPreviewRect:Landroid/graphics/Rect;

    return-void
.end method
