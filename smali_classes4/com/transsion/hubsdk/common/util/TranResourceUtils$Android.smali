.class public Lcom/transsion/hubsdk/common/util/TranResourceUtils$Android;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/common/util/TranResourceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Android"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimId(Ljava/lang/String;)I
    .registers 3

    .line 169
    const-string v0, "anim"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAnimatorId(Ljava/lang/String;)I
    .registers 3

    .line 173
    const-string v0, "animator"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getArrayId(Ljava/lang/String;)I
    .registers 3

    .line 177
    const-string v0, "array"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAttrId(Ljava/lang/String;)I
    .registers 3

    .line 161
    const-string v0, "attr"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getBoolId(Ljava/lang/String;)I
    .registers 3

    .line 185
    const-string v0, "bool"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColorId(Ljava/lang/String;)I
    .registers 3

    .line 153
    const-string v0, "color"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDimenId(Ljava/lang/String;)I
    .registers 3

    .line 157
    const-string v0, "dimen"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawableId(Ljava/lang/String;)I
    .registers 3

    .line 145
    const-string v0, "drawable"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIdId(Ljava/lang/String;)I
    .registers 3

    .line 205
    const-string v0, "id"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIntegerId(Ljava/lang/String;)I
    .registers 3

    .line 181
    const-string v0, "integer"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInterpolatorId(Ljava/lang/String;)I
    .registers 3

    .line 193
    const-string v0, "interpolator"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutId(Ljava/lang/String;)I
    .registers 3

    .line 137
    const-string v0, "layout"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMipmapId(Ljava/lang/String;)I
    .registers 3

    .line 149
    const-string v0, "mipmap"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getOthersId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    .line 212
    const-string v0, "android"

    invoke-static {p0, p1, v0}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getPluralsId(Ljava/lang/String;)I
    .registers 3

    .line 197
    const-string v0, "plurals"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStringId(Ljava/lang/String;)I
    .registers 3

    .line 141
    const-string v0, "string"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleId(Ljava/lang/String;)I
    .registers 3

    .line 165
    const-string v0, "style"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleableId(Ljava/lang/String;)I
    .registers 3

    .line 201
    const-string v0, "styleable"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getXmlId(Ljava/lang/String;)I
    .registers 3

    .line 189
    const-string v0, "xml"

    const-string v1, "android"

    invoke-static {p0, v0, v1}, Lcom/transsion/hubsdk/common/util/TranResourceUtils;->getIdentifierByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
