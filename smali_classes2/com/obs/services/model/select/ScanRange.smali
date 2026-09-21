.class public Lcom/obs/services/model/select/ScanRange;
.super Lcom/obs/services/model/select/XmlSerialization;
.source "SourceFile"


# instance fields
.field private end:Ljava/lang/Long;

.field private start:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/obs/services/model/select/XmlSerialization;-><init>()V

    return-void
.end method


# virtual methods
.method public appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 4

    .line 62
    const-string v0, "ScanRange"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/obs/services/model/select/ScanRange;->start:Ljava/lang/Long;

    if-eqz v0, :cond_19

    .line 64
    const-string v0, "Start"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/model/select/ScanRange;->start:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 66
    :cond_19
    iget-object v0, p0, Lcom/obs/services/model/select/ScanRange;->end:Ljava/lang/Long;

    if-eqz v0, :cond_2c

    .line 67
    const-string v0, "End"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/obs/services/model/select/ScanRange;->end:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_2c
    return-void
.end method

.method public withEnd(J)Lcom/obs/services/model/select/ScanRange;
    .registers 3

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/ScanRange;->end:Ljava/lang/Long;

    return-object p0
.end method

.method public withStart(J)Lcom/obs/services/model/select/ScanRange;
    .registers 3

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/ScanRange;->start:Ljava/lang/Long;

    return-object p0
.end method
