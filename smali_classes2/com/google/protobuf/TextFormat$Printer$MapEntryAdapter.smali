.class Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat$Printer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapEntryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private entry:Ljava/lang/Object;

.field private final fieldType:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

.field private mapEntry:Lcom/google/protobuf/MapEntry;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .registers 4

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    instance-of v0, p1, Lcom/google/protobuf/MapEntry;

    if-eqz v0, :cond_c

    .line 463
    check-cast p1, Lcom/google/protobuf/MapEntry;

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->mapEntry:Lcom/google/protobuf/MapEntry;

    goto :goto_e

    .line 465
    :cond_c
    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->entry:Ljava/lang/Object;

    .line 467
    :goto_e
    invoke-static {p2}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->extractFieldType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->fieldType:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-void
.end method

.method private static extractFieldType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;
    .registers 2

    .line 471
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;)I
    .registers 7

    .line 490
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_92

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    goto/16 :goto_92

    .line 494
    :cond_f
    sget-object v0, Lcom/google/protobuf/TextFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$JavaType:[I

    iget-object v2, p0, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->fieldType:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_79

    const/4 v3, 0x2

    if-eq v0, v3, :cond_60

    const/4 v3, 0x3

    if-eq v0, v3, :cond_47

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_27

    return v4

    .line 502
    :cond_27
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 503
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p0, :cond_38

    if-nez p1, :cond_38

    return v4

    :cond_38
    if-nez p0, :cond_3d

    if-eqz p1, :cond_3d

    return v1

    :cond_3d
    if-eqz p0, :cond_42

    if-nez p1, :cond_42

    return v2

    .line 511
    :cond_42
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 500
    :cond_47
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    .line 498
    :cond_60
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    .line 496
    :cond_79
    invoke-virtual {p0}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    return p0

    .line 491
    :cond_92
    :goto_92
    # getter for: Lcom/google/protobuf/TextFormat;->logger:Ljava/util/logging/Logger;
    invoke-static {}, Lcom/google/protobuf/TextFormat;->access$300()Ljava/util/logging/Logger;

    move-result-object p0

    const-string p1, "Invalid key for map field."

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 452
    check-cast p1, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->compareTo(Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;)I

    move-result p0

    return p0
.end method

.method public getEntry()Ljava/lang/Object;
    .registers 2

    .line 482
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->mapEntry:Lcom/google/protobuf/MapEntry;

    if-eqz v0, :cond_5

    return-object v0

    .line 485
    :cond_5
    iget-object p0, p0, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->entry:Ljava/lang/Object;

    return-object p0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 1

    .line 475
    iget-object p0, p0, Lcom/google/protobuf/TextFormat$Printer$MapEntryAdapter;->mapEntry:Lcom/google/protobuf/MapEntry;

    if-eqz p0, :cond_9

    .line 476
    invoke-virtual {p0}, Lcom/google/protobuf/MapEntry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method
