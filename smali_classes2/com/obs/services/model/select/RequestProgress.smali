.class public Lcom/obs/services/model/select/RequestProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private enabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendToXml(Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 3

    .line 39
    const-string v0, "RequestProgress"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/obs/services/model/select/RequestProgress;->enabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    .line 41
    const-string v0, "Enabled"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/obs/services/model/select/RequestProgress;->enabled:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_19
    return-void
.end method

.method public withEnabled(Z)Lcom/obs/services/model/select/RequestProgress;
    .registers 2

    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/model/select/RequestProgress;->enabled:Ljava/lang/Boolean;

    return-object p0
.end method
