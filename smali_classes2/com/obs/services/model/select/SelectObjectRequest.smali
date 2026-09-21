.class public Lcom/obs/services/model/select/SelectObjectRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private expression:Ljava/lang/String;

.field private expressionType:Ljava/lang/String;

.field private inputSerialization:Lcom/obs/services/model/select/InputSerialization;

.field private key:Ljava/lang/String;

.field private outputSerialization:Lcom/obs/services/model/select/OutputSerialization;

.field private requestProgress:Lcom/obs/services/model/select/RequestProgress;

.field private scanRange:Lcom/obs/services/model/select/ScanRange;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertToXml()Ljava/lang/String;
    .registers 4

    .line 172
    :try_start_0
    const-string v0, "SelectObjectContentRequest"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->expressionType:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 174
    const-string v1, "ExpressionType"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/obs/services/model/select/SelectObjectRequest;->expressionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 176
    :cond_15
    iget-object v1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->expression:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 177
    const-string v1, "Expression"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/obs/services/model/select/SelectObjectRequest;->expression:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 179
    :cond_24
    iget-object v1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->requestProgress:Lcom/obs/services/model/select/RequestProgress;

    if-eqz v1, :cond_2b

    .line 180
    invoke-virtual {v1, v0}, Lcom/obs/services/model/select/RequestProgress;->appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    .line 182
    :cond_2b
    iget-object v1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->inputSerialization:Lcom/obs/services/model/select/InputSerialization;

    if-eqz v1, :cond_32

    .line 183
    invoke-virtual {v1, v0}, Lcom/obs/services/model/select/InputSerialization;->appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    .line 185
    :cond_32
    iget-object v1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->outputSerialization:Lcom/obs/services/model/select/OutputSerialization;

    if-eqz v1, :cond_39

    .line 186
    invoke-virtual {v1, v0}, Lcom/obs/services/model/select/OutputSerialization;->appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    .line 188
    :cond_39
    iget-object p0, p0, Lcom/obs/services/model/select/SelectObjectRequest;->scanRange:Lcom/obs/services/model/select/ScanRange;

    if-eqz p0, :cond_40

    .line 189
    invoke-virtual {p0, v0}, Lcom/obs/services/model/select/ScanRange;->appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    .line 191
    :cond_40
    invoke-virtual {v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    return-object p0

    :catch_45
    move-exception p0

    .line 193
    new-instance v0, Lcom/obs/services/model/select/SelectObjectException;

    const-string v1, "Wrong request"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/obs/services/model/select/SelectObjectException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getBucketName()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/obs/services/model/select/SelectObjectRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public getExpression()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/obs/services/model/select/SelectObjectRequest;->expression:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/obs/services/model/select/SelectObjectRequest;->key:Ljava/lang/String;

    return-object p0
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/obs/services/model/select/SelectObjectRequest;
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->bucketName:Ljava/lang/String;

    return-object p0
.end method

.method public withExpression(Ljava/lang/String;)Lcom/obs/services/model/select/SelectObjectRequest;
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->expression:Ljava/lang/String;

    return-object p0
.end method

.method public withExpressionType(Lcom/obs/services/model/select/ExpressionType;)Lcom/obs/services/model/select/SelectObjectRequest;
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_8

    .line 122
    :cond_4
    invoke-virtual {p1}, Lcom/obs/services/model/select/ExpressionType;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->expressionType:Ljava/lang/String;

    return-object p0
.end method

.method public withInputSerialization(Lcom/obs/services/model/select/InputSerialization;)Lcom/obs/services/model/select/SelectObjectRequest;
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->inputSerialization:Lcom/obs/services/model/select/InputSerialization;

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/obs/services/model/select/SelectObjectRequest;
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->key:Ljava/lang/String;

    return-object p0
.end method

.method public withOutputSerialization(Lcom/obs/services/model/select/OutputSerialization;)Lcom/obs/services/model/select/SelectObjectRequest;
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->outputSerialization:Lcom/obs/services/model/select/OutputSerialization;

    return-object p0
.end method

.method public withRequestProgress(Lcom/obs/services/model/select/RequestProgress;)Lcom/obs/services/model/select/SelectObjectRequest;
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->requestProgress:Lcom/obs/services/model/select/RequestProgress;

    return-object p0
.end method

.method public withScanRange(Lcom/obs/services/model/select/ScanRange;)Lcom/obs/services/model/select/SelectObjectRequest;
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/obs/services/model/select/SelectObjectRequest;->scanRange:Lcom/obs/services/model/select/ScanRange;

    return-object p0
.end method
