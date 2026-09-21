.class Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI$ResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "key_video_super_night_yuv"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsRecordingVideo:Z

.field private mIsRunningVideoSuperNight:Z

.field mResources:Landroid/content/res/Resources;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsRunningVideoSuperNight(Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mIsRunningVideoSuperNight:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHint(Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->updateHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoSuperNightTopBarItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 24
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 26
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mIsRecordingVideo:Z

    .line 27
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mIsRunningVideoSuperNight:Z

    .line 31
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method private hideHint()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    .line 117
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_16

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_16
    return-void
.end method

.method private showHint()V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_2c

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$string;->video_supernight_setting_hintmsg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/transsion/camera/R$drawable;->ic_asd_night:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setIsAsdDynamic(Z)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_2c
    return-void
.end method

.method private updateHint()V
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mIsRunningVideoSuperNight:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mIsRecordingVideo:Z

    if-nez v0, :cond_c

    .line 127
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->showHint()V

    return-void

    .line 129
    :cond_c
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->hideHint()V

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

    .line 58
    const-string p0, "key_video_super_night_yuv"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .registers 1

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
    .registers 3

    const/16 v0, 0xf

    if-eq p1, v0, :cond_10

    const/16 v0, 0x10

    if-eq p1, v0, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mIsRecordingVideo:Z

    .line 99
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->updateHint()V

    return-void

    :cond_10
    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mIsRecordingVideo:Z

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->updateHint()V

    return-void
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

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 79
    sget-object p0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_c
    new-instance v0, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI$ResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI$ResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI;Lcom/transsion/camera/ui/setting/videosupernight/VideoSuperNightYUVUI-IA;)V

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
    .registers 2

    return-void
.end method

.method public setupEntryView()V
    .registers 1

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 72
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
