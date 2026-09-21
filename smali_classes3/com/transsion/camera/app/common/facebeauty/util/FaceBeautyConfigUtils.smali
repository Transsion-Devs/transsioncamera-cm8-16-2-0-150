.class public abstract Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyConfigU"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public static getCurrentConfigType(Lcom/transsion/camera/app/common/storage/DataStore;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;
    .registers 4

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_race"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 48
    sget-object v0, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentConfigType() called with: race = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;->parseConfigType(Ljava/lang/String;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object p0

    if-eqz p0, :cond_2d

    return-object p0

    .line 51
    :cond_2d
    invoke-static {}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->getOOBEConfigType()Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object p0

    return-object p0
.end method

.method private static getOOBEConfigType()Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;
    .registers 4

    .line 55
    invoke-static {}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->getSkinColorString()Ljava/lang/String;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoConfigType() called: skinColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;->parseConfigType(Ljava/lang/String;)Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    move-result-object v0

    if-eqz v0, :cond_21

    return-object v0

    .line 59
    :cond_21
    sget-object v0, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;->A:Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$ConfigType;

    return-object v0
.end method

.method private static getSkinColorString()Ljava/lang/String;
    .registers 1

    .line 42
    const-string v0, "debug.vendor.sys.oobe.camera_skin"

    invoke-static {v0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseConfig(Ljava/util/List;)Ljava/util/Map;
    .registers 5

    .line 28
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;->FEATURES:[Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    array-length v1, v1

    if-eq v0, v1, :cond_c

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 29
    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 30
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 31
    sget-object v2, Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant;->FEATURES:[Lcom/transsion/camera/app/common/facebeauty/FaceBeautyConstant$Feature;

    aget-object v2, v2, v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_28
    return-object v0
.end method

.method public static parseConfig([I)Ljava/util/Map;
    .registers 2

    .line 38
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/transsion/camera/app/common/facebeauty/util/FaceBeautyConfigUtils;->parseConfig(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
