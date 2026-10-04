.class public Lcom/transsion/camera/app/ModeUIPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;


# static fields
.field private static final BOKEH_MODE_LIST:Ljava/util/List;

.field private static final PANO_MODE_LIST:Ljava/util/List;

.field private static final PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

.field private static final PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;

.field private static final SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

.field private static final SUPER_NIGHT_MODE_LIST:Ljava/util/List;

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAllEntryName:Ljava/util/Set;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBackCameraDefaultMode:Ljava/lang/String;

.field private final mBackCameraModeNames:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

.field private mFrontCameraDefaultMode:Ljava/lang/String;

.field private final mFrontCameraModeNames:[Ljava/lang/String;

.field private final mQuickCaptureModeNames:[Ljava/lang/String;

.field private final mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private mScreenRelayFlag:Z

.field private mSourceIntent:Landroid/content/Intent;

.field private mSourceIntentFlag:Z

.field private mSpecifyMode:Ljava/lang/String;

.field private mVIPModeNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 80
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeUIPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    const-string v5, "com.transsion.camera.feature.mode.bwportrait.BWPortraitModeEntry"

    const-string v6, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    const-string v1, "com.transsion.camera.feature.mode.vsdof.SdofPhotoModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.vsdof.BackSdofPhotoModeEntry"

    const-string v3, "com.transsion.camera.feature.mode.stblurmode.BackSTBlurModeEntry"

    const-string v4, "com.transsion.camera.feature.mode.stblurmode.STBlurModeEntry"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->BOKEH_MODE_LIST:Ljava/util/List;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    const-string v2, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->PANO_MODE_LIST:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->SUPER_NIGHT_MODE_LIST:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.mode.makeup.MakeUpModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    const-string v3, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    .line 129
    new-instance v0, Lcom/transsion/camera/app/ModeUIPolicy$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ModeUIPolicy$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

    .line 137
    new-instance v0, Lcom/transsion/camera/app/ModeUIPolicy$2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ModeUIPolicy$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Set;ZLcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/manager/FlipScreenRelay;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 10

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    .line 150
    iput-object p3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    .line 151
    iput-object p5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 152
    iput-object p7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

    .line 153
    iput-object p6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 154
    iput-object p8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 155
    sget p1, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 156
    sget p2, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 157
    sget p3, Lcom/transsion/camera/R$array;->quick_capture_support_mode:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mQuickCaptureModeNames:[Ljava/lang/String;

    .line 158
    sget p3, Lcom/transsion/camera/R$array;->vip_selfie_support_mode:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    if-nez p4, :cond_40

    .line 160
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object p5

    const-string p6, "key_ai_art_museum"

    invoke-virtual {p5, p6}, Lcom/transsion/camera/app/common/ai/AIArtManager;->featureSupport(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_4a

    .line 161
    :cond_40
    const-string p5, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-static {p1, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {p2, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_4a
    if-eqz p4, :cond_56

    .line 166
    const-string p5, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {p1, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {p2, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 170
    :cond_56
    invoke-direct {p0}, Lcom/transsion/camera/app/ModeUIPolicy;->screenPocket()Z

    move-result p5

    if-nez p5, :cond_83

    invoke-direct {p0}, Lcom/transsion/camera/app/ModeUIPolicy;->screenFlip()Z

    move-result p5

    if-eqz p5, :cond_63

    goto :goto_83

    :cond_63
    if-eqz p4, :cond_7e

    .line 181
    const-string p4, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {p1, p4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p5, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    invoke-static {p1, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    .line 183
    invoke-static {p2, p4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    goto :goto_8d

    .line 185
    :cond_7e
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    goto :goto_8d

    .line 171
    :cond_83
    :goto_83
    sget p1, Lcom/transsion/camera/R$array;->aod_build_in_features_mode_order:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    .line 188
    :goto_8d
    iput-object p3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mVIPModeNames:[Ljava/lang/String;

    .line 189
    sget p1, Lcom/transsion/camera/R$string;->back_cam_mode_default:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    .line 190
    sget p1, Lcom/transsion/camera/R$string;->front_cam_mode_default:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    return-void
.end method

.method private findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_27

    .line 234
    array-length v0, p1

    if-nez v0, :cond_7

    goto :goto_27

    :cond_7
    if-eqz p2, :cond_27

    .line 237
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_27

    .line 240
    :cond_10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_14
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-object v0

    :cond_27
    :goto_27
    return-object p0
.end method

.method private getNextMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 519
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto/16 :goto_85

    .line 523
    :cond_a
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_54

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_54

    if-eqz p4, :cond_2f

    .line 525
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getNextMode vipPreCameraFace:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p3

    .line 528
    :cond_2f
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 529
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    return-object p1

    .line 533
    :cond_54
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_85

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_85

    .line 534
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 535
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6a

    return-object p1

    :cond_85
    :goto_85
    return-object p3
.end method

.method private getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 510
    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 511
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1f

    const/4 p0, 0x0

    .line 512
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNextPanoMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 493
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mVIPModeNames:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_22

    .line 495
    :cond_17
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 498
    :goto_22
    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 499
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_34

    const/4 p0, 0x0

    .line 500
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSpecifyCameraMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 249
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 250
    const-string p3, "DocumentMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 251
    const-string p2, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 252
    :cond_13
    const-string p3, "SuperNightMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_22

    .line 253
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->SUPER_NIGHT_MODE_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 254
    :cond_22
    const-string p3, "PortraitMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_219

    const-string p3, "BokehMode"

    .line 255
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_219

    const-string p3, "BokehOffMode"

    .line 256
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3c

    goto/16 :goto_219

    .line 258
    :cond_3c
    const-string p3, "FaceBeautyMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_212

    const-string p3, "FaceBeauty"

    .line 259
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_212

    const-string p3, "SlimBody"

    .line 260
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_212

    const-string p3, "MultiFaceBeautyMode"

    .line 261
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_212

    const-string p3, "MultiFaceBeautyOffMode"

    .line 262
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_66

    goto/16 :goto_212

    .line 264
    :cond_66
    const-string p3, "FunVideoMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_20b

    const-string p3, "FunVideoOffMode"

    .line 265
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_20b

    const-string p3, "FrontFunVideoMode"

    .line 266
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_20b

    const-string p3, "FrontFunVideoOffMode"

    .line 267
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_88

    goto/16 :goto_20b

    .line 269
    :cond_88
    const-string p3, "ASDMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "ASDBackWideSuperDefinition"

    .line 270
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "ASDFrontWideSuperDefinition"

    .line 271
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "HDRMode"

    .line 272
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "HDROffMode"

    .line 273
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "SmartFocusOn"

    .line 274
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "SuperDefinitionOffMode"

    .line 275
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "SuperDefinitionOnMode"

    .line 276
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "MacroMode"

    .line 277
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "WideAngleMode"

    .line 278
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "TeleMode"

    .line 279
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "FrontASDMode"

    .line 280
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_204

    const-string p3, "ASDLivePhoto"

    .line 281
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f2

    goto/16 :goto_204

    .line 283
    :cond_f2
    const-string p3, "VideoMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fd

    const-string p3, "VideoModeWithPortrait"

    .line 284
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fd

    const-string p3, "VideoModeWithBack4KAnti"

    .line 285
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fd

    const-string p3, "VideoModeWithBackHighFPSAnti"

    .line 286
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fd

    const-string p3, "VideoEnhanceOnMode"

    .line 287
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11c

    goto/16 :goto_1fd

    .line 289
    :cond_11c
    const-string p3, "ProfessionalMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12b

    .line 290
    const-string p2, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 291
    :cond_12b
    const-string p3, "MovieMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13a

    .line 292
    const-string p2, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 293
    :cond_13a
    const-string p3, "HighDefinitionMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    if-eqz p3, :cond_149

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 295
    :cond_149
    const-string p3, "MagicSkyMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_158

    .line 296
    const-string p2, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 297
    :cond_158
    const-string p3, "VlogMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_167

    .line 298
    const-string p2, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 299
    :cond_167
    const-string p3, "MotionCapture"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_176

    .line 300
    const-string p2, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 301
    :cond_176
    const-string p3, "AigcMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_185

    .line 302
    const-string p2, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 303
    :cond_185
    const-string p3, "AIArtMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_194

    .line 304
    const-string p2, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 305
    :cond_194
    const-string p3, "SuperDefinition"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a1

    .line 306
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 307
    :cond_1a1
    const-string p3, "DualVideo"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b0

    .line 308
    const-string p2, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :cond_1b0
    const-string p3, "TimeLapse"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1bf

    .line 310
    const-string p2, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 311
    :cond_1bf
    const-string p3, "SuperMacro"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1ce

    .line 312
    const-string p2, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 313
    :cond_1ce
    const-string p3, "UnderwaterMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1dd

    .line 314
    const-string p2, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 315
    :cond_1dd
    const-string p3, "UnderwaterVideoMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1ec

    .line 316
    const-string p2, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 317
    :cond_1ec
    const-string p3, "StreetPhotoMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1fb

    .line 318
    const-string p2, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1fb
    const/4 p0, 0x0

    return-object p0

    .line 288
    :cond_1fd
    :goto_1fd
    const-string p2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 282
    :cond_204
    :goto_204
    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 268
    :cond_20b
    :goto_20b
    const-string p2, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_212
    :goto_212
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 257
    :cond_219
    :goto_219
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->BOKEH_MODE_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isNextCameraHasSameMode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 545
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 546
    const-string p1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p0, 0x1

    return p0

    .line 549
    :cond_e
    invoke-static {p0, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private screenFlip()Z
    .registers 2

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x7

    if-ne v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private screenPocket()Z
    .registers 2

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v0, 0x6

    if-ne v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBackModes()[Ljava/lang/String;
    .registers 1

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_21d

    .line 326
    const-string v1, "open_camera_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const-string v2, "com.android.systemui.camera_launch_source"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 329
    const-string v4, "SpecifyMode"

    const-string v5, "key_one_click_efficiency"

    const/4 v6, 0x0

    if-ne v2, v1, :cond_bb

    iget-boolean v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v2, :cond_bb

    .line 331
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultStartStreetPhoto:Z

    const-string/jumbo v7, "value_start_flash_snap"

    const-string/jumbo v8, "value_start_street_photo"

    if-eqz v2, :cond_41

    .line 332
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsStreetSnapModeSupported:Z

    if-eqz v2, :cond_41

    .line 333
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v8, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_63

    .line 334
    :cond_41
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 335
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v7, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_63

    .line 337
    :cond_56
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v9, "value_start_aicam"

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v9, v10}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 340
    :goto_63
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 342
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_af

    .line 350
    const-string v2, "StreetPhotoMode"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_bb

    .line 351
    iput-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSpecifyMode:Ljava/lang/String;

    .line 352
    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v7, :cond_84

    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isIntentFromNegativeScreen()Z

    move-result v7

    if-eqz v7, :cond_84

    .line 353
    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v7, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 355
    :cond_84
    invoke-direct {p0, p1, v2, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->getSpecifyCameraMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    sget-object v7, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSpecifyCameraMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 357
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_bb

    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz v7, :cond_bb

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bb

    return-object v2

    .line 344
    :cond_af
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8

    .line 345
    const-string p0, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    return-object p0

    .line 347
    :cond_b8
    const-string p0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    return-object p0

    :cond_bb
    const/4 v2, 0x5

    if-ne v2, v1, :cond_ea

    .line 363
    iget-boolean v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v1, :cond_ea

    .line 364
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v0, "value_start_underwater"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 365
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 366
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_ONE_CLICK_EFFICIENCY :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    const-string p0, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    return-object p0

    .line 369
    :cond_ea
    const-string v1, "FaceBeauty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    iget-boolean v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v1, :cond_119

    .line 370
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 371
    sget-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 372
    sget-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 373
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    return-object p1

    .line 375
    :cond_119
    const-string v1, "Video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    if-eqz v0, :cond_12a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v0, :cond_12a

    .line 376
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    return-object v1

    .line 379
    :cond_12a
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 380
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 381
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21a

    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 382
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    goto/16 :goto_21a

    .line 384
    :cond_144
    const-string v2, "android.media.action.FANS_IMAGE_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 385
    const-string p0, "com.transsion.camera.feature.mode.autoscenedetection.IntentASDModeEntry"

    return-object p0

    .line 386
    :cond_14f
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 387
    const-string p0, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    return-object p0

    .line 388
    :cond_15a
    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_219

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 389
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const-string v2, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    .line 390
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_176

    goto/16 :goto_219

    .line 398
    :cond_176
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_190

    .line 400
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/transsion/camera/app/intent/IntentParser;->getNFCSpecifyMode(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :cond_190
    if-nez v0, :cond_1a0

    .line 403
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a0

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/transsion/camera/app/intent/IntentParser;->getShortcutSpecifyMode(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 407
    :cond_1a0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e2

    .line 408
    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSpecifyMode:Ljava/lang/String;

    .line 409
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_1b7

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isIntentFromNegativeScreen()Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 410
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 412
    :cond_1b7
    invoke-direct {p0, p1, v0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->getSpecifyCameraMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    sget-object v1, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start specify camera mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e2

    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz v1, :cond_1e2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e2

    return-object v0

    .line 419
    :cond_1e2
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const-string v1, "ModeFromAod"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21d

    .line 421
    sget-object v1, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start camera mode from aod, cameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", aodMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz v1, :cond_21d

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21d

    return-object v0

    :cond_219
    :goto_219
    return-object v1

    .line 383
    :cond_21a
    :goto_21a
    const-string p0, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    return-object p0

    .line 428
    :cond_21d
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

    if-eqz v0, :cond_267

    .line 429
    invoke-virtual {v0}, Lcom/transsion/camera/manager/FlipScreenRelay;->getLastModeName()Ljava/lang/String;

    move-result-object v0

    .line 430
    iget-boolean v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mScreenRelayFlag:Z

    if-nez v1, :cond_267

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_267

    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

    invoke-virtual {v1}, Lcom/transsion/camera/manager/FlipScreenRelay;->screenFlipRelay()Z

    move-result v1

    if-eqz v1, :cond_267

    const/4 v1, 0x1

    .line 431
    iput-boolean v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mScreenRelayFlag:Z

    .line 432
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    sget-object v1, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start flip screen relay, cameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", screenRelayMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 435
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_267

    return-object v0

    .line 442
    :cond_267
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_270

    .line 443
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    return-object p0

    .line 445
    :cond_270
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFrontModes()[Ljava/lang/String;
    .registers 1

    .line 584
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getModeNames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 554
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    return-object p0

    .line 556
    :cond_9
    const-string v0, "quick_capture_mode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 557
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mQuickCaptureModeNames:[Ljava/lang/String;

    return-object p0

    .line 558
    :cond_14
    const-string/jumbo v0, "vip_mode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 559
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mVIPModeNames:[Ljava/lang/String;

    return-object p0

    .line 561
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getRestoreModeByFacing(I)Ljava/lang/String;
    .registers 2

    .line 451
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 452
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    return-object p0

    .line 454
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method public getSpecifyMode()Ljava/lang/String;
    .registers 1

    .line 574
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSpecifyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p5, :cond_3

    return-object p5

    .line 464
    :cond_3
    const-string p5, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    invoke-static {p5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_2a

    sget-object p5, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

    .line 465
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_25

    sget-object p5, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;

    .line 466
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2a

    .line 467
    :cond_25
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    .line 468
    :cond_2a
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->PANO_MODE_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_37

    .line 469
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextPanoMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    .line 470
    :cond_37
    invoke-direct {p0, p3, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->isNextCameraHasSameMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_66

    .line 473
    :cond_3e
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->BOKEH_MODE_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4b

    .line 474
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    .line 475
    :cond_4b
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_58

    .line 476
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    .line 477
    :cond_58
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->SUPER_NIGHT_MODE_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 478
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    :cond_65
    const/4 p2, 0x0

    :goto_66
    if-eqz p2, :cond_73

    .line 481
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz p1, :cond_73

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    return-object p2

    .line 485
    :cond_73
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .registers 1

    return-void
.end method

.method public setSourceIntent(Landroid/content/Intent;)V
    .registers 2

    .line 567
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const/4 p1, 0x1

    .line 568
    iput-boolean p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 569
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mSourceIntentFlag = true"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateMetaInfo(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method
