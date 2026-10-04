.class final Lcom/google/gson/internal/LinkedTreeMap$Node;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# instance fields
.field final allowNullValue:Z

.field height:I

.field final key:Ljava/lang/Object;

.field left:Lcom/google/gson/internal/LinkedTreeMap$Node;

.field next:Lcom/google/gson/internal/LinkedTreeMap$Node;

.field parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

.field prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

.field right:Lcom/google/gson/internal/LinkedTreeMap$Node;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Z)V
    .registers 3

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 477
    iput-boolean p1, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->allowNullValue:Z

    .line 478
    iput-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    return-void
.end method

.method constructor <init>(ZLcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .registers 6

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 484
    iput-object p3, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 485
    iput-boolean p1, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->allowNullValue:Z

    const/4 p1, 0x1

    .line 486
    iput p1, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 487
    iput-object p4, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 488
    iput-object p5, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 489
    iput-object p0, p5, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 490
    iput-object p0, p4, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 515
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 516
    check-cast p1, Ljava/util/Map$Entry;

    .line 517
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_12

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_33

    goto :goto_1c

    :cond_12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :goto_1c
    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    if-nez p0, :cond_27

    .line 518
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_33

    goto :goto_31

    :cond_27
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    :goto_31
    const/4 p0, 0x1

    return p0

    :cond_33
    return v1
.end method

.method public first()Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 3

    .line 536
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    :goto_2
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_a

    .line 539
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_2

    :cond_a
    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 1

    .line 495
    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 1

    .line 500
    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    .line 525
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    if-nez p0, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int p0, v0, v1

    return p0
.end method

.method public last()Lcom/google/gson/internal/LinkedTreeMap$Node;
    .registers 3

    .line 547
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    :goto_2
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_a

    .line 550
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_2

    :cond_a
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_f

    .line 505
    iget-boolean v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->allowNullValue:Z

    if-eqz v0, :cond_7

    goto :goto_f

    .line 506
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 508
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 509
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
