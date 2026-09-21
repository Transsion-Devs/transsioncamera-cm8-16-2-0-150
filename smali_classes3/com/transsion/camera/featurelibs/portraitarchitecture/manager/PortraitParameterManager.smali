.class public Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;
.super Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;
.source "SourceFile"


# static fields
.field public static final COUNTRY_CODE:Ljava/lang/String;

.field private static final COUNTRY_KEY:Ljava/lang/String;

.field static final FACEBEAUTY_CONFIG_TYPE_ARRAY:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFacebeautyDefaultList:Ljava/util/List;

.field private mParameterData:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PPM"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 40
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mPersistOobeName:Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->COUNTRY_KEY:Ljava/lang/String;

    .line 41
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->COUNTRY_CODE:Ljava/lang/String;

    .line 44
    const-string v0, "B_southasia"

    const-string v1, "C"

    const-string v2, "A"

    const-string v3, "B_common"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->FACEBEAUTY_CONFIG_TYPE_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->mFacebeautyDefaultList:Ljava/util/List;

    .line 48
    new-instance p0, Landroid/os/HandlerThread;

    const-string p1, "CAM_PortaraitParameterParse"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createFaceBeautyConfig()V
    .registers 7

    .line 174
    new-instance v0, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;-><init>()V

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    sget-object v2, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->FACEBEAUTY_CONFIG_TYPE_ARRAY:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1c

    aget-object v5, v2, v4

    .line 177
    invoke-direct {p0, v5}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->createFaceBeautyConfigEntity(Ljava/lang/String;)Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 179
    :cond_1c
    iput-object v1, v0, Lcom/transsion/camera/app/common/facebeauty/entity/Configs;->list:Ljava/util/List;

    .line 180
    iput-object v1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->mFacebeautyDefaultList:Ljava/util/List;

    return-void
.end method

.method private createFaceBeautyConfigEntity(Ljava/lang/String;)Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;
    .registers 8

    .line 184
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->getRaceByTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;-><init>()V

    .line 186
    iput-object p1, v1, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->configType:Ljava/lang/String;

    .line 188
    new-instance p1, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;-><init>()V

    iput-object p1, v1, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->backCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    .line 191
    const-string p1, "back"

    const-string v2, "2"

    invoke-direct {p0, p1, v0, v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->filterFbData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 192
    iget-object v4, v1, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->backCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->femaleConfig:Ljava/util/List;

    .line 194
    const-string v3, "1"

    invoke-direct {p0, p1, v0, v3}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->filterFbData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 195
    iget-object v4, v1, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->backCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    iput-object p1, v4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->maleConfig:Ljava/util/List;

    .line 198
    new-instance p1, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    invoke-direct {p1}, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;-><init>()V

    iput-object p1, v1, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->frontCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    .line 200
    const-string p1, "front"

    invoke-direct {p0, p1, v0, v2}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->filterFbData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 201
    iget-object v4, v1, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->frontCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v4, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->femaleConfig:Ljava/util/List;

    .line 203
    invoke-direct {p0, p1, v0, v3}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->filterFbData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 204
    iget-object p1, v1, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;->frontCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p1, Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;->maleConfig:Ljava/util/List;

    return-object v1
.end method

.method private filterData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->mParameterData:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;

    if-nez v0, :cond_f

    .line 113
    sget-object p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[filterData]  dataBean is null!!!   "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p6

    .line 117
    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_6d

    .line 129
    :cond_1c
    const-string v0, "monomer_pmaster"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "stereo_pmaster"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_62

    .line 134
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->mParameterData:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;

    invoke-static {p5, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->getFunctionData(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;)Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;

    move-result-object p0

    if-nez p0, :cond_3d

    .line 137
    sget-object p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[filterData] functionData is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p6

    .line 141
    :cond_3d
    invoke-static {p1, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->getCameraDataByDirection(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;)Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;

    move-result-object p0

    if-nez p0, :cond_4b

    .line 143
    sget-object p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[filterData] cameraData is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p6

    .line 147
    :cond_4b
    invoke-static {p4, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->getSexDataByDirection(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;)Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

    move-result-object p0

    if-nez p0, :cond_59

    .line 149
    sget-object p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[filterData] sexData is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p6

    .line 153
    :cond_59
    invoke-static {p2, p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->getRaceData(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;)Ljava/util/List;

    move-result-object p0

    .line 154
    invoke-static {p5, p3, p0, p6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->getFeatureData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_62
    :goto_62
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->mParameterData:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;

    invoke-virtual {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;->getBlur_pmaster()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;

    move-result-object p0

    .line 131
    invoke-static {p1, p0, p5}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->getBlueDataByCameraDirection(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterBlueBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_6d
    :goto_6d
    sget-object p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[filterData] cameraDirection:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " featureKey:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sex:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " function:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p6
.end method

.method private filterFbData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->mParameterData:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 74
    sget-object p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[filterData]  mParameterData is null!!!   "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 78
    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 79
    sget-object p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[filterData] camera:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sex:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 89
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->mParameterData:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;

    invoke-virtual {v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;->getFb_pmaster()Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;

    move-result-object v0

    if-nez v0, :cond_3b

    goto :goto_48

    .line 94
    :cond_3b
    invoke-static {p1, v0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->getCameraDataByDirection(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterFunctionBean;)Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;

    move-result-object p1

    if-nez p1, :cond_42

    goto :goto_48

    .line 99
    :cond_42
    invoke-static {p3, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->getSexDataByDirection(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterCameraBean;)Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;

    move-result-object p1

    if-nez p1, :cond_49

    :goto_48
    return-object v1

    .line 104
    :cond_49
    invoke-static {p2, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/utils/PortraitArchRegulation;->getRaceData(Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/ParameterSexBean;)Ljava/util/List;

    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->getFBData(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getFBData(Ljava/util/List;)Ljava/util/List;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 162
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->getInstance()Lcom/transsion/camera/app/common/CommonConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/app/common/CommonConfigUtil;->mFaceBeautyV3:Z

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_2a

    .line 164
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x3

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-object p0
.end method


# virtual methods
.method public getDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 65
    invoke-virtual {p0, p1}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->processCameraId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p6}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->filterData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_f

    return-object p6

    :cond_f
    return-object p0
.end method

.method public getFaceBeautyListData()Ljava/util/List;
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->mFacebeautyDefaultList:Ljava/util/List;

    return-object p0
.end method

.method protected processData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;Z)V
    .registers 6

    .line 55
    invoke-super/range {p0 .. p5}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitProcessBaseManager;->processData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/camera/featurelibs/portraitarchitecture/callback/IProcessConfigCallback;Z)V

    .line 56
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    const-class p3, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;

    invoke-virtual {p2, p1, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->mParameterData:Lcom/transsion/camera/featurelibs/portraitarchitecture/bean/parameter/DefaultParameterDataBean;

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/portraitarchitecture/manager/PortraitParameterManager;->createFaceBeautyConfig()V

    return-void
.end method
