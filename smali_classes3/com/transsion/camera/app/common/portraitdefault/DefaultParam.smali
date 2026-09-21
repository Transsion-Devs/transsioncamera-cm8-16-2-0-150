.class public abstract Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mContext:Landroid/content/Context;

.field private static final mSkinWhiteKeys:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 83
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DefaultParam"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 86
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->mContext:Landroid/content/Context;

    .line 88
    sget-object v0, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->mSkinWhiteKeys:Ljava/util/List;

    return-void
.end method

.method public static getDefaultSlimBodyItemInfo(Lcom/transsion/camera/app/common/storage/DataStore;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 243
    sget-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 244
    new-instance p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    invoke-direct {p2}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;-><init>()V

    .line 245
    invoke-static {p0}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->getCurrentConfigType(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->getRaceByConfigType(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 246
    iput v0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    .line 247
    const-string v0, "bodySlim"

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getSlimBodyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    .line 248
    const-string v0, "headShrink"

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getSlimBodyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    .line 249
    const-string/jumbo v0, "waistSlim"

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getSlimBodyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    .line 250
    const-string v0, "buttPlump"

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getSlimBodyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    .line 251
    const-string v0, "legLengthen"

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getSlimBodyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    .line 252
    const-string v0, "shoulderSlim"

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getSlimBodyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    .line 253
    const-string v0, "legSlim"

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getSlimBodyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    iput p0, p2, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    .line 254
    invoke-static {p2}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 256
    :cond_56
    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->getDefaultSlimBodySetting(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    .line 308
    invoke-static {}, Lcom/transsion/camera/app/proxy/ProxyManager;->getPortrait()Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v4, p3

    move-object v1, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;->getDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 309
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PortraitArchGetDefaultValue  [getDefaultValue] featureType:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  featureKey:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  sex:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  cameraId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  race:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  defaultValue = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "   resultValue = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getFaceBeautyDefaultList(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZ)Ljava/util/List;
    .registers 8

    .line 164
    sget-object p3, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_30

    .line 165
    invoke-static {}, Lcom/transsion/camera/app/proxy/ProxyManager;->getPortrait()Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;

    move-result-object p3

    invoke-interface {p3}, Lcom/transsion/camera/app/proxy/portrait/IPortraitProxy;->getFaceBautyDefaultList()Ljava/util/List;

    move-result-object p3

    .line 166
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFaceBeautyDefaultList   list = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    invoke-static {p0, p1, p2, v0, p3}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConfigManager;->getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_30
    const/4 p3, 0x0

    .line 169
    invoke-static {p0, p1, p2, v0, p3}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConfigManager;->getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getFaceBeautyDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 131
    const-string v0, "0"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautyDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFaceBeautyDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .line 136
    sget-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFaceBeautyDefaultValue key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_62

    if-eqz p0, :cond_2e

    .line 141
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->getCurrentConfigType(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->getRaceByConfigType(Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;)Ljava/lang/String;

    move-result-object v1

    :goto_2c
    move-object v3, v1

    goto :goto_31

    .line 140
    :cond_2e
    const-string v1, "race_A"

    goto :goto_2c

    .line 144
    :goto_31
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->mSkinWhiteKeys:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "fb_pmaster"

    if-eqz v1, :cond_58

    move-object v4, p0

    move-object v6, p1

    move-object v9, p2

    move-object v8, p3

    move-object v7, p4

    .line 145
    invoke-static/range {v4 .. v9}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautySkinDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v4, v6

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    :cond_58
    move-object v4, p1

    move-object v7, p3

    move-object v6, p4

    move-object v8, v5

    move-object v5, p2

    .line 148
    invoke-static/range {v3 .. v8}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_62
    move-object v4, p0

    move-object v6, p1

    move-object v7, p3

    move-object p0, p4

    .line 158
    invoke-static {v4, v6, p0, v7}, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->getFacebeautyDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFaceBeautySkinDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 199
    const-string/jumbo v0, "video"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 202
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v2, "whiten"

    if-eqz v1, :cond_3d

    if-eqz p1, :cond_1d

    .line 205
    invoke-static {v2, v0, p4}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getVideoFaceBeautyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_21

    .line 207
    :cond_1d
    invoke-static {p0, v2, v0, p4, p3}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautyDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 210
    :goto_21
    :try_start_21
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_25} :catch_26

    goto :goto_6a

    .line 212
    :catch_26
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "parseInt exception, valueStr: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_6a

    :cond_3d
    if-eqz p1, :cond_44

    .line 217
    invoke-static {v2, p4}, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->getVideoFaceBeautyDefaultValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_48

    .line 220
    :cond_44
    invoke-static {p0, v2, p3, p4}, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->getFacebeautyDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 222
    :goto_48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4f

    return p2

    .line 227
    :cond_4f
    :try_start_4f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_53} :catch_54

    goto :goto_6a

    .line 229
    :catch_54
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "parseException valueStr: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    :goto_6a
    sget-object p0, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[getFaceBeautySkinDefaultValue]   value = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2
.end method

.method private static getFaceBeautySkinDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 177
    const-string v0, "fb_pmaster"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v0, "whiten"

    if-eqz p1, :cond_10

    .line 178
    invoke-static {p0, v0, p4, p3}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautyDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_14

    .line 180
    :cond_10
    invoke-static {v0, p5, p4}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getVideoFaceBeautyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 182
    :goto_14
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getFaceBeautySkinDefaultValue, valueStr: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 184
    :try_start_2a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2e} :catch_2f

    goto :goto_46

    .line 186
    :catch_2f
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "parseInt exception, valueStr: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 189
    :goto_46
    invoke-static {p0}, Lcom/transsion/camera/app/proxy/portrait/PortraitConstant;->getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 190
    rem-int/lit8 p1, p1, 0x65

    .line 191
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 192
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 194
    :cond_57
    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMakeUpDefaultIntensity(Ljava/lang/String;Ljava/lang/String;)F
    .registers 3

    .line 105
    sget-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 106
    const-string v0, "mu_pmaster"

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getMakeUpDefaultIntensity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_f
    const p0, 0x3f19999a    # 0.6f

    return p0
.end method

.method private static getMakeUpDefaultIntensity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
    .registers 9

    .line 114
    const-string v2, "60"

    const-string v3, "0"

    const-string v0, "race_A"

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 122
    :try_start_d
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_16

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0

    :catch_16
    move-exception v0

    move-object p1, v0

    .line 124
    sget-object p2, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMakeUpDefaultIntensity defaultValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exception: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method private static getSlimBodyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .line 261
    const-string v4, "0"

    const-string v5, "sb_pmaster"

    const-string v2, "0"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 268
    :try_start_d
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception v0

    move-object p1, v0

    .line 270
    sget-object p2, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSlimBodyDefaultValue defaultValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exception: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getStereoDefaultValue()Ljava/lang/String;
    .registers 1

    .line 277
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getStereoDefaultValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoFaceBeautyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 282
    const-string v0, "fb_video"

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getVideoFaceBeautyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoFaceBeautyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 287
    sget-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 289
    sget-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->mSkinWhiteKeys:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v1, 0x0

    .line 290
    const-string v4, "1"

    move-object v3, p0

    move-object v6, p1

    move-object v5, p2

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautySkinDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v1, v3

    .line 291
    sget-object p1, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getVideoFaceBeautyDefaultValue key = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    :cond_33
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 293
    const-string v0, "race_A"

    const-string v3, "1"

    invoke-static/range {v0 .. v5}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_40
    move-object v1, p0

    move-object v4, p2

    .line 303
    invoke-static {v1, v4}, Lcom/transsion/camera/app/common/portraitdefault/OriginalDefaultParam;->getVideoFaceBeautyDefaultValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoMakeUpDefaultIntensity(Ljava/lang/String;Ljava/lang/String;)F
    .registers 3

    .line 96
    sget-object v0, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportPortraitArchitecture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 97
    const-string v0, "mu_video"

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getMakeUpDefaultIntensity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_f
    const p0, 0x3f19999a    # 0.6f

    return p0
.end method
