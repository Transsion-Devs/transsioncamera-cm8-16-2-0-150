.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;
.super Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

.field private mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoMakeupItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-void
.end method

.method private videoMakeUpOn()Z
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_e

    .line 122
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v0, "videoMakeUpOn: mMakeUpStyleSetting is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 125
    :cond_e
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->videoMakeUpOn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private videoMakeUpOn(Ljava/lang/String;)Z
    .registers 2

    .line 129
    invoke-static {p1}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 130
    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected createListView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 66
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_makeup_layout:I

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 168
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0xf

    if-eq p1, v0, :cond_19

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_c

    goto :goto_20

    .line 177
    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p1, :cond_20

    .line 178
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->activityPause()V

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideDialog()V

    return-void

    .line 171
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p0, :cond_20

    .line 172
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->hideDialog()V

    :cond_20
    :goto_20
    return-void
.end method

.method public onProgressChanged(IZ)V
    .registers 3

    .line 151
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->onProgressChanged(IZ)V

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p0, :cond_a

    .line 153
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->progressChanged(I)V

    :cond_a
    return-void
.end method

.method public onSettingOptionToggle()V
    .registers 6

    .line 108
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->onSettingOptionToggle()V

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_4c

    .line 110
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 112
    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSettingOptionToggle value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", switchValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    const-string v2, "off"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->videoMakeUpOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "on"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_48
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->updateListView(Z)V

    :cond_4c
    return-void
.end method

.method public registerSettingDevice()V
    .registers 2

    .line 74
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->registerSettingDevice()V

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz v0, :cond_c

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    :cond_c
    return-void
.end method

.method protected setDeviceSettingData(Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;)V
    .registers 4

    .line 48
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setDeviceSettingData(Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;)V

    if-nez p1, :cond_d

    .line 51
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setDeviceSettingData: settingData is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_d
    const-string v0, "key_video_makeup"

    iget-object v1, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "key_video_makeup_style"

    if-eqz v0, :cond_1e

    .line 56
    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_2a

    .line 57
    :cond_1e
    iget-object v0, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 58
    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 61
    :cond_2a
    :goto_2a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->registerValueChangedListener(Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 135
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setEnable(Z)V

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p0, :cond_a

    .line 137
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 159
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->unInit()V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz v0, :cond_c

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpStyleSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 163
    :cond_c
    const-string v0, "key_video_makeup_style"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->unregisterValueChangedListener(Ljava/lang/String;)V

    return-void
.end method

.method protected updateLayout()V
    .registers 3

    .line 100
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateLayout()V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz v0, :cond_e

    .line 102
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mScreenFormType:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mOrientation:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateLayout(II)V

    :cond_e
    return-void
.end method

.method protected updateListView()V
    .registers 1

    .line 88
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateListView()V

    return-void
.end method

.method protected updateListView(Z)V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz v0, :cond_b

    .line 94
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->tabSelected()Z

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateFeatureUI(ZZ)V

    :cond_b
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 143
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateLowLight(Z)V

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;

    if-eqz p0, :cond_a

    .line 145
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpRoot;->updateLowLight(Z)V

    :cond_a
    return-void
.end method

.method protected updateTabView()V
    .registers 2

    .line 82
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateTabView()V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabIndicator:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;->videoMakeUpOn()Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x0

    goto :goto_f

    :cond_d
    const/16 p0, 0x8

    :goto_f
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
