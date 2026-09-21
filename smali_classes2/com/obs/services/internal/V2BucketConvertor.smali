.class public abstract Lcom/obs/services/internal/V2BucketConvertor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/obs/services/internal/IConvertor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private transGrantsBuilder([Lcom/obs/services/model/GrantAndPermission;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V
    .registers 8

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_43

    aget-object v2, p1, v1

    .line 127
    invoke-virtual {v2}, Lcom/obs/services/model/GrantAndPermission;->getGrantee()Lcom/obs/services/model/GranteeInterface;

    move-result-object v3

    .line 128
    invoke-virtual {v2}, Lcom/obs/services/model/GrantAndPermission;->getPermission()Lcom/obs/services/model/Permission;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 131
    instance-of v4, v3, Lcom/obs/services/model/CanonicalGrantee;

    if-eqz v4, :cond_19

    .line 132
    invoke-virtual {p0, v3}, Lcom/obs/services/internal/V2BucketConvertor;->buildCanonicalGrantee(Lcom/obs/services/model/GranteeInterface;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    goto :goto_23

    .line 133
    :cond_19
    instance-of v4, v3, Lcom/obs/services/model/GroupGrantee;

    if-eqz v4, :cond_22

    .line 134
    invoke-virtual {p0, v3}, Lcom/obs/services/internal/V2BucketConvertor;->buildGroupGrantee(Lcom/obs/services/model/GranteeInterface;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    if-eqz v3, :cond_40

    .line 138
    const-string v4, "Grant"

    invoke-virtual {p2, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->importXMLBuilder(Lcom/jamesmurty/utils/BaseXMLBuilder;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    const-string v4, "Permission"

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    .line 139
    invoke-virtual {v2}, Lcom/obs/services/model/Permission;->getPermissionString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_43
    return-void
.end method


# virtual methods
.method protected buildCanonicalGrantee(Lcom/obs/services/model/GranteeInterface;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 4

    .line 158
    const-string p0, "Grantee"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "xmlns:xsi"

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    .line 159
    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "xsi:type"

    const-string v1, "CanonicalUser"

    .line 160
    invoke-virtual {p0, v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "ID"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 161
    invoke-interface {p1}, Lcom/obs/services/model/GranteeInterface;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 162
    check-cast p1, Lcom/obs/services/model/CanonicalGrantee;

    invoke-virtual {p1}, Lcom/obs/services/model/CanonicalGrantee;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 164
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    const-string v1, "DisplayName"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    :cond_41
    return-object p0
.end method

.method protected buildGroupGrantee(Lcom/obs/services/model/GranteeInterface;)Lcom/obs/services/internal/xml/OBSXMLBuilder;
    .registers 5

    .line 148
    const-string v0, "Grantee"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    const-string v1, "xmlns:xsi"

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    const-string v1, "xsi:type"

    const-string v2, "Group"

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    const-string v1, "URI"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->element(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    check-cast p1, Lcom/obs/services/model/GroupGrantee;

    .line 151
    invoke-virtual {p1}, Lcom/obs/services/model/GroupGrantee;->getGroupGranteeType()Lcom/obs/services/model/GroupGranteeEnum;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/obs/services/internal/IConvertor;->transGroupGrantee(Lcom/obs/services/model/GroupGranteeEnum;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected packNotificationConfig(Lcom/obs/services/internal/xml/OBSXMLBuilder;Lcom/obs/services/model/AbstractNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 270
    invoke-virtual {p1, p3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    .line 271
    invoke-virtual {p2}, Lcom/obs/services/model/AbstractNotification;->getId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_17

    .line 272
    const-string p3, "Id"

    invoke-virtual {p1, p3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p3

    invoke-virtual {p2}, Lcom/obs/services/model/AbstractNotification;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 274
    :cond_17
    invoke-virtual {p2}, Lcom/obs/services/model/AbstractNotification;->getFilter()Lcom/obs/services/model/AbstractNotification$Filter;

    move-result-object p3

    if-eqz p3, :cond_85

    invoke-virtual {p2}, Lcom/obs/services/model/AbstractNotification;->getFilter()Lcom/obs/services/model/AbstractNotification$Filter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/obs/services/model/AbstractNotification$Filter;->getFilterRules()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_85

    .line 275
    const-string p3, "Filter"

    invoke-virtual {p1, p3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    .line 276
    invoke-virtual {p2}, Lcom/obs/services/model/AbstractNotification;->getFilter()Lcom/obs/services/model/AbstractNotification$Filter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/obs/services/model/AbstractNotification$Filter;->getFilterRules()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_41
    :goto_41
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_7d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;

    if-eqz p5, :cond_41

    .line 278
    const-string v0, "FilterRule"

    invoke-virtual {p1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    const-string v1, "Value"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 279
    invoke-virtual {p5}, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->getValue()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_41

    .line 282
    :cond_7d
    invoke-virtual {p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    .line 285
    :cond_85
    instance-of p3, p2, Lcom/obs/services/model/TopicConfiguration;

    if-eqz p3, :cond_91

    .line 286
    move-object p3, p2

    check-cast p3, Lcom/obs/services/model/TopicConfiguration;

    invoke-virtual {p3}, Lcom/obs/services/model/TopicConfiguration;->getTopic()Ljava/lang/String;

    move-result-object p3

    goto :goto_92

    :cond_91
    const/4 p3, 0x0

    .line 288
    :goto_92
    instance-of p5, p2, Lcom/obs/services/model/FunctionGraphConfiguration;

    if-eqz p5, :cond_9d

    .line 289
    move-object p3, p2

    check-cast p3, Lcom/obs/services/model/FunctionGraphConfiguration;

    invoke-virtual {p3}, Lcom/obs/services/model/FunctionGraphConfiguration;->getFunctionGraph()Ljava/lang/String;

    move-result-object p3

    :cond_9d
    if-eqz p3, :cond_a6

    .line 292
    invoke-virtual {p1, p4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 295
    :cond_a6
    invoke-virtual {p2}, Lcom/obs/services/model/AbstractNotification;->getEventTypes()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_d0

    .line 296
    invoke-virtual {p2}, Lcom/obs/services/model/AbstractNotification;->getEventTypes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b4
    :goto_b4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/obs/services/model/EventTypeEnum;

    if-eqz p3, :cond_b4

    .line 298
    const-string p4, "Event"

    invoke-virtual {p1, p4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p4

    invoke-interface {p0, p3}, Lcom/obs/services/internal/IConvertor;->transEventType(Lcom/obs/services/model/EventTypeEnum;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_b4

    :cond_d0
    return-void
.end method

.method public transBucketCors(Lcom/obs/services/model/BucketCors;)Ljava/lang/String;
    .registers 7

    .line 172
    const-string p0, "Failed to build XML document for cors"

    :try_start_2
    const-string v0, "CORSConfiguration"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Lcom/obs/services/model/S3BucketCors;->getRules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/BucketCorsRule;

    .line 174
    const-string v2, "CORSRule"

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 175
    invoke-virtual {v1}, Lcom/obs/services/model/BucketCorsRule;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 176
    const-string v2, "ID"

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/obs/services/model/BucketCorsRule;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_3f

    :catch_36
    move-exception p1

    goto/16 :goto_fb

    :catch_39
    move-exception p1

    goto/16 :goto_101

    :catch_3c
    move-exception p1

    goto/16 :goto_107

    .line 178
    :cond_3f
    :goto_3f
    invoke-virtual {v1}, Lcom/obs/services/model/BucketCorsRule;->getAllowedMethod()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_67

    .line 179
    invoke-virtual {v1}, Lcom/obs/services/model/BucketCorsRule;->getAllowedMethod()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 180
    const-string v4, "AllowedMethod"

    invoke-virtual {v0, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_4d

    .line 184
    :cond_67
    invoke-virtual {v1}, Lcom/obs/services/model/BucketCorsRule;->getAllowedOrigin()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8f

    .line 185
    invoke-virtual {v1}, Lcom/obs/services/model/BucketCorsRule;->getAllowedOrigin()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 186
    const-string v4, "AllowedOrigin"

    invoke-virtual {v0, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_75

    .line 190
    :cond_8f
    invoke-virtual {v1}, Lcom/obs/services/model/BucketCorsRule;->getAllowedHeader()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b7

    .line 191
    invoke-virtual {v1}, Lcom/obs/services/model/BucketCorsRule;->getAllowedHeader()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 192
    const-string v4, "AllowedHeader"

    invoke-virtual {v0, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_9d

    .line 195
    :cond_b7
    const-string v2, "MaxAgeSeconds"

    invoke-virtual {v0, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/obs/services/model/BucketCorsRule;->getMaxAgeSecond()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 196
    invoke-virtual {v1}, Lcom/obs/services/model/BucketCorsRule;->getExposeHeader()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_f0

    .line 197
    invoke-virtual {v1}, Lcom/obs/services/model/BucketCorsRule;->getExposeHeader()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 198
    const-string v3, "ExposeHeader"

    invoke-virtual {v0, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_d6

    .line 201
    :cond_f0
    invoke-virtual {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    goto/16 :goto_10

    .line 203
    :cond_f6
    invoke-virtual {v0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_fa
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_fa} :catch_3c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_fa} :catch_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_fa} :catch_36

    return-object p0

    .line 209
    :goto_fb
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0, p1}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 207
    :goto_101
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0, p1}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 205
    :goto_107
    new-instance v0, Lcom/obs/services/internal/ServiceException;

    invoke-direct {v0, p0, p1}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public transBucketDirectColdAccess(Lcom/obs/services/model/BucketDirectColdAccess;)Ljava/lang/String;
    .registers 3

    .line 316
    :try_start_0
    const-string p0, "DirectColdAccessConfiguration"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 318
    const-string v0, "Status"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/obs/services/model/BucketDirectColdAccess;->getStatus()Lcom/obs/services/model/RuleStatusEnum;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/RuleStatusEnum;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 319
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    .line 323
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for Tagging"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transBucketEcryption(Lcom/obs/services/model/BucketEncryption;)Ljava/lang/String;
    .registers 5

    .line 72
    invoke-virtual {p1}, Lcom/obs/services/model/BucketEncryption;->getSseAlgorithm()Lcom/obs/services/model/SSEAlgorithmEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/SSEAlgorithmEnum;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 74
    sget-object v1, Lcom/obs/services/model/SSEAlgorithmEnum;->KMS:Lcom/obs/services/model/SSEAlgorithmEnum;

    invoke-virtual {v1}, Lcom/obs/services/model/SSEAlgorithmEnum;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aws:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/obs/services/model/BucketEncryption;->getKmsKeyId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2c

    .line 74
    :cond_2a
    const-string p1, ""

    .line 78
    :goto_2c
    invoke-virtual {p0, v0, p1}, Lcom/obs/services/internal/V2BucketConvertor;->transBucketEcryptionXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected transBucketEcryptionXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 83
    :try_start_0
    const-string p0, "ServerSideEncryptionConfiguration"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "Rule"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "ApplyServerSideEncryptionByDefault"

    .line 84
    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 85
    const-string v0, "SSEAlgorithm"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 86
    invoke-static {p2}, Lcom/obs/services/internal/utils/ServiceUtils;->isValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 87
    const-string p1, "KMSMasterKeyID"

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 89
    :cond_2a
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    .line 91
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string p2, "Failed to build XML document for bucketEncryption"

    invoke-direct {p1, p2, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transBucketFileInterface(Lcom/obs/services/model/fs/FSStatusEnum;)Ljava/lang/String;
    .registers 3

    .line 307
    :try_start_0
    const-string p0, "FileInterfaceConfiguration"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "Status"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/obs/services/model/fs/FSStatusEnum;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    .line 309
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for FileInterface"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transBucketInventoryConfiguration(Lcom/obs/services/model/inventory/InventoryConfiguration;)Ljava/lang/String;
    .registers 7

    .line 330
    const-string p0, ""

    :try_start_2
    const-string v0, "InventoryConfiguration"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v0

    .line 332
    const-string v1, "Id"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getConfigurationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 333
    const-string v1, "IsEnabled"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 335
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getObjectPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_ce

    const-string v2, "Prefix"

    if-nez v1, :cond_43

    .line 336
    :try_start_32
    const-string v1, "Filter"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 337
    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getObjectPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 339
    :cond_43
    const-string v1, "Destination"

    invoke-virtual {v0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 340
    const-string v3, "Format"

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getInventoryFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 341
    const-string v3, "Bucket"

    invoke-virtual {v1, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getDestinationBucket()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 342
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getInventoryPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    .line 343
    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getInventoryPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 345
    :cond_78
    const-string p0, "Schedule"

    invoke-virtual {v0, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 346
    const-string v1, "Frequency"

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getFrequency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 347
    const-string p0, "IncludedObjectVersions"

    invoke-virtual {v0, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getIncludedObjectVersions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 348
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getOptionalFields()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c5

    .line 349
    const-string p0, "OptionalFields"

    invoke-virtual {v0, p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 350
    invoke-virtual {p1}, Lcom/obs/services/model/inventory/InventoryConfiguration;->getOptionalFields()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b1
    if-ge v2, v1, :cond_c5

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    .line 351
    const-string v4, "Field"

    invoke-virtual {p0, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_b1

    .line 354
    :cond_c5
    invoke-virtual {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_cd} :catch_ce

    return-object p0

    :catch_ce
    move-exception p0

    .line 356
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for InventoryConfiguration"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transBucketLoction(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 62
    :try_start_0
    const-string p0, "CreateBucketConfiguration"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "LocationConstraint"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 63
    invoke-static {p1}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 66
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transBucketLoggingConfiguration(Lcom/obs/services/model/BucketLoggingConfiguration;)Ljava/lang/String;
    .registers 7

    .line 98
    const-string v0, "Failed to build XML document for BucketLoggingConfiguration"

    :try_start_2
    const-string v1, "BucketLoggingStatus"

    invoke-static {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 100
    const-string v2, "LoggingEnabled"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getTargetBucketName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 102
    const-string v3, "TargetBucket"

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getTargetBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_32

    :catch_2c
    move-exception p0

    goto :goto_5e

    :catch_2e
    move-exception p0

    goto :goto_64

    :catch_30
    move-exception p0

    goto :goto_6a

    .line 105
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getLogfilePrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 106
    const-string v3, "TargetPrefix"

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getLogfilePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    .line 108
    :cond_49
    invoke-virtual {p1}, Lcom/obs/services/model/BucketLoggingConfiguration;->getTargetGrants()[Lcom/obs/services/model/GrantAndPermission;

    move-result-object p1

    .line 109
    array-length v3, p1

    if-lez v3, :cond_59

    .line 110
    const-string v3, "TargetGrants"

    invoke-virtual {v2, v3}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    .line 111
    invoke-direct {p0, p1, v2}, Lcom/obs/services/internal/V2BucketConvertor;->transGrantsBuilder([Lcom/obs/services/model/GrantAndPermission;Lcom/obs/services/internal/xml/OBSXMLBuilder;)V

    .line 114
    :cond_59
    invoke-virtual {v1}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_5d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_5d} :catch_30
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_5d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5d} :catch_2c

    return-object p0

    .line 120
    :goto_5e
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 118
    :goto_64
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 116
    :goto_6a
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transBucketNotificationConfiguration(Lcom/obs/services/model/BucketNotificationConfiguration;)Ljava/lang/String;
    .registers 9

    .line 249
    :try_start_0
    const-string v0, "NotificationConfiguration"

    invoke-static {v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v2

    if-nez p1, :cond_d

    .line 251
    invoke-virtual {v2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 254
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

    .line 255
    const-string v4, "TopicConfiguration"

    const-string v5, "Topic"

    const-string v6, "S3Key"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/V2BucketConvertor;->packNotificationConfig(Lcom/obs/services/internal/xml/OBSXMLBuilder;Lcom/obs/services/model/AbstractNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    goto :goto_15

    :cond_2e
    move-object v1, p0

    .line 258
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

    .line 259
    const-string v4, "FunctionGraphConfiguration"

    const-string v5, "FunctionGraph"

    const-string v6, "S3Key"

    invoke-virtual/range {v1 .. v6}, Lcom/obs/services/internal/V2BucketConvertor;->packNotificationConfig(Lcom/obs/services/internal/xml/OBSXMLBuilder;Lcom/obs/services/model/AbstractNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 262
    :cond_4e
    invoke-virtual {v2}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    return-object p0

    :catch_53
    move-exception v0

    move-object p0, v0

    .line 264
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for Notification"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transBucketQuota(Lcom/obs/services/model/BucketQuota;)Ljava/lang/String;
    .registers 4

    .line 51
    :try_start_0
    const-string p0, "Quota"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "StorageQuota"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->elem(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 52
    invoke-virtual {p1}, Lcom/obs/services/model/BucketQuota;->getBucketQuota()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->text(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception p0

    .line 55
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for storageQuota"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transBucketTagInfo(Lcom/obs/services/model/BucketTagInfo;)Ljava/lang/String;
    .registers 5

    .line 216
    :try_start_0
    const-string p0, "Tagging"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "TagSet"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 217
    invoke-virtual {p1}, Lcom/obs/services/model/BucketTagInfo;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/BucketTagInfo$TagSet;->getTags()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    if-eqz v0, :cond_18

    .line 219
    const-string v1, "Tag"

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    const-string v2, "Key"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    const-string v2, "Value"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 220
    invoke-virtual {v0}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_18

    .line 223
    :cond_54
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    return-object p0

    :catch_5d
    move-exception p0

    .line 225
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for Tagging"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public transObjectTagInfo(Lcom/obs/services/model/ObjectTagResult;)Ljava/lang/String;
    .registers 5

    .line 232
    :try_start_0
    const-string p0, "Tagging"

    invoke-static {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->create(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    const-string v0, "TagSet"

    invoke-virtual {p0, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    .line 233
    invoke-virtual {p1}, Lcom/obs/services/model/ObjectTagResult;->getTagSet()Lcom/obs/services/model/BucketTagInfo$TagSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/obs/services/model/BucketTagInfo$TagSet;->getTags()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;

    if-eqz v0, :cond_18

    .line 235
    const-string v1, "Tag"

    invoke-virtual {p0, v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    const-string v2, "Key"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    const-string v2, "Value"

    invoke-virtual {v1, v2}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->e(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object v1

    .line 236
    invoke-virtual {v0}, Lcom/obs/services/model/BucketTagInfo$TagSet$Tag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/obs/services/internal/utils/ServiceUtils;->toValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->t(Ljava/lang/String;)Lcom/obs/services/internal/xml/OBSXMLBuilder;

    goto :goto_18

    .line 239
    :cond_54
    invoke-virtual {p0}, Lcom/obs/services/internal/xml/OBSXMLBuilder;->up()Lcom/obs/services/internal/xml/OBSXMLBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jamesmurty/utils/BaseXMLBuilder;->asString()Ljava/lang/String;

    move-result-object p0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    return-object p0

    :catch_5d
    move-exception p0

    .line 241
    new-instance p1, Lcom/obs/services/internal/ServiceException;

    const-string v0, "Failed to build XML document for Tagging"

    invoke-direct {p1, v0, p0}, Lcom/obs/services/internal/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
