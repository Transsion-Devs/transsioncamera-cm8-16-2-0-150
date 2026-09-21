.class public Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV2ConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/facebeauty/IFaceBeautyConfigManager;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final backVideoConfigs:Ljava/util/List;

.field private static final photoConfigs:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyV2Confi"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV2ConfigManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 39
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget v1, Lcom/transsion/camera/app/common/R$raw;->facebeauty_config:I

    .line 40
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->readRawFile(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;

    iget-object v0, v0, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;->list:Ljava/util/List;

    sput-object v0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV2ConfigManager;->photoConfigs:Ljava/util/List;

    .line 43
    invoke-static {}, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV2ConfigManager;->getBackVideoConfigs()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV2ConfigManager;->backVideoConfigs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBackVideoConfigs()Ljava/util/List;
    .registers 9

    const/4 v0, 0x0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 46
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    sget v3, Lcom/transsion/camera/app/common/R$raw;->facebeauty_config:I

    invoke-static {v3}, Lcom/transsion/camera/utils/CameraUtil;->readRawFile(I)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;

    iget-object v2, v2, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;->list:Ljava/util/List;

    .line 47
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;

    .line 48
    iget-object v5, v4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->backCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    iget-object v6, v5, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->femaleConfig:Ljava/util/List;

    iget-object v5, v5, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->maleConfig:Ljava/util/List;

    iget-object v4, v4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->frontCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    iget-object v7, v4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->femaleConfig:Ljava/util/List;

    iget-object v4, v4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->maleConfig:Ljava/util/List;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/util/List;

    aput-object v6, v8, v0

    const/4 v6, 0x1

    aput-object v5, v8, v6

    const/4 v5, 0x2

    aput-object v7, v8, v5

    const/4 v5, 0x3

    aput-object v4, v8, v5

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x7

    .line 51
    invoke-interface {v5, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x8

    .line 52
    invoke-interface {v5, v6, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    :cond_62
    return-object v2
.end method


# virtual methods
.method public getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;
    .registers 8

    .line 62
    sget-object p0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV2ConfigManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCameraConfig() called with: gender = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], configType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], isFrontCamera = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], isVideoMode = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p4, :cond_3a

    if-nez p3, :cond_3a

    .line 64
    sget-object p0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV2ConfigManager;->backVideoConfigs:Ljava/util/List;

    goto :goto_3c

    :cond_3a
    sget-object p0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV2ConfigManager;->photoConfigs:Ljava/util/List;

    :goto_3c
    if-eqz p5, :cond_3f

    goto :goto_40

    :cond_3f
    move-object p5, p0

    .line 68
    :goto_40
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_83

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;

    .line 69
    iget-object p5, p4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->configType:Ljava/lang/String;

    invoke-static {p5}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;->parseConfigType(Ljava/lang/String;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object p5

    if-eq p5, p2, :cond_59

    goto :goto_44

    :cond_59
    if-eqz p3, :cond_5e

    .line 72
    iget-object p0, p4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->frontCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    goto :goto_60

    :cond_5e
    iget-object p0, p4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->backCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    .line 73
    :goto_60
    sget-object p2, Lcom/transsion/camera/utils/SettingInfo$Gender;->MALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    if-ne p1, p2, :cond_67

    iget-object p0, p0, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->maleConfig:Ljava/util/List;

    goto :goto_69

    :cond_67
    iget-object p0, p0, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->femaleConfig:Ljava/util/List;

    .line 74
    :goto_69
    sget-object p1, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV2ConfigManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getCameraConfig() called with: result = ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    .line 77
    :cond_83
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method
