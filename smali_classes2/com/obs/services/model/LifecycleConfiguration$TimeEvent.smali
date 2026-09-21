.class public abstract Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/model/LifecycleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TimeEvent"
.end annotation


# instance fields
.field protected date:Ljava/util/Date;

.field protected days:Ljava/lang/Integer;

.field protected storageClass:Lcom/obs/services/model/StorageClassEnum;

.field final synthetic this$0:Lcom/obs/services/model/LifecycleConfiguration;


# direct methods
.method public constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/lang/Integer;)V
    .registers 3

    .line 113
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>(Lcom/obs/services/model/LifecycleConfiguration;Ljava/util/Date;)V
    .registers 3

    .line 117
    iput-object p1, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->date:Ljava/util/Date;

    return-void
.end method

.method private getOuterType()Lcom/obs/services/model/LifecycleConfiguration;
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->this$0:Lcom/obs/services/model/LifecycleConfiguration;

    return-object p0
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

    .line 140
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 143
    :cond_13
    check-cast p1, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;

    .line 144
    invoke-direct {p0}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->getOuterType()Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object v2

    invoke-direct {p1}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->getOuterType()Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/obs/services/model/LifecycleConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    return v1

    .line 147
    :cond_24
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->date:Ljava/util/Date;

    if-nez v2, :cond_2d

    .line 148
    iget-object v2, p1, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->date:Ljava/util/Date;

    if-eqz v2, :cond_36

    return v1

    .line 151
    :cond_2d
    iget-object v3, p1, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    return v1

    .line 154
    :cond_36
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    if-nez v2, :cond_3f

    .line 155
    iget-object v2, p1, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    if-eqz v2, :cond_48

    return v1

    .line 158
    :cond_3f
    iget-object v3, p1, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    return v1

    .line 161
    :cond_48
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    iget-object p1, p1, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    if-eq p0, p1, :cond_4f

    return v1

    :cond_4f
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 125
    invoke-direct {p0}, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->getOuterType()Lcom/obs/services/model/LifecycleConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/obs/services/model/LifecycleConfiguration;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 126
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->date:Ljava/util/Date;

    const/4 v3, 0x0

    if-nez v2, :cond_13

    move v2, v3

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 127
    iget-object v2, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->days:Ljava/lang/Integer;

    if-nez v2, :cond_1f

    move v2, v3

    goto :goto_23

    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_23
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 128
    iget-object p0, p0, Lcom/obs/services/model/LifecycleConfiguration$TimeEvent;->storageClass:Lcom/obs/services/model/StorageClassEnum;

    if-nez p0, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2e
    add-int/2addr v0, v3

    return v0
.end method
