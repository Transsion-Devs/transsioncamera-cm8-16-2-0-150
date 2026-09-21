.class public Lcom/obs/services/model/V4PostSignatureRequest;
.super Lcom/obs/services/model/PostSignatureRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/obs/services/model/PostSignatureRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/obs/services/model/PostSignatureRequest;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/obs/services/model/PostSignatureRequest;-><init>(JLjava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/obs/services/model/PostSignatureRequest;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/obs/services/model/PostSignatureRequest;-><init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
