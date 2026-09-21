.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBucketAliasHandler"
.end annotation


# instance fields
.field private bucketAlias:Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;

.field private bucketAliasOwner:Lcom/obs/services/model/Owner;

.field private bucketList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listBucketAlias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 667
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->listBucketAlias:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 697
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_68

    goto :goto_42

    :sswitch_c
    const-string v0, "Bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_42

    :cond_15
    const/4 v1, 0x4

    goto :goto_42

    :sswitch_17
    const-string v0, "BucketAlias"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_42

    :cond_20
    const/4 v1, 0x3

    goto :goto_42

    :sswitch_22
    const-string v0, "Alias"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_42

    :cond_2b
    const/4 v1, 0x2

    goto :goto_42

    :sswitch_2d
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_42

    :cond_36
    const/4 v1, 0x1

    goto :goto_42

    :sswitch_38
    const-string v0, "BucketList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    packed-switch v1, :pswitch_data_7e

    return-void

    .line 708
    :pswitch_46
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->bucketList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 711
    :pswitch_4c
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->listBucketAlias:Ljava/util/List;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->bucketAlias:Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 702
    :pswitch_54
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->bucketAlias:Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;->setAlias(Ljava/lang/String;)V

    return-void

    .line 699
    :pswitch_5a
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->bucketAliasOwner:Lcom/obs/services/model/Owner;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/Owner;->setId(Ljava/lang/String;)V

    return-void

    .line 705
    :pswitch_60
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->bucketAlias:Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->bucketList:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;->setBucketList(Ljava/util/List;)V

    return-void

    :sswitch_data_68
    .sparse-switch
        -0x469aba38 -> :sswitch_38
        0x91b -> :sswitch_2d
        0x3c6a630 -> :sswitch_22
        0x72a9a666 -> :sswitch_17
        0x773f360a -> :sswitch_c
    .end sparse-switch

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5a
        :pswitch_54
        :pswitch_4c
        :pswitch_46
    .end packed-switch
.end method

.method public getBucketAliasOwner()Lcom/obs/services/model/Owner;
    .registers 1

    .line 677
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->bucketAliasOwner:Lcom/obs/services/model/Owner;

    return-object p0
.end method

.method public getListBucketAlias()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;",
            ">;"
        }
    .end annotation

    .line 681
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->listBucketAlias:Ljava/util/List;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 686
    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 687
    new-instance p1, Lcom/obs/services/model/Owner;

    invoke-direct {p1}, Lcom/obs/services/model/Owner;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->bucketAliasOwner:Lcom/obs/services/model/Owner;

    return-void

    .line 688
    :cond_10
    const-string v0, "BucketAlias"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 689
    new-instance p1, Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;

    invoke-direct {p1}, Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->bucketAlias:Lcom/obs/services/model/ListBucketAliasResult$BucketAlias;

    return-void

    .line 690
    :cond_20
    const-string v0, "BucketList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 691
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$ListBucketAliasHandler;->bucketList:Ljava/util/List;

    :cond_2f
    return-void
.end method
