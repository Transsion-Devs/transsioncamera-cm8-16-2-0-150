.class public Lcom/obs/services/model/select/SelectObjectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private input:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/obs/services/model/select/SelectObjectResult;->input:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/obs/services/model/select/SelectObjectResult;->input:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getInputStream()Lcom/obs/services/model/select/SelectInputStream;
    .registers 3

    .line 54
    new-instance v0, Lcom/obs/services/model/select/SelectInputStream;

    iget-object p0, p0, Lcom/obs/services/model/select/SelectObjectResult;->input:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/obs/services/model/select/SelectInputStream;-><init>(Ljava/io/InputStream;Lcom/obs/services/model/select/SelectEventVisitor;)V

    return-object v0
.end method

.method public getInputStream(Lcom/obs/services/model/select/SelectEventVisitor;)Lcom/obs/services/model/select/SelectInputStream;
    .registers 3

    .line 66
    new-instance v0, Lcom/obs/services/model/select/SelectInputStream;

    iget-object p0, p0, Lcom/obs/services/model/select/SelectObjectResult;->input:Ljava/io/InputStream;

    invoke-direct {v0, p0, p1}, Lcom/obs/services/model/select/SelectInputStream;-><init>(Ljava/io/InputStream;Lcom/obs/services/model/select/SelectEventVisitor;)V

    return-object v0
.end method
