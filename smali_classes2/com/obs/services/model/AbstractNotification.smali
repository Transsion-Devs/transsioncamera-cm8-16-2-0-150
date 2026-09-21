.class public Lcom/obs/services/model/AbstractNotification;
.super Lcom/obs/services/model/HeaderResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/AbstractNotification$Filter;
    }
.end annotation


# instance fields
.field protected events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/EventTypeEnum;",
            ">;"
        }
    .end annotation
.end field

.field protected filter:Lcom/obs/services/model/AbstractNotification$Filter;

.field protected id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/obs/services/model/AbstractNotification$Filter;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/obs/services/model/AbstractNotification$Filter;",
            "Ljava/util/List<",
            "Lcom/obs/services/model/EventTypeEnum;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/obs/services/model/HeaderResponse;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/obs/services/model/AbstractNotification;->id:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/obs/services/model/AbstractNotification;->filter:Lcom/obs/services/model/AbstractNotification$Filter;

    .line 45
    iput-object p3, p0, Lcom/obs/services/model/AbstractNotification;->events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEventTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/EventTypeEnum;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/obs/services/model/AbstractNotification;->events:Ljava/util/List;

    if-nez v0, :cond_b

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/AbstractNotification;->events:Ljava/util/List;

    .line 266
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/AbstractNotification;->events:Ljava/util/List;

    return-object p0
.end method

.method public getEvents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-virtual {p0}, Lcom/obs/services/model/AbstractNotification;->getEventTypes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/obs/services/model/EventTypeEnum;

    .line 240
    invoke-static {v1}, Lcom/obs/services/internal/ObsConvertor;->transEventTypeStatic(Lcom/obs/services/model/EventTypeEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method public getFilter()Lcom/obs/services/model/AbstractNotification$Filter;
    .registers 1

    .line 285
    iget-object p0, p0, Lcom/obs/services/model/AbstractNotification;->filter:Lcom/obs/services/model/AbstractNotification$Filter;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 223
    iget-object p0, p0, Lcom/obs/services/model/AbstractNotification;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setEventTypes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/EventTypeEnum;",
            ">;)V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/obs/services/model/AbstractNotification;->events:Ljava/util/List;

    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_20

    .line 248
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    invoke-static {v0}, Lcom/obs/services/model/EventTypeEnum;->getValueFromCode(Ljava/lang/String;)Lcom/obs/services/model/EventTypeEnum;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 251
    invoke-virtual {p0}, Lcom/obs/services/model/AbstractNotification;->getEventTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_20
    return-void
.end method

.method public setFilter(Lcom/obs/services/model/AbstractNotification$Filter;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lcom/obs/services/model/AbstractNotification;->filter:Lcom/obs/services/model/AbstractNotification$Filter;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/obs/services/model/AbstractNotification;->id:Ljava/lang/String;

    return-void
.end method
