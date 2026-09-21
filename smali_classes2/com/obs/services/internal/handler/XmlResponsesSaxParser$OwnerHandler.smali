.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;
.super Lcom/obs/services/internal/handler/SimpleHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OwnerHandler"
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .registers 2

    .line 1338
    invoke-direct {p0, p1}, Lcom/obs/services/internal/handler/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    return-void
.end method


# virtual methods
.method public endDisplayName(Ljava/lang/String;)V
    .registers 2

    .line 1353
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;->displayName:Ljava/lang/String;

    return-void
.end method

.method public endID(Ljava/lang/String;)V
    .registers 2

    .line 1349
    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;->id:Ljava/lang/String;

    return-void
.end method

.method public endInitiator(Ljava/lang/String;)V
    .registers 2

    .line 1361
    invoke-virtual {p0}, Lcom/obs/services/internal/handler/SimpleHandler;->returnControlToParentHandler()V

    return-void
.end method

.method public endOwner(Ljava/lang/String;)V
    .registers 2

    .line 1357
    invoke-virtual {p0}, Lcom/obs/services/internal/handler/SimpleHandler;->returnControlToParentHandler()V

    return-void
.end method

.method public getOwner()Lcom/obs/services/model/Owner;
    .registers 3

    .line 1342
    new-instance v0, Lcom/obs/services/model/Owner;

    invoke-direct {v0}, Lcom/obs/services/model/Owner;-><init>()V

    .line 1343
    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/obs/services/model/Owner;->setId(Ljava/lang/String;)V

    .line 1344
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$OwnerHandler;->displayName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/obs/services/model/Owner;->setDisplayName(Ljava/lang/String;)V

    return-object v0
.end method
