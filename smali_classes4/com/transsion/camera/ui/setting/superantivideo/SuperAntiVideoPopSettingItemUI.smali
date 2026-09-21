.class public Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/FlipPopSettingItemUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;
    }
.end annotation


# static fields
.field public static final MAIN_LENS_RATIO:Ljava/lang/Float;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TELE_LENS_RATE:I


# instance fields
.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mLastSupportSize:I

.field private final mResources:Landroid/content/res/Resources;

.field private final mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSupportChanged:Z


# direct methods
.method static bridge synthetic -$$Nest$misTeleCamera(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->isTeleCamera(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateEntryValueList(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->updateEntryValueList(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTouchZoomStatus(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->updateTouchZoomStatus(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTELE_LENS_RATE()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->TELE_LENS_RATE:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 55
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mZoomAccuracyEnlarged:Z

    if-eqz v0, :cond_18

    const/16 v0, 0x2a94

    goto :goto_1a

    :cond_18
    const/16 v0, 0x6d

    :goto_1a
    sput v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->TELE_LENS_RATE:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 57
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->MAIN_LENS_RATIO:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/FlipPopSettingItemUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 65
    new-instance p2, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI-IA;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    .line 67
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 p2, 0x0

    .line 68
    iput p2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mLastSupportSize:I

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method public static isMainThread()Z
    .registers 2

    .line 114
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private isTeleCamera(Ljava/lang/String;)Z
    .registers 4

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackLongFocusCamera(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    return v1

    .line 122
    :cond_12
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackMainCamera(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 123
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 124
    :cond_26
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sget p1, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->TELE_LENS_RATE:I

    if-le p0, p1, :cond_2f

    return v1

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method private showAntiHint(Z)V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_9

    .line 206
    sget p1, Lcom/transsion/camera/R$string;->super_anti_video_super_value_on_tips:I

    goto :goto_b

    :cond_9
    sget p1, Lcom/transsion/camera/R$string;->super_anti_video_normal_value_on_tips:I

    .line 207
    :goto_b
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_28
    return-void
.end method

.method private updateEntryValueList(Z)V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->updateEntryValueList(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getSupport()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 99
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_12

    :cond_11
    move p1, v0

    .line 100
    :goto_12
    iget v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mLastSupportSize:I

    if-eq v1, p1, :cond_17

    const/4 v0, 0x1

    :cond_17
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mSupportChanged:Z

    .line 101
    sget-object v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEntryValueList lastSupportSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mLastSupportSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newSupportSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSupportChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mSupportChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iput p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mLastSupportSize:I

    .line 104
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mSupportChanged:Z

    if-eqz p1, :cond_5b

    .line 105
    invoke-static {}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->updateSupportEntries()V

    return-void

    .line 108
    :cond_53
    new-instance p1, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;)V

    invoke-static {p1}, Lcom/transsion/camera/utils/UIUtils;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_5b
    return-void
.end method

.method private updateTouchZoomStatus(Ljava/lang/String;)V
    .registers 5

    .line 181
    sget-object v0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTouchZoomStatus antiValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    if-nez v1, :cond_20

    .line 183
    const-string p0, "updateTouchZoomStatus mCameraOperationControl is null"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_20
    const-string v0, "super"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 187
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x7b

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void

    .line 189
    :cond_30
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0xd6

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method


# virtual methods
.method protected doOnValueChanged()V
    .registers 3

    .line 195
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->doOnValueChanged()V

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->updateTouchZoomStatus(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 198
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "super"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->showAntiHint(Z)V

    return-void

    .line 200
    :cond_24
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method protected getTipsMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mResources:Landroid/content/res/Resources;

    const-string v0, "super"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 170
    sget p1, Lcom/transsion/camera/R$string;->super_anti_video_super_value_on_tips:I

    goto :goto_f

    .line 171
    :cond_d
    sget p1, Lcom/transsion/camera/R$string;->super_anti_video_normal_value_on_tips:I

    .line 169
    :goto_f
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 216
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0xf

    if-eq p1, v0, :cond_8

    goto :goto_18

    .line 219
    :cond_8
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableDVMode:Z

    if-eqz p1, :cond_18

    iget p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenFormType:I

    const/4 v0, 0x7

    if-ne p1, v0, :cond_18

    .line 220
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/FlipPopSettingItemUI;->hindTipsHint()V

    :cond_18
    :goto_18
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 176
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 177
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->updateTouchZoomStatus(Ljava/lang/String;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 4

    .line 77
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 79
    const-string v0, "key_camera_zoom"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_real_zoom_value"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_wide_camera_item_seleccted"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "wide_camera"

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_super_anti_video"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method protected shouldShowTips(Ljava/lang/String;)Z
    .registers 4

    .line 157
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mSupportChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 158
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mSupportChanged:Z

    return v1

    :cond_8
    const/4 v0, 0x7

    .line 161
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenFormType:I

    if-eq v0, p0, :cond_e

    return v1

    .line 164
    :cond_e
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1e

    const-string p0, "off"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public unInit()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_real_zoom_value"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_wide_camera_item_seleccted"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "wide_camera"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_super_anti_video"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/superantivideo/SuperAntiVideoPopSettingItemUI$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 93
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/FlipPopSettingItemUI;->unInit()V

    return-void
.end method
