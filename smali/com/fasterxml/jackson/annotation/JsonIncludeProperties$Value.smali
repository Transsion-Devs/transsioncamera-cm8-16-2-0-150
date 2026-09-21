.class public Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/annotation/JsonIncludeProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# static fields
.field protected static final ALL:Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;


# instance fields
.field protected final _included:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;-><init>(Ljava/util/Set;)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->ALL:Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    return-void
.end method

.method private static _asSet([Ljava/lang/String;)Ljava/util/Set;
    .registers 5

    if-eqz p0, :cond_19

    .line 154
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_19

    .line 157
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 158
    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_18

    aget-object v3, p0, v2

    .line 159
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_18
    return-object v0

    .line 155
    :cond_19
    :goto_19
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method private static _equals(Ljava/util/Set;Ljava/util/Set;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    .line 149
    :cond_8
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static all()Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    .registers 1

    .line 80
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->ALL:Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/annotation/JsonIncludeProperties;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    .registers 2

    if-nez p0, :cond_5

    .line 73
    sget-object p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->ALL:Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    return-object p0

    .line 75
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties;->value()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_asSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 142
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1f

    iget-object p0, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    iget-object p1, p1, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_equals(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_1f

    return v0

    :cond_1f
    return v1
.end method

.method public getIncluded()Ljava/util/Set;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object p0, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "JsonIncludeProperties.Value(included=%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
