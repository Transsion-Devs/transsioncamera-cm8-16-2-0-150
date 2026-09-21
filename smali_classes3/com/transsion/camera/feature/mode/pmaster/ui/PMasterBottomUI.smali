.class public Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$IBlurScrollerRootCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$SettingChangeCallbackImpl;,
        Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_UI:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBlurOperator:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;

.field private mBlurRoot:Landroid/widget/FrameLayout;

.field private mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

.field private mBottomTitle:Landroid/widget/TextView;

.field private mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

.field private mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

.field private mPortraitFlareSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mSettingDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;"
        }
    .end annotation
.end field

.field private mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBlurScrollerRoot(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;)Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPortraitFlareSetting(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mPortraitFlareSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateUIWhenSettingChange(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;[Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->updateUIWhenSettingChange([Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PMasterBottomUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance p1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurOperator:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;

    return-void
.end method

.method private updateUIWhenSettingChange([Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_86

    .line 461
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    goto/16 :goto_86

    .line 465
    :cond_8
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUIWhenSettingChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 466
    aget-object v2, p1, v0

    const/4 v3, 0x1

    .line 467
    aget-object p1, p1, v3

    .line 468
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_90

    :goto_34
    move v1, v5

    goto :goto_6a

    :sswitch_36
    const-string v0, "key_mu_face_beauty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_34

    :cond_3f
    const/4 v1, 0x4

    goto :goto_6a

    :sswitch_41
    const-string v0, "key_makeup_feature"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_34

    :cond_4a
    const/4 v1, 0x3

    goto :goto_6a

    :sswitch_4c
    const-string v0, "key_mu_slimbody"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_34

    :sswitch_55
    const-string v0, "key_mu_monomer"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_34

    :cond_5e
    move v1, v3

    goto :goto_6a

    :sswitch_60
    const-string v1, "key_mu_stereo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    goto :goto_34

    :cond_69
    move v1, v0

    :cond_6a
    :goto_6a
    packed-switch v1, :pswitch_data_a6

    return-void

    .line 473
    :pswitch_6e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->updateUIWhenSettingChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 470
    :pswitch_74
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->updateUIWhenSettingChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 476
    :pswitch_7a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->updateUIWhenSettingChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 480
    :pswitch_80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateUIWhenSettingChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 462
    :cond_86
    :goto_86
    sget-object p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo p1, "updateUIWhenSettingChange,return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_90
    .sparse-switch
        -0x37803771 -> :sswitch_60
        0x2093e60 -> :sswitch_55
        0x709a336 -> :sswitch_4c
        0x489ebfa0 -> :sswitch_41
        0x7e425a67 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_80
        :pswitch_80
        :pswitch_7a
        :pswitch_74
        :pswitch_6e
    .end packed-switch
.end method


# virtual methods
.method public activityPause()V
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz v0, :cond_7

    .line 226
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->activityPause()V

    .line 228
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    if-eqz v0, :cond_e

    .line 229
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->activityPause()V

    .line 231
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    if-eqz p0, :cond_15

    .line 232
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->activityPause()V

    :cond_15
    return-void
.end method

.method public closeContrast(ZI)V
    .registers 4

    if-eqz p2, :cond_19

    const/4 v0, 0x1

    if-eq p2, v0, :cond_11

    const/4 v0, 0x2

    if-eq p2, v0, :cond_9

    goto :goto_20

    .line 114
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    if-eqz p0, :cond_20

    .line 115
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->closeContrast(Z)V

    return-void

    .line 109
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    if-eqz p0, :cond_20

    .line 110
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->closeContrast(Z)V

    return-void

    .line 104
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz p0, :cond_20

    .line 105
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->closeContrast(Z)V

    :cond_20
    :goto_20
    return-void
.end method

.method public enableUIStatus(Z)V
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    if-eqz v0, :cond_7

    .line 275
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->enableUIStatus(Z)V

    .line 277
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    if-eqz v0, :cond_e

    .line 278
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 280
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz v0, :cond_15

    .line 281
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 283
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    if-eqz p0, :cond_1c

    .line 284
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1c
    return-void
.end method

.method public getTitle(I)I
    .registers 3

    .line 172
    sget p0, Lcom/transsion/camera/feature/pmaster/R$string;->guide_blur_title:I

    if-eqz p1, :cond_16

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    goto :goto_16

    .line 184
    :cond_e
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$string;->makeup_mode_title:I

    return p0

    .line 181
    :cond_11
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$string;->guide_slimbody_title:I

    return p0

    .line 178
    :cond_14
    sget p0, Lcom/transsion/camera/featurelibs/commonwidget/R$string;->face_beauty_mode_title:I

    :cond_16
    :goto_16
    return p0
.end method

.method public hideDialog()V
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz v0, :cond_7

    .line 238
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->hideDialog()V

    .line 240
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    if-eqz v0, :cond_e

    .line 241
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->hideDialog()V

    .line 243
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    if-eqz p0, :cond_15

    .line 244
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->hideDialog()V

    :cond_15
    return-void
.end method

.method public hideHint()V
    .registers 2

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz v0, :cond_7

    .line 250
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->hideAutoHint()V

    .line 252
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    if-eqz v0, :cond_e

    .line 253
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->hideAutoHint()V

    .line 255
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    if-eqz v0, :cond_15

    .line 256
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->hideAutoHint()V

    .line 258
    :cond_15
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurOperator:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;

    if-eqz v0, :cond_1e

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->hideHint()V

    :cond_1e
    return-void
.end method

.method public notifyPhotoSizeChangeEnd()V
    .registers 2

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    if-eqz v0, :cond_7

    .line 405
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateBlurIconImgResource()V

    .line 407
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz v0, :cond_e

    .line 408
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->previewRatioChange()V

    .line 410
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    if-eqz p0, :cond_15

    .line 411
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->previewRatioChange()V

    :cond_15
    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz p0, :cond_9

    .line 291
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->onBackPressed()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 194
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 195
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    .line 196
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->makeup_root:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    .line 197
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->slimbody_root:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    .line 198
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->facebeauty_root:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    .line 199
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->blur_scroller_root:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    .line 200
    invoke-virtual {v1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->setBlurScrollerRootCallBack(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$IBlurScrollerRootCallBack;)V

    .line 201
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->pm_blur_root:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurRoot:Landroid/widget/FrameLayout;

    .line 202
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 203
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_bottom_title:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBottomTitle:Landroid/widget/TextView;

    .line 205
    :cond_50
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez v1, :cond_5e

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 206
    :cond_5e
    sget v1, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_bottom_title_container:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    .line 207
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_6b
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->updateLowLight(Z)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurOperator:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setBlurOperator(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurOperator:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setBlurOperator(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurOperator:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setBlurOperator(Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot$BlurOperator;)V

    .line 213
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate mStatusMonitor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onScrollerRulerViewMoveStart()V
    .registers 2

    .line 400
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbe

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onScrollerRulerViewMoveStop()V
    .registers 2

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0xbf

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public openContrast(I)V
    .registers 3

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_20

    .line 92
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    if-eqz p0, :cond_20

    .line 93
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->openContrast()V

    return-void

    .line 87
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    if-eqz p0, :cond_20

    .line 88
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->openContrast()V

    return-void

    .line 82
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz p0, :cond_20

    .line 83
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->openContrast()V

    :cond_20
    :goto_20
    return-void
.end method

.method public progressChanged(I)V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->progressChanged(I)V

    .line 128
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->progressChanged(I)V

    .line 132
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_27

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->progressChanged(I)V

    :cond_27
    return-void
.end method

.method public registerSettingData(Lcom/transsion/camera/app/common/setting/StatusMonitor;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/camera/app/common/setting/StatusMonitor;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "registerSettingData"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 312
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSettingDataList:Ljava/util/List;

    const/4 p1, 0x0

    .line 313
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    .line 314
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_105

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 315
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_106

    goto :goto_86

    :sswitch_3a
    const-string v3, "key_mu_face_beauty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    goto :goto_86

    :cond_43
    const/4 v4, 0x6

    goto :goto_86

    :sswitch_45
    const-string v3, "key_makeup_feature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    goto :goto_86

    :cond_4e
    const/4 v4, 0x5

    goto :goto_86

    :sswitch_50
    const-string v3, "key_portrait_flare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_59

    goto :goto_86

    :cond_59
    const/4 v4, 0x4

    goto :goto_86

    :sswitch_5b
    const-string v3, "key_mu_slimbody"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    goto :goto_86

    :cond_64
    const/4 v4, 0x3

    goto :goto_86

    :sswitch_66
    const-string v3, "key_mu_monomer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_86

    :cond_6f
    const/4 v4, 0x2

    goto :goto_86

    :sswitch_71
    const-string v3, "key_mu_stereo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    goto :goto_86

    :cond_7a
    const/4 v4, 0x1

    goto :goto_86

    :sswitch_7c
    const-string v3, "key_vip_stereo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    goto :goto_86

    :cond_85
    move v4, p1

    :goto_86
    const/4 v2, 0x0

    packed-switch v4, :pswitch_data_124

    goto :goto_20

    :pswitch_8b
    if-eqz v0, :cond_97

    .line 329
    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v4, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$SettingChangeCallbackImpl;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$SettingChangeCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI-IA;)V

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 331
    :cond_97
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 332
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    goto/16 :goto_20

    :pswitch_a7
    if-eqz v0, :cond_b3

    .line 318
    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v4, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$SettingChangeCallbackImpl;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$SettingChangeCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI-IA;)V

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 320
    :cond_b3
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 321
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    goto/16 :goto_20

    .line 347
    :pswitch_c3
    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mPortraitFlareSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto/16 :goto_20

    .line 324
    :pswitch_c9
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 325
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    goto/16 :goto_20

    :pswitch_d9
    if-eqz v0, :cond_e5

    .line 336
    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v4, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$SettingChangeCallbackImpl;

    invoke-direct {v4, p0, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI$SettingChangeCallbackImpl;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI-IA;)V

    invoke-interface {v3, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 338
    :cond_e5
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 339
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;Z)V

    goto/16 :goto_20

    .line 343
    :pswitch_f5
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 344
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;Z)V

    goto/16 :goto_20

    :cond_105
    return-void

    :sswitch_data_106
    .sparse-switch
        -0x5216c7c6 -> :sswitch_7c
        -0x37803771 -> :sswitch_71
        0x2093e60 -> :sswitch_66
        0x709a336 -> :sswitch_5b
        0x452e140a -> :sswitch_50
        0x489ebfa0 -> :sswitch_45
        0x7e425a67 -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_f5
        :pswitch_d9
        :pswitch_c9
        :pswitch_c3
        :pswitch_a7
        :pswitch_8b
    .end packed-switch
.end method

.method public releaseResource()V
    .registers 2

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz v0, :cond_7

    .line 554
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->releaseResource()V

    .line 557
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    if-eqz p0, :cond_e

    .line 558
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->releaseResource()V

    :cond_e
    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 518
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setCameraChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V
    .registers 2

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->setCameraChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$ISwitchDualAndMainCameraListener;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->setItemEnable(Z)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->setItemEnable(Z)V

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->setItemEnable(Z)V

    return-void
.end method

.method public setHideBottomListener(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;)V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->setHideBottomListener(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;)V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setHideBottomListener(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;)V

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setHideBottomListener(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;)V

    .line 387
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setHideBottomListener(Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/IFeature$IBottomPanelHideListener;)V

    return-void
.end method

.method public setModeSwitching(Z)V
    .registers 2

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->setModeSwitching(Z)V

    return-void
.end method

.method public setParentView(Landroid/view/ViewGroup;)V
    .registers 2

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz p0, :cond_7

    .line 523
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setParentView(Landroid/view/ViewGroup;)V

    :cond_7
    return-void
.end method

.method public setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V
    .registers 2

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->setRestartPreviewListener(Lcom/transsion/camera/app/common/IAppUIListener$IRestartPreviewListener;)V

    return-void
.end method

.method public setScreenFormType(II)V
    .registers 4

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz v0, :cond_7

    .line 504
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setScreenFormType(II)V

    .line 506
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    if-eqz v0, :cond_e

    .line 507
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setScreenFormType(II)V

    .line 509
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    if-eqz v0, :cond_15

    .line 510
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->setScreenFormType(II)V

    .line 512
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    if-eqz p0, :cond_1c

    .line 513
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->setScreenFormType(I)V

    :cond_1c
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
    .registers 5

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;)V

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;)V

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;)V

    .line 306
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/ITopUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V

    return-void
.end method

.method public showOrHideBottomUI(Z)V
    .registers 2

    .line 268
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz p0, :cond_7

    .line 269
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->showOrHide(Z)V

    :cond_7
    return-void
.end method

.method public unregisterSettingData()V
    .registers 5

    .line 356
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unregisterSettingData."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSettingDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 358
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v2, :cond_1f

    goto :goto_e

    :cond_1f
    const/4 v3, 0x0

    .line 361
    invoke-interface {v2, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 362
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_makeup_feature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 364
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_e

    .line 365
    :cond_35
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_mu_slimbody"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 366
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_e

    .line 367
    :cond_47
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_mu_face_beauty"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 368
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_e

    .line 369
    :cond_59
    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_mu_stereo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_vip_stereo"

    .line 370
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    iget-object v2, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    const-string v3, "key_mu_monomer"

    .line 371
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 372
    :cond_77
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V

    goto :goto_e

    :cond_7f
    return-void
.end method

.method public unregisterSettingListener()V
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->unregisterSettingListener()V

    .line 379
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->unregisterSettingListener()V

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->unregisterSettingListener()V

    return-void
.end method

.method public updateFeatureRv(I)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    if-eq p1, v0, :cond_37

    const/4 v2, 0x2

    if-eq p1, v2, :cond_22

    const/4 v2, 0x3

    if-eq p1, v2, :cond_d

    goto :goto_60

    .line 158
    :cond_d
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateFeatureUI(Z)V

    .line 159
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateFeatureUI(Z)V

    .line 160
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateFeatureUI(Z)V

    .line 161
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateFeatureUI(Z)V

    goto :goto_60

    .line 152
    :cond_22
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateFeatureUI(Z)V

    .line 153
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateFeatureUI(Z)V

    .line 154
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateFeatureUI(Z)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateFeatureUI(Z)V

    goto :goto_60

    .line 146
    :cond_37
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateFeatureUI(Z)V

    .line 147
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateFeatureUI(Z)V

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateFeatureUI(Z)V

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateFeatureUI(Z)V

    goto :goto_60

    .line 140
    :cond_4c
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    invoke-virtual {v2, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateFeatureUI(Z)V

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateFeatureUI(Z)V

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateFeatureUI(Z)V

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateFeatureUI(Z)V

    .line 166
    :goto_60
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBottomTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_6b

    .line 167
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->getTitle(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_6b
    return-void
.end method

.method public updateHintVisible()V
    .registers 1

    .line 563
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    if-eqz p0, :cond_7

    .line 564
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateHintVisible()V

    :cond_7
    return-void
.end method

.method public updateLayout(II)V
    .registers 5

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz v0, :cond_7

    .line 529
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateLayout(II)V

    .line 531
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    if-eqz v0, :cond_e

    .line 532
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->updateLayout(II)V

    .line 534
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    if-eqz v0, :cond_15

    .line 535
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateLayout(II)V

    .line 537
    :cond_15
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-eqz v0, :cond_28

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    .line 539
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 541
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    if-eqz v0, :cond_2f

    .line 542
    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateLayout(II)V

    .line 544
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBottomTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_40

    const/16 p1, 0x5a

    if-eq p2, p1, :cond_3b

    const/16 p1, 0x10e

    if-ne p2, p1, :cond_3c

    :cond_3b
    const/4 p2, 0x0

    :cond_3c
    int-to-float p1, p2

    .line 548
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    :cond_40
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 3

    .line 488
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    if-eqz v0, :cond_7

    .line 489
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;->updateLowLight(Z)V

    .line 491
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    if-eqz v0, :cond_e

    .line 492
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;->updateLowLight(Z)V

    .line 494
    :cond_e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBlurScrollerRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;

    if-eqz v0, :cond_15

    .line 495
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/BlurScrollerRoot;->updateLowLight(Z)V

    .line 497
    :cond_15
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mBottomTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_26

    if-eqz p1, :cond_22

    .line 498
    const-string p1, "#FF242424"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_23

    :cond_22
    const/4 p1, -0x1

    :goto_23
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_26
    return-void
.end method

.method public updateRootLayout()V
    .registers 4

    .line 217
    new-instance v0, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;-><init>()V

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->common_menu_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->setBottomMargin(I)Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mMakeUpRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/MakeUpRoot;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    .line 220
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mSlimbodyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterBottomUI;->mFaceBeautyRoot:Lcom/transsion/camera/feature/mode/pmaster/ui/FaceBeautyRoot;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/layout/LayoutParamsUpdater;->update(Landroid/view/View;)V

    return-void
.end method
