.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketTagInfoHandler"
.end annotation


# instance fields
.field private currentKey:Ljava/lang/String;

.field private currentValue:Ljava/lang/String;

.field private tagInfo:Lcom/obs/services/model/BucketTagInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2096
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 2097
    new-instance v0, Lcom/obs/services/model/BucketTagInfo;

    invoke-direct {v0}, Lcom/obs/services/model/BucketTagInfo;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;->tagInfo:Lcom/obs/services/model/BucketTagInfo;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 2109
    const-string v0, "Key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2110
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;->currentKey:Ljava/lang/String;

    return-void

    .line 2111
    :cond_b
    const-string v0, "Value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2112
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;->currentValue:Ljava/lang/String;

    return-void

    .line 2113
    :cond_16
    const-string p2, "Tag"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 2114
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;->tagInfo:Lcom/obs/services/model/BucketTagInfo;

    invoke-virtual {p1}, Lcom/obs/services/model/BucketTagInfo;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object p1

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;->currentKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/obs/services/model/BucketTagInfo$TagSet;->addTag(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    :cond_2b
    return-void
.end method

.method public getBucketTagInfo()Lcom/obs/services/model/BucketTagInfo;
    .registers 1

    .line 2104
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketTagInfoHandler;->tagInfo:Lcom/obs/services/model/BucketTagInfo;

    return-object p0
.end method
