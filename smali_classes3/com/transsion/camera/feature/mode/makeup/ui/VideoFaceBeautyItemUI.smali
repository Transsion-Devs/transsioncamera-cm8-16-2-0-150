.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;
.super Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mMuFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

.field private mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautyItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-void
.end method

.method private faceBeautyOn()Z
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mMuFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_d

    .line 137
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "faceBeautyOn: mFaceBeautySetting is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 140
    :cond_d
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->faceBeautyOn(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private faceBeautyOn(Ljava/lang/String;)Z
    .registers 2

    .line 144
    const-string p0, "aiv2"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "custom"

    .line 145
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected createListView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 79
    sget v0, Lcom/transsion/camera/feature/makeup/R$layout;->feature_video_facebeauty_extends_layout:I

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 4

    .line 207
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x2

    .line 208
    const-string v1, "key_mu_face_beauty"

    if-eq p1, v0, :cond_42

    const/16 v0, 0xf

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x13

    if-eq p1, v0, :cond_42

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_2f

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_26

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_1d

    goto :goto_41

    .line 226
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_41

    const/4 p1, 0x1

    .line 227
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setEnabled(Z)V

    return-void

    .line 221
    :cond_26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_41

    const/4 p1, 0x0

    .line 222
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setEnabled(Z)V

    return-void

    .line 215
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p1, :cond_36

    .line 216
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideDialog()V

    .line 218
    :cond_36
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->unregisterValueChangedListener(Ljava/lang/String;)V

    return-void

    .line 210
    :cond_3a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_41

    .line 211
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideDialog()V

    :cond_41
    :goto_41
    return-void

    .line 232
    :cond_42
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->unregisterValueChangedListener(Ljava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 158
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->onOrientationChanged(I)V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_a

    .line 160
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setOrientation(I)V

    :cond_a
    return-void
.end method

.method public onProgressChanged(IZ)V
    .registers 3

    .line 190
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->onProgressChanged(IZ)V

    .line 191
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_a

    .line 192
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->progressChanged(I)V

    :cond_a
    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 150
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->onScreenFormChanged(IZ)V

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_a

    .line 152
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateScreenFormType(I)V

    :cond_a
    return-void
.end method

.method public onSettingOptionToggle()V
    .registers 6

    .line 122
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->onSettingOptionToggle()V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mMuFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_52

    .line 124
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 126
    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 127
    const-string/jumbo v2, "video_facebeauty_off"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->faceBeautyOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 128
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string/jumbo v2, "video_facebeauty_on"

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mMuFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 131
    :cond_4f
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->updateListView()V

    :cond_52
    return-void
.end method

.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 34
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 66
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "key_mu_face_beauty"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_17

    .line 69
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onStatusChanged: mVideoFaceBeautySetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_17
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->faceBeautyOn(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    const-string/jumbo p0, "video_facebeauty_on"

    goto :goto_24

    :cond_21
    const-string/jumbo p0, "video_facebeauty_off"

    .line 72
    :goto_24
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public registerSettingDevice()V
    .registers 2

    .line 87
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->registerSettingDevice()V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz v0, :cond_c

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mMuFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    :cond_c
    return-void
.end method

.method protected resetUI()V
    .registers 1

    .line 174
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->resetUI()V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_a

    .line 176
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideAutoHint()V

    :cond_a
    return-void
.end method

.method protected setDeviceSettingData(Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;)V
    .registers 5

    .line 49
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setDeviceSettingData(Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;)V

    if-nez p1, :cond_d

    .line 52
    sget-object p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setDeviceSettingData: settingData is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_d
    iget-object v0, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v1, "key_mu_face_beauty"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 57
    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mMuFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_2a

    .line 58
    :cond_1c
    const-string v0, "key_video_facebeauty"

    iget-object v2, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 59
    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 61
    :cond_2a
    :goto_2a
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->registerValueChangedListener(Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 166
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setEnable(Z)V

    .line 167
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_a

    .line 168
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setEnabled(Z)V

    :cond_a
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 198
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->unInit()V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz v0, :cond_c

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mMuFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 202
    :cond_c
    const-string v0, "key_mu_face_beauty"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->unregisterValueChangedListener(Ljava/lang/String;)V

    return-void
.end method

.method protected updateLayout()V
    .registers 3

    .line 114
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateLayout()V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz v0, :cond_e

    .line 116
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mScreenFormType:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mOrientation:I

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateLayout(II)V

    :cond_e
    return-void
.end method

.method protected updateListView()V
    .registers 1

    .line 101
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateListView()V

    return-void
.end method

.method protected updateListView(Z)V
    .registers 3

    .line 106
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateListView(Z)V

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz v0, :cond_e

    .line 108
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->tabSelected()Z

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateVideoFaceBeautyUI(ZZ)V

    :cond_e
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 182
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateLowLight(Z)V

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_a

    .line 184
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateLowLight(Z)V

    :cond_a
    return-void
.end method

.method protected updateTabView()V
    .registers 2

    .line 95
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateTabView()V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabIndicator:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;->faceBeautyOn()Z

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
