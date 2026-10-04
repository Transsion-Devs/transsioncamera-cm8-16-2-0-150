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

    const/4 v1, 0x0

    if-nez p1, :cond_f

    move p1, v1

    goto :goto_13

    .line 104
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 105
    sget-object v3, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getValueByKey] getValueByKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getModeKey()Ljava/lang/String;

    move-result-object v4

    .line 109
    const-string v5, "five_senses"

    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "Warning: getValueByKey NumberFormatException !!!"

    const-string v7, ", valueStr: "

    const-string v8, ", defaultValue: "

    const-string v9, "getValueByKey, key: "

    const-string v10, "_"

    if-eqz v5, :cond_a5

    .line 110
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v5

    iget-boolean v5, v5, Lcom/transsion/camera/app/common/CommonConfigUtil;->mEnableTrueToneV2:Z

    if-eqz v5, :cond_a4

    .line 111
    rem-int/lit8 v1, p1, 0x65

    sub-int v5, p1, v1

    .line 113
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-virtual {v0, p2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    :try_start_97
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9b} :catch_9e

    add-int p1, v5, p0

    goto :goto_102

    .line 122
    :catch_9e
    sget-object p0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v6}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_102

    :cond_a4
    return v1

    .line 128
    :cond_a5
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v1, :cond_b8

    const-string/jumbo v1, "whiten"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 129
    const-string p2, "face_beauty_whiten_skin_card"

    .line 131
    :cond_b8
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCameraFacing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-virtual {v0, p2, v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    :try_start_f8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fc} :catch_fd

    return p0

    .line 139
    :catch_fd
    sget-object p0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyCustomConfigUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v6}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_102
    return p1
.end method
