.class public Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;
.super Lcom/obs/services/internal/handler/DefaultXmlHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/handler/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketNotificationConfigurationHandler"
.end annotation


# instance fields
.field private bucketNotificationConfiguration:Lcom/obs/services/model/BucketNotificationConfiguration;

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/EventTypeEnum;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/obs/services/model/AbstractNotification$Filter;

.field private id:Ljava/lang/String;

.field private ruleName:Ljava/lang/String;

.field private ruleValue:Ljava/lang/String;

.field private urn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2195
    invoke-direct {p0}, Lcom/obs/services/internal/handler/DefaultXmlHandler;-><init>()V

    .line 2197
    new-instance v0, Lcom/obs/services/model/BucketNotificationConfiguration;

    invoke-direct {v0}, Lcom/obs/services/model/BucketNotificationConfiguration;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->bucketNotificationConfiguration:Lcom/obs/services/model/BucketNotificationConfiguration;

    .line 2205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2224
    const-string v0, "Id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2225
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->id:Ljava/lang/String;

    return-void

    .line 2226
    :cond_b
    const-string v0, "Topic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d9

    const-string v0, "FunctionGraph"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto/16 :goto_d9

    .line 2228
    :cond_1d
    const-string v0, "Event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2229
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->events:Ljava/util/List;

    invoke-static {p2}, Lcom/obs/services/model/EventTypeEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/EventTypeEnum;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 2230
    :cond_2f
    const-string v0, "Name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2231
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->ruleName:Ljava/lang/String;

    return-void

    .line 2232
    :cond_3a
    const-string v0, "Value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2233
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->ruleValue:Ljava/lang/String;

    return-void

    .line 2234
    :cond_45
    const-string p2, "FilterRule"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "Response xml is not well-formt"

    if-eqz p2, :cond_6d

    .line 2235
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->filter:Lcom/obs/services/model/AbstractNotification$Filter;

    if-nez p1, :cond_65

    .line 2236
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p0

    if-eqz p0, :cond_d8

    .line 2237
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/obs/log/ILogger;->error(Ljava/lang/CharSequence;)V

    return-void

    .line 2241
    :cond_65
    iget-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->ruleName:Ljava/lang/String;

    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->ruleValue:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Lcom/obs/services/model/AbstractNotification$Filter;->addFilterRule(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2242
    :cond_6d
    const-string p2, "TopicConfiguration"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a3

    .line 2243
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->bucketNotificationConfiguration:Lcom/obs/services/model/BucketNotificationConfiguration;

    if-nez p1, :cond_8b

    .line 2244
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p0

    if-eqz p0, :cond_d8

    .line 2245
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/obs/log/ILogger;->error(Ljava/lang/CharSequence;)V

    return-void

    .line 2249
    :cond_8b
    new-instance p2, Lcom/obs/services/model/TopicConfiguration;

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->filter:Lcom/obs/services/model/AbstractNotification$Filter;

    iget-object v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->urn:Ljava/lang/String;

    iget-object v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->events:Ljava/util/List;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/obs/services/model/TopicConfiguration;-><init>(Ljava/lang/String;Lcom/obs/services/model/AbstractNotification$Filter;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1, p2}, Lcom/obs/services/model/BucketNotificationConfiguration;->addTopicConfiguration(Lcom/obs/services/model/TopicConfiguration;)Lcom/obs/services/model/BucketNotificationConfiguration;

    .line 2250
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->events:Ljava/util/List;

    return-void

    .line 2251
    :cond_a3
    const-string p2, "FunctionGraphConfiguration"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d8

    .line 2252
    iget-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->bucketNotificationConfiguration:Lcom/obs/services/model/BucketNotificationConfiguration;

    if-nez p1, :cond_c1

    .line 2253
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    invoke-interface {p0}, Lcom/obs/log/ILogger;->isErrorEnabled()Z

    move-result p0

    if-eqz p0, :cond_d8

    .line 2254
    # getter for: Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->log:Lcom/obs/log/ILogger;
    invoke-static {}, Lcom/obs/services/internal/handler/XmlResponsesSaxParser;->access$000()Lcom/obs/log/ILogger;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/obs/log/ILogger;->error(Ljava/lang/CharSequence;)V

    return-void

    .line 2258
    :cond_c1
    new-instance p2, Lcom/obs/services/model/FunctionGraphConfiguration;

    iget-object v0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->filter:Lcom/obs/services/model/AbstractNotification$Filter;

    iget-object v2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->urn:Ljava/lang/String;

    iget-object v3, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->events:Ljava/util/List;

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/obs/services/model/FunctionGraphConfiguration;-><init>(Ljava/lang/String;Lcom/obs/services/model/AbstractNotification$Filter;Ljava/lang/String;Ljava/util/List;)V

    .line 2259
    invoke-virtual {p1, p2}, Lcom/obs/services/model/BucketNotificationConfiguration;->addFunctionGraphConfiguration(Lcom/obs/services/model/FunctionGraphConfiguration;)Lcom/obs/services/model/BucketNotificationConfiguration;

    .line 2260
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->events:Ljava/util/List;

    :cond_d8
    return-void

    .line 2227
    :cond_d9
    :goto_d9
    iput-object p2, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->urn:Ljava/lang/String;

    return-void
.end method

.method public getBucketNotificationConfiguration()Lcom/obs/services/model/BucketNotificationConfiguration;
    .registers 1

    .line 2212
    iget-object p0, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->bucketNotificationConfiguration:Lcom/obs/services/model/BucketNotificationConfiguration;

    return-object p0
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3

    .line 2217
    const-string v0, "Filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 2218
    new-instance p1, Lcom/obs/services/model/AbstractNotification$Filter;

    invoke-direct {p1}, Lcom/obs/services/model/AbstractNotification$Filter;-><init>()V

    iput-object p1, p0, Lcom/obs/services/internal/handler/XmlResponsesSaxParser$BucketNotificationConfigurationHandler;->filter:Lcom/obs/services/model/AbstractNotification$Filter;

    :cond_f
    return-void
.end method
