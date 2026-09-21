.class public Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/AbstractNotification$Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterRule"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->name:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 148
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 151
    :cond_13
    check-cast p1, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;

    .line 152
    iget-object v2, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->name:Ljava/lang/String;

    if-nez v2, :cond_1e

    .line 153
    iget-object v2, p1, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->name:Ljava/lang/String;

    if-eqz v2, :cond_27

    return v1

    .line 156
    :cond_1e
    iget-object v3, p1, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    return v1

    .line 159
    :cond_27
    iget-object p0, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->value:Ljava/lang/String;

    if-nez p0, :cond_30

    .line 160
    iget-object p0, p1, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->value:Ljava/lang/String;

    if-eqz p0, :cond_39

    return v1

    .line 163
    :cond_30
    iget-object p1, p1, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    return v1

    :cond_39
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 97
    iget-object p0, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 136
    iget-object p0, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->value:Ljava/lang/String;

    if-nez p0, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterRule [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/obs/services/model/AbstractNotification$Filter$FilterRule;->value:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
