.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketWebsiteConfigurationHandler"
.end annotation


# instance fields
.field private config:Lcom/obs/services/model/WebsiteConfiguration;

.field private currentCondition:Lcom/obs/services/model/RouteRuleCondition;

.field private currentRedirectAllRule:Lcom/obs/services/model/RedirectAllRequest;

.field private currentRedirectRule:Lcom/obs/services/model/Redirect;

.field private currentRoutingRule:Lcom/obs/services/model/RouteRule;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1925
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 1926
    new-instance v0, Lcom/obs/services/model/WebsiteConfiguration;

    invoke-direct {v0}, Lcom/obs/services/model/WebsiteConfiguration;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->config:Lcom/obs/services/model/WebsiteConfiguration;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1966
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->config:Lcom/obs/services/model/WebsiteConfiguration;

    if-eqz v0, :cond_1f

    .line 1967
    const-string v0, "Suffix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1968
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->config:Lcom/obs/services/model/WebsiteConfiguration;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/WebsiteConfiguration;->setSuffix(Ljava/lang/String;)V

    goto :goto_1f

    .line 1969
    :cond_12
    const-string v0, "Key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1970
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->config:Lcom/obs/services/model/WebsiteConfiguration;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/WebsiteConfiguration;->setKey(Ljava/lang/String;)V

    .line 1974
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentCondition:Lcom/obs/services/model/RouteRuleCondition;

    if-eqz v0, :cond_3e

    .line 1975
    const-string v0, "KeyPrefixEquals"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1976
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentCondition:Lcom/obs/services/model/RouteRuleCondition;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/RouteRuleCondition;->setKeyPrefixEquals(Ljava/lang/String;)V

    goto :goto_3e

    .line 1977
    :cond_31
    const-string v0, "HttpErrorCodeReturnedEquals"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1978
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentCondition:Lcom/obs/services/model/RouteRuleCondition;

    invoke-virtual {v0, p2}, Lcom/obs/services/model/RouteRuleCondition;->setHttpErrorCodeReturnedEquals(Ljava/lang/String;)V

    .line 1982
    :cond_3e
    :goto_3e
    const-string v0, "Protocol"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1983
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectAllRule:Lcom/obs/services/model/RedirectAllRequest;

    if-eqz v0, :cond_52

    .line 1984
    invoke-static {p2}, Lcom/obs/services/model/ProtocolEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/ProtocolEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/RedirectAllRequest;->setRedirectProtocol(Lcom/obs/services/model/ProtocolEnum;)V

    goto :goto_75

    .line 1985
    :cond_52
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/obs/services/model/Redirect;

    if-eqz v0, :cond_75

    .line 1986
    invoke-static {p2}, Lcom/obs/services/model/ProtocolEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/ProtocolEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/model/Redirect;->setRedirectProtocol(Lcom/obs/services/model/ProtocolEnum;)V

    goto :goto_75

    .line 1988
    :cond_5e
    const-string v0, "HostName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1989
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectAllRule:Lcom/obs/services/model/RedirectAllRequest;

    if-eqz v0, :cond_6e

    .line 1990
    invoke-virtual {v0, p2}, Lcom/obs/services/model/RedirectAllRequest;->setHostName(Ljava/lang/String;)V

    goto :goto_75

    .line 1991
    :cond_6e
    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/obs/services/model/Redirect;

    if-eqz v0, :cond_75

    .line 1992
    invoke-virtual {v0, p2}, Lcom/obs/services/model/Redirect;->setHostName(Ljava/lang/String;)V

    .line 1996
    :cond_75
    :goto_75
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/obs/services/model/Redirect;

    if-eqz p0, :cond_b1

    .line 1997
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_b2

    goto :goto_a2

    :sswitch_82
    const-string v0, "ReplaceKeyPrefixWith"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    goto :goto_a2

    :cond_8b
    const/4 v1, 0x2

    goto :goto_a2

    :sswitch_8d
    const-string v0, "HttpRedirectCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_96

    goto :goto_a2

    :cond_96
    const/4 v1, 0x1

    goto :goto_a2

    :sswitch_98
    const-string v0, "ReplaceKeyWith"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a1

    goto :goto_a2

    :cond_a1
    const/4 v1, 0x0

    :goto_a2
    packed-switch v1, :pswitch_data_c0

    goto :goto_b1

    .line 1999
    :pswitch_a6
    invoke-virtual {p0, p2}, Lcom/obs/services/model/Redirect;->setReplaceKeyPrefixWith(Ljava/lang/String;)V

    return-void

    .line 2005
    :pswitch_aa
    invoke-virtual {p0, p2}, Lcom/obs/services/model/Redirect;->setHttpRedirectCode(Ljava/lang/String;)V

    return-void

    .line 2002
    :pswitch_ae
    invoke-virtual {p0, p2}, Lcom/obs/services/model/Redirect;->setReplaceKeyWith(Ljava/lang/String;)V

    :cond_b1
    :goto_b1
    return-void

    :sswitch_data_b2
    .sparse-switch
        -0x4a4f856f -> :sswitch_98
        0x1cb5e0b1 -> :sswitch_8d
        0x22ad4403 -> :sswitch_82
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
    .end packed-switch
.end method

.method public getWebsiteConfig()Lcom/obs/services/model/WebsiteConfiguration;
    .registers 1

    .line 1937
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->config:Lcom/obs/services/model/WebsiteConfiguration;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 4

    .line 1942
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_76

    goto :goto_37

    :sswitch_c
    const-string v0, "RedirectAllRequestsTo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_37

    :cond_15
    const/4 v1, 0x3

    goto :goto_37

    :sswitch_17
    const-string v0, "Condition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_37

    :cond_20
    const/4 v1, 0x2

    goto :goto_37

    :sswitch_22
    const-string v0, "RoutingRule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_37

    :cond_2b
    const/4 v1, 0x1

    goto :goto_37

    :sswitch_2d
    const-string v0, "Redirect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    packed-switch v1, :pswitch_data_88

    return-void

    .line 1944
    :pswitch_3b
    new-instance p1, Lcom/obs/services/model/RedirectAllRequest;

    invoke-direct {p1}, Lcom/obs/services/model/RedirectAllRequest;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectAllRule:Lcom/obs/services/model/RedirectAllRequest;

    .line 1945
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->config:Lcom/obs/services/model/WebsiteConfiguration;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/WebsiteConfiguration;->setRedirectAllRequestsTo(Lcom/obs/services/model/RedirectAllRequest;)V

    return-void

    .line 1952
    :pswitch_48
    new-instance p1, Lcom/obs/services/model/RouteRuleCondition;

    invoke-direct {p1}, Lcom/obs/services/model/RouteRuleCondition;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentCondition:Lcom/obs/services/model/RouteRuleCondition;

    .line 1953
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRoutingRule:Lcom/obs/services/model/RouteRule;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/RouteRule;->setCondition(Lcom/obs/services/model/RouteRuleCondition;)V

    return-void

    .line 1948
    :pswitch_55
    new-instance p1, Lcom/obs/services/model/RouteRule;

    invoke-direct {p1}, Lcom/obs/services/model/RouteRule;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRoutingRule:Lcom/obs/services/model/RouteRule;

    .line 1949
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->config:Lcom/obs/services/model/WebsiteConfiguration;

    invoke-virtual {p1}, Lcom/obs/services/model/WebsiteConfiguration;->getRouteRules()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRoutingRule:Lcom/obs/services/model/RouteRule;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1956
    :pswitch_68
    new-instance p1, Lcom/obs/services/model/Redirect;

    invoke-direct {p1}, Lcom/obs/services/model/Redirect;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRedirectRule:Lcom/obs/services/model/Redirect;

    .line 1957
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketWebsiteConfigurationHandler;->currentRoutingRule:Lcom/obs/services/model/RouteRule;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/RouteRule;->setRedirect(Lcom/obs/services/model/Redirect;)V

    return-void

    nop

    :sswitch_data_76
    .sparse-switch
        -0x2a68a404 -> :sswitch_2d
        -0x19a1bf3e -> :sswitch_22
        0x441b8cfb -> :sswitch_17
        0x7c813744 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_68
        :pswitch_55
        :pswitch_48
        :pswitch_3b
    .end packed-switch
.end method
