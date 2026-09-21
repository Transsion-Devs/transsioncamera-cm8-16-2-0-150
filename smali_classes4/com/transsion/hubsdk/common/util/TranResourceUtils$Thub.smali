.class public Lcom/transsion/hubsdk/common/util/TranResourceUtils$Thub;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/common/util/TranResourceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Thub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimId(Ljava/lang/String;)I
    .registers 3

    .line 85
    const-string v0, "anim"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAnimatorId(Ljava/lang/String;)I
    .registers 3

    .line 89
    const-string v0, "animator"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getArrayId(Ljava/lang/String;)I
    .registers 3

    .line 93
    const-string v0, "array"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAttrId(Ljava/lang/String;)I
    .registers 3

    .line 77
    const-string v0, "attr"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getBoolId(Ljava/lang/String;)I
    .registers 3

    .line 101
    const-string v0, "bool"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColorId(Ljava/lang/String;)I
    .registers 3

    .line 69
    const-string v0, "color"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDimenId(Ljava/lang/String;)I
    .registers 3

    .line 73
    const-string v0, "dimen"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawableId(Ljava/lang/String;)I
    .registers 3

    .line 61
    const-string v0, "drawable"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIdId(Ljava/lang/String;)I
    .registers 3

    .line 121
    const-string v0, "id"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIntegerId(Ljava/lang/String;)I
    .registers 3

    .line 97
    const-string v0, "integer"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInterpolatorId(Ljava/lang/String;)I
    .registers 3

    .line 109
    const-string v0, "interpolator"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutId(Ljava/lang/String;)I
    .registers 3

    .line 53
    const-string v0, "layout"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMipmapId(Ljava/lang/String;)I
    .registers 3

    .line 65
    const-string v0, "mipmap"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getOthersId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 128
    const-string v0, "com.transsion.thub.res"

    invoke-static {p0, p1, v0}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getPluralsId(Ljava/lang/String;)I
    .registers 3

    .line 113
    const-string v0, "plurals"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStringId(Ljava/lang/String;)I
    .registers 3

    .line 57
    const-string v0, "string"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleId(Ljava/lang/String;)I
    .registers 3

    .line 81
    const-string v0, "style"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleableId(Ljava/lang/String;)I
    .registers 3

    .line 117
    const-string v0, "styleable"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getXmlId(Ljava/lang/String;)I
    .registers 3

    .line 105
    const-string v0, "xml"

    const-string v1, "com.transsion.thub.res"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
