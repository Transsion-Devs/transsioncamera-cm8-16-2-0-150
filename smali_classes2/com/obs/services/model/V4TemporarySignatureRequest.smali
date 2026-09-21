.class public Lcom/obs/services/model/V4TemporarySignatureRequest;
.super Lcom/obs/services/model/TemporarySignatureRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/obs/services/model/TemporarySignatureRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/HttpMethodEnum;J)V
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p2

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/obs/services/model/TemporarySignatureRequest;-><init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;J)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;J)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    .line 31
    invoke-direct/range {v0 .. v7}, Lcom/obs/services/model/TemporarySignatureRequest;-><init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;JLjava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;JLjava/util/Date;)V
    .registers 8

    .line 36
    invoke-direct/range {p0 .. p7}, Lcom/obs/services/model/TemporarySignatureRequest;-><init>(Lcom/obs/services/model/HttpMethodEnum;Ljava/lang/String;Ljava/lang/String;Lcom/obs/services/model/SpecialParamEnum;JLjava/util/Date;)V

    return-void
.end method
