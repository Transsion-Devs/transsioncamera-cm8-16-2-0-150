.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketCorsHandler"
.end annotation


# instance fields
.field private allowedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowedMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowedOrigins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final configuration:Lcom/obs/services/model/BucketCors;

.field private currentRule:Lcom/obs/services/model/BucketCorsRule;

.field private exposedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 904
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 906
    new-instance v0, Lcom/obs/services/model/BucketCors;

    invoke-direct {v0}, Lcom/obs/services/model/BucketCors;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->configuration:Lcom/obs/services/model/BucketCors;

    const/4 v0, 0x0

    .line 910
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedMethods:Ljava/util/List;

    .line 912
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedOrigins:Ljava/util/List;

    .line 914
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->exposedHeaders:Ljava/util/List;

    .line 916
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedHeaders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 949
    const-string v0, "CORSRule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 950
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->currentRule:Lcom/obs/services/model/BucketCorsRule;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedHeaders:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketCorsRule;->setAllowedHeader(Ljava/util/List;)V

    .line 951
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->currentRule:Lcom/obs/services/model/BucketCorsRule;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedMethods:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketCorsRule;->setAllowedMethod(Ljava/util/List;)V

    .line 952
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->currentRule:Lcom/obs/services/model/BucketCorsRule;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedOrigins:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketCorsRule;->setAllowedOrigin(Ljava/util/List;)V

    .line 953
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->currentRule:Lcom/obs/services/model/BucketCorsRule;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->exposedHeaders:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/obs/services/model/BucketCorsRule;->setExposeHeader(Ljava/util/List;)V

    .line 954
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->configuration:Lcom/obs/services/model/BucketCors;

    invoke-virtual {v0}, Lcom/obs/services/model/S3BucketCors;->getRules()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->currentRule:Lcom/obs/services/model/BucketCorsRule;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 955
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedHeaders:Ljava/util/List;

    .line 956
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedMethods:Ljava/util/List;

    .line 957
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedOrigins:Ljava/util/List;

    .line 958
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->exposedHeaders:Ljava/util/List;

    .line 959
    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->currentRule:Lcom/obs/services/model/BucketCorsRule;

    .line 961
    :cond_3a
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->currentRule:Lcom/obs/services/model/BucketCorsRule;

    if-eqz v0, :cond_4a

    .line 962
    invoke-virtual {v0, p2}, Lcom/obs/services/model/BucketCorsRule;->setId(Ljava/lang/String;)V

    return-void

    .line 964
    :cond_4a
    const-string v0, "AllowedOrigin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedOrigins:Ljava/util/List;

    if-eqz v0, :cond_5a

    .line 965
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 967
    :cond_5a
    const-string v0, "AllowedMethod"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedMethods:Ljava/util/List;

    if-eqz v0, :cond_6a

    .line 968
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 970
    :cond_6a
    const-string v0, "MaxAgeSeconds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->currentRule:Lcom/obs/services/model/BucketCorsRule;

    if-eqz v0, :cond_7e

    .line 971
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/obs/services/model/BucketCorsRule;->setMaxAgeSecond(I)V

    return-void

    .line 973
    :cond_7e
    const-string v0, "ExposeHeader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->exposedHeaders:Ljava/util/List;

    if-eqz v0, :cond_8e

    .line 974
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 976
    :cond_8e
    const-string v0, "AllowedHeader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9d

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedHeaders:Ljava/util/List;

    if-eqz p0, :cond_9d

    .line 977
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9d
    return-void
.end method

.method public getConfiguration()Lcom/obs/services/model/BucketCors;
    .registers 1

    .line 919
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->configuration:Lcom/obs/services/model/BucketCors;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 925
    const-string v0, "CORSRule"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 926
    new-instance v0, Lcom/obs/services/model/BucketCorsRule;

    invoke-direct {v0}, Lcom/obs/services/model/BucketCorsRule;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->currentRule:Lcom/obs/services/model/BucketCorsRule;

    .line 928
    :cond_f
    const-string v0, "AllowedOrigin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 929
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedOrigins:Ljava/util/List;

    if-nez p1, :cond_5e

    .line 930
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedOrigins:Ljava/util/List;

    return-void

    .line 932
    :cond_23
    const-string v0, "AllowedMethod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 933
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedMethods:Ljava/util/List;

    if-nez p1, :cond_5e

    .line 934
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedMethods:Ljava/util/List;

    return-void

    .line 936
    :cond_37
    const-string v0, "ExposeHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 937
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->exposedHeaders:Ljava/util/List;

    if-nez p1, :cond_5e

    .line 938
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->exposedHeaders:Ljava/util/List;

    return-void

    .line 940
    :cond_4b
    const-string v0, "AllowedHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 941
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedHeaders:Ljava/util/List;

    if-nez p1, :cond_5e

    .line 942
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketCorsHandler;->allowedHeaders:Ljava/util/List;

    :cond_5e
    return-void
.end method
