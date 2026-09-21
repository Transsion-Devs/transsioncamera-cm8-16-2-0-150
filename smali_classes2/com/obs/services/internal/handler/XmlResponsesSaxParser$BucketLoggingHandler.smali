.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketLoggingHandler"
.end annotation


# instance fields
.field private bucketLoggingStatus:Lcom/obs/services/model/BucketLoggingConfiguration;

.field private currentDelivered:Z

.field private currentGrantee:Lcom/obs/services/model/GranteeInterface;

.field private currentPermission:Lcom/obs/services/model/Permission;

.field private targetBucket:Ljava/lang/String;

.field private targetPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 824
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 826
    new-instance v0, Lcom/obs/services/model/BucketLoggingConfiguration;

    invoke-direct {v0}, Lcom/obs/services/model/BucketLoggingConfiguration;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->bucketLoggingStatus:Lcom/obs/services/model/BucketLoggingConfiguration;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 844
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_f2

    goto/16 :goto_8e

    :sswitch_d
    const-string v0, "Canned"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_8e

    :cond_17
    const/16 v1, 0xa

    goto/16 :goto_8e

    :sswitch_1b
    const-string v0, "Agency"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_8e

    :cond_25
    const/16 v1, 0x9

    goto/16 :goto_8e

    :sswitch_29
    const-string v0, "Delivered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto/16 :goto_8e

    :cond_33
    const/16 v1, 0x8

    goto/16 :goto_8e

    :sswitch_37
    const-string v0, "Permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    goto :goto_8e

    :cond_40
    const/4 v1, 0x7

    goto :goto_8e

    :sswitch_42
    const-string v0, "LoggingEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_8e

    :cond_4b
    const/4 v1, 0x6

    goto :goto_8e

    :sswitch_4d
    const-string v0, "Grant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_8e

    :cond_56
    const/4 v1, 0x5

    goto :goto_8e

    :sswitch_58
    const-string v0, "URI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_61

    goto :goto_8e

    :cond_61
    const/4 v1, 0x4

    goto :goto_8e

    :sswitch_63
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto :goto_8e

    :cond_6c
    const/4 v1, 0x3

    goto :goto_8e

    :sswitch_6e
    const-string v0, "TargetPrefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_8e

    :cond_77
    const/4 v1, 0x2

    goto :goto_8e

    :sswitch_79
    const-string v0, "TargetBucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_82

    goto :goto_8e

    :cond_82
    const/4 v1, 0x1

    goto :goto_8e

    :sswitch_84
    const-string v0, "DisplayName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    goto :goto_8e

    :cond_8d
    const/4 v1, 0x0

    :goto_8e
    packed-switch v1, :pswitch_data_120

    goto :goto_f0

    .line 856
    :pswitch_92
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->bucketLoggingStatus:Lcom/obs/services/model/BucketLoggingConfiguration;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/BucketLoggingConfiguration;->setAgency(Ljava/lang/String;)V

    return-void

    .line 873
    :pswitch_98
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->currentDelivered:Z

    return-void

    .line 876
    :pswitch_9f
    invoke-static {p2}, Lcom/obs/services/model/Permission;->parsePermission(Ljava/lang/String;)Lcom/obs/services/model/Permission;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->currentPermission:Lcom/obs/services/model/Permission;

    return-void

    .line 852
    :pswitch_a6
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->bucketLoggingStatus:Lcom/obs/services/model/BucketLoggingConfiguration;

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->targetBucket:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/obs/services/model/BucketLoggingConfiguration;->setTargetBucketName(Ljava/lang/String;)V

    .line 853
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->bucketLoggingStatus:Lcom/obs/services/model/BucketLoggingConfiguration;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->targetPrefix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/obs/services/model/BucketLoggingConfiguration;->setLogfilePrefix(Ljava/lang/String;)V

    return-void

    .line 879
    :pswitch_b5
    new-instance p1, Lcom/obs/services/model/GrantAndPermission;

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->currentGrantee:Lcom/obs/services/model/GranteeInterface;

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->currentPermission:Lcom/obs/services/model/Permission;

    invoke-direct {p1, p2, v0}, Lcom/obs/services/model/GrantAndPermission;-><init>(Lcom/obs/services/model/GranteeInterface;Lcom/obs/services/model/Permission;)V

    .line 880
    iget-boolean p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->currentDelivered:Z

    invoke-virtual {p1, p2}, Lcom/obs/services/model/GrantAndPermission;->setDelivered(Z)V

    .line 881
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->bucketLoggingStatus:Lcom/obs/services/model/BucketLoggingConfiguration;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->addTargetGrant(Lcom/obs/services/model/GrantAndPermission;)V

    return-void

    .line 864
    :pswitch_c9
    new-instance p1, Lcom/obs/services/model/GroupGrantee;

    invoke-direct {p1}, Lcom/obs/services/model/GroupGrantee;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->currentGrantee:Lcom/obs/services/model/GranteeInterface;

    .line 865
    invoke-interface {p1, p2}, Lcom/obs/services/model/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    return-void

    .line 859
    :pswitch_d4
    new-instance p1, Lcom/obs/services/model/CanonicalGrantee;

    invoke-direct {p1}, Lcom/obs/services/model/CanonicalGrantee;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->currentGrantee:Lcom/obs/services/model/GranteeInterface;

    .line 860
    invoke-interface {p1, p2}, Lcom/obs/services/model/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    return-void

    .line 849
    :pswitch_df
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->targetPrefix:Ljava/lang/String;

    return-void

    .line 846
    :pswitch_e2
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->targetBucket:Ljava/lang/String;

    return-void

    .line 868
    :pswitch_e5
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->currentGrantee:Lcom/obs/services/model/GranteeInterface;

    instance-of p1, p0, Lcom/obs/services/model/CanonicalGrantee;

    if-eqz p1, :cond_f0

    .line 869
    check-cast p0, Lcom/obs/services/model/CanonicalGrantee;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/CanonicalGrantee;->setDisplayName(Ljava/lang/String;)V

    :cond_f0
    :goto_f0
    return-void

    nop

    :sswitch_data_f2
    .sparse-switch
        -0x366a81b3 -> :sswitch_84
        -0x33683505 -> :sswitch_79
        -0x1badcc5d -> :sswitch_6e
        0x91b -> :sswitch_63
        0x1494c -> :sswitch_58
        0x41dd0fc -> :sswitch_4d
        0x2f8d6b02 -> :sswitch_42
        0x57f7a1ef -> :sswitch_37
        0x69008064 -> :sswitch_29
        0x74c60825 -> :sswitch_1b
        0x77df43dd -> :sswitch_d
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_d4
        :pswitch_c9
        :pswitch_b5
        :pswitch_a6
        :pswitch_9f
        :pswitch_98
        :pswitch_92
        :pswitch_c9
    .end packed-switch
.end method

.method public getBucketLoggingStatus()Lcom/obs/services/model/BucketLoggingConfiguration;
    .registers 1

    .line 839
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketLoggingHandler;->bucketLoggingStatus:Lcom/obs/services/model/BucketLoggingConfiguration;

    return-object p0
.end method
