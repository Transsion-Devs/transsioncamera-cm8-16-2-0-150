.class public abstract Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
.end method

.method public abstract forScope(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.end method

.method public abstract generateId(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract getScope()Ljava/lang/Class;
.end method

.method public isValidReferencePropertyName(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public abstract key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
.end method

.method public maySerializeAsObject()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract newForSerialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.end method
