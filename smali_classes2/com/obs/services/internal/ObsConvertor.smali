.class public Lcom/obs/services/internal/ObsConvertor;
.super Lcom/obs/services/internal/V2Convertor;
.source "SourceFile"


# static fields
.field private static instance:Lcom/obs/services/internal/ObsConvertor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/obs/services/internal/ObsConvertor;

    invoke-direct {v0}, Lcom/obs/services/internal/ObsConvertor;-><init>()V

    sput-object v0, Lcom/obs/services/internal/ObsConvertor;->instance:Lcom/obs/services/internal/ObsConvertor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Lcom/obs/services/internal/V2Convertor;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/obs/services/internal/IConvertor;
    .registers 1

    .line 49
    sget-object v0, Lcom/obs/services/internal/ObsConvertor;->instance:Lcom/obs/services/internal/ObsConvertor;

    return-object v0
.end method

.method public static transEventTypeStatic(Lcom/obs/services/model/EventTypeEnum;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_26

    .line 269
    sget-object v0, Lcom/obs/services/internal/ObsConvertor$1;->$SwitchMap$com$obs$services$model$EventTypeEnum:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_2a

    goto :goto_26

    .line 292
    :pswitch_e
    const-string p0, "ObjectRemoved:DeleteMarkerCreated"

    return-object p0

    .line 289
    :pswitch_11
    const-string p0, "ObjectRemoved:Delete"

    return-object p0

    .line 286
    :pswitch_14
    const-string p0, "ObjectRemoved:*"

    return-object p0

    .line 283
    :pswitch_17
    const-string p0, "ObjectCreated:CompleteMultipartUpload"

    return-object p0

    .line 280
    :pswitch_1a
    const-string p0, "ObjectCreated:Copy"

    return-object p0

    .line 277
    :pswitch_1d
    const-string p0, "ObjectCreated:Post"

    return-object p0

    .line 274
    :pswitch_20
    const-string p0, "ObjectCreated:Put"

    return-object p0

    .line 271
    :pswitch_23
    const-string p0, "ObjectCreated:*"

    return-object p0

    .line 298
    :cond_26
    :goto_26
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method private transGrantsBuilder([Lcom/obs/services/model/GrantAndPermission;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 9

    .line 129
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6b

    aget-object v2, p1, v1

    .line 130
    invoke-virtual {v2}, Lcom/obs/services/model/GrantAndPermission;->getGrantee()Lcom/obs/services/model/GranteeInterface;

    move-result-object v3

    .line 131
    invoke-virtual {v2}, Lcom/obs/services/model/GrantAndPermission;->getPermission()Lcom/obs/services/model/Permission;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 134
    instance-of v4, v3, Lcom/obs/services/model/CanonicalGrantee;

    const-string v5, "Grantee"

    if-eqz v4, :cond_2d

    .line 135
    invoke-static {v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    const-string v5, "ID"

    invoke-virtual {v4, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    .line 136
    invoke-interface {v3}, Lcom/obs/services/model/GranteeInterface;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    goto :goto_4b

    .line 137
    :cond_2d
    instance-of v4, v3, Lcom/obs/services/model/GroupGrantee;

    if-eqz v4, :cond_4a

    .line 138
    invoke-static {v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    const-string v5, "Canned"

    invoke-virtual {v4, v5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    check-cast v3, Lcom/obs/services/model/GroupGrantee;

    .line 139
    invoke-virtual {v3}, Lcom/obs/services/model/GroupGrantee;->getGroupGranteeType()Lcom/obs/services/model/GroupGranteeEnum;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/obs/services/internal/ObsConvertor;->transGroupGrantee(Lcom/obs/services/model/GroupGranteeEnum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    if-eqz v3, :cond_68

    .line 143
    const-string v4, "Grant"

    invoke-virtual {p2, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    const-string v4, "Permission"

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    .line 144
    invoke-virtual {v2}, Lcom/obs/services/model/Permission;->getPermissionString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6b
    return-void
.end method


# virtual methods
.method public transAccessControlList(Lcom/obs/services/model/AccessControlList;Z)Ljava/lang/String;
    .registers 15

    .line 152
    invoke-virtual {p1}, Lcom/obs/services/model/AccessControlList;->getOwner()Lcom/obs/services/model/Owner;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lcom/obs/services/model/AccessControlList;->getGrantAndPermissions()[Lcom/obs/services/model/GrantAndPermission;

    move-result-object v1

    .line 155
    :try_start_8
    const-string v2, "AccessControlPolicy"

    invoke-static {v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2
    :try_end_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_e} :catch_e6
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_8 .. :try_end_e} :catch_e6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_e} :catch_e6

    .line 156
    const-string v3, "ID"

    if-eqz v0, :cond_27

    .line 157
    :try_start_12
    const-string v4, "Owner"

    invoke-virtual {v2, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/obs/services/model/Owner;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    :try_end_27
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12 .. :try_end_27} :catch_e6
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_12 .. :try_end_27} :catch_e6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_12 .. :try_end_27} :catch_e6

    .line 159
    :cond_27
    const-string v0, "Delivered"

    if-nez p2, :cond_3a

    .line 160
    :try_start_2b
    invoke-virtual {v2, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/obs/services/model/AccessControlList;->isDelivered()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 163
    :cond_3a
    array-length p1, v1

    if-lez p1, :cond_e1

    .line 164
    const-string p1, "AccessControlList"

    invoke-virtual {v2, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    .line 165
    array-length v4, v1

    const/4 v5, 0x0

    :goto_45
    if-ge v5, v4, :cond_e1

    aget-object v6, v1, v5

    .line 166
    invoke-virtual {v6}, Lcom/obs/services/model/GrantAndPermission;->getGrantee()Lcom/obs/services/model/GranteeInterface;

    move-result-object v7

    .line 167
    invoke-virtual {v6}, Lcom/obs/services/model/GrantAndPermission;->getPermission()Lcom/obs/services/model/Permission;

    move-result-object v8

    .line 170
    instance-of v9, v7, Lcom/obs/services/model/CanonicalGrantee;
    :try_end_53
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2b .. :try_end_53} :catch_e6
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2b .. :try_end_53} :catch_e6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2b .. :try_end_53} :catch_e6

    const-string v10, "Grantee"

    if-eqz v9, :cond_6c

    .line 171
    :try_start_57
    invoke-static {v10}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v9

    .line 172
    invoke-interface {v7}, Lcom/obs/services/model/GranteeInterface;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v7

    goto :goto_ad

    .line 173
    :cond_6c
    instance-of v9, v7, Lcom/obs/services/model/GroupGrantee;

    if-eqz v9, :cond_95

    .line 174
    move-object v9, v7

    check-cast v9, Lcom/obs/services/model/GroupGrantee;

    invoke-virtual {v9}, Lcom/obs/services/model/GroupGrantee;->getGroupGranteeType()Lcom/obs/services/model/GroupGranteeEnum;

    move-result-object v9

    sget-object v11, Lcom/obs/services/model/GroupGranteeEnum;->ALL_USERS:Lcom/obs/services/model/GroupGranteeEnum;

    if-eq v9, v11, :cond_7c

    goto :goto_dd

    .line 177
    :cond_7c
    invoke-static {v10}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v9

    const-string v10, "Canned"

    invoke-virtual {v9, v10}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v9

    check-cast v7, Lcom/obs/services/model/GroupGrantee;

    .line 178
    invoke-virtual {v7}, Lcom/obs/services/model/GroupGrantee;->getGroupGranteeType()Lcom/obs/services/model/GroupGranteeEnum;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/obs/services/internal/ObsConvertor;->transGroupGrantee(Lcom/obs/services/model/GroupGranteeEnum;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v7

    goto :goto_ad

    :cond_95
    if-eqz v7, :cond_ac

    .line 180
    invoke-static {v10}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v9

    .line 181
    invoke-interface {v7}, Lcom/obs/services/model/GranteeInterface;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v7

    goto :goto_ad

    :cond_ac
    const/4 v7, 0x0

    :goto_ad
    if-eqz v7, :cond_dd

    .line 184
    const-string v9, "Grant"

    invoke-virtual {p1, v9}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v7

    if-eqz v8, :cond_cc

    .line 186
    const-string v9, "Permission"

    invoke-virtual {v7, v9}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v9

    .line 187
    invoke-virtual {v8}, Lcom/obs/services/model/Permission;->getPermissionString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_cc
    if-eqz p2, :cond_dd

    .line 190
    invoke-virtual {v7, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/obs/services/model/GrantAndPermission;->isDelivered()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_dd
    :goto_dd
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_45

    .line 196
    :cond_e1
    invoke-virtual {v2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_e5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_57 .. :try_end_e5} :catch_e6
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_57 .. :try_end_e5} :catch_e6
    .catch Ljavax/xml/transform/TransformerException; {:try_start_57 .. :try_end_e5} :catch_e6

    return-object p0

    :catch_e6
    move-exception p0

    .line 198
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string p2, "Failed to build XML document for ACL"

    invoke-direct {p1, p2, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transBucketEcryption(Lcom/obs/services/model/BucketEncryption;)Ljava/lang/String;
    .registers 4

    .line 81
    invoke-virtual {p1}, Lcom/obs/services/model/BucketEncryption;->getSseAlgorithm()Lcom/obs/services/model/SSEAlgorithmEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/SSEAlgorithmEnum;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/obs/services/model/SSEAlgorithmEnum;->KMS:Lcom/obs/services/model/SSEAlgorithmEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SSEAlgorithmEnum;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 84
    invoke-virtual {p1}, Lcom/obs/services/model/BucketEncryption;->getKmsKeyId()Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    .line 83
    :cond_19
    const-string p1, ""

    .line 86
    :goto_1b
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/V2BucketConvertor;->transBucketEcryptionXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transBucketLoction(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 55
    :try_start_0
    const-string p0, "CreateBucketConfiguration"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "Location"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 56
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 59
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transBucketLoggingConfiguration(Lcom/obs/services/model/BucketLoggingConfiguration;)Ljava/lang/String;
    .registers 6

    .line 103
    :try_start_0
    const-string v0, "BucketLoggingStatus"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getAgency()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 105
    const-string v1, "Agency"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getAgency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 107
    :cond_1d
    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 108
    const-string v1, "LoggingEnabled"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getTargetBucketName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 110
    const-string v2, "TargetBucket"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getTargetBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 112
    :cond_40
    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getLogfilePrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 113
    const-string v2, "TargetPrefix"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getLogfilePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 115
    :cond_57
    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getTargetGrants()[Lcom/obs/services/model/GrantAndPermission;

    move-result-object p1

    .line 116
    array-length v2, p1

    if-lez v2, :cond_67

    .line 117
    const-string v2, "TargetGrants"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 118
    invoke-direct {p0, p1, v1}, Lcom/obs/services/internal/ObsConvertor;->transGrantsBuilder([Lcom/obs/services/model/GrantAndPermission;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    .line 121
    :cond_67
    invoke-virtual {v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    return-object p0

    :catch_6c
    move-exception p0

    .line 123
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for BucketLoggingConfiguration"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transBucketNotificationConfiguration(Lcom/obs/services/model/BucketNotificationConfiguration;)Ljava/lang/String;
    .registers 9

    .line 207
    :try_start_0
    const-string v0, "NotificationConfiguration"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    if-nez p1, :cond_d

    .line 209
    invoke-virtual {v2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 212
    :cond_d
    invoke-virtual {p1}, Lcom/obs/services/model/BucketNotificationConfiguration;->getTopicConfigurations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/obs/services/model/TopicConfiguration;

    .line 213
    const-string v4, "TopicConfiguration"

    const-string v5, "Topic"

    const-string v6, "Object"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/V2BucketConvertor;->packNotificationConfig(Lcom/obs/services/internal/xml/OBSXMLBuilder;Lcom/obs/services/model/AbstractNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    goto :goto_15

    :cond_2e
    move-object v1, p0

    .line 216
    invoke-virtual {p1}, Lcom/obs/services/model/BucketNotificationConfiguration;->getFunctionGraphConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/obs/services/model/FunctionGraphConfiguration;

    .line 217
    const-string v4, "FunctionGraphConfiguration"

    const-string v5, "FunctionGraph"

    const-string v6, "Object"

    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/V2BucketConvertor;->packNotificationConfig(Lcom/obs/services/internal/xml/OBSXMLBuilder;Lcom/obs/services/model/AbstractNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 220
    :cond_4e
    invoke-virtual {v2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    return-object p0

    :catch_53
    move-exception v0

    move-object p0, v0

    .line 222
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for Notification"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transCannedAcl(Ljava/lang/String;)Lcom/obs/services/model/AccessControlList;
    .registers 2

    .line 327
    const-string p0, "private"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 328
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PRIVATE:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 329
    :cond_b
    const-string p0, "public-read"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 330
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 331
    :cond_16
    const-string p0, "public-read-write"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 332
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 333
    :cond_21
    const-string p0, "public-read-delivered"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 334
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_DELIVERED:Lcom/obs/services/model/AccessControlList;

    return-object p0

    .line 335
    :cond_2c
    const-string p0, "public-read-write-delivered"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 336
    sget-object p0, Lcom/obs/services/model/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE_DELIVERED:Lcom/obs/services/model/AccessControlList;

    return-object p0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public transEventType(Lcom/obs/services/model/EventTypeEnum;)Ljava/lang/String;
    .registers 2

    .line 263
    invoke-static {p1}, Lcom/obs/services/internal/ObsConvertor;->transEventTypeStatic(Lcom/obs/services/model/EventTypeEnum;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transGroupGrantee(Lcom/obs/services/model/GroupGranteeEnum;)Ljava/lang/String;
    .registers 2

    .line 344
    sget-object p0, Lcom/obs/services/model/GroupGranteeEnum;->ALL_USERS:Lcom/obs/services/model/GroupGranteeEnum;

    if-ne p1, p0, :cond_7

    .line 345
    const-string p0, "Everyone"

    return-object p0

    .line 347
    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method public transReplicationConfiguration(Lcom/obs/services/model/ReplicationConfiguration;)Ljava/lang/String;
    .registers 6

    .line 230
    :try_start_0
    const-string v0, "ReplicationConfiguration"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    const-string v1, "Agency"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 231
    invoke-virtual {p1}, Lcom/obs/services/model/ReplicationConfiguration;->getAgency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 232
    invoke-virtual {p1}, Lcom/obs/services/model/ReplicationConfiguration;->getRules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/ReplicationConfiguration$Rule;

    .line 233
    const-string v2, "Rule"

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 234
    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 235
    const-string v2, "ID"

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 237
    :cond_49
    const-string v2, "Prefix"

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 238
    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getStatus()Lcom/obs/services/model/RuleStatusEnum;

    move-result-object v2

    if-eqz v2, :cond_71

    .line 239
    const-string v2, "Status"

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getStatus()Lcom/obs/services/model/RuleStatusEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/obs/services/model/RuleStatusEnum;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 241
    :cond_71
    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getHistoricalObjectReplication()Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    move-result-object v2

    if-eqz v2, :cond_88

    .line 242
    const-string v2, "HistoricalObjectReplication"

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getHistoricalObjectReplication()Lcom/obs/services/model/HistoricalObjectReplicationEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/obs/services/model/HistoricalObjectReplicationEnum;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 244
    :cond_88
    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getDestination()Lcom/obs/services/model/ReplicationConfiguration$Destination;

    move-result-object v2

    if-eqz v2, :cond_d1

    .line 245
    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getDestination()Lcom/obs/services/model/ReplicationConfiguration$Destination;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Destination;->getBucket()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 246
    const-string v3, "Destination"

    invoke-virtual {v0, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    const-string v3, "Bucket"

    invoke-virtual {v0, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 247
    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getDestination()Lcom/obs/services/model/ReplicationConfiguration$Destination;

    move-result-object v2

    invoke-virtual {v2}, Lcom/obs/services/model/ReplicationConfiguration$Destination;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v2

    if-eqz v2, :cond_cd

    .line 248
    const-string v2, "StorageClass"

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    .line 249
    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Rule;->getDestination()Lcom/obs/services/model/ReplicationConfiguration$Destination;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/model/ReplicationConfiguration$Destination;->getObjectStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/ObsConvertor;->transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 251
    :cond_cd
    invoke-virtual {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 253
    :cond_d1
    invoke-virtual {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    goto/16 :goto_24

    .line 255
    :cond_d7
    invoke-virtual {v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_db} :catch_dc

    return-object p0

    :catch_dc
    move-exception p0

    .line 257
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for Replication"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transRestoreObjectRequest(Lcom/obs/services/model/RestoreObjectRequest;)Ljava/lang/String;
    .registers 4

    .line 67
    :try_start_0
    const-string p0, "RestoreRequest"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "Days"

    .line 68
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectRequest;->getDays()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 69
    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectRequest;->getRestoreTier()Lcom/obs/services/model/RestoreTierEnum;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectRequest;->getRestoreTier()Lcom/obs/services/model/RestoreTierEnum;

    move-result-object v0

    sget-object v1, Lcom/obs/services/model/RestoreTierEnum;->BULK:Lcom/obs/services/model/RestoreTierEnum;

    if-eq v0, v1, :cond_41

    .line 70
    const-string v0, "RestoreJob"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    const-string v1, "Tier"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/obs/services/model/RestoreObjectRequest;->getRestoreTier()Lcom/obs/services/model/RestoreTierEnum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/RestoreTierEnum;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 72
    :cond_41
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    return-object p0

    :catch_46
    move-exception p0

    .line 74
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for restoreobject"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_23

    .line 305
    sget-object p0, Lcom/obs/services/internal/ObsConvertor$1;->$SwitchMap$com$obs$services$model$StorageClassEnum:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_20

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1d

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1a

    const/4 p1, 0x4

    if-eq p0, p1, :cond_17

    goto :goto_23

    .line 316
    :cond_17
    const-string p0, "DEEP_ARCHIVE"

    return-object p0

    .line 313
    :cond_1a
    const-string p0, "COLD"

    return-object p0

    .line 310
    :cond_1d
    const-string p0, "WARM"

    return-object p0

    .line 307
    :cond_20
    const-string p0, "STANDARD"

    return-object p0

    .line 322
    :cond_23
    :goto_23
    const-string p0, ""

    return-object p0
.end method

.method public transStoragePolicy(Lcom/obs/services/model/BucketStoragePolicyConfiguration;)Ljava/lang/String;
    .registers 3

    .line 92
    :try_start_0
    const-string v0, "StorageClass"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lcom/obs/services/model/BucketStoragePolicyConfiguration;->getBucketStorageClass()Lcom/obs/services/model/StorageClassEnum;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/ObsConvertor;->transStorageClass(Lcom/obs/services/model/StorageClassEnum;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    .line 96
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for StorageClass"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
