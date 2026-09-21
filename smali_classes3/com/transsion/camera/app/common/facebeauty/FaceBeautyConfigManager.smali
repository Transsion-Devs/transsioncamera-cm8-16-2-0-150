.class public abstract Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sImpl:Lcom/transsion/camera/app/common/facebeauty/IFaceBeautyConfigManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_e

    .line 29
    new-instance v0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV3ConfigManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV3ConfigManager;-><init>()V

    goto :goto_13

    :cond_e
    new-instance v0, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV2ConfigManager;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/facebeauty/configmanager/FaceBeautyV2ConfigManager;-><init>()V

    :goto_13
    sput-object v0, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConfigManager;->sImpl:Lcom/transsion/camera/app/common/facebeauty/IFaceBeautyConfigManager;

    return-void
.end method

.method public static getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;
    .registers 11

    .line 34
    sget-object v0, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConfigManager;->sImpl:Lcom/transsion/camera/app/common/facebeauty/IFaceBeautyConfigManager;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/app/common/facebeauty/IFaceBeautyConfigManager;->getCameraConfig(Lcom/transsion/camera/utils/SettingInfo$Gender;Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;ZZLjava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
