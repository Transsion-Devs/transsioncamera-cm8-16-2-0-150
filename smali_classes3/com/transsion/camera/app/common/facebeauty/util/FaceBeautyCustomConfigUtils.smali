.class public abstract Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sDefaultDefaultMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$IrM1mKn3-pdR0xjKphFSsqH3udU(Ljava/util/Map;Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;)V
    .registers 6

    .line 85
    sget-object v0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->sDefaultDefaultMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 86
    const-string/jumbo v1, "whiten"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    if-nez v0, :cond_15

    goto :goto_19

    .line 87
    :cond_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_19
    invoke-static {p1, v2}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->getSkinDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_25
    if-nez v0, :cond_28

    goto :goto_2c

    .line 89
    :cond_28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2c
    invoke-static {p1, p2, v2}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->getDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyCustomC"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 38
    new-instance v0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->sDefaultDefaultMap:Ljava/util/Map;

    return-void
.end method

.method public static getCustomValues(Lcom/transsion/camera/app/common/setting/SettingBase;)[I
    .registers 6

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    sget-object v1, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p0}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;Lcom/transsion/camera/app/common/setting/SettingBase;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 93
    array-length v1, v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 94
    :goto_17
    sget-object v3, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_27

    .line 95
    aget-object v3, v3, v2

    invoke-static {p0, v0, v3}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->getValueByKey(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/util/Map;Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_27
    return-object v1
.end method

.method private static getDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;I)I
    .registers 6

    .line 63
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getInitGender()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-static {p1, p0, v0}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getVideoFaceBeautyDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    .line 71
    :cond_17
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-static {p0, p1, v2, v0, v1}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautyDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    :goto_1f
    :try_start_1f
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_24

    return p0

    :catch_24
    move-exception p0

    .line 77
    sget-object p1, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getDefaultValue] Exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p2
.end method

.method private static getSkinDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;I)I
    .registers 5

    .line 56
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getInitGender()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string/jumbo v2, "video"

    goto :goto_14

    :cond_12
    const-string v2, "portrait"

    .line 59
    :goto_14
    invoke-static {p0, v2, p1, v1, v0}, Lcom/transsion/camera/app/common/portraitdefault/DefaultParam;->getFaceBeautySkinDefaultValue(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getValueByKey(Lcom/transsion/camera/app/common/setting/SettingBase;Ljava/util/Map;Ljava/lang/String;)I
    .registers 15

    .line 102
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    .line 103
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    .line 104
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 105
    sget-object v2, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getValueByKey] getValueByKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getModeKey()Ljava/lang/String;

    move-result-object v3

    .line 109
    const-string v4, "five_senses"

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "Warning: getValueByKey NumberFormatException !!!"

    const-string v6, ", valueStr: "

    const-string v7, ", defaultValue: "

    const-string v8, "getValueByKey, key: "

    const-string v9, "_"

    if-eqz v4, :cond_9b

    .line 110
    rem-int/lit8 v4, p1, 0x65

    sub-int v10, p1, v4

    .line 112
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-virtual {v0, p2, v4, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    :try_start_8e
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_92} :catch_95

    add-int p1, v10, p0

    goto :goto_f8

    .line 121
    :catch_95
    sget-object p0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v5}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_f8

    .line 124
    :cond_9b
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v4

    iget-boolean v4, v4, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v4, :cond_ae

    const-string/jumbo v4, "whiten"

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 125
    const-string p2, "face_beauty_whiten_skin_card"

    .line 127
    :cond_ae
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 127
    invoke-virtual {v0, p2, v4, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    :try_start_ee
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f2} :catch_f3

    return p0

    .line 135
    :catch_f3
    sget-object p0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v5}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_f8
    return p1
.end method
