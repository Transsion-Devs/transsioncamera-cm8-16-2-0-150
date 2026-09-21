.class public Lcom/obs/services/model/AbstractNotification$Filter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/AbstractNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;
    }
.end annotation


# instance fields
.field private filterRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFilterRule(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 207
    invoke-virtual {p0}, Lcom/obs/services/model/AbstractNotification$Filter;->getFilterRules()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;

    invoke-direct {v0, p1, p2}, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFilterRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/obs/services/model/AbstractNotification$Filter;->filterRules:Ljava/util/List;

    if-nez v0, :cond_b

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/obs/services/model/AbstractNotification$Filter;->filterRules:Ljava/util/List;

    .line 185
    :cond_b
    iget-object p0, p0, Lcom/obs/services/model/AbstractNotification$Filter;->filterRules:Ljava/util/List;

    return-object p0
.end method

.method public setFilterRules(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;",
            ">;)V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/obs/services/model/AbstractNotification$Filter;->filterRules:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filter [fileterRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/AbstractNotification$Filter;->filterRules:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
