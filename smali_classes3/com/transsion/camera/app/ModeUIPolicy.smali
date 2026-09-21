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
.field private final CAMERA_MODE_REORDER_GAP:I

.field private final MIN_MODE_NUM:I

.field private final mAllEntryName:Ljava/util/Set;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBackCameraDefaultMode:Ljava/lang/String;

.field private final mBackCameraModeNames:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private final mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

.field private mFrontCameraDefaultMode:Ljava/lang/String;

.field private final mFrontCameraModeNames:[Ljava/lang/String;

.field private mIsSecureCamera:Z

.field private mIsSmartMode:Z

.field private mNewModeOrder:[Ljava/lang/String;

.field private final mQuickCaptureModeNames:[Ljava/lang/String;

.field private final mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private mScreenRelayFlag:Z

.field private mSmartBackCameraModeNames:[Ljava/lang/String;

.field private mSmartFrontCameraModeNames:[Ljava/lang/String;

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

    .line 111
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

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.burstpmk.BurstPMKModeEntry"

    const-string v2, "com.transsion.camera.feature.wideselfie.WideSelfieModeEntry"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->PANO_MODE_LIST:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    const-string v2, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->SUPER_NIGHT_MODE_LIST:Ljava/util/List;

    .line 130
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

    .line 136
    new-instance v0, Lcom/transsion/camera/app/ModeUIPolicy$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/ModeUIPolicy$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

    .line 144
    new-instance v0, Lcom/transsion/camera/app/ModeUIPolicy$2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ModeUIPolicy$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Set;ZLcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/storage/DataStore;Lcom/transsion/camera/manager/FlipScreenRelay;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 10

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    .line 157
    iput-object p3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    .line 158
    iput-boolean p4, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSecureCamera:Z

    .line 159
    iput-object p5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 160
    iput-object p7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

    .line 161
    iput-object p6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 162
    iput-object p8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 163
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mInitModesNumberInTab:I

    iput p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    .line 164
    sget p1, Lcom/transsion/camera/R$integer;->camera_mode_reorder_gap:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    .line 165
    sget p1, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 166
    sget p2, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 167
    sget p3, Lcom/transsion/camera/R$array;->quick_capture_support_mode:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mQuickCaptureModeNames:[Ljava/lang/String;

    .line 168
    sget p3, Lcom/transsion/camera/R$array;->vip_selfie_support_mode:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    if-nez p4, :cond_55

    .line 170
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object p5

    const-string p6, "key_ai_art_museum"

    invoke-virtual {p5, p6}, Lcom/transsion/camera/app/common/ai/AIArtManager;->featureSupport(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_5f

    .line 171
    :cond_55
    const-string p5, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-static {p1, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {p2, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :cond_5f
    if-eqz p4, :cond_6b

    .line 176
    const-string p5, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-static {p1, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {p2, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 180
    :cond_6b
    invoke-direct {p0}, Lcom/transsion/camera/app/ModeUIPolicy;->screenPocket()Z

    move-result p5

    if-nez p5, :cond_98

    invoke-direct {p0}, Lcom/transsion/camera/app/ModeUIPolicy;->screenFlip()Z

    move-result p5

    if-eqz p5, :cond_78

    goto :goto_98

    :cond_78
    if-eqz p4, :cond_93

    .line 191
    const-string p4, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {p1, p4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p5, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    invoke-static {p1, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    .line 193
    invoke-static {p2, p4}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p5}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    goto :goto_a2

    .line 195
    :cond_93
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    goto :goto_a2

    .line 181
    :cond_98
    :goto_98
    sget p1, Lcom/transsion/camera/R$array;->aod_build_in_features_mode_order:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 182
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    .line 198
    :goto_a2
    iput-object p3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mVIPModeNames:[Ljava/lang/String;

    .line 199
    sget p1, Lcom/transsion/camera/R$string;->back_cam_mode_default:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    .line 200
    sget p1, Lcom/transsion/camera/R$string;->front_cam_mode_default:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    return-void
.end method

.method private doSwapArrayElement(II)V
    .registers 5

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v0, p0, p1

    .line 348
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 349
    aput-object v0, p0, p2

    return-void
.end method

.method private executeSmartModeOrder(I)[Ljava/lang/String;
    .registers 12

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeSmartModeOrder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    if-nez p1, :cond_41

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/R$array;->build_in_features_back_mode_order:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    goto :goto_4d

    .line 234
    :cond_41
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/camera/R$array;->build_in_features_front_mode_order:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 237
    :goto_4d
    const-string v1, "build_in_features_mode_order"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->decodeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, ","

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_63

    .line 239
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    move p1, v6

    goto :goto_74

    .line 241
    :cond_63
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    .line 242
    array-length v2, v2

    array-length v3, p1

    if-eq v2, v3, :cond_71

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    move p1, v5

    goto :goto_72

    :cond_71
    move p1, v6

    .line 246
    :goto_72
    iput-boolean v5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    .line 250
    :goto_74
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v3, "off"

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    const-string v8, "key_smart_mode_order"

    invoke-virtual {v2, v8, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 251
    const-string v3, "on"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1bc

    .line 252
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v3, v2

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    if-le v3, v7, :cond_c9

    .line 253
    aget-object v2, v2, v6

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ModeUIPolicy;->getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I

    move-result v2

    .line 254
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    sub-int/2addr v7, v5

    aget-object v3, v3, v7

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I

    move-result v3

    .line 255
    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_a4
    iget-object v8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v9, v8

    if-ge v7, v9, :cond_c9

    .line 256
    aget-object v8, v8, v7

    invoke-direct {p0, v0, v8}, Lcom/transsion/camera/app/ModeUIPolicy;->getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I

    move-result v8

    .line 257
    iget-object v9, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-direct {p0, v9}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c0

    sub-int/2addr v8, v2

    .line 258
    iget v9, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v8, v9, :cond_c6

    :goto_be
    move p1, v5

    goto :goto_c9

    :cond_c0
    sub-int/2addr v8, v3

    .line 263
    iget v9, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v8, v9, :cond_c6

    goto :goto_be

    :cond_c6
    add-int/lit8 v7, v7, 0x1

    goto :goto_a4

    :cond_c9
    :goto_c9
    if-eqz p1, :cond_1bc

    .line 272
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_cd
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v5

    if-ge p1, v2, :cond_104

    move v2, v6

    .line 273
    :goto_d4
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v7, v3

    sub-int/2addr v7, v5

    sub-int/2addr v7, p1

    if-ge v2, v7, :cond_101

    .line 274
    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    aget-object v3, v3, v7

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I

    move-result v3

    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v8, v2

    aget-object v7, v7, v8

    invoke-direct {p0, v0, v7}, Lcom/transsion/camera/app/ModeUIPolicy;->getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v3, v7

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v3, v7, :cond_fe

    .line 276
    iget v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int v7, v2, v3

    add-int/2addr v3, v2

    add-int/2addr v3, v5

    invoke-direct {p0, v7, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    :cond_fe
    add-int/lit8 v2, v2, 0x1

    goto :goto_d4

    :cond_101
    add-int/lit8 p1, p1, 0x1

    goto :goto_cd

    .line 281
    :cond_104
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_106
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v3, v2

    if-ge p1, v3, :cond_12f

    .line 282
    aget-object v2, v2, p1

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 283
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ModeUIPolicy;->getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v2, v3, :cond_12c

    .line 285
    invoke-direct {p0, v6, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    goto :goto_12f

    :cond_12c
    add-int/lit8 p1, p1, 0x1

    goto :goto_106

    .line 291
    :cond_12f
    :goto_12f
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_131
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v3, v2

    if-ge p1, v3, :cond_160

    .line 292
    aget-object v2, v2, p1

    invoke-direct {p0, v2}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15d

    .line 293
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/ModeUIPolicy;->getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    sub-int/2addr v7, v5

    aget-object v3, v3, v7

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v2, v3, :cond_15d

    .line 295
    iget v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    sub-int/2addr v2, v5

    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    goto :goto_160

    :cond_15d
    add-int/lit8 p1, p1, 0x1

    goto :goto_131

    .line 301
    :cond_160
    :goto_160
    iget p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_162
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v3, v2

    sub-int/2addr v3, v5

    if-ge p1, v3, :cond_199

    move v2, v6

    .line 302
    :goto_169
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v7, v3

    sub-int/2addr v7, v5

    sub-int/2addr v7, p1

    if-ge v2, v7, :cond_196

    .line 303
    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    aget-object v3, v3, v7

    invoke-direct {p0, v0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I

    move-result v3

    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    iget v8, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int/2addr v8, v2

    aget-object v7, v7, v8

    invoke-direct {p0, v0, v7}, Lcom/transsion/camera/app/ModeUIPolicy;->getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v3, v7

    iget v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->CAMERA_MODE_REORDER_GAP:I

    if-lt v3, v7, :cond_193

    .line 305
    iget v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    add-int v7, v2, v3

    add-int/2addr v3, v2

    add-int/2addr v3, v5

    invoke-direct {p0, v7, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    :cond_193
    add-int/lit8 v2, v2, 0x1

    goto :goto_169

    :cond_196
    add-int/lit8 p1, p1, 0x1

    goto :goto_162

    .line 310
    :cond_199
    iput-boolean v5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    aget-object v2, v2, v6

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v2, v5

    .line 312
    :goto_1a3
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1b5

    .line 313
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a3

    .line 315
    :cond_1b5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 319
    :cond_1bc
    iget-boolean p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSecureCamera:Z

    if-eqz p1, :cond_239

    .line 320
    const-string p1, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    const-string v0, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    const-string v1, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    const-string v2, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    filled-new-array {v1, v2, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f6

    .line 322
    iget v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_1d8
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1f6

    .line 323
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f3

    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f3

    .line 324
    invoke-direct {p0, v6, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    goto :goto_1f6

    :cond_1f3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d8

    .line 329
    :cond_1f6
    :goto_1f6
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v1, v0

    iget v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    if-le v1, v2, :cond_229

    sub-int/2addr v2, v5

    aget-object v0, v0, v2

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_229

    .line 330
    iget v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    :goto_208
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_229

    .line 331
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_226

    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ModeUIPolicy;->isVideoClassModes(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_226

    .line 332
    iget v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->MIN_MODE_NUM:I

    sub-int/2addr v1, v5

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->doSwapArrayElement(II)V

    goto :goto_229

    :cond_226
    add-int/lit8 v0, v0, 0x1

    goto :goto_208

    :cond_229
    :goto_229
    const/4 v0, 0x4

    if-ge v6, v0, :cond_239

    .line 337
    aget-object v0, p1, v6

    .line 338
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->removeString([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    goto :goto_229

    .line 341
    :cond_239
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mNewModeOrder:[Ljava/lang/String;

    return-object p0
.end method

.method private findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_27

    .line 386
    array-length v0, p1

    if-nez v0, :cond_7

    goto :goto_27

    :cond_7
    if-eqz p2, :cond_27

    .line 389
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_27

    .line 392
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

    .line 393
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-object v0

    :cond_27
    :goto_27
    return-object p0
.end method

.method private getDataStoreIntValue(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;)I
    .registers 3

    const/4 p0, 0x0

    .line 223
    invoke-virtual {p1, p2, p0}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getNextMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 670
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto/16 :goto_85

    .line 674
    :cond_a
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_54

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_54

    if-eqz p4, :cond_2f

    .line 676
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

    .line 679
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

    .line 680
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    return-object p1

    .line 684
    :cond_54
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_85

    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_85

    .line 685
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

    .line 686
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

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 661
    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 662
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1f

    const/4 p0, 0x0

    .line 663
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

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 643
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->isVIPSelfieMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 644
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mVIPModeNames:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_22

    .line 646
    :cond_17
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 649
    :goto_22
    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 650
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_34

    const/4 p0, 0x0

    .line 651
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

    .line 401
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 402
    const-string p3, "DocumentMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 403
    const-string p2, "com.transsion.camera.feature.mode.doc.DocumentEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 404
    :cond_13
    const-string p3, "SuperNightMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_22

    .line 405
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->SUPER_NIGHT_MODE_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 406
    :cond_22
    const-string p3, "PortraitMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_211

    const-string p3, "BokehMode"

    .line 407
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_211

    const-string p3, "BokehOffMode"

    .line 408
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3c

    goto/16 :goto_211

    .line 410
    :cond_3c
    const-string p3, "FaceBeautyMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_20a

    const-string p3, "FaceBeauty"

    .line 411
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_20a

    const-string p3, "SlimBody"

    .line 412
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_20a

    const-string p3, "MultiFaceBeautyMode"

    .line 413
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_20a

    const-string p3, "MultiFaceBeautyOffMode"

    .line 414
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_66

    goto/16 :goto_20a

    .line 416
    :cond_66
    const-string p3, "FunVideoMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_203

    const-string p3, "FunVideoOffMode"

    .line 417
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_203

    const-string p3, "FrontFunVideoMode"

    .line 418
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_203

    const-string p3, "FrontFunVideoOffMode"

    .line 419
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_88

    goto/16 :goto_203

    .line 421
    :cond_88
    const-string p3, "ASDMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fc

    const-string p3, "ASDBackWideSuperDefinition"

    .line 422
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fc

    const-string p3, "ASDFrontWideSuperDefinition"

    .line 423
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fc

    const-string p3, "HDRMode"

    .line 424
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fc

    const-string p3, "HDROffMode"

    .line 425
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fc

    const-string p3, "SmartFocusOn"

    .line 426
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fc

    const-string p3, "SuperDefinitionOffMode"

    .line 427
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fc

    const-string p3, "SuperDefinitionOnMode"

    .line 428
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fc

    const-string p3, "MacroMode"

    .line 429
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fc

    const-string p3, "WideAngleMode"

    .line 430
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fc

    const-string p3, "TeleMode"

    .line 431
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1fc

    const-string p3, "FrontASDMode"

    .line 432
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_ea

    goto/16 :goto_1fc

    .line 434
    :cond_ea
    const-string p3, "VideoMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1f5

    const-string p3, "VideoModeWithPortrait"

    .line 435
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1f5

    const-string p3, "VideoModeWithBack4KAnti"

    .line 436
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1f5

    const-string p3, "VideoModeWithBackHighFPSAnti"

    .line 437
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1f5

    const-string p3, "VideoEnhanceOnMode"

    .line 438
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_114

    goto/16 :goto_1f5

    .line 440
    :cond_114
    const-string p3, "ProfessionalMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_123

    .line 441
    const-string p2, "com.transsion.camera.feature.mode.professional.ProfessionalModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 442
    :cond_123
    const-string p3, "MovieMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_132

    .line 443
    const-string p2, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 444
    :cond_132
    const-string p3, "HighDefinitionMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "com.transsion.camera.feature.mode.highdefinition.HighDefinitionModeEntry"

    if-eqz p3, :cond_141

    .line 445
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 446
    :cond_141
    const-string p3, "MagicSkyMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_150

    .line 447
    const-string p2, "com.transsion.camera.feature.mode.magicsky.MagicSkyModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 448
    :cond_150
    const-string p3, "VlogMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_15f

    .line 449
    const-string p2, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 450
    :cond_15f
    const-string p3, "MotionCapture"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16e

    .line 451
    const-string p2, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 452
    :cond_16e
    const-string p3, "AigcMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_17d

    .line 453
    const-string p2, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 454
    :cond_17d
    const-string p3, "AIArtMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_18c

    .line 455
    const-string p2, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 456
    :cond_18c
    const-string p3, "SuperDefinition"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_199

    .line 457
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 458
    :cond_199
    const-string p3, "DualVideo"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1a8

    .line 459
    const-string p2, "com.transsion.camera.feature.mode.dualvideo.DualVideoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 460
    :cond_1a8
    const-string p3, "TimeLapse"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1b7

    .line 461
    const-string p2, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 462
    :cond_1b7
    const-string p3, "SuperMacro"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1c6

    .line 463
    const-string p2, "com.transsion.camera.feature.mode.macro.MacroModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 464
    :cond_1c6
    const-string p3, "UnderwaterMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1d5

    .line 465
    const-string p2, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 466
    :cond_1d5
    const-string p3, "UnderwaterVideoMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1e4

    .line 467
    const-string p2, "com.transsion.camera.feature.mode.underwater.UnderwaterVideoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 468
    :cond_1e4
    const-string p3, "StreetPhotoMode"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f3

    .line 469
    const-string p2, "com.transsion.camera.feature.mode.streetphoto.StreetPhotoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f3
    const/4 p0, 0x0

    return-object p0

    .line 439
    :cond_1f5
    :goto_1f5
    const-string p2, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 433
    :cond_1fc
    :goto_1fc
    const-string p2, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 420
    :cond_203
    :goto_203
    const-string p2, "com.transsion.camera.feature.funvideo.mode.FunVideoModeEntry"

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 415
    :cond_20a
    :goto_20a
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 409
    :cond_211
    :goto_211
    sget-object p2, Lcom/transsion/camera/app/ModeUIPolicy;->BOKEH_MODE_LIST:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isNextCameraHasSameMode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 696
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 697
    const-string p1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p0, 0x1

    return p0

    .line 700
    :cond_e
    invoke-static {p0, p2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isVideoClassModes(Ljava/lang/String;)Z
    .registers 3

    .line 353
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/transsion/camera/R$array;->video_mode_category:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private screenFlip()Z
    .registers 2

    .line 213
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

    .line 209
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

    .line 747
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 758
    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 759
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "frontmodesstring"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 761
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "backmodesstring"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 762
    const-string v1, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    .line 763
    const-string v3, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 764
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3a
    :goto_3a
    if-nez v0, :cond_41

    .line 768
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 770
    :cond_41
    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    if-eqz v0, :cond_21d

    .line 477
    const-string v1, "open_camera_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const-string v2, "com.android.systemui.camera_launch_source"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 480
    const-string v4, "SpecifyMode"

    const-string v5, "key_one_click_efficiency"

    const/4 v6, 0x0

    if-ne v2, v1, :cond_bb

    iget-boolean v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v2, :cond_bb

    .line 482
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mDefaultStartStreetPhoto:Z

    const-string/jumbo v7, "value_start_flash_snap"

    const-string/jumbo v8, "value_start_street_photo"

    if-eqz v2, :cond_41

    .line 483
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsStreetSnapModeSupported:Z

    if-eqz v2, :cond_41

    .line 484
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v8, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_63

    .line 485
    :cond_41
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 486
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v7, v9}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_63

    .line 488
    :cond_56
    iget-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v9, "value_start_aicam"

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v5, v9, v10}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    :goto_63
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 493
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_af

    .line 501
    const-string v2, "StreetPhotoMode"

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_bb

    .line 502
    iput-object v2, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSpecifyMode:Ljava/lang/String;

    .line 503
    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v7, :cond_84

    invoke-interface {v7}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isIntentFromNegativeScreen()Z

    move-result v7

    if-eqz v7, :cond_84

    .line 504
    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v7, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 506
    :cond_84
    invoke-direct {p0, p1, v2, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->getSpecifyCameraMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 507
    sget-object v7, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSpecifyCameraMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 508
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_bb

    iget-object v7, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz v7, :cond_bb

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bb

    return-object v2

    .line 495
    :cond_af
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8

    .line 496
    const-string p0, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    return-object p0

    .line 498
    :cond_b8
    const-string p0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    return-object p0

    :cond_bb
    const/4 v2, 0x5

    if-ne v2, v1, :cond_ea

    .line 514
    iget-boolean v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v1, :cond_ea

    .line 515
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string/jumbo v0, "value_start_underwater"

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 516
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 517
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_ONE_CLICK_EFFICIENCY :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 518
    const-string p0, "com.transsion.camera.feature.mode.underwater.UnderwaterModeEntry"

    return-object p0

    .line 520
    :cond_ea
    const-string v1, "FaceBeauty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_119

    iget-boolean v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v1, :cond_119

    .line 521
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 522
    sget-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 523
    sget-object v0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    return-object p1

    .line 526
    :cond_119
    const-string v1, "Video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.transsion.camera.feature.mode.video.VideoModeEntry"

    if-eqz v0, :cond_12a

    iget-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    if-eqz v0, :cond_12a

    .line 527
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    return-object v1

    .line 530
    :cond_12a
    iput-boolean v6, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 532
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21a

    const-string v2, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 533
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    goto/16 :goto_21a

    .line 535
    :cond_144
    const-string v2, "android.media.action.FANS_IMAGE_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 536
    const-string p0, "com.transsion.camera.feature.mode.autoscenedetection.IntentASDModeEntry"

    return-object p0

    .line 537
    :cond_14f
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15a

    .line 538
    const-string p0, "com.transsion.camera.feature.mode.video.IntentVideoModeEntry"

    return-object p0

    .line 539
    :cond_15a
    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_219

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 540
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const-string v2, "com.google.assistant.extra.OPEN_IN_VIDEO_MODE"

    .line 541
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_176

    goto/16 :goto_219

    .line 549
    :cond_176
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_190

    .line 551
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/transsion/camera/app/intent/IntentParser;->getNFCSpecifyMode(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    :cond_190
    if-nez v0, :cond_1a0

    .line 554
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a0

    .line 555
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/transsion/camera/app/intent/IntentParser;->getShortcutSpecifyMode(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 558
    :cond_1a0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e2

    .line 559
    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSpecifyMode:Ljava/lang/String;

    .line 560
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v1, :cond_1b7

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isIntentFromNegativeScreen()Z

    move-result v1

    if-eqz v1, :cond_1b7

    .line 561
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 563
    :cond_1b7
    invoke-direct {p0, p1, v0, v3}, Lcom/transsion/camera/app/ModeUIPolicy;->getSpecifyCameraMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    sget-object v1, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start specify camera mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 565
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e2

    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz v1, :cond_1e2

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e2

    return-object v0

    .line 570
    :cond_1e2
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const-string v1, "ModeFromAod"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21d

    .line 572
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

    .line 573
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz v1, :cond_21d

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21d

    return-object v0

    :cond_219
    :goto_219
    return-object v1

    .line 534
    :cond_21a
    :goto_21a
    const-string p0, "com.transsion.camera.feature.mode.photo.IntentPhotoModeEntry"

    return-object p0

    .line 579
    :cond_21d
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFlipScreenRelay:Lcom/transsion/camera/manager/FlipScreenRelay;

    if-eqz v0, :cond_267

    .line 580
    invoke-virtual {v0}, Lcom/transsion/camera/manager/FlipScreenRelay;->getLastModeName()Ljava/lang/String;

    move-result-object v0

    .line 581
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

    .line 582
    iput-boolean v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mScreenRelayFlag:Z

    .line 583
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->findMatchMode([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
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

    .line 586
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_267

    return-object v0

    .line 593
    :cond_267
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_270

    .line 594
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    return-object p0

    .line 596
    :cond_270
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFrontModes()[Ljava/lang/String;
    .registers 1

    .line 752
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getModeNames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 705
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraModeNames:[Ljava/lang/String;

    return-object p0

    .line 707
    :cond_9
    const-string v0, "quick_capture_mode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 708
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mQuickCaptureModeNames:[Ljava/lang/String;

    return-object p0

    .line 709
    :cond_14
    const-string/jumbo v0, "vip_mode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 710
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mVIPModeNames:[Ljava/lang/String;

    return-object p0

    .line 712
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraModeNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getRestoreModeByFacing(I)Ljava/lang/String;
    .registers 2

    .line 602
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 603
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    return-object p0

    .line 605
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mBackCameraDefaultMode:Ljava/lang/String;

    return-object p0
.end method

.method public getSmartModeNames(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 718
    invoke-direct {p0}, Lcom/transsion/camera/app/ModeUIPolicy;->screenPocket()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/transsion/camera/app/ModeUIPolicy;->screenFlip()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_19

    .line 721
    :cond_d
    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 722
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartFrontCameraModeNames:[Ljava/lang/String;

    return-object p0

    .line 724
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartBackCameraModeNames:[Ljava/lang/String;

    return-object p0

    .line 719
    :cond_19
    :goto_19
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ModeUIPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSpecifyMode()Ljava/lang/String;
    .registers 1

    .line 742
    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSpecifyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getSwitchMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p5, :cond_3

    return-object p5

    .line 615
    :cond_3
    const-string p5, "com.transsion.camera.feature.mode.pmaster.PMasterModeEntry"

    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mFrontCameraDefaultMode:Ljava/lang/String;

    invoke-static {p5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_2a

    sget-object p5, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_BACK_MODE_LIST:Ljava/util/Map;

    .line 616
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_25

    sget-object p5, Lcom/transsion/camera/app/ModeUIPolicy;->PRIORITY_FRONT_MODE_LIST:Ljava/util/Map;

    .line 617
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2a

    .line 618
    :cond_25
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    .line 619
    :cond_2a
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->PANO_MODE_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_37

    .line 620
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextPanoMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    .line 621
    :cond_37
    invoke-direct {p0, p3, p2}, Lcom/transsion/camera/app/ModeUIPolicy;->isNextCameraHasSameMode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_66

    .line 624
    :cond_3e
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->BOKEH_MODE_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4b

    .line 625
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    .line 626
    :cond_4b
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->SLIMBODY_AND_BEAUTY_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_58

    .line 627
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    .line 628
    :cond_58
    sget-object p1, Lcom/transsion/camera/app/ModeUIPolicy;->SUPER_NIGHT_MODE_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 629
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getNextMode(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_66

    :cond_65
    const/4 p2, 0x0

    :goto_66
    if-eqz p2, :cond_73

    .line 632
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mAllEntryName:Ljava/util/Set;

    if-eqz p1, :cond_73

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    return-object p2

    .line 636
    :cond_73
    invoke-virtual {p0, p3}, Lcom/transsion/camera/app/ModeUIPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .registers 1

    .line 205
    invoke-virtual {p0}, Lcom/transsion/camera/app/ModeUIPolicy;->updateSmartModeNames()V

    return-void
.end method

.method public isSmartModeOrder()Z
    .registers 1

    .line 730
    iget-boolean p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    return p0
.end method

.method public saveARCorePosition([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    .line 781
    const-string v0, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 782
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 783
    sget-object v2, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveARCorePosition,backPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ,frontPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 785
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "backarcoreposition"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v1, v5, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 786
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v5, "frontarcoreposition"

    invoke-virtual {v1, v5, v0, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 788
    const-string v0, "com.transsion.camera.feature.mode.movie.MovieModeEntry"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 789
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 790
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveMoviePosition,backPosition:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "backmovieposition"

    invoke-virtual {v3, v6, v1, v5, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 792
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v5, "frontmovieposition"

    invoke-virtual {v1, v5, v0, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 794
    const-string v0, "com.transsion.camera.feature.mode.vlog.VlogModeEntry"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 795
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveVlogPosition,backPosition:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 797
    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "backvlogposition"

    invoke-virtual {v3, v6, v1, v5, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 798
    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const-string v5, "frontvlogposition"

    invoke-virtual {v1, v5, v0, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 800
    const-string v0, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 801
    invoke-static {p2, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveGoProPosition,backPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backgoproposition"

    invoke-virtual {v0, v2, p1, v1, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 804
    iget-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v0, "frontgoproposition"

    invoke-virtual {p1, v0, p2, p0, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setSourceIntent(Landroid/content/Intent;)V
    .registers 2

    .line 735
    iput-object p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntent:Landroid/content/Intent;

    const/4 p1, 0x1

    .line 736
    iput-boolean p1, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSourceIntentFlag:Z

    .line 737
    sget-object p0, Lcom/transsion/camera/app/ModeUIPolicy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mSourceIntentFlag = true"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateMetaInfo(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public updateSmartModeNames()V
    .registers 2

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mIsSmartMode:Z

    .line 218
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->executeSmartModeOrder(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartBackCameraModeNames:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 219
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ModeUIPolicy;->executeSmartModeOrder(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ModeUIPolicy;->mSmartFrontCameraModeNames:[Ljava/lang/String;

    return-void
.end method
