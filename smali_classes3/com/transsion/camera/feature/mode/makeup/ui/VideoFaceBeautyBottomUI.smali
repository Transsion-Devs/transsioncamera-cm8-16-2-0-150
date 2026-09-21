.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBottomTitle:Landroid/widget/TextView;

.field private final mMainHandler:Landroid/os/Handler;

.field private mSettingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;


# direct methods
.method public static synthetic $r8$lambda$YMYRNRH71_Redl98SZgON13zPwk(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->lambda$updateValueChange$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautyBottomUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$updateValueChange$0(Ljava/lang/String;)V
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_7

    .line 131
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateValueChange(Ljava/lang/String;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public closeContrast(Z)V
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_7

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->closeContrast(Z)V

    :cond_7
    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_9

    .line 115
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->onBackPressed()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 74
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 75
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->facebeauty_root:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    .line 76
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->video_face_bottom_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v1, :cond_26

    .line 78
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mBottomTitle:Landroid/widget/TextView;

    return-void

    .line 80
    :cond_26
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 81
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_35

    .line 82
    check-cast p0, Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    return-void
.end method

.method public openContrast()V
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_7

    .line 47
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->openContrast()V

    :cond_7
    return-void
.end method

.method public progressChanged(I)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->progressChanged(I)V

    :cond_d
    return-void
.end method

.method public registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/setting/StatusMonitor;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 138
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mSettingDataList:Ljava/util/List;

    .line 139
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 140
    iget-object v0, p2, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v1, "key_mu_face_beauty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object p2, p2, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_6

    :cond_24
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 98
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setEnabled(Z)V

    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .registers 3

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    return-void
.end method

.method public showOrHideBottomUI(Z)V
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz p0, :cond_7

    .line 108
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->showOrHide(Z)V

    :cond_7
    return-void
.end method

.method public unregisterSettingData()V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mSettingDataList:Ljava/util/List;

    if-eqz v0, :cond_2c

    .line 149
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 150
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_mu_face_beauty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 151
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_e

    :cond_2c
    return-void
.end method

.method public updateFeatureRv(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 65
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateFeatureUI(ZZ)V

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mBottomTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_12

    .line 67
    sget p1, Lcom/transsion/camera/featurelibs/commonwidget/R$string;->face_beauty_mode_title:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_12
    return-void
.end method

.method public updateLayout(II)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz v0, :cond_14

    .line 159
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->setOrientation(I)V

    .line 162
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateLayout(II)V

    .line 164
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mBottomTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_25

    const/16 p1, 0x5a

    if-eq p2, p1, :cond_20

    const/16 p1, 0x10e

    if-ne p2, p1, :cond_21

    :cond_20
    const/4 p2, 0x0

    :cond_21
    int-to-float p1, p2

    .line 168
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_25
    return-void
.end method

.method updateLowLight(Z)V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    if-eqz v0, :cond_7

    .line 89
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateLowLight(Z)V

    .line 91
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mBottomTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_18

    if-eqz p1, :cond_14

    .line 92
    const-string p1, "#FF242424"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    :goto_15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_18
    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 2

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mVideoFaceBeautyExRoot:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateScreenFormType(I)V

    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyBottomUI;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
