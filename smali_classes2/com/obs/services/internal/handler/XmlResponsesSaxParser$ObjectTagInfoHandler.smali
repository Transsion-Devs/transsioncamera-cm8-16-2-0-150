.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectTagInfoHandler"
.end annotation


# instance fields
.field private currentKey:Ljava/lang/String;

.field private currentValue:Ljava/lang/String;

.field private tagInfo:Lcom/obs/services/model/ObjectTagResult;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2120
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 2121
    new-instance v0, Lcom/obs/services/model/ObjectTagResult;

    invoke-direct {v0}, Lcom/obs/services/model/ObjectTagResult;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;->tagInfo:Lcom/obs/services/model/ObjectTagResult;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2133
    const-string v0, "Key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2134
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;->currentKey:Ljava/lang/String;

    return-void

    .line 2135
    :cond_b
    const-string v0, "Value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2136
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;->currentValue:Ljava/lang/String;

    return-void

    .line 2137
    :cond_16
    const-string p2, "Tag"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 2138
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;->tagInfo:Lcom/obs/services/model/ObjectTagResult;

    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTagResult;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object p1

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;->currentKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/obs/services/model/BucketTagInfo$TagSet;->addTag(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    :cond_2b
    return-void
.end method

.method public getObjectTagInfo()Lcom/obs/services/model/ObjectTagResult;
    .registers 1

    .line 2128
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ObjectTagInfoHandler;->tagInfo:Lcom/obs/services/model/ObjectTagResult;

    return-object p0
.end method
