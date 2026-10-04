.class public Lcom/transsion/camera/app/ui/HintUIHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IHintUIHolder;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

.field private mIsQrcodeToastShow:Z

.field private mIsZooming:Z

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private final mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$N304uFRf8Fsk2_whu1P_Ub9T64o(Lcom/transsion/camera/app/ui/HintUIHolder;Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/HintUIHolder;->lambda$new$0(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHintUI(Lcom/transsion/camera/app/ui/HintUIHolder;)Lcom/transsion/camera/app/ui/AbstractHintUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/app/ui/HintUIHolder;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/HintUIHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HintUIHolder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/HintUIHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/AbstractHintUI;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mPreviewRect:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Lcom/transsion/camera/app/ui/HintUIHolder$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/HintUIHolder$1;-><init>(Lcom/transsion/camera/app/ui/HintUIHolder;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 66
    new-instance v0, Lcom/transsion/camera/app/ui/HintUIHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/HintUIHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/HintUIHolder;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    return-void
.end method

.method private getHintUI()Lcom/transsion/camera/app/ui/AbstractHintUI;
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    return-object p0
.end method

.method private getTwinkleGuildSettingKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 241
    const-string p0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_58

    const-string p0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 242
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_58

    .line 244
    :cond_11
    const-string p0, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 245
    const-string p0, "key_twinkle_guild_magic_sky_mode"

    return-object p0

    .line 246
    :cond_1c
    const-string p0, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 247
    const-string p0, "key_twinkle_guild_pmaster_mode"

    return-object p0

    .line 248
    :cond_27
    const-string p0, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 249
    const-string p0, "key_twinkle_guild_document_mode"

    return-object p0

    .line 250
    :cond_32
    const-string p0, "com.transsion.camera.ui.setting.flarecapture.FlareCaptureSettingUIEntry"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3d

    .line 251
    const-string p0, "key_twinkle_flare_capture_guide"

    return-object p0

    .line 252
    :cond_3d
    const-string/jumbo p0, "val_celebrity_scene_food"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_49

    .line 253
    const-string p0, "key_twinkle_guild_celebrity_food"

    return-object p0

    .line 254
    :cond_49
    const-string/jumbo p0, "val_celebrity_scene_sunset"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_55

    .line 255
    const-string p0, "key_twinkle_guild_celebrity_sunset"

    return-object p0

    .line 257
    :cond_55
    const-string p0, ""

    return-object p0

    .line 243
    :cond_58
    :goto_58
    const-string p0, "key_twinkle_guild_super_night_mode"

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;ZZ)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_2b

    .line 70
    :cond_3
    sget-object p2, Lcom/transsion/camera/app/ui/HintUIHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate: translation: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/HintUIHolder;->getHintUI()Lcom/transsion/camera/app/ui/AbstractHintUI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getRootView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 73
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method private setIsQrcodeToastShow(Z)V
    .registers 4

    .line 338
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mIsQrcodeToastShow:Z

    .line 339
    sget-object p1, Lcom/transsion/camera/app/ui/HintUIHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsQrcodeToastShow: mIsQrcodeToastShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mIsQrcodeToastShow:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private setIsZooming(Z)V
    .registers 4

    .line 333
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mIsZooming:Z

    .line 334
    sget-object p1, Lcom/transsion/camera/app/ui/HintUIHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsZooming: mIsZooming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mIsZooming:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 3

    .line 137
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    if-ne p1, v0, :cond_7

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGuideTwinkleDuration()J
    .registers 3

    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public getPreviewRect()Landroid/graphics/Rect;
    .registers 1

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_9

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_9
    return-void
.end method

.method public isTwinkleGuildShowed(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)Z
    .registers 8

    .line 168
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mIsZooming:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 169
    sget-object p0, Lcom/transsion/camera/app/ui/HintUIHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isTwinkleGuildShowed: zooming not show"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 172
    :cond_d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mIsQrcodeToastShow:Z

    if-eqz v0, :cond_19

    .line 173
    sget-object p0, Lcom/transsion/camera/app/ui/HintUIHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isTwinkleGuildShowed: qrcode toast show not show"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 176
    :cond_19
    const-string/jumbo v0, "value_none_guide"

    .line 177
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    .line 176
    const-string v3, "key_selling_point_guide_status"

    invoke-virtual {p1, v3, v0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "value_overlay_guide"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 178
    sget-object p0, Lcom/transsion/camera/app/ui/HintUIHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "isTwinkleGuildShowed: selling overlay guide show not show"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 182
    :cond_37
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/HintUIHolder;->getTwinkleGuildSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_43

    move p2, v1

    goto :goto_53

    .line 186
    :cond_43
    const-string p2, "off"

    .line 187
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {p1, p0, p2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "on"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    .line 189
    :goto_53
    const-string v0, "key_twinkle_guild_pmaster_mode"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "0"

    if-eqz v0, :cond_75

    if-nez p2, :cond_74

    .line 190
    const-string p2, "key_twinkle_guild_pmaster_mode_max"

    .line 191
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p1, p2, v4, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-lt p2, v3, :cond_72

    goto :goto_74

    :cond_72
    move p2, v2

    goto :goto_75

    :cond_74
    :goto_74
    move p2, v1

    .line 193
    :cond_75
    :goto_75
    const-string v0, "key_twinkle_flare_capture_guide"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_93

    if-nez p2, :cond_92

    .line 194
    const-string p2, "key_twinkle_flare_capture_guide_max"

    .line 195
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p1, p2, v4, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-lt p2, v3, :cond_90

    goto :goto_92

    :cond_90
    move p2, v2

    goto :goto_93

    :cond_92
    :goto_92
    move p2, v1

    .line 197
    :cond_93
    :goto_93
    const-string v0, "key_twinkle_guild_celebrity_food"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b1

    if-nez p2, :cond_b0

    .line 198
    const-string p2, "key_twinkle_guild_celebrity_food_max"

    .line 199
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {p1, p2, v4, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-lt p2, v3, :cond_ae

    goto :goto_b0

    :cond_ae
    move p2, v2

    goto :goto_b1

    :cond_b0
    :goto_b0
    move p2, v1

    .line 201
    :cond_b1
    :goto_b1
    const-string v0, "key_twinkle_guild_celebrity_sunset"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_ce

    if-nez p2, :cond_cd

    .line 202
    const-string p0, "key_twinkle_guild_celebrity_sunset_max"

    .line 203
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    .line 202
    invoke-virtual {p1, p0, v4, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v3, :cond_cc

    goto :goto_cd

    :cond_cc
    return v2

    :cond_cd
    :goto_cd
    return v1

    :cond_ce
    return p2
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-eq p1, v2, :cond_44

    const/16 v3, 0x18

    if-eq p1, v3, :cond_44

    const/16 v2, 0x1d

    if-eq p1, v2, :cond_3e

    const/16 v2, 0x30

    if-eq p1, v2, :cond_3e

    const/16 v2, 0x99

    if-eq p1, v2, :cond_3e

    const/16 v2, 0xc2

    if-eq p1, v2, :cond_3e

    const/16 v2, 0xcf

    if-eq p1, v2, :cond_3e

    const/16 v2, 0x16b

    if-eq p1, v2, :cond_3e

    const/16 v2, 0x177

    if-eq p1, v2, :cond_3e

    const/16 v2, 0x16d

    if-eq p1, v2, :cond_2f

    const/16 v3, 0x16e

    if-eq p1, v3, :cond_2f

    return-void

    :cond_2f
    if-ne p1, v2, :cond_3a

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->resetTwinkleGuide(Z)V

    .line 310
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/HintUIHolder;->setIsQrcodeToastShow(Z)V

    return-void

    .line 312
    :cond_3a
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/HintUIHolder;->setIsQrcodeToastShow(Z)V

    return-void

    .line 295
    :cond_3e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->resetTwinkleGuide(Z)V

    return-void

    :cond_44
    if-ne p1, v2, :cond_4f

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->resetTwinkleGuide(Z)V

    .line 301
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/HintUIHolder;->setIsZooming(Z)V

    return-void

    .line 303
    :cond_4f
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/HintUIHolder;->setIsZooming(Z)V

    return-void
.end method

.method public setTwinkleGuildState(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;)V
    .registers 7

    .line 209
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/HintUIHolder;->getTwinkleGuildSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 210
    const-string p2, "key_twinkle_guild_pmaster_mode"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "0"

    const/4 v1, 0x0

    if-eqz p2, :cond_2a

    .line 212
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    .line 211
    const-string v2, "key_twinkle_guild_pmaster_mode_max"

    invoke-virtual {p1, v2, v0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 213
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {p1, v2, p2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 216
    :cond_2a
    const-string p2, "key_twinkle_flare_capture_guide"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 218
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    .line 217
    const-string v2, "key_twinkle_flare_capture_guide_max"

    invoke-virtual {p1, v2, v0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 219
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 220
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {p1, v2, p2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    :cond_4d
    const-string p2, "key_twinkle_guild_celebrity_food"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 224
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    .line 223
    const-string v2, "key_twinkle_guild_celebrity_food_max"

    invoke-virtual {p1, v2, v0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 225
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 226
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {p1, v2, p2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    :cond_70
    const-string p2, "key_twinkle_guild_celebrity_sunset"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_93

    .line 230
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    .line 229
    const-string v2, "key_twinkle_guild_celebrity_sunset_max"

    invoke-virtual {p1, v2, v0, p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 231
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 232
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 234
    :cond_93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a2

    .line 235
    const-string p2, "on"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a2
    return-void
.end method

.method public unInit()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_9

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_9
    return-void
.end method

.method public updateAnalytics(ZZLjava/util/function/BiConsumer;)V
    .registers 5

    .line 263
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getTwinkleGuideMode()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p1, :cond_f

    if-nez p2, :cond_c

    goto :goto_f

    .line 266
    :cond_c
    const-string p0, ""

    goto :goto_57

    :cond_f
    :goto_f
    if-eqz p1, :cond_14

    .line 267
    const-string p1, "1"

    goto :goto_16

    :cond_14
    const-string p1, "0"

    .line 268
    :goto_16
    const-string p2, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_54

    const-string p2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 269
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_27

    goto :goto_54

    .line 271
    :cond_27
    const-string p2, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_33

    const/16 v0, 0x26

    :cond_31
    :goto_31
    move-object p0, p1

    goto :goto_57

    .line 273
    :cond_33
    const-string p2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3e

    const/16 v0, 0x25

    goto :goto_31

    .line 275
    :cond_3e
    const-string p2, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_49

    const/16 v0, 0x23

    goto :goto_31

    .line 277
    :cond_49
    const-string p2, "com.transsion.camera.ui.setting.flarecapture.FlareCaptureSettingUIEntry"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_31

    const/16 v0, 0x2b

    goto :goto_31

    :cond_54
    :goto_54
    const/16 v0, 0x24

    goto :goto_31

    :goto_57
    if-eqz p3, :cond_60

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_60
    return-void
.end method

.method public updateHintRootLayout(Ljava/util/function/Supplier;)Landroid/graphics/Rect;
    .registers 6

    .line 114
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getScreenFormType()I

    move-result v0

    if-nez v0, :cond_71

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1c

    const/16 v1, 0x63

    .line 118
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    :goto_1a
    add-int/2addr v0, v1

    goto :goto_23

    :cond_1c
    const/16 v1, 0xa

    .line 120
    invoke-static {v1}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v1

    goto :goto_1a

    .line 122
    :goto_23
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    .line 123
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getCurrentOrientation()I

    move-result v2

    const/4 v3, 0x0

    .line 122
    invoke-virtual {v1, v3, v2}, Lcom/transsion/camera/app/ui/AbstractHintUI;->shouldApplyBurstPMKAeAfLockMargin(II)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 124
    iget-object v1, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getBurstPMKAeAfLockMarginTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 125
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 127
    :cond_3b
    sget-object v1, Lcom/transsion/camera/app/ui/HintUIHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHintRootLayout: mPreviewRect = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", paddingTop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getModePlusBottomBarHeight()I

    move-result p0

    const/16 v0, 0x4b

    invoke-static {v0}, Lcom/transsion/camera/utils/UIUtils;->dp(I)I

    move-result v0

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_71
    return-object p1
.end method

.method public updateProgressBarLayout(IZI)V
    .registers 4

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAlwaysHintText()Landroid/widget/TextView;

    move-result-object p1

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getAutoHideHintText()Landroid/widget/TextView;

    move-result-object p0

    if-eqz p1, :cond_28

    if-nez p0, :cond_11

    goto :goto_28

    .line 104
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, 0x0

    .line 105
    iput p3, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 110
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public updateTwinkleGuideInfo(Ljava/lang/String;)Z
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getTwinkleGuideRoot()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    return v1

    .line 149
    :cond_10
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getTwinkleGuideTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 150
    const-string v2, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$string;->documents_hint:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 153
    :cond_32
    const-string v2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$string;->portrait_hint:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 156
    :cond_4e
    const-string/jumbo v2, "val_celebrity_scene_food"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$string;->celebrity_food_hint:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    .line 159
    :cond_6b
    const-string/jumbo v2, "val_celebrity_scene_sunset"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_88

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HintUIHolder;->mHintUI:Lcom/transsion/camera/app/ui/AbstractHintUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractHintUI;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/R$string;->celebrity_sunset_hint:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_88
    const/4 p0, 0x0

    return p0
.end method
