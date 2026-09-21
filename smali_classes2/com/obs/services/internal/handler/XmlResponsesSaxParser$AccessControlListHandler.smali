.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessControlListHandler"
.end annotation


# instance fields
.field protected accessControlList:Lcom/obs/services/model/AccessControlList;

.field protected currentDelivered:Z

.field protected currentGrantee:Lcom/obs/services/model/GranteeInterface;

.field protected currentPermission:Lcom/obs/services/model/Permission;

.field protected insideACL:Z

.field protected owner:Lcom/obs/services/model/Owner;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2359
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    const/4 v0, 0x0

    .line 2367
    iput-boolean v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->insideACL:Z

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2393
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->insideACL:Z

    if-nez v1, :cond_12

    .line 2394
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->owner:Lcom/obs/services/model/Owner;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/Owner;->setId(Ljava/lang/String;)V

    return-void

    .line 2395
    :cond_12
    const-string v1, "DisplayName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-boolean v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->insideACL:Z

    if-nez v2, :cond_24

    .line 2396
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->owner:Lcom/obs/services/model/Owner;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/Owner;->setDisplayName(Ljava/lang/String;)V

    return-void

    .line 2397
    :cond_24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2398
    new-instance p1, Lcom/obs/services/model/CanonicalGrantee;

    invoke-direct {p1}, Lcom/obs/services/model/CanonicalGrantee;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/obs/services/model/GranteeInterface;

    .line 2399
    invoke-interface {p1, p2}, Lcom/obs/services/model/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    return-void

    .line 2400
    :cond_35
    const-string v0, "URI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    const-string v0, "Canned"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_a8

    .line 2403
    :cond_46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2404
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/obs/services/model/GranteeInterface;

    instance-of p1, p0, Lcom/obs/services/model/CanonicalGrantee;

    if-eqz p1, :cond_a7

    .line 2405
    check-cast p0, Lcom/obs/services/model/CanonicalGrantee;

    invoke-virtual {p0, p2}, Lcom/obs/services/model/CanonicalGrantee;->setDisplayName(Ljava/lang/String;)V

    return-void

    .line 2407
    :cond_58
    const-string v0, "Permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2408
    invoke-static {p2}, Lcom/obs/services/model/Permission;->parsePermission(Ljava/lang/String;)Lcom/obs/services/model/Permission;

    move-result-object p1

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->currentPermission:Lcom/obs/services/model/Permission;

    return-void

    .line 2409
    :cond_67
    const-string v0, "Delivered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 2410
    iget-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->insideACL:Z

    if-eqz p1, :cond_7a

    .line 2411
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->currentDelivered:Z

    return-void

    .line 2413
    :cond_7a
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/obs/services/model/AccessControlList;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/obs/services/model/AccessControlList;->setDelivered(Z)V

    return-void

    .line 2415
    :cond_84
    const-string p2, "Grant"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9c

    .line 2416
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/obs/services/model/AccessControlList;

    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/obs/services/model/GranteeInterface;

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->currentPermission:Lcom/obs/services/model/Permission;

    invoke-virtual {p1, p2, v0}, Lcom/obs/services/model/AccessControlList;->grantPermission(Lcom/obs/services/model/GranteeInterface;Lcom/obs/services/model/Permission;)Lcom/obs/services/model/GrantAndPermission;

    move-result-object p1

    .line 2417
    iget-boolean p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->currentDelivered:Z

    invoke-virtual {p1, p0}, Lcom/obs/services/model/GrantAndPermission;->setDelivered(Z)V

    return-void

    .line 2418
    :cond_9c
    const-string p2, "AccessControlList"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const/4 p1, 0x0

    .line 2419
    iput-boolean p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->insideACL:Z

    :cond_a7
    return-void

    .line 2401
    :cond_a8
    :goto_a8
    new-instance p1, Lcom/obs/services/model/GroupGrantee;

    invoke-direct {p1}, Lcom/obs/services/model/GroupGrantee;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->currentGrantee:Lcom/obs/services/model/GranteeInterface;

    .line 2402
    invoke-interface {p1, p2}, Lcom/obs/services/model/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public getAccessControlList()Lcom/obs/services/model/AccessControlList;
    .registers 1

    .line 2370
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/obs/services/model/AccessControlList;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 5

    .line 2375
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_4a

    goto :goto_2d

    :sswitch_d
    const-string v0, "AccessControlList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_2d

    :cond_16
    const/4 v2, 0x2

    goto :goto_2d

    :sswitch_18
    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_2d

    :cond_21
    move v2, v1

    goto :goto_2d

    :sswitch_23
    const-string v0, "AccessControlPolicy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    packed-switch v2, :pswitch_data_58

    return-void

    .line 2384
    :pswitch_31
    iput-boolean v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->insideACL:Z

    return-void

    .line 2380
    :pswitch_34
    new-instance p1, Lcom/obs/services/model/Owner;

    invoke-direct {p1}, Lcom/obs/services/model/Owner;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->owner:Lcom/obs/services/model/Owner;

    .line 2381
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/obs/services/model/AccessControlList;

    invoke-virtual {p0, p1}, Lcom/obs/services/model/AccessControlList;->setOwner(Lcom/obs/services/model/Owner;)V

    return-void

    .line 2377
    :pswitch_41
    new-instance p1, Lcom/obs/services/model/AccessControlList;

    invoke-direct {p1}, Lcom/obs/services/model/AccessControlList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$AccessControlListHandler;->accessControlList:Lcom/obs/services/model/AccessControlList;

    return-void

    nop

    :sswitch_data_4a
    .sparse-switch
        -0x5ff61e35 -> :sswitch_23
        0x4910293 -> :sswitch_18
        0x29b73f77 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_41
        :pswitch_34
        :pswitch_31
    .end packed-switch
.end method
