.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLocationHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketLocationHandler"
.end annotation


# instance fields
.field private location:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 889
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 898
    const-string v0, "LocationConstraint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    return-void

    .line 899
    :cond_12
    :goto_12
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLocationHandler;->location:Ljava/lang/String;

    return-void
.end method

.method public getLocation()Ljava/lang/String;
    .registers 1

    .line 893
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLocationHandler;->location:Ljava/lang/String;

    return-object p0
.end method
