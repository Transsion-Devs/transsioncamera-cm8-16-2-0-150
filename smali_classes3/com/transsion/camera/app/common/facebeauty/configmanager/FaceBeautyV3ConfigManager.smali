.class public Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV3ConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/facebeauty/IFaceBeautyConfigManager;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mConfigs:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyV3Confi"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV3ConfigManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 36
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sget v1, Lcom/transsion/camera/app/common/R$raw;->facebeauty_3_0_config:I

    .line 37
    invoke-static {v1}, Lcom/transsion/camera/utils/CameraUtil;->readRawFile(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;

    iget-object v0, v0, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;->list:Ljava/util/List;

    sput-object v0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV3ConfigManager;->mConfigs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;
    .registers 8

    .line 43
    sget-object p0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV3ConfigManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    const-string p4, "]"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    sget-object p0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV3ConfigManager;->mConfigs:Ljava/util/List;

    if-eqz p5, :cond_38

    goto :goto_39

    :cond_38
    move-object p5, p0

    .line 49
    :goto_39
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;

    .line 50
    iget-object v0, p5, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->configType:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;->parseConfigType(Ljava/lang/String;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object v0

    if-eq v0, p2, :cond_52

    goto :goto_3d

    :cond_52
    if-eqz p3, :cond_57

    .line 53
    iget-object p0, p5, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->frontCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    goto :goto_59

    :cond_57
    iget-object p0, p5, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->backCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    .line 54
    :goto_59
    sget-object p2, Lcom/transsion/camera/utils/SettingInfo$Gender;->MALE:Lcom/transsion/camera/utils/SettingInfo$Gender;

    if-ne p1, p2, :cond_60

    iget-object p0, p0, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->maleConfig:Ljava/util/List;

    goto :goto_62

    :cond_60
    iget-object p0, p0, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->femaleConfig:Ljava/util/List;

    .line 55
    :goto_62
    sget-object p1, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV3ConfigManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getCameraConfig() called with: result = ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    .line 58
    :cond_7c
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method
